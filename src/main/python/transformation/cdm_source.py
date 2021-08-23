from __future__ import annotations
from typing import List, TYPE_CHECKING
from datetime import date

if TYPE_CHECKING:
    from src.main.python.wrapper import Wrapper


def cdm_source(wrapper: Wrapper) -> List[Wrapper.cdm.CdmSource]:
    # Get vocabulary info
    with wrapper.db.session_scope() as session:
        vocab_info = session.query(wrapper.cdm.Vocabulary).filter_by(vocabulary_id='None').one()
        vocabulary_version = vocab_info.vocabulary_version

    return [wrapper.cdm.CdmSource(
        cdm_source_name='ABUCASIS',
        cdm_source_abbreviation='',
        cdm_holder='INCLIVA',
        source_description='',
        source_documentation_reference='',
        cdm_etl_reference='https://github.com/thehyve/ohdsi-etl-abucasis.git',
        cdm_release_date=date.today(),
        cdm_version='v6.0.0',
        vocabulary_version=vocabulary_version
    )]