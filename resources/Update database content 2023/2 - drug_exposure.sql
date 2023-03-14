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

update cdm5.drug_exposure set drug_source_concept_id=967823 where drug_source_value='125CL';  --> SODIUM CHLORIDE
update cdm5.drug_exposure set drug_source_concept_id=790253 where drug_source_value='648A';  --> DIPOTASSIUM CHLORAZEPATE
update cdm5.drug_exposure set drug_source_concept_id=40223464 where drug_source_value='604A';  --> CYTICOLINE
update cdm5.drug_exposure set drug_source_concept_id=1781733 where drug_source_value='200794A';  --> ATOVAQUONE + PROGUANIL
update cdm5.drug_exposure set drug_source_concept_id=1518254 where drug_source_value='722A';  --> DEXAMETHASONE
update cdm5.drug_exposure set drug_source_concept_id=1747005 where drug_source_value='7358A';  --> CEFDITORENE
update cdm5.drug_exposure set drug_source_concept_id=735979 where drug_source_value='7201A';  --> RISPERIDONE
update cdm5.drug_exposure set drug_source_concept_id=19009405 where drug_source_value='200309A';  --> MICONAZOLE + INOSINE + GUANOSINE + VITAMIN F
update cdm5.drug_exposure set drug_source_concept_id=906072 where drug_source_value='520A';  --> TROPICAMIDE
update cdm5.drug_exposure set drug_source_concept_id=19024770 where drug_source_value='499A';  --> BIOTIN
update cdm5.drug_exposure set drug_source_concept_id=36822464 where drug_source_value='3818A';  --> OTILONIUM BROMIDE
update cdm5.drug_exposure set drug_source_concept_id=974166 where drug_source_value='200680A';  --> TELMISARTAN + HYDROCHLOROTHIAZIDE
update cdm5.drug_exposure set drug_source_concept_id=904453 where drug_source_value='201190A';  --> NAPROXEN + ESOMEPRAZOLE
update cdm5.drug_exposure set drug_source_concept_id=1518254 where drug_source_value='200490A';  --> DEXAMETHASONE IN ASSOCIATION
update cdm5.drug_exposure set drug_source_concept_id=997881 where drug_source_value='616A';  --> CLINDAMYCIN
update cdm5.drug_exposure set drug_source_concept_id=1796435 where drug_source_value='2400A';  --> CEFIXIME
update cdm5.drug_exposure set drug_source_concept_id=1115572 where drug_source_value='463A';  --> BECLOMETHASONE
update cdm5.drug_exposure set drug_source_concept_id=911735 where drug_source_value='1105A';  --> RABEPRAZOL
update cdm5.drug_exposure set drug_source_concept_id=1308738 where drug_source_value='200935A';  --> POTASSIUM IODIDE + CYANOCOBALAMIN + FOLIC ACID
update cdm5.drug_exposure set drug_source_concept_id=43009023 where drug_source_value='2734A';  --> LEVOSULPIRIDE

update cdm5.drug_exposure set drug_concept_id=36879164 where drug_source_value='201131A';  --> SALMONELLA TYPHI INACTIVATED + LIVE SALMONELLA TYPHI 
update cdm5.drug_exposure set drug_source_concept_id=36879164 where drug_source_value='201131A';  --> SALMONELLA TYPHI INACTIVATED + LIVE SALMONELLA TYPHI

update cdm5.drug_exposure set drug_concept_id=45952432 where drug_source_value='1390A';  --> CALCIUM DOBESILATE
update cdm5.drug_exposure set drug_concept_id=1136422 where drug_source_value='2901A';  --> LEVOCETIRIZINE
update cdm5.drug_exposure set drug_concept_id=1361711 where drug_source_value='1037A';  --> NITROGLYCERIN
update cdm5.drug_exposure set drug_concept_id=36293026 where drug_source_value='1967A';  --> MICONAZOL
update cdm5.drug_exposure set drug_concept_id=21290291 where drug_source_value='2104A';  --> MESALAZINE
update cdm5.drug_exposure set drug_concept_id=4308517 where drug_source_value='2223A';  --> OFLOXACIN
update cdm5.drug_exposure set drug_concept_id=1604178 where drug_source_value='200093A';  --> CYANOCOBALAMIN + FOLIC ACID
update cdm5.drug_exposure set drug_concept_id=36030110 where drug_source_value='200086A';  --> CANDESARTAN + HYDROCHLOROTHIAZIDE
update cdm5.drug_exposure set drug_concept_id=907553 where drug_source_value='2569A';  --> LEVOCABASTIN
update cdm5.drug_exposure set drug_concept_id=2086677 where drug_source_value='2445A';  --> IRON PROTEINSUCCINILATE
update cdm5.drug_exposure set drug_concept_id=36838959 where drug_source_value='1571A';  --> FLUOROMETHOLONE
update cdm5.drug_exposure set drug_concept_id=1735947 where drug_source_value='2662A';  --> RIFAXIMINE
update cdm5.drug_exposure set drug_concept_id=1738521 where drug_source_value='1395A';  --> DOXICYCLIN
update cdm5.drug_exposure set drug_concept_id=35195558 where drug_source_value='200783A';  --> VALSARTAN + AMLODIPINE
update cdm5.drug_exposure set drug_concept_id=42903893 where drug_source_value='2936A';  --> FERRIMANITOL OVALBUMIN
update cdm5.drug_exposure set drug_concept_id=36845521 where drug_source_value='209A';  --> NORFLOXACIN
update cdm5.drug_exposure set drug_concept_id=21308928 where drug_source_value='132A';  --> CARMELOSA
update cdm5.drug_exposure set drug_concept_id=4304125 where drug_source_value='2770A';  --> OLANZAPINE
update cdm5.drug_exposure set drug_concept_id=1746940 where drug_source_value='1419A';  --> ERITHROMYCIN
update cdm5.drug_exposure set drug_concept_id=36029071 where drug_source_value='200969A';  --> OLMESARTAN + AMLODIPINE
update cdm5.drug_exposure set drug_concept_id=1703653 where drug_source_value='2436A';  --> ITRACONAZOL
update cdm5.drug_exposure set drug_concept_id=4301213 where drug_source_value='1776A';  --> INDAPAMIDE
update cdm5.drug_exposure set drug_concept_id=778784 where drug_source_value='200610A';  --> SALMETEROL + FLUTICASONE (50/500)
update cdm5.drug_exposure set drug_concept_id=4299068 where drug_source_value='1957A';  --> METHOCARBAMOL
update cdm5.drug_exposure set drug_concept_id=36030600 where drug_source_value='200711A';  --> CALCIPOTRIOL + BETAMETHASONE
update cdm5.drug_exposure set drug_concept_id=1705674 where drug_source_value='90A';  --> TRIMETOPRIM
update cdm5.drug_exposure set drug_concept_id=4041555 where drug_source_value='2209A';  --> PROGESTERONE
update cdm5.drug_exposure set drug_concept_id=4305261 where drug_source_value='326A';  --> SPIRONOLACTONE
update cdm5.drug_exposure set drug_concept_id=986117 where drug_source_value='899A';  --> KETOTIFEN
update cdm5.drug_exposure set drug_concept_id=4301303 where drug_source_value='48A';  --> LIDOCAINE
update cdm5.drug_exposure set drug_concept_id=4299163 where drug_source_value='1343A';  --> HYDROCHLOROTHIAZIDE
update cdm5.drug_exposure set drug_concept_id=36028646 where drug_source_value='201118A';  --> CHONDROITIN + GLUCOSAMINE
update cdm5.drug_exposure set drug_concept_id=407030007 where drug_source_value='2919A';  --> SOLIFENACIN
update cdm5.drug_exposure set drug_concept_id=4156726 where drug_source_value='2884A';  --> OLOPATADINE
update cdm5.drug_exposure set drug_concept_id=4020623 where drug_source_value='887A';  --> PREDNISOLONE
update cdm5.drug_exposure set drug_concept_id=4304136 where drug_source_value='2303A';  --> LORATADINE
update cdm5.drug_exposure set drug_concept_id=4218214 where drug_source_value='150A';  --> FLUOCINOLONE
update cdm5.drug_exposure set drug_concept_id=36249258 where drug_source_value='235A';  --> SERENOA REPENS
update cdm5.drug_exposure set drug_concept_id=4160930 where drug_source_value='89A';  --> CLOXACILLIN
update cdm5.drug_exposure set drug_concept_id=42709318 where drug_source_value='3142A';  --> TOCOPHEROL
update cdm5.drug_exposure set drug_concept_id=19049024 where drug_source_value='123A';  --> POTASSIUM
update cdm5.drug_exposure set drug_concept_id=4299179 where drug_source_value='7380A';  --> FLUVASTATIN
update cdm5.drug_exposure set drug_concept_id=4297676 where drug_source_value='3157A';  --> TRANEXAMIC ACID
update cdm5.drug_exposure set drug_concept_id=4158396 where drug_source_value='594A';  --> CYCLOPENTOLATE
update cdm5.drug_exposure set drug_concept_id=4156872 where drug_source_value='2363A';  --> FLECAINIDE
update cdm5.drug_exposure set drug_concept_id=36029301 where drug_source_value='200127A';  --> COTRIMOXAZOLE ( SULFAMETHOXAZOLE + TRIMETHOPRIM )
update cdm5.drug_exposure set drug_concept_id=35625521 where drug_source_value='7383A';  --> RISEDRONIC ACID
update cdm5.drug_exposure set drug_concept_id=36029999 where drug_source_value='200270A';  --> IRBESARTAN + HYDROCHLOROTHIAZIDE
update cdm5.drug_exposure set drug_concept_id=4260465 where drug_source_value='2571A';  --> HYPROMELLOSE
update cdm5.drug_exposure set drug_concept_id=40481782 where drug_source_value='8396A';  --> SILODOSIN
update cdm5.drug_exposure set drug_concept_id=19092377 where drug_source_value='1283A';  --> LYSINE CLONIXINATE
update cdm5.drug_exposure set drug_concept_id=36030950 where drug_source_value='200336A';  --> NITROGLYCERIN + CAFFEINE
update cdm5.drug_exposure set drug_concept_id=4189283 where drug_source_value='3773A';  --> METHYLPHENIDATE
update cdm5.drug_exposure set drug_concept_id=778784 where drug_source_value='200609A';  --> SALMETEROL + FLUTICASONE (50/250)
update cdm5.drug_exposure set drug_concept_id=36030258 where drug_source_value='200755A';  --> TIMOLOL + BRIMONIDINE
update cdm5.drug_exposure set drug_concept_id=36029117 where drug_source_value='200163A';  --> DIOSMIN + HESPERIDIN
update cdm5.drug_exposure set drug_concept_id=4297551 where drug_source_value='1142A';  --> BRINZOLAMIDE
update cdm5.drug_exposure set drug_concept_id=4189428 where drug_source_value='7234A';  --> TERBINAFINE
update cdm5.drug_exposure set drug_concept_id=4299744 where drug_source_value='7245A';  --> TOPIRAMATE
update cdm5.drug_exposure set drug_concept_id=4023238 where drug_source_value='1171A';  --> TRIAMCINOLONE
update cdm5.drug_exposure set drug_concept_id=1558242 where drug_source_value='637A';  --> GEMFIBROZYL
update cdm5.drug_exposure set drug_concept_id=36029985 where drug_source_value='200279A';  --> LEVONORGESTREL + ETHINYLESTRADIOL
update cdm5.drug_exposure set drug_concept_id=36030063 where drug_source_value='200253A';  --> HYDROCORTISONE + OXYTETRACYCLINE + POLYMYXIN B
update cdm5.drug_exposure set drug_concept_id=36029883 where drug_source_value='200241A';  --> HYDROCHLOROTHIAZIDE + AMILORIDE
update cdm5.drug_exposure set drug_concept_id=19055217 where drug_source_value='2653A';  --> CARBOMER*
update cdm5.drug_exposure set drug_concept_id=4306160 where drug_source_value='56A';  --> CYANOCOBALAMIN
update cdm5.drug_exposure set drug_concept_id=778921 where drug_source_value='200182A';  --> SPIRAMYCIN + METRONIDAZOLE
update cdm5.drug_exposure set drug_concept_id=36029881 where drug_source_value='200269A';  --> IPRATROPIUM + SALBUTAMOL
update cdm5.drug_exposure set drug_concept_id=1135766 where drug_source_value='328A';  --> PHENYLEFRINE
update cdm5.drug_exposure set drug_concept_id=4227193 where drug_source_value='3270A';  --> GINKGO BILOBA
update cdm5.drug_exposure set drug_concept_id=4325361 where drug_source_value='8296A';  --> DESVENLAFAXINE
update cdm5.drug_exposure set drug_concept_id=4186215 where drug_source_value='3100A';  --> TERBUTALINE
update cdm5.drug_exposure set drug_concept_id=4307009 where drug_source_value='3253A';  --> NIFEDIPINE
update cdm5.drug_exposure set drug_concept_id=36030419 where drug_source_value='200341A';  --> OXYTETRACYCLINE + POLYMYXIN B
update cdm5.drug_exposure set drug_concept_id=36030246 where drug_source_value='200738A';  --> SIMVASTATIN + EZETIMIBE
update cdm5.drug_exposure set drug_concept_id=798834 where drug_source_value='633A';  --> CHLOMIPRAMINE
update cdm5.drug_exposure set drug_concept_id=44783823 where drug_source_value='8293A';  --> AGOMELATIN

update cdm5.drug_exposure set drug_source_concept_id=45952432 where drug_source_value='1390A';  --> CALCIUM DOBESILATE
update cdm5.drug_exposure set drug_source_concept_id=1136422 where drug_source_value='2901A';  --> LEVOCETIRIZINE
update cdm5.drug_exposure set drug_source_concept_id=1361711 where drug_source_value='1037A';  --> NITROGLYCERIN
update cdm5.drug_exposure set drug_source_concept_id=36293026 where drug_source_value='1967A';  --> MICONAZOL
update cdm5.drug_exposure set drug_source_concept_id=21290291 where drug_source_value='2104A';  --> MESALAZINE
update cdm5.drug_exposure set drug_source_concept_id=4308517 where drug_source_value='2223A';  --> OFLOXACIN
update cdm5.drug_exposure set drug_source_concept_id=1604178 where drug_source_value='200093A';  --> CYANOCOBALAMIN + FOLIC ACID
update cdm5.drug_exposure set drug_source_concept_id=36030110 where drug_source_value='200086A';  --> CANDESARTAN + HYDROCHLOROTHIAZIDE
update cdm5.drug_exposure set drug_source_concept_id=907553 where drug_source_value='2569A';  --> LEVOCABASTIN
update cdm5.drug_exposure set drug_source_concept_id=2086677 where drug_source_value='2445A';  --> IRON PROTEINSUCCINILATE
update cdm5.drug_exposure set drug_source_concept_id=36838959 where drug_source_value='1571A';  --> FLUOROMETHOLONE
update cdm5.drug_exposure set drug_source_concept_id=1735947 where drug_source_value='2662A';  --> RIFAXIMINE
update cdm5.drug_exposure set drug_source_concept_id=1738521 where drug_source_value='1395A';  --> DOXICYCLIN
update cdm5.drug_exposure set drug_source_concept_id=35195558 where drug_source_value='200783A';  --> VALSARTAN + AMLODIPINE
update cdm5.drug_exposure set drug_source_concept_id=42903893 where drug_source_value='2936A';  --> FERRIMANITOL OVALBUMIN
update cdm5.drug_exposure set drug_source_concept_id=36845521 where drug_source_value='209A';  --> NORFLOXACIN
update cdm5.drug_exposure set drug_source_concept_id=21308928 where drug_source_value='132A';  --> CARMELOSA
update cdm5.drug_exposure set drug_source_concept_id=4304125 where drug_source_value='2770A';  --> OLANZAPINE
update cdm5.drug_exposure set drug_source_concept_id=1746940 where drug_source_value='1419A';  --> ERITHROMYCIN
update cdm5.drug_exposure set drug_source_concept_id=36029071 where drug_source_value='200969A';  --> OLMESARTAN + AMLODIPINE
update cdm5.drug_exposure set drug_source_concept_id=1703653 where drug_source_value='2436A';  --> ITRACONAZOL
update cdm5.drug_exposure set drug_source_concept_id=4301213 where drug_source_value='1776A';  --> INDAPAMIDE
update cdm5.drug_exposure set drug_source_concept_id=778784 where drug_source_value='200610A';  --> SALMETEROL + FLUTICASONE (50/500)
update cdm5.drug_exposure set drug_source_concept_id=4299068 where drug_source_value='1957A';  --> METHOCARBAMOL
update cdm5.drug_exposure set drug_source_concept_id=36030600 where drug_source_value='200711A';  --> CALCIPOTRIOL + BETAMETHASONE
update cdm5.drug_exposure set drug_source_concept_id=1705674 where drug_source_value='90A';  --> TRIMETOPRIM
update cdm5.drug_exposure set drug_source_concept_id=4041555 where drug_source_value='2209A';  --> PROGESTERONE
update cdm5.drug_exposure set drug_source_concept_id=4305261 where drug_source_value='326A';  --> SPIRONOLACTONE
update cdm5.drug_exposure set drug_source_concept_id=986117 where drug_source_value='899A';  --> KETOTIFEN
update cdm5.drug_exposure set drug_source_concept_id=4301303 where drug_source_value='48A';  --> LIDOCAINE
update cdm5.drug_exposure set drug_source_concept_id=4299163 where drug_source_value='1343A';  --> HYDROCHLOROTHIAZIDE
update cdm5.drug_exposure set drug_source_concept_id=36028646 where drug_source_value='201118A';  --> CHONDROITIN + GLUCOSAMINE
update cdm5.drug_exposure set drug_source_concept_id=407030007 where drug_source_value='2919A';  --> SOLIFENACIN
update cdm5.drug_exposure set drug_source_concept_id=4156726 where drug_source_value='2884A';  --> OLOPATADINE
update cdm5.drug_exposure set drug_source_concept_id=4020623 where drug_source_value='887A';  --> PREDNISOLONE
update cdm5.drug_exposure set drug_source_concept_id=4304136 where drug_source_value='2303A';  --> LORATADINE
update cdm5.drug_exposure set drug_source_concept_id=4218214 where drug_source_value='150A';  --> FLUOCINOLONE
update cdm5.drug_exposure set drug_source_concept_id=36249258 where drug_source_value='235A';  --> SERENOA REPENS
update cdm5.drug_exposure set drug_source_concept_id=4160930 where drug_source_value='89A';  --> CLOXACILLIN
update cdm5.drug_exposure set drug_source_concept_id=42709318 where drug_source_value='3142A';  --> TOCOPHEROL
update cdm5.drug_exposure set drug_source_concept_id=19049024 where drug_source_value='123A';  --> POTASSIUM
update cdm5.drug_exposure set drug_source_concept_id=4299179 where drug_source_value='7380A';  --> FLUVASTATIN
update cdm5.drug_exposure set drug_source_concept_id=4297676 where drug_source_value='3157A';  --> TRANEXAMIC ACID
update cdm5.drug_exposure set drug_source_concept_id=4158396 where drug_source_value='594A';  --> CYCLOPENTOLATE
update cdm5.drug_exposure set drug_source_concept_id=4156872 where drug_source_value='2363A';  --> FLECAINIDE
update cdm5.drug_exposure set drug_source_concept_id=36029301 where drug_source_value='200127A';  --> COTRIMOXAZOLE ( SULFAMETHOXAZOLE + TRIMETHOPRIM )
update cdm5.drug_exposure set drug_source_concept_id=35625521 where drug_source_value='7383A';  --> RISEDRONIC ACID
update cdm5.drug_exposure set drug_source_concept_id=36029999 where drug_source_value='200270A';  --> IRBESARTAN + HYDROCHLOROTHIAZIDE
update cdm5.drug_exposure set drug_source_concept_id=4260465 where drug_source_value='2571A';  --> HYPROMELLOSE
update cdm5.drug_exposure set drug_source_concept_id=40481782 where drug_source_value='8396A';  --> SILODOSIN
update cdm5.drug_exposure set drug_source_concept_id=19092377 where drug_source_value='1283A';  --> LYSINE CLONIXINATE
update cdm5.drug_exposure set drug_source_concept_id=36030950 where drug_source_value='200336A';  --> NITROGLYCERIN + CAFFEINE
update cdm5.drug_exposure set drug_source_concept_id=4189283 where drug_source_value='3773A';  --> METHYLPHENIDATE
update cdm5.drug_exposure set drug_source_concept_id=778784 where drug_source_value='200609A';  --> SALMETEROL + FLUTICASONE (50/250)
update cdm5.drug_exposure set drug_source_concept_id=36030258 where drug_source_value='200755A';  --> TIMOLOL + BRIMONIDINE
update cdm5.drug_exposure set drug_source_concept_id=36029117 where drug_source_value='200163A';  --> DIOSMIN + HESPERIDIN
update cdm5.drug_exposure set drug_source_concept_id=4297551 where drug_source_value='1142A';  --> BRINZOLAMIDE
update cdm5.drug_exposure set drug_source_concept_id=4189428 where drug_source_value='7234A';  --> TERBINAFINE
update cdm5.drug_exposure set drug_source_concept_id=4299744 where drug_source_value='7245A';  --> TOPIRAMATE
update cdm5.drug_exposure set drug_source_concept_id=4023238 where drug_source_value='1171A';  --> TRIAMCINOLONE
update cdm5.drug_exposure set drug_source_concept_id=1558242 where drug_source_value='637A';  --> GEMFIBROZYL
update cdm5.drug_exposure set drug_source_concept_id=36029985 where drug_source_value='200279A';  --> LEVONORGESTREL + ETHINYLESTRADIOL
update cdm5.drug_exposure set drug_source_concept_id=36030063 where drug_source_value='200253A';  --> HYDROCORTISONE + OXYTETRACYCLINE + POLYMYXIN B
update cdm5.drug_exposure set drug_source_concept_id=36029883 where drug_source_value='200241A';  --> HYDROCHLOROTHIAZIDE + AMILORIDE
update cdm5.drug_exposure set drug_source_concept_id=19055217 where drug_source_value='2653A';  --> CARBOMER*
update cdm5.drug_exposure set drug_source_concept_id=4306160 where drug_source_value='56A';  --> CYANOCOBALAMIN
update cdm5.drug_exposure set drug_source_concept_id=778921 where drug_source_value='200182A';  --> SPIRAMYCIN + METRONIDAZOLE
update cdm5.drug_exposure set drug_source_concept_id=36029881 where drug_source_value='200269A';  --> IPRATROPIUM + SALBUTAMOL
update cdm5.drug_exposure set drug_source_concept_id=1135766 where drug_source_value='328A';  --> PHENYLEFRINE
update cdm5.drug_exposure set drug_source_concept_id=4227193 where drug_source_value='3270A';  --> GINKGO BILOBA
update cdm5.drug_exposure set drug_source_concept_id=4325361 where drug_source_value='8296A';  --> DESVENLAFAXINE
update cdm5.drug_exposure set drug_source_concept_id=4186215 where drug_source_value='3100A';  --> TERBUTALINE
update cdm5.drug_exposure set drug_source_concept_id=4307009 where drug_source_value='3253A';  --> NIFEDIPINE
update cdm5.drug_exposure set drug_source_concept_id=36030419 where drug_source_value='200341A';  --> OXYTETRACYCLINE + POLYMYXIN B
update cdm5.drug_exposure set drug_source_concept_id=36030246 where drug_source_value='200738A';  --> SIMVASTATIN + EZETIMIBE
update cdm5.drug_exposure set drug_source_concept_id=798834 where drug_source_value='633A';  --> CHLOMIPRAMINE
update cdm5.drug_exposure set drug_source_concept_id=44783823 where drug_source_value='8293A';  --> AGOMELATIN

update cdm5.drug_exposure set drug_concept_id=36029539 where drug_source_value='200004A';  --> ACETYLSALICYLIC ACID + CODEINE
update cdm5.drug_exposure set drug_concept_id=45766699 where drug_source_value='8598A';  --> ACLIDINIUM
update cdm5.drug_exposure set drug_concept_id=36027680 where drug_source_value='200951A';  --> ALENDRONATE + CHOLECALCIFEROL (5600 UI)
update cdm5.drug_exposure set drug_concept_id=4193967 where drug_source_value='2781A';  --> ALENDRONIC ACID
update cdm5.drug_exposure set drug_concept_id=4218208 where drug_source_value='7009A';  --> ALFUZOSIN
update cdm5.drug_exposure set drug_concept_id=44783368 where drug_source_value='3881A';  --> ALMAGATE
update cdm5.drug_exposure set drug_concept_id=4164032 where drug_source_value='45A';  --> AZATIOPRINE
update cdm5.drug_exposure set drug_concept_id=4159309 where drug_source_value='2563A';  --> AZELASTINE
update cdm5.drug_exposure set drug_concept_id=36029114 where drug_source_value='200700A';  --> BECLOMETHASONE + CLIOQUINOL
update cdm5.drug_exposure set drug_concept_id=4299847 where drug_source_value='2713A';  --> BICALUTAMIDE
update cdm5.drug_exposure set drug_concept_id=4156724 where drug_source_value='7389A';  --> BRIMONIDINE
update cdm5.drug_exposure set drug_concept_id=4298913 where drug_source_value='814A';  --> BUPRENORPHINE
update cdm5.drug_exposure set drug_concept_id=36028898 where drug_source_value='200101A';  --> CLOCINIZINE + PHENYLPROPANOLAMINE
update cdm5.drug_exposure set drug_concept_id=4306846 where drug_source_value='327A';  --> Chlorthalidone
update cdm5.drug_exposure set drug_concept_id=4301322 where drug_source_value='682A';  --> CLOZAPINE
update cdm5.drug_exposure set drug_concept_id=1101554 where drug_source_value='142A';  --> COLCHICIN
update cdm5.drug_exposure set drug_concept_id=36027929 where drug_source_value='200099A';  --> CYPROTERONE + ETHINYLESTRADIOL
update cdm5.drug_exposure set drug_concept_id=4303520 where drug_source_value='1179A';  --> DEXIBUPROFEN
update cdm5.drug_exposure set drug_concept_id=36030625 where drug_source_value='200146A';  --> DIAZEPAM + PYRIDOXINE
update cdm5.drug_exposure set drug_concept_id=36029967 where drug_source_value='200149A';  --> DICLOFENAC + MISOPROSTOL
update cdm5.drug_exposure set drug_concept_id=4306887 where drug_source_value='770A';  --> DIGOXIN
update cdm5.drug_exposure set drug_concept_id=4190195 where drug_source_value='2754A';  --> DORZOLAMIDE
update cdm5.drug_exposure set drug_concept_id=778916 where drug_source_value='200168A';  --> DOXYCYCLINE + TRYPSIN + CHYMOTRYPSIN
update cdm5.drug_exposure set drug_concept_id=36030131 where drug_source_value='200737A';  --> EPROSARTAN + HYDROCHLOROTHIAZIDE
update cdm5.drug_exposure set drug_concept_id=36029179 where drug_source_value='200180A';  --> ERGOTAMINE + PARACETAMOL + CAFFEINE
update cdm5.drug_exposure set drug_concept_id=36031101 where drug_source_value='200795A';  --> ETHINYLESTRADIOL + DROSPIRENONE
update cdm5.drug_exposure set drug_concept_id=43251548 where drug_source_value='9995A';  --> ETHYL ESTERS OF OMEGA 3 ACIDS
update cdm5.drug_exposure set drug_concept_id=4331363 where drug_source_value='8082A';  --> FESOTERODINE
update cdm5.drug_exposure set drug_concept_id=44783781 where drug_source_value='7100A';  --> FLUTRIMAZOL
update cdm5.drug_exposure set drug_concept_id=1361711 where drug_source_value='1651NN';  --> GLYCERYL TRINITRATE
update cdm5.drug_exposure set drug_concept_id=4225166 where drug_source_value='2762A';  --> IBANDRONIC ACID
update cdm5.drug_exposure set drug_concept_id=36030756 where drug_source_value='200944A';  --> IBUPROFEN + CODEINE
update cdm5.drug_exposure set drug_concept_id=36029755 where drug_source_value='201282A';  --> INDACATEROL + GLYCOPYRRONIUM
update cdm5.drug_exposure set drug_concept_id=4159986 where drug_source_value='167A';  --> INDOMETHACIN
update cdm5.drug_exposure set drug_concept_id=4139431 where drug_source_value='1123A';  --> INSULIN ASPARTA
update cdm5.drug_exposure set drug_concept_id=36029999 where drug_source_value='200786A';  --> IRBESARTAN + HYDROCHLOROTHIAZIDE (300/25) MG
update cdm5.drug_exposure set drug_concept_id=36029999 where drug_source_value='200618A';  --> IRBESARTAN + HYDROCHLOROTHIAZIDE 150/12,5
update cdm5.drug_exposure set drug_concept_id=4186842 where drug_source_value='2108A';  --> KETOROLAC
update cdm5.drug_exposure set drug_concept_id=4301320 where drug_source_value='2579A';  --> LAMOTRIGINE
update cdm5.drug_exposure set drug_concept_id=4264855 where drug_source_value='342A';  --> LEUPRORELIN
update cdm5.drug_exposure set drug_concept_id=36029225 where drug_source_value='200277A';  --> LEVODOPA + CARBIDOPA
update cdm5.drug_exposure set drug_concept_id=19005147 where drug_source_value='1839A';  --> LEVOMEPROMAZINE
update cdm5.drug_exposure set drug_concept_id=4305255 where drug_source_value='3327A';  --> LOPERAMIDE
update cdm5.drug_exposure set drug_concept_id=36030001 where drug_source_value='200619A';  --> LOSARTAN + HYDROCHLOROTHIAZIDE 100/25
update cdm5.drug_exposure set drug_concept_id=36030001 where drug_source_value='200290A';  --> LOSARTAN + HYDROCHLOROTHIAZIDE 50/12.5
update cdm5.drug_exposure set drug_concept_id=1794280 where drug_source_value='1877A';  --> MEBENDAZOL
update cdm5.drug_exposure set drug_concept_id=1305058 where drug_source_value='418A';  --> METHOTREXATE
update cdm5.drug_exposure set drug_concept_id=4159993 where drug_source_value='86A';  --> NITROFURANTOIN
update cdm5.drug_exposure set drug_concept_id=36028870 where drug_source_value='201183A';  --> OLMESARTAN + AMLODIPINE + HYDROCHLOROTHIAZIDE
update cdm5.drug_exposure set drug_concept_id=36879162 where drug_source_value='2652A';  --> OSEIN-HYDROXYAPATITE COMPLEX
update cdm5.drug_exposure set drug_concept_id=4156858 where drug_source_value='2081A';  --> OXYTETRACYCLINE
update cdm5.drug_exposure set drug_concept_id=4144459 where drug_source_value='8094A';  --> PALIPERIDONE
update cdm5.drug_exposure set drug_concept_id=36831278 where drug_source_value='2170A';  --> PLANTAGO OVATA
update cdm5.drug_exposure set drug_concept_id=19005046 where drug_source_value='34A';  --> PYRIDOXIN
update cdm5.drug_exposure set drug_concept_id=4297696 where drug_source_value='1117A';  --> RIMEXOLONE
update cdm5.drug_exposure set drug_concept_id=778784 where drug_source_value='200607A';  --> SALMETEROL + FLUTICASONE (25/250)
update cdm5.drug_exposure set drug_concept_id=4255872 where drug_source_value='2558A';  --> SERTACONAZOL
update cdm5.drug_exposure set drug_concept_id=4307395 where drug_source_value='8075A';  --> SITAGLIPTINE
update cdm5.drug_exposure set drug_concept_id=4197048 where drug_source_value='2938A';  --> STRONTIUM RANELATE
update cdm5.drug_exposure set drug_concept_id=1836391 where drug_source_value='986A';  --> SULFADIAZIN
update cdm5.drug_exposure set drug_concept_id=44782847 where drug_source_value='3360A';  --> SULODEXIDE
update cdm5.drug_exposure set drug_concept_id=4304180 where drug_source_value='2402A';  --> TERAZOSIN
update cdm5.drug_exposure set drug_concept_id=1237049 where drug_source_value='365A';  --> THEOPHYLIN
update cdm5.drug_exposure set drug_concept_id=1521987 where drug_source_value='5070A';  --> teriparatide
update cdm5.drug_exposure set drug_concept_id=4125077 where drug_source_value='57A';  --> THIAMINE
update cdm5.drug_exposure set drug_concept_id=36030344 where drug_source_value='200741A';  --> TIMOLOL + DORZOLAMIDE
update cdm5.drug_exposure set drug_concept_id=36030140 where drug_source_value='200612A';  --> TIMOLOL + LATANOPROST
update cdm5.drug_exposure set drug_concept_id=913782 where drug_source_value='2796A';  --> TOLTERODINE
update cdm5.drug_exposure set drug_concept_id=4165254 where drug_source_value='1174A';  --> Ursodiol ACID
update cdm5.drug_exposure set drug_concept_id=4305262 where drug_source_value='3194A';  --> VALPROIC ACID
update cdm5.drug_exposure set drug_concept_id=36031103 where drug_source_value='201116A';  --> VALSARTAN + AMLODIPINE + HYDROCHLOROTHIAZIDE
update cdm5.drug_exposure set drug_concept_id=4187569 where drug_source_value='3203A';  --> VERAPAMYL

update cdm5.drug_exposure set drug_source_concept_id=36029539 where drug_source_value='200004A';  --> ACETYLSALICYLIC ACID + CODEINE
update cdm5.drug_exposure set drug_source_concept_id=45766699 where drug_source_value='8598A';  --> ACLIDINIUM
update cdm5.drug_exposure set drug_source_concept_id=36027680 where drug_source_value='200951A';  --> ALENDRONATE + CHOLECALCIFEROL (5600 UI)
update cdm5.drug_exposure set drug_source_concept_id=4193967 where drug_source_value='2781A';  --> ALENDRONIC ACID
update cdm5.drug_exposure set drug_source_concept_id=4218208 where drug_source_value='7009A';  --> ALFUZOSIN
update cdm5.drug_exposure set drug_source_concept_id=44783368 where drug_source_value='3881A';  --> ALMAGATE
update cdm5.drug_exposure set drug_source_concept_id=4164032 where drug_source_value='45A';  --> AZATIOPRINE
update cdm5.drug_exposure set drug_source_concept_id=4159309 where drug_source_value='2563A';  --> AZELASTINE
update cdm5.drug_exposure set drug_source_concept_id=36029114 where drug_source_value='200700A';  --> BECLOMETHASONE + CLIOQUINOL
update cdm5.drug_exposure set drug_source_concept_id=4299847 where drug_source_value='2713A';  --> BICALUTAMIDE
update cdm5.drug_exposure set drug_source_concept_id=4156724 where drug_source_value='7389A';  --> BRIMONIDINE
update cdm5.drug_exposure set drug_source_concept_id=4298913 where drug_source_value='814A';  --> BUPRENORPHINE
update cdm5.drug_exposure set drug_source_concept_id=36028898 where drug_source_value='200101A';  --> CLOCINIZINE + PHENYLPROPANOLAMINE
update cdm5.drug_exposure set drug_source_concept_id=4306846 where drug_source_value='327A';  --> Chlorthalidone
update cdm5.drug_exposure set drug_source_concept_id=4301322 where drug_source_value='682A';  --> CLOZAPINE
update cdm5.drug_exposure set drug_source_concept_id=1101554 where drug_source_value='142A';  --> COLCHICIN
update cdm5.drug_exposure set drug_source_concept_id=36027929 where drug_source_value='200099A';  --> CYPROTERONE + ETHINYLESTRADIOL
update cdm5.drug_exposure set drug_source_concept_id=4303520 where drug_source_value='1179A';  --> DEXIBUPROFEN
update cdm5.drug_exposure set drug_source_concept_id=36030625 where drug_source_value='200146A';  --> DIAZEPAM + PYRIDOXINE
update cdm5.drug_exposure set drug_source_concept_id=36029967 where drug_source_value='200149A';  --> DICLOFENAC + MISOPROSTOL
update cdm5.drug_exposure set drug_source_concept_id=4306887 where drug_source_value='770A';  --> DIGOXIN
update cdm5.drug_exposure set drug_source_concept_id=4190195 where drug_source_value='2754A';  --> DORZOLAMIDE
update cdm5.drug_exposure set drug_source_concept_id=778916 where drug_source_value='200168A';  --> DOXYCYCLINE + TRYPSIN + CHYMOTRYPSIN
update cdm5.drug_exposure set drug_source_concept_id=36030131 where drug_source_value='200737A';  --> EPROSARTAN + HYDROCHLOROTHIAZIDE
update cdm5.drug_exposure set drug_source_concept_id=36029179 where drug_source_value='200180A';  --> ERGOTAMINE + PARACETAMOL + CAFFEINE
update cdm5.drug_exposure set drug_source_concept_id=36031101 where drug_source_value='200795A';  --> ETHINYLESTRADIOL + DROSPIRENONE
update cdm5.drug_exposure set drug_source_concept_id=43251548 where drug_source_value='9995A';  --> ETHYL ESTERS OF OMEGA 3 ACIDS
update cdm5.drug_exposure set drug_source_concept_id=4331363 where drug_source_value='8082A';  --> FESOTERODINE
update cdm5.drug_exposure set drug_source_concept_id=44783781 where drug_source_value='7100A';  --> FLUTRIMAZOL
update cdm5.drug_exposure set drug_source_concept_id=1361711 where drug_source_value='1651NN';  --> GLYCERYL TRINITRATE
update cdm5.drug_exposure set drug_source_concept_id=4225166 where drug_source_value='2762A';  --> IBANDRONIC ACID
update cdm5.drug_exposure set drug_source_concept_id=36030756 where drug_source_value='200944A';  --> IBUPROFEN + CODEINE
update cdm5.drug_exposure set drug_source_concept_id=36029755 where drug_source_value='201282A';  --> INDACATEROL + GLYCOPYRRONIUM
update cdm5.drug_exposure set drug_source_concept_id=4159986 where drug_source_value='167A';  --> INDOMETHACIN
update cdm5.drug_exposure set drug_source_concept_id=4139431 where drug_source_value='1123A';  --> INSULIN ASPARTA
update cdm5.drug_exposure set drug_source_concept_id=36029999 where drug_source_value='200786A';  --> IRBESARTAN + HYDROCHLOROTHIAZIDE (300/25) MG
update cdm5.drug_exposure set drug_source_concept_id=36029999 where drug_source_value='200618A';  --> IRBESARTAN + HYDROCHLOROTHIAZIDE 150/12,5
update cdm5.drug_exposure set drug_source_concept_id=4186842 where drug_source_value='2108A';  --> KETOROLAC
update cdm5.drug_exposure set drug_source_concept_id=4301320 where drug_source_value='2579A';  --> LAMOTRIGINE
update cdm5.drug_exposure set drug_source_concept_id=4264855 where drug_source_value='342A';  --> LEUPRORELIN
update cdm5.drug_exposure set drug_source_concept_id=36029225 where drug_source_value='200277A';  --> LEVODOPA + CARBIDOPA
update cdm5.drug_exposure set drug_source_concept_id=19005147 where drug_source_value='1839A';  --> LEVOMEPROMAZINE
update cdm5.drug_exposure set drug_source_concept_id=4305255 where drug_source_value='3327A';  --> LOPERAMIDE
update cdm5.drug_exposure set drug_source_concept_id=36030001 where drug_source_value='200619A';  --> LOSARTAN + HYDROCHLOROTHIAZIDE 100/25
update cdm5.drug_exposure set drug_source_concept_id=36030001 where drug_source_value='200290A';  --> LOSARTAN + HYDROCHLOROTHIAZIDE 50/12.5
update cdm5.drug_exposure set drug_source_concept_id=1794280 where drug_source_value='1877A';  --> MEBENDAZOL
update cdm5.drug_exposure set drug_source_concept_id=1305058 where drug_source_value='418A';  --> METHOTREXATE
update cdm5.drug_exposure set drug_source_concept_id=4159993 where drug_source_value='86A';  --> NITROFURANTOIN
update cdm5.drug_exposure set drug_source_concept_id=36028870 where drug_source_value='201183A';  --> OLMESARTAN + AMLODIPINE + HYDROCHLOROTHIAZIDE
update cdm5.drug_exposure set drug_source_concept_id=36879162 where drug_source_value='2652A';  --> OSEIN-HYDROXYAPATITE COMPLEX
update cdm5.drug_exposure set drug_source_concept_id=4156858 where drug_source_value='2081A';  --> OXYTETRACYCLINE
update cdm5.drug_exposure set drug_source_concept_id=4144459 where drug_source_value='8094A';  --> PALIPERIDONE
update cdm5.drug_exposure set drug_source_concept_id=36831278 where drug_source_value='2170A';  --> PLANTAGO OVATA
update cdm5.drug_exposure set drug_source_concept_id=19005046 where drug_source_value='34A';  --> PYRIDOXIN
update cdm5.drug_exposure set drug_source_concept_id=4297696 where drug_source_value='1117A';  --> RIMEXOLONE
update cdm5.drug_exposure set drug_source_concept_id=778784 where drug_source_value='200607A';  --> SALMETEROL + FLUTICASONE (25/250)
update cdm5.drug_exposure set drug_source_concept_id=4255872 where drug_source_value='2558A';  --> SERTACONAZOL
update cdm5.drug_exposure set drug_source_concept_id=4307395 where drug_source_value='8075A';  --> SITAGLIPTINE
update cdm5.drug_exposure set drug_source_concept_id=4197048 where drug_source_value='2938A';  --> STRONTIUM RANELATE
update cdm5.drug_exposure set drug_source_concept_id=1836391 where drug_source_value='986A';  --> SULFADIAZIN
update cdm5.drug_exposure set drug_source_concept_id=44782847 where drug_source_value='3360A';  --> SULODEXIDE
update cdm5.drug_exposure set drug_source_concept_id=4304180 where drug_source_value='2402A';  --> TERAZOSIN
update cdm5.drug_exposure set drug_source_concept_id=1237049 where drug_source_value='365A';  --> THEOPHYLIN
update cdm5.drug_exposure set drug_source_concept_id=1521987 where drug_source_value='5070A';  --> teriparatide
update cdm5.drug_exposure set drug_source_concept_id=4125077 where drug_source_value='57A';  --> THIAMINE
update cdm5.drug_exposure set drug_source_concept_id=36030344 where drug_source_value='200741A';  --> TIMOLOL + DORZOLAMIDE
update cdm5.drug_exposure set drug_source_concept_id=36030140 where drug_source_value='200612A';  --> TIMOLOL + LATANOPROST
update cdm5.drug_exposure set drug_source_concept_id=913782 where drug_source_value='2796A';  --> TOLTERODINE
update cdm5.drug_exposure set drug_source_concept_id=4165254 where drug_source_value='1174A';  --> Ursodiol ACID
update cdm5.drug_exposure set drug_source_concept_id=4305262 where drug_source_value='3194A';  --> VALPROIC ACID
update cdm5.drug_exposure set drug_source_concept_id=36031103 where drug_source_value='201116A';  --> VALSARTAN + AMLODIPINE + HYDROCHLOROTHIAZIDE
update cdm5.drug_exposure set drug_source_concept_id=4187569 where drug_source_value='3203A';  --> VERAPAMYL

update cdm5.drug_exposure set drug_concept_id=4159477 where drug_source_value='226A';  --> ACETAZOLAMIDE
update cdm5.drug_exposure set drug_concept_id=36648072 where drug_source_value='813A';  --> ADRENALIN
update cdm5.drug_exposure set drug_concept_id=36027680 where drug_source_value='200751A';  --> ALENDRONATE + CHOLECALCIFEROL (2800 UI)
update cdm5.drug_exposure set drug_concept_id=36030178 where drug_source_value='200750A';  --> AMLODIPINE + ATORVASTATIN
update cdm5.drug_exposure set drug_concept_id=4297546 where drug_source_value='2729A';  --> ANASTROZOL
update cdm5.drug_exposure set drug_concept_id=4189416 where drug_source_value='7007A';  --> APRACLONIDINE
update cdm5.drug_exposure set drug_concept_id=4306852 where drug_source_value='454A';  --> BACLOFENUM
update cdm5.drug_exposure set drug_concept_id=4301202 where drug_source_value='500A';  --> BIPERIDENE
update cdm5.drug_exposure set drug_concept_id=36029913 where drug_source_value='200074A';  --> BISOPROLOL + HYDROCHLOROTHIAZIDE
update cdm5.drug_exposure set drug_concept_id=4304150 where drug_source_value='7034A';  --> CABERGOLINE
update cdm5.drug_exposure set drug_concept_id=19035704 where drug_source_value='21CA';  --> CALCIUM CARBONATE
update cdm5.drug_exposure set drug_concept_id=36027527 where drug_source_value='200085A';  --> CALCIUM PIDOLATE + CHOLECALCIFEROL
update cdm5.drug_exposure set drug_concept_id=36029924 where drug_source_value='200088A';  --> CAPTOPRIL + HYDROCHLOROTHIAZIDE
update cdm5.drug_exposure set drug_concept_id=4306720 where drug_source_value='561A';  --> CARBAMAZEPINE
update cdm5.drug_exposure set drug_concept_id=4301096 where drug_source_value='671A';  --> CHLORPROMAZINE
update cdm5.drug_exposure set drug_concept_id=4159984 where drug_source_value='675A';  --> CHLORTETRACYCLINE
update cdm5.drug_exposure set drug_concept_id=4301211 where drug_source_value='684A';  --> CHOLESTIRAMINE
update cdm5.drug_exposure set drug_concept_id=36028034 where drug_source_value='200129A';  --> DEANOL + HEPTAMINOL
update cdm5.drug_exposure set drug_concept_id=4299889 where drug_source_value='727A';  --> DEXTROMETHORPHAN
update cdm5.drug_exposure set drug_concept_id=4297523 where drug_source_value='2780A';  --> DONEPEZYL
update cdm5.drug_exposure set drug_concept_id=36029973 where drug_source_value='200636A';  --> ENALAPRIL + NITRENDIPINE
update cdm5.drug_exposure set drug_concept_id=4251126 where drug_source_value='2924A';  --> EPLERENONE
update cdm5.drug_exposure set drug_concept_id=4329435 where drug_source_value='3556A';  --> ETHYL CHLORIDE
update cdm5.drug_exposure set drug_concept_id=734275 where drug_source_value='55A';  --> FENOBARBITAL
update cdm5.drug_exposure set drug_concept_id=4158403 where drug_source_value='159A';  --> FLUVOXAMINE
update cdm5.drug_exposure set drug_concept_id=36030171 where drug_source_value='200228A';  --> FUROSEMIDE + TRIAMTERENE
update cdm5.drug_exposure set drug_concept_id=4217724 where drug_source_value='2446A';  --> GALANTAMINE
update cdm5.drug_exposure set drug_concept_id=36291238 where drug_source_value='1653A';  --> GLIBENCLAMIDE
update cdm5.drug_exposure set drug_concept_id=35625980 where drug_source_value='1659A';  --> GLICOPIRRONIUM
update cdm5.drug_exposure set drug_concept_id=1360332 where drug_source_value='200416A';  --> GLUCOSALINE SOLUTION
update cdm5.drug_exposure set drug_concept_id=45765779 where drug_source_value='433A';  --> HYDROSMINE
update cdm5.drug_exposure set drug_concept_id=4301186 where drug_source_value='316A';  --> HYDROXYCARBAMIDE
update cdm5.drug_exposure set drug_concept_id=4159991 where drug_source_value='2143A';  --> HYDROXYCHLOROQUINE
update cdm5.drug_exposure set drug_concept_id=4139431 where drug_source_value='200675A';  --> INSULIN ASPARTA INTERMEDIATE ACTING
update cdm5.drug_exposure set drug_concept_id=4259079 where drug_source_value='7320A';  --> INSULIN LISPRO FAST ACTING
update cdm5.drug_exposure set drug_concept_id=4297522 where drug_source_value='1794A';  --> ISOSORBIDE
update cdm5.drug_exposure set drug_concept_id=4297517 where drug_source_value='1810A';  --> KETOPROPHEN
update cdm5.drug_exposure set drug_concept_id=4297547 where drug_source_value='2758A';  --> LETROZOLE
update cdm5.drug_exposure set drug_concept_id=36030000 where drug_source_value='200288A';  --> LISINOPRIL + HYDROCHLOROTHIAZIDE
update cdm5.drug_exposure set drug_concept_id=4312210 where drug_source_value='1071A';  --> LITHIUM
update cdm5.drug_exposure set drug_concept_id=4320360 where drug_source_value='2345A';  --> LOVASTATIN
update cdm5.drug_exposure set drug_concept_id=4054329 where drug_source_value='399A';  --> MEDROXYPROGESTERONE
update cdm5.drug_exposure set drug_concept_id=4227708 where drug_source_value='2299A';  --> MEMANTINE
update cdm5.drug_exposure set drug_concept_id=4156854 where drug_source_value='1971A';  --> MINOCYCLINE
update cdm5.drug_exposure set drug_concept_id=4304129 where drug_source_value='2138A';  --> NABUMETONE
update cdm5.drug_exposure set drug_concept_id=4157768 where drug_source_value='93A';  --> NICARDIPINE
update cdm5.drug_exposure set drug_concept_id=19019023 where drug_source_value='107A';  --> NIFLUMIC ACID
update cdm5.drug_exposure set drug_concept_id=4306035 where drug_source_value='2179A';  --> NIMODIPINE
update cdm5.drug_exposure set drug_concept_id=4129562 where drug_source_value='158A';  --> NORETHISTERONE
update cdm5.drug_exposure set drug_concept_id=36029982 where drug_source_value='200337A';  --> NORETHISTERONE + ESTRADIOL (FIXED DOSE)
update cdm5.drug_exposure set drug_concept_id=36030141 where drug_source_value='200631A';  --> PERINDOPRIL + INDAPAMIDE
update cdm5.drug_exposure set drug_concept_id=4132489 where drug_source_value='2647A';  --> PERMETHRIN
update cdm5.drug_exposure set drug_concept_id=36836913 where drug_source_value='1334A';  --> PHENACETIN
update cdm5.drug_exposure set drug_concept_id=36029947 where drug_source_value='200373A';  --> POTASSIUM CITRATE + CITRIC ACID
update cdm5.drug_exposure set drug_concept_id=4303383 where drug_source_value='2976A';  --> RASAGILINE
update cdm5.drug_exposure set drug_concept_id=778784 where drug_source_value='200606A';  --> SALMETEROL + FLUTICASONE (25/125)
update cdm5.drug_exposure set drug_concept_id=19066992 where drug_source_value='2185A';  --> SILYMARIN
update cdm5.drug_exposure set drug_concept_id=4299050 where drug_source_value='77A';  --> SUCRALPHATE
update cdm5.drug_exposure set drug_concept_id=36030884 where drug_source_value='200511A';  --> SULPIRIDE + DIAZEPAM
update cdm5.drug_exposure set drug_concept_id=4183897 where drug_source_value='890A';  --> TESTOSTERONE
update cdm5.drug_exposure set drug_concept_id=4305881 where drug_source_value='3255A';  --> TETRACAINE
update cdm5.drug_exposure set drug_concept_id=4190066 where drug_source_value='733A';  --> TAMOXIFEN
update cdm5.drug_exposure set drug_concept_id=4164064 where drug_source_value='3117A';  --> THIETHYLPERAZINE
update cdm5.drug_exposure set drug_concept_id=4136433 where drug_source_value='2752A';  --> TINZAPARIN
update cdm5.drug_exposure set drug_concept_id=4217093 where drug_source_value='2361A';  --> TIOCONAZOL
update cdm5.drug_exposure set drug_concept_id=4213832 where drug_source_value='2376A';  --> TRIPTORELIN
update cdm5.drug_exposure set drug_concept_id=4255985 where drug_source_value='2818A';  --> ZIPRASIDONE

update cdm5.drug_exposure set drug_source_concept_id=4159477 where drug_source_value='226A';  --> ACETAZOLAMIDE
update cdm5.drug_exposure set drug_source_concept_id=36648072 where drug_source_value='813A';  --> ADRENALIN
update cdm5.drug_exposure set drug_source_concept_id=36027680 where drug_source_value='200751A';  --> ALENDRONATE + CHOLECALCIFEROL (2800 UI)
update cdm5.drug_exposure set drug_source_concept_id=36030178 where drug_source_value='200750A';  --> AMLODIPINE + ATORVASTATIN
update cdm5.drug_exposure set drug_source_concept_id=4297546 where drug_source_value='2729A';  --> ANASTROZOL
update cdm5.drug_exposure set drug_source_concept_id=4189416 where drug_source_value='7007A';  --> APRACLONIDINE
update cdm5.drug_exposure set drug_source_concept_id=4306852 where drug_source_value='454A';  --> BACLOFENUM
update cdm5.drug_exposure set drug_source_concept_id=4301202 where drug_source_value='500A';  --> BIPERIDENE
update cdm5.drug_exposure set drug_source_concept_id=36029913 where drug_source_value='200074A';  --> BISOPROLOL + HYDROCHLOROTHIAZIDE
update cdm5.drug_exposure set drug_source_concept_id=4304150 where drug_source_value='7034A';  --> CABERGOLINE
update cdm5.drug_exposure set drug_source_concept_id=19035704 where drug_source_value='21CA';  --> CALCIUM CARBONATE
update cdm5.drug_exposure set drug_source_concept_id=36027527 where drug_source_value='200085A';  --> CALCIUM PIDOLATE + CHOLECALCIFEROL
update cdm5.drug_exposure set drug_source_concept_id=36029924 where drug_source_value='200088A';  --> CAPTOPRIL + HYDROCHLOROTHIAZIDE
update cdm5.drug_exposure set drug_source_concept_id=4306720 where drug_source_value='561A';  --> CARBAMAZEPINE
update cdm5.drug_exposure set drug_source_concept_id=4301096 where drug_source_value='671A';  --> CHLORPROMAZINE
update cdm5.drug_exposure set drug_source_concept_id=4159984 where drug_source_value='675A';  --> CHLORTETRACYCLINE
update cdm5.drug_exposure set drug_source_concept_id=4301211 where drug_source_value='684A';  --> CHOLESTIRAMINE
update cdm5.drug_exposure set drug_source_concept_id=36028034 where drug_source_value='200129A';  --> DEANOL + HEPTAMINOL
update cdm5.drug_exposure set drug_source_concept_id=4299889 where drug_source_value='727A';  --> DEXTROMETHORPHAN
update cdm5.drug_exposure set drug_source_concept_id=4297523 where drug_source_value='2780A';  --> DONEPEZYL
update cdm5.drug_exposure set drug_source_concept_id=36029973 where drug_source_value='200636A';  --> ENALAPRIL + NITRENDIPINE
update cdm5.drug_exposure set drug_source_concept_id=4251126 where drug_source_value='2924A';  --> EPLERENONE
update cdm5.drug_exposure set drug_source_concept_id=4329435 where drug_source_value='3556A';  --> ETHYL CHLORIDE
update cdm5.drug_exposure set drug_source_concept_id=734275 where drug_source_value='55A';  --> FENOBARBITAL
update cdm5.drug_exposure set drug_source_concept_id=4158403 where drug_source_value='159A';  --> FLUVOXAMINE
update cdm5.drug_exposure set drug_source_concept_id=36030171 where drug_source_value='200228A';  --> FUROSEMIDE + TRIAMTERENE
update cdm5.drug_exposure set drug_source_concept_id=4217724 where drug_source_value='2446A';  --> GALANTAMINE
update cdm5.drug_exposure set drug_source_concept_id=36291238 where drug_source_value='1653A';  --> GLIBENCLAMIDE
update cdm5.drug_exposure set drug_source_concept_id=35625980 where drug_source_value='1659A';  --> GLICOPIRRONIUM
update cdm5.drug_exposure set drug_source_concept_id=1360332 where drug_source_value='200416A';  --> GLUCOSALINE SOLUTION
update cdm5.drug_exposure set drug_source_concept_id=45765779 where drug_source_value='433A';  --> HYDROSMINE
update cdm5.drug_exposure set drug_source_concept_id=4301186 where drug_source_value='316A';  --> HYDROXYCARBAMIDE
update cdm5.drug_exposure set drug_source_concept_id=4159991 where drug_source_value='2143A';  --> HYDROXYCHLOROQUINE
update cdm5.drug_exposure set drug_source_concept_id=4139431 where drug_source_value='200675A';  --> INSULIN ASPARTA INTERMEDIATE ACTING
update cdm5.drug_exposure set drug_source_concept_id=4259079 where drug_source_value='7320A';  --> INSULIN LISPRO FAST ACTING
update cdm5.drug_exposure set drug_source_concept_id=4297522 where drug_source_value='1794A';  --> ISOSORBIDE
update cdm5.drug_exposure set drug_source_concept_id=4297517 where drug_source_value='1810A';  --> KETOPROPHEN
update cdm5.drug_exposure set drug_source_concept_id=4297547 where drug_source_value='2758A';  --> LETROZOLE
update cdm5.drug_exposure set drug_source_concept_id=36030000 where drug_source_value='200288A';  --> LISINOPRIL + HYDROCHLOROTHIAZIDE
update cdm5.drug_exposure set drug_source_concept_id=4312210 where drug_source_value='1071A';  --> LITHIUM
update cdm5.drug_exposure set drug_source_concept_id=4320360 where drug_source_value='2345A';  --> LOVASTATIN
update cdm5.drug_exposure set drug_source_concept_id=4054329 where drug_source_value='399A';  --> MEDROXYPROGESTERONE
update cdm5.drug_exposure set drug_source_concept_id=4227708 where drug_source_value='2299A';  --> MEMANTINE
update cdm5.drug_exposure set drug_source_concept_id=4156854 where drug_source_value='1971A';  --> MINOCYCLINE
update cdm5.drug_exposure set drug_source_concept_id=4304129 where drug_source_value='2138A';  --> NABUMETONE
update cdm5.drug_exposure set drug_source_concept_id=4157768 where drug_source_value='93A';  --> NICARDIPINE
update cdm5.drug_exposure set drug_source_concept_id=19019023 where drug_source_value='107A';  --> NIFLUMIC ACID
update cdm5.drug_exposure set drug_source_concept_id=4306035 where drug_source_value='2179A';  --> NIMODIPINE
update cdm5.drug_exposure set drug_source_concept_id=4129562 where drug_source_value='158A';  --> NORETHISTERONE
update cdm5.drug_exposure set drug_source_concept_id=36029982 where drug_source_value='200337A';  --> NORETHISTERONE + ESTRADIOL (FIXED DOSE)
update cdm5.drug_exposure set drug_source_concept_id=36030141 where drug_source_value='200631A';  --> PERINDOPRIL + INDAPAMIDE
update cdm5.drug_exposure set drug_source_concept_id=4132489 where drug_source_value='2647A';  --> PERMETHRIN
update cdm5.drug_exposure set drug_source_concept_id=36836913 where drug_source_value='1334A';  --> PHENACETIN
update cdm5.drug_exposure set drug_source_concept_id=36029947 where drug_source_value='200373A';  --> POTASSIUM CITRATE + CITRIC ACID
update cdm5.drug_exposure set drug_source_concept_id=4303383 where drug_source_value='2976A';  --> RASAGILINE
update cdm5.drug_exposure set drug_source_concept_id=778784 where drug_source_value='200606A';  --> SALMETEROL + FLUTICASONE (25/125)
update cdm5.drug_exposure set drug_source_concept_id=19066992 where drug_source_value='2185A';  --> SILYMARIN
update cdm5.drug_exposure set drug_source_concept_id=4299050 where drug_source_value='77A';  --> SUCRALPHATE
update cdm5.drug_exposure set drug_source_concept_id=36030884 where drug_source_value='200511A';  --> SULPIRIDE + DIAZEPAM
update cdm5.drug_exposure set drug_source_concept_id=4183897 where drug_source_value='890A';  --> TESTOSTERONE
update cdm5.drug_exposure set drug_source_concept_id=4305881 where drug_source_value='3255A';  --> TETRACAINE
update cdm5.drug_exposure set drug_source_concept_id=4190066 where drug_source_value='733A';  --> TAMOXIFEN
update cdm5.drug_exposure set drug_source_concept_id=4164064 where drug_source_value='3117A';  --> THIETHYLPERAZINE
update cdm5.drug_exposure set drug_source_concept_id=4136433 where drug_source_value='2752A';  --> TINZAPARIN
update cdm5.drug_exposure set drug_source_concept_id=4217093 where drug_source_value='2361A';  --> TIOCONAZOL
update cdm5.drug_exposure set drug_source_concept_id=4213832 where drug_source_value='2376A';  --> TRIPTORELIN
update cdm5.drug_exposure set drug_source_concept_id=4255985 where drug_source_value='2818A';  --> ZIPRASIDONE

