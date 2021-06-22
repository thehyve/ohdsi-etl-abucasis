import copy
import csv
import logging
from pathlib import Path
from typing import Dict, Set, List


logger = logging.getLogger(__name__)


class Target:

    def __init__(self):
        self.concept_id = None
        self.value_as_concept_id = None
        self.value_as_number = None
        self.unit_concept_id = None
        self.source_value = None
        self.value_source_value = None

    def __str__(self):
        return f'{self.source_value}-{self.value_source_value} => ' \
               f'concept_id: {self.concept_id}, ' \
               f'value_as_concept_id: {self.value_as_concept_id}, ' \
               f'value_as_number: {self.value_as_number}, ' \
               f'unit_concept_id: {self.unit_concept_id}, ' \
               f'source_value: {self.source_value}, ' \
               f'value_source_value: {self.value_source_value}'


class VariableConceptMapper:
    # Assumption: the variable names are unique between the forms
    FORM_PREFIXES = ['F1', 'F2', 'F3', 'F4', 'F3_RG19']
    VARIABLE_MAP_SUFFIX = '_variables.csv'  # a variable can map to just one target concept
    VALUE_MAP_SUFFIX = '_discrete.csv'  # a value can map to multiple target concepts (retrieved by lookup_many)
    UNIT_MAP_SUFFIX = '_units.csv'
    # VARIABLE_VALUE_MAP_SUFFIX = '_variable_value_mapping.csv'

    def __init__(self, directory: Path, verbose: bool = False):
        self.variable_to_concept: Dict[str, int] = {}
        self.variable_value_to_concept: Dict[str, Dict[str, int]] = {}  # note: not used for CLLEAR
        self.variable_to_unit: Dict[str, int] = {}
        self.variable_to_conversion_factor: Dict[str, int] = {}
        self.variable_value_to_value: Dict[str, Dict[str, Set[int]]] = {}
        self.verbose = False

        if directory:
            self.load(directory)

    def __call__(self, variable: str, value: str) -> Target:
        return self.lookup(variable, value)

    def load(self, directory: Path):
        if not directory.exists():
            raise FileNotFoundError(f"No such directory: '{directory}'")

        for form_prefix in self.FORM_PREFIXES:
            variable_map_path = directory / (form_prefix + self.VARIABLE_MAP_SUFFIX)
            if variable_map_path.exists():
                if self.verbose: print(f"Loading {variable_map_path.name}...")
                self._load_variable_map(variable_map_path)

            unit_map_path = directory / (form_prefix + self.UNIT_MAP_SUFFIX)
            if unit_map_path.exists():
                if self.verbose: print(f"Loading {unit_map_path.name}...")
                self._load_unit_map(unit_map_path)

            value_map_path = directory / (form_prefix + self.VALUE_MAP_SUFFIX)
            if value_map_path.exists():
                if self.verbose: print(f"Loading {value_map_path.name}...")
                self._load_value_map(value_map_path)

    def _load_variable_map(self, file_path: Path):
        for row in self._load_map(file_path):
            variable = row['sourceCode'].lower()
            target_concept_id = row['conceptId']

            self.variable_to_concept[variable] = int(target_concept_id)

    # Note: this function not applicable to current set up of mapping tables, with just a variable, discrete and unit map (and no variable_value map)
    # def _load_variable_value_map(self, file_path: Path):
    #     for row in self._load_map(file_path):
    #         variable = row['variable_source_code'].lower()
    #         value = row['value_source_code'].lower()
    #         target_concept_id = row['target_concept_id']
    #
    #         self.variable_value_to_concept.setdefault(variable, {})[value] = int(target_concept_id)

    def _load_value_map(self, file_path: Path):
        for row in self._load_map(file_path):
            variable = row['ADD_INFO:column_id'].lower()
            value = row['sourceCode'].lower()
            target_concept_id = row['conceptId']

            if not self.has_mapping_for_variable(variable):
                print(f"Variable {variable} has no concept mapping, but does have a value mapping.")
                # raise Exception(f"Variable {variable} has no concept mapping, but does have a value mapping.")

            # For each combination of variable/value create a set of target concept_ids
            value_target_ids = self.variable_value_to_value.setdefault(variable, {}).setdefault(value, set())
            value_target_ids.add(int(target_concept_id))

    def _load_unit_map(self, file_path: Path):
        for row in self._load_map(file_path):
            variable = row['sourceCode'].lower()
            target_concept_id = row['conceptId']
            conversion_factor = row.get('ADD_INFO:conversion_factor')  # null if this column is missing

            if not self.has_mapping_for_variable(variable):
                print(f"Variable {variable} has no concept mapping, but does have a unit mapping.")
                # raise Exception(f"Variable {variable} has no concept mapping, but does have a unit mapping.")

            self.variable_to_unit[variable] = int(target_concept_id)
            if conversion_factor:
                self.variable_to_conversion_factor[variable] = float(conversion_factor)

    @staticmethod
    def _load_map(file_path: Path):
        with file_path.open(encoding='ISO-8859-2') as f_in:
            for row in csv.DictReader(f_in):
                yield row

    def has_mapping_for_variable(self, variable: str):
        return variable in self.variable_to_concept or variable in self.variable_value_to_concept

    def lookup(self, variable: str, value: str) -> Target:
        targets = self.lookup_many(variable, value)

        if not targets:
            return Target()
        elif len(targets) > 1:
            logger.warning(f'Multiple targets found for {variable}-{value}, returning only first.')

        return targets[0]

    def lookup_many(self, variable: str, value: str) -> List[Target]:
        """
        For given variable/value pair, looks up the target concept_id, value_as_concept_id, value_as_number and unit_concept_id.
        The mapping can be one of three types:
        1. Only concept. Variable and value together map to one concept_id.
        2. Categorical. Variable maps to a concept_id, value maps to a value_as_concept_id.
        3. Numeric. If no mapping for value found, the value is assumed to be numeric. Variable maps to concept_id and unit_concept_id. Value is converted to float.
        :param variable: string
        :param value: string
        :return: Target
        """
        variable = variable.lower()
        value = str(value).lower()

        target = Target()
        target.value_source_value = value

        if not self.has_mapping_for_variable(variable):
            target.concept_id = 0  # Note: if variable not in the mapping file, we might not want to even map to 0. Return None to indicate missing
            target.source_value = variable
            return [target]

        if variable in self.variable_value_to_concept and value in self.variable_value_to_concept.get(variable):
            # Get concept_id from variable and value
            target.concept_id = self.variable_value_to_concept.get(variable, {}).get(value)
            target.source_value = variable + '-' + value
        else:
            # Get concept_id from from variable and value separately
            target.concept_id = self.variable_to_concept.get(variable)
            target.source_value = variable

            # Value is either categorical or numerical. If value has no mapping, it is assumed to be numeric.
            is_categorical_value = variable in self.variable_value_to_concept or variable in self.variable_value_to_value
            is_numerical_value = variable in self.variable_to_unit
            if is_categorical_value:
                value_concept_ids = self.variable_value_to_value.get(variable, {}).get(value, set())
                targets = []
                for value_concept_id in value_concept_ids:
                    t = copy.copy(target)
                    t.value_as_concept_id = value_concept_id
                    targets.append(t)
                return targets
            elif is_numerical_value:
                if value != '':
                    try:
                        value_as_number = float(value.replace(',', '.'))
                    except ValueError:
                        value_as_number = None
                        logger.warning(f'"{variable}" recognised as numeric variable, but could not convert value to float: "{value}"')
                        # raise ValueError(f'"{variable}" recognised as numeric variable, but could not convert value to float: "{value}"')

                    conversion_factor = self.variable_to_conversion_factor.get(variable)
                    if conversion_factor:
                        target.value_as_number = value_as_number * conversion_factor
                    else:
                        target.value_as_number = value_as_number
                target.unit_concept_id = self.variable_to_unit.get(variable)
                return [target]
            else:
                # Not numeric, not categorical. Treat value as raw string
                return [target]


if __name__ == '__main__':
    mapper = VariableConceptMapper(Path('./resources/mapping_tables'), verbose=True)

    # Some simple tests
    # F2
    print(mapper.lookup('linie_mrd_sledovani_cll', ''))
    print(mapper.lookup('linie_mrd_sledovani_cll', '112'))
    print(mapper.lookup('vysledek_mrd_sledovani_cll', '128'))
    # F3
    print(mapper.lookup('neutropenie_hematol_tox_terapi', ''))
    print(mapper.lookup('dokonceni_terapie_pocet_gy_rt', '5.3'))
    # F4
    print(mapper.lookup('klinicke_stadium_binet', '327'))
    print(mapper.lookup('vyska_diag_cll', '5.2'))
    print(mapper.lookup('splenomegalie', ''))
    print(mapper.lookup('igg_cll', '378'))
    # SPECIAL CASES
    # numerical variables with unit conversion factor
    print(mapper.lookup('hemoglobin_hb_gl', '55.3'))
    print(mapper.lookup('igg_gl', '0.25'))
    # free text variables (value is always unmapped)
    print(mapper.lookup('spec_lymfoproliferace_sledo_44', 'random_text'))
    print(mapper.lookup('spec_lymfoproliferace_sledo_44', ''))
    # empty Target object
    print(mapper.lookup('',''))

    # F3_RG19
    targets = mapper.lookup_many('lecivo_cll', 'augmentin')
    for t in targets:
        print(t)