# Copyright 2018 The Hyve
#
# Licensed under the GNU General Public License, version 3,
# or (at your option) any later version (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# https://www.gnu.org/licenses/
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# !/usr/bin/env python3
from .model import EtlWrapper


class AbucasisWrapper(EtlWrapper):

    def __init__(self, connection, source_schema, debug, skip_vocab, sql_dir):
        super().__init__(connection, source_schema, debug, skip_vocab, sql_dir)

    def run(self):
        """ Run Abucasis to OMOP ETL procedure"""
        self.start_timing()
        self.log_timestamp()

        self.log_source_counts()

        self.log('{:-^100}'.format(' ETL '))

        self._prepare_cdm()

        if not self.do_skip_vocabulary:
            self._load_vocabulary_mappings()

        self.log_runtime()

        # Intermediate tables
        self._prepare_source()
        self.log_summary()
        self.reset_summary_stats()

        # Transformation
        self._transform_and_load()
        self.log_summary()
        self.log_runtime()

        # Derived era tables
        self._derive_era()

        # Constraints and Indices
        # self._apply_constraints()
        self._apply_indexes()

        # self.log_runtime()
        self.log_timestamp()

    # TODO
    # def _apply_constraints(self):
    #     if self.is_constraints_applied:
    #         return
    #
    #     self.log("Applying constraints...")
    #     self.execute_sql_file('./sql/cdm_prepare/OMOP CDM constraints - PK - NonVocabulary.sql', False)
    #     self.execute_sql_file('./sql/cdm_prepare/OMOP CDM constraints - FK - NonVocabulary.sql', False)
    #     self.is_constraints_applied = True

    def _apply_indexes(self):
        self.log("Applying indexes...")
        self.execute_sql_file('cdm_setup/OMOP CDM postgresql pk indexes__no_vocab.sql', False)

    def _prepare_cdm(self):
        self.execute_sql_file('cdm_setup/create_death_table.sql', verbose=False)
        self.log("CDMv5.0 death table created")

        self.execute_sql_file('cdm_setup/remove_non_vocabulary_cdm_tables.sql', verbose=False)
        self.log("CDM tables dropped")

        self.execute_sql_file('cdm_setup/OMOP CDM postgresql ddl__no_vocab.sql', verbose=False)
        self.log("CDMv6.0 tables created")

        self.execute_sql_file('cdm_setup/create_death_table.sql', verbose=False)
        self.log("CDMv5.0 death table created")

    def _load_vocabulary_mappings(self):
        self.log("Loading source_to_concept_map...", leading_newline=True)
        self.execute_sql_file('vocabulary_loading/load_source_to_concept_map.sql')
        self.execute_sql_file('vocabulary_loading/tba_to_2B_concept.sql')
        self.execute_sql_file('vocabulary_loading/update_stcm_source_concept_id.sql')

    def _prepare_source(self):
        self.log("Intermediate tables and aggregates...", leading_newline=True)
        self.execute_sql_file('source_preprocessing/ante_cmbd_morbilid__visit_intermediate_table.sql')
        self.execute_sql_file('source_preprocessing/sip_spo_ante_cmbd_to_death_intermediate.sql')
        self.execute_sql_file('source_preprocessing/proc_cmbd_intermediate_table.sql')

    def _transform_and_load(self):
        self.log("Main ETL scripts...", leading_newline=True)
        self.execute_sql_file('transformation/zonas_to_location.sql')
        self.execute_sql_file('transformation/centros_to_care_site.sql')

        self.execute_sql_file('transformation/sip_spo_to_person.sql')
        # death?
        self.execute_sql_file('transformation/sip_spo_to_observation_period.sql')

        # visit
        self.execute_sql_file('transformation/ante_cmbd_to_visit_ocurrence.sql')
        self.execute_sql_file('transformation/morbilid_to_visit_ocurrence.sql')

        # process visits table
        self.execute_sql_file('transformation/remove_conflictive_visits.sql')

        # Condition
        self.execute_sql_file('transformation/diag_juntos_to_condition_occurrence.sql')

        # Procedure
        #self.execute_sql_file('transformation/proc_cmbd_to_procedure_occurrence.sql')
        self.execute_sql_file('transformation/intermediate_proc_cmbd_to_procedure_occurrence.sql')

        # Drug
        self.execute_sql_file('transformation/rele_to_drug_exposure.sql')

        # Measurement
        self.execute_sql_file('transformation/prestaci_to_measurement.sql')
        self.execute_sql_file('transformation/variables_to_measurement.sql')
        self.execute_sql_file('transformation/intermediate_proc_cmbd_to_measurement.sql')


        # Observation
        self.execute_sql_file('transformation/event_counts_to_observation.sql')
        self.execute_sql_file('transformation/interacc_to_observation.sql')
        self.execute_sql_file('transformation/estancia_uci_to_observation.sql')
        self.execute_sql_file('transformation/contraind_to_observation.sql')
        self.execute_sql_file('transformation/modalidad_to_observation.sql')
        self.execute_sql_file('transformation/nacionalidad_to_observation.sql')
        self.execute_sql_file('transformation/rele_to_observation.sql')
        self.execute_sql_file('transformation/diag_juntos_to_observation.sql')
        self.execute_sql_file('transformation/proc_cmbd_to_observation.sql')
        self.execute_sql_file('transformation/intermediate_proc_cmbd_to_observation.sql')




        # Death
        self.execute_sql_file('transformation/death_intermediate_to_observation.sql')
        self.execute_sql_file('transformation/death_intermediate_to_death.sql')


    def _derive_era(self):
        self.execute_sql_file('post_processing/GenerateDrugEra.sql')

    def log_source_counts(self):
        self.log_to_file('{:-^100}'.format(' Source Counts '))
        self.log_tables_rowcounts('tb_sip_spo tb_sip_spo_resto_2015 tb_ante_cmbd tb_morbilid tb_diag_juntos '
                                  'tb_proc_cmbd tb_tratamientos tb_prescrip tb_rele tb_prestaci tb_variables'.split())

