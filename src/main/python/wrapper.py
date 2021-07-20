import logging

from delphyne import Wrapper as BaseWrapper
from delphyne.config.models import MainConfig

from src.main.python import cdm
from src.main.python.transformation import *

logger = logging.getLogger(__name__)


class Wrapper(BaseWrapper):
    cdm = cdm

    def __init__(self, config: MainConfig):
        super().__init__(config, cdm)

    def run(self):

        self._prepare_abucasis()

        # if not self.do_skip_vocabulary:
        #     self._load_vocabulary_mappings()

        # Prepare target database
        self.create_schemas()
        self.drop_cdm()
        self.create_cdm()

        # Load (custom) vocabularies and source_to_concept_map tables
        self.vocab_manager.standard_vocabularies.load()
        self.vocab_manager.load_custom_vocab_and_stcm_tables()
        self._load_vocabulary_mappings_abucasis()

        # Remove constraints and indexes to improve performance
        self.db.constraint_manager.drop_cdm_constraints()

        # Transform source data to the OMOP CDM
        self.transform_sql()

        # Constraints and Indices
        self.db.constraint_manager.add_cdm_constraints(errors='ignore')

        # Log/write overview of transformations and sources
        self.summarize()

    def _prepare_abucasis(self):
        self.execute_sql_file('abucasis_setup/additional_indices_abucasis.sql')

    def _load_vocabulary_mappings_abucasis(self):
        self.execute_sql_file('vocabulary_loading/tba_to_2B_concept.sql')
        self.execute_sql_file('vocabulary_loading/update_stcm_source_concept_id.sql')

    def transform_sql(self):
        """Execute SQL transformations."""
        # Intermediate tables and aggregates
        logger.info('Creating intermediate tables and aggregates......')
        self.execute_sql_file('source_preprocessing/ante_cmbd_morbilid__visit_intermediate_table.sql')
        self.execute_sql_file('source_preprocessing/sip_spo_ante_cmbd_to_death_intermediate.sql')
        self.execute_sql_file('source_preprocessing/proc_cmbd_intermediate_table.sql')

        # Transformations
        logger.info('Creating transformations......')
        # location
        self.execute_sql_file('transformation/zonas_to_location.sql')
        # care site
        self.execute_sql_file('transformation/centros_to_care_site.sql')

        # person
        self.execute_sql_file('transformation/sip_spo_to_person.sql')
        # observation period
        self.execute_sql_file('transformation/sip_spo_to_observation_period.sql')

        # visit
        self.execute_sql_file('transformation/ante_cmbd_to_visit_ocurrence.sql')
        self.execute_sql_file('transformation/morbilid_to_visit_ocurrence.sql')
        self.execute_sql_file('transformation/diag_juntos_to_visit_occurrence.sql')
        # process visits table
        self.execute_sql_file('transformation/remove_conflictive_visits.sql')

        # Condition
        self.execute_sql_file('transformation/diag_juntos_to_condition_occurrence.sql')

        # Procedure
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

        # Death (to make it compatible with CDM v5.3)
        self.execute_sql_file('transformation/death_intermediate_to_observation.sql')
        self.execute_sql_file('transformation/death_intermediate_to_death.sql')

        # CDM Source
        self.execute_transformation(cdm_source, bulk=True)

        # Post process
        logger.info('Creating drug eras...')
        self.execute_sql_file('post_processing/GenerateDrugEra.sql')
