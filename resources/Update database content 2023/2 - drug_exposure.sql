-- Editing of the elements that appeared with a wrong mapping in the "drug_exposure" table after dqd process.
-- Antonio Fernandez in database ABUCASIS for OMOP in ODHSI Project

-- Updating the values of the "drug_exposure" domain that had the concept_id set to zero.
update cdm5.drug_exposure set drug_concept_id=967823 where drug_source_value='125CL';  --> SODIUM CHLORIDE
update cdm5.drug_exposure set drug_concept_id=790253 where drug_source_value='648A';  --> DIPOTASSIUM CHLORAZEPATE
update cdm5.drug_exposure set drug_concept_id=40223464 where drug_source_value='604A';  --> CYTICOLINE
update cdm5.drug_exposure set drug_concept_id=1781733 where drug_source_value='200794A';  --> ATOVAQUONE + PROGUANIL
update cdm5.drug_exposure set drug_concept_id=1518254 where drug_source_value='722A';  --> DEXAMETHASONE
update cdm5.drug_exposure set drug_concept_id=1747005 where drug_source_value='7358A';  --> CEFDITORENE
update cdm5.drug_exposure set drug_concept_id=735979 where drug_source_value='7201A';  --> RISPERIDONE
update cdm5.drug_exposure set drug_concept_id=19009405 where drug_source_value='200309A';  --> MICONAZOLE + INOSINE + GUANOSINE + VITAMIN F
update cdm5.drug_exposure set drug_concept_id=906072 where drug_source_value='520A';  --> TROPICAMIDE
update cdm5.drug_exposure set drug_concept_id=19024770 where drug_source_value='499A';  --> BIOTIN
update cdm5.drug_exposure set drug_concept_id=36822464 where drug_source_value='3818A';  --> OTILONIUM BROMIDE
update cdm5.drug_exposure set drug_concept_id=974166 where drug_source_value='200680A';  --> TELMISARTAN + HYDROCHLOROTHIAZIDE
update cdm5.drug_exposure set drug_concept_id=904453 where drug_source_value='201190A';  --> NAPROXEN + ESOMEPRAZOLE
update cdm5.drug_exposure set drug_concept_id=1518254 where drug_source_value='200490A';  --> DEXAMETHASONE IN ASSOCIATION
update cdm5.drug_exposure set drug_concept_id=997881 where drug_source_value='616A';  --> CLINDAMYCIN
update cdm5.drug_exposure set drug_concept_id=1796435 where drug_source_value='2400A';  --> CEFIXIME
update cdm5.drug_exposure set drug_concept_id=1115572 where drug_source_value='463A';  --> BECLOMETHASONE
update cdm5.drug_exposure set drug_concept_id=911735 where drug_source_value='1105A';  --> RABEPRAZOL
update cdm5.drug_exposure set drug_concept_id=1308738 where drug_source_value='200935A';  --> POTASSIUM IODIDE + CYANOCOBALAMIN + FOLIC ACID
update cdm5.drug_exposure set drug_concept_id=43009023 where drug_source_value='2734A';  --> LEVOSULPIRIDE