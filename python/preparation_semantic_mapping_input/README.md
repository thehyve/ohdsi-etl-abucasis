## Dependencies 
```
pip install xlrd
pip3 install translate
```

## Description
Takes as an input a White rabbit report. Creates an input Usagi file

## Remarks

The following tba tables names needed to be renamed (due to the tba file name did not match with the ABUCASIS column name):

* tba_causa_baja --> tba_tipo_baja
* tba_centros_asignacion --> tba_centro_asignacion
* tba_comunidad_acred --> tba_comunidad_procedencia_acred
* tba_departamento --> tba_departamento_asignacion
* tba_tip_prest --> tba_prestacion
* tba_tip_variables --> tba_variable_clinic
* tba_ud_medidas

## Notes

Translating the descriptions requires extra computation time. Turn off for testing the script.

## Issues
The package "translate" does requests to Mymemory.translated.net. 