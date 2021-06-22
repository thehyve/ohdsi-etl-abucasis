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

    def transform(self):
        # Replace the following with project-specific transformations
        # from python/transformations/ or sql/ folder!
        self.execute_transformation(sample_source_table_to_person)
        self.execute_transformation(sample_source_table_to_condition_occurrence)

        # given a generator function, the batch transformation will insert 3 records at a time
        self.execute_batch_transformation(sample_batch_source_table_to_condition_occurrence,
                                          batch_size=3)

        self.execute_sql_transformation(observation_period_query)
        self.execute_sql_file('sample_script.sql')

    def run(self):
        # Prepare target database
        self.create_schemas()
        self.drop_cdm()
        self.create_cdm()

        # Load (custom) vocabularies and source_to_concept_map tables
        self.vocab_manager.standard_vocabularies.load()
        self.vocab_manager.load_custom_vocab_and_stcm_tables()

        # Transform source data to the OMOP CDM
        self.transform_sql()

        # Log/write overview of transformations and sources
        self.summarize()

    def transform_sql(self):
        """Execute SQL transformations."""
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
