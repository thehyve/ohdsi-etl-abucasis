initFramework <- function() {
  insertDf <- data.frame(table = character(), sql = character(), stringsAsFactors = FALSE)
  insertDf[nrow(insertDf) + 1,] <- c('tb_sip_spo', 'TRUNCATE TABLE tb_sip_spo;')
  insertDf[nrow(insertDf) + 1,] <- c('tb_sip_spo_resto_2012', 'TRUNCATE TABLE tb_sip_spo_resto_2012;')
  insertDf[nrow(insertDf) + 1,] <- c('tb_sip_spo_resto_2015', 'TRUNCATE TABLE tb_sip_spo_resto_2015;')
  insertDf[nrow(insertDf) + 1,] <- c('tb_diag_juntos', 'TRUNCATE TABLE tb_diag_juntos;')
  insertDf[nrow(insertDf) + 1,] <- c('tb_rele', 'TRUNCATE TABLE tb_rele;')
  insertDf[nrow(insertDf) + 1,] <- c('tb_prescrip', 'TRUNCATE TABLE tb_prescrip;')
  insertDf[nrow(insertDf) + 1,] <- c('tb_tratamientos', 'TRUNCATE TABLE tb_tratamientos;')
  insertDf[nrow(insertDf) + 1,] <- c('tb_prestaci', 'TRUNCATE TABLE tb_prestaci;')
  insertDf[nrow(insertDf) + 1,] <- c('tb_variables', 'TRUNCATE TABLE tb_variables;')
  insertDf[nrow(insertDf) + 1,] <- c('tb_aconadve', 'TRUNCATE TABLE tb_aconadve;')
  insertDf[nrow(insertDf) + 1,] <- c('tb_alergias', 'TRUNCATE TABLE tb_alergias;')
  insertDf[nrow(insertDf) + 1,] <- c('tb_cex', 'TRUNCATE TABLE tb_cex;')
  insertDf[nrow(insertDf) + 1,] <- c('tb_consultas_atp', 'TRUNCATE TABLE tb_consultas_atp;')
  insertDf[nrow(insertDf) + 1,] <- c('tb_contraind', 'TRUNCATE TABLE tb_contraind;')
  insertDf[nrow(insertDf) + 1,] <- c('tb_ctdh', 'TRUNCATE TABLE tb_ctdh;')
  insertDf[nrow(insertDf) + 1,] <- c('tb_cie_atc', 'TRUNCATE TABLE tb_cie_atc;')
  insertDf[nrow(insertDf) + 1,] <- c('tb_duplicid', 'TRUNCATE TABLE tb_duplicid;')
  insertDf[nrow(insertDf) + 1,] <- c('tb_urgencias', 'TRUNCATE TABLE tb_urgencias;')
  insertDf[nrow(insertDf) + 1,] <- c('tb_interacc', 'TRUNCATE TABLE tb_interacc;')
  insertDf[nrow(insertDf) + 1,] <- c('tb_posologia', 'TRUNCATE TABLE tb_posologia;')
  insertDf[nrow(insertDf) + 1,] <- c('tb_estancia_uci', 'TRUNCATE TABLE tb_estancia_uci;')
  insertDf[nrow(insertDf) + 1,] <- c('tb_proc_cmbd', 'TRUNCATE TABLE tb_proc_cmbd;')
  insertDf[nrow(insertDf) + 1,] <- c('tb_antepers', 'TRUNCATE TABLE tb_antepers;')
  insertDf[nrow(insertDf) + 1,] <- c('tb_incatemp', 'TRUNCATE TABLE tb_incatemp;')
  insertDf[nrow(insertDf) + 1,] <- c('tb_scp_2012', 'TRUNCATE TABLE tb_scp_2012;')
  insertDf[nrow(insertDf) + 1,] <- c('tb_scp_2013', 'TRUNCATE TABLE tb_scp_2013;')
  insertDf[nrow(insertDf) + 1,] <- c('tb_scp_2014', 'TRUNCATE TABLE tb_scp_2014;')
  insertDf[nrow(insertDf) + 1,] <- c('tb_scp_2015', 'TRUNCATE TABLE tb_scp_2015;')
  insertDf[nrow(insertDf) + 1,] <- c('tb_diag_cmbd', 'TRUNCATE TABLE tb_diag_cmbd;')
  insertDf[nrow(insertDf) + 1,] <- c('tb_morbilid', 'TRUNCATE TABLE tb_morbilid;')
  insertDf[nrow(insertDf) + 1,] <- c('tb_ante_cmbd', 'TRUNCATE TABLE tb_ante_cmbd;')
  insertDf[nrow(insertDf) + 1,] <- c('tba_centros', 'TRUNCATE TABLE tba_centros;')
  insertDf[nrow(insertDf) + 1,] <- c('tba_cie9', 'TRUNCATE TABLE tba_cie9;')
  insertDf[nrow(insertDf) + 1,] <- c('tba_crg', 'TRUNCATE TABLE tba_crg;')
  insertDf[nrow(insertDf) + 1,] <- c('tba_farmacia', 'TRUNCATE TABLE tba_farmacia;')
  insertDf[nrow(insertDf) + 1,] <- c('tba_serv_propio', 'TRUNCATE TABLE tba_serv_propio;')
  insertDf[nrow(insertDf) + 1,] <- c('tba_centros_asignacion', 'TRUNCATE TABLE tba_centros_asignacion;')
  insertDf[nrow(insertDf) + 1,] <- c('tba_zonas', 'TRUNCATE TABLE tba_zonas;')
  insertDf[nrow(insertDf) + 1,] <- c('tba_atc2', 'TRUNCATE TABLE tba_atc2;')
  insertDf[nrow(insertDf) + 1,] <- c('tba_atc4', 'TRUNCATE TABLE tba_atc4;')
  insertDf[nrow(insertDf) + 1,] <- c('tba_cau_alta', 'TRUNCATE TABLE tba_cau_alta;')
  insertDf[nrow(insertDf) + 1,] <- c('tba_cau_baja', 'TRUNCATE TABLE tba_cau_baja;')
  insertDf[nrow(insertDf) + 1,] <- c('tba_cie9p', 'TRUNCATE TABLE tba_cie9p;')
  insertDf[nrow(insertDf) + 1,] <- c('tba_comunidad_acred', 'TRUNCATE TABLE tba_comunidad_acred;')
  insertDf[nrow(insertDf) + 1,] <- c('tba_departamentos', 'TRUNCATE TABLE tba_departamentos;')
  insertDf[nrow(insertDf) + 1,] <- c('tba_est_salud', 'TRUNCATE TABLE tba_est_salud;')
  insertDf[nrow(insertDf) + 1,] <- c('tba_modalidad', 'TRUNCATE TABLE tba_modalidad;')
  insertDf[nrow(insertDf) + 1,] <- c('tba_mot_cierre', 'TRUNCATE TABLE tba_mot_cierre;')
  insertDf[nrow(insertDf) + 1,] <- c('tba_mot_urgencia', 'TRUNCATE TABLE tba_mot_urgencia;')
  insertDf[nrow(insertDf) + 1,] <- c('tba_pais_acred', 'TRUNCATE TABLE tba_pais_acred;')
  insertDf[nrow(insertDf) + 1,] <- c('tba_presfarma', 'TRUNCATE TABLE tba_presfarma;')
  insertDf[nrow(insertDf) + 1,] <- c('tba_prinactivo', 'TRUNCATE TABLE tba_prinactivo;')
  insertDf[nrow(insertDf) + 1,] <- c('tba_raf', 'TRUNCATE TABLE tba_raf;')
  insertDf[nrow(insertDf) + 1,] <- c('tba_serv_homologado', 'TRUNCATE TABLE tba_serv_homologado;')
  insertDf[nrow(insertDf) + 1,] <- c('tba_tip_baja', 'TRUNCATE TABLE tba_tip_baja;')
  insertDf[nrow(insertDf) + 1,] <- c('tba_tip_prest', 'TRUNCATE TABLE tba_tip_prest;')
  insertDf[nrow(insertDf) + 1,] <- c('tba_tip_variables', 'TRUNCATE TABLE tba_tip_variables;')
  insertDf[nrow(insertDf) + 1,] <- c('tba_ud_medidas', 'TRUNCATE TABLE tba_ud_medidas;')
  assign('insertDf', insertDf, envir = globalenv())
  testSql <- c()
  testSql <- c(testSql, "IF OBJECT_ID('test_results', 'U') IS NOT NULL DROP TABLE test_results;")
  testSql <- c(testSql, '')
  testSql <- c(testSql, "CREATE TABLE test_results (id INT, description VARCHAR(512), test VARCHAR(256), status VARCHAR(5));")
  testSql <- c(testSql, '')
  assign('testSql', testSql, envir = globalenv())
  assign('testId', 1, envir = globalenv())
  assign('testDescription', '', envir = globalenv())

  defaultValues <- new.env(parent = globalenv())
  assign('defaultValues', defaultValues, envir = globalenv())

  defaults <- list()
  defaults$sexo <- 'M'
  defaults$fecha_nac <- '1976-01-01'
  assign('tb_sip_spo', defaults, envir = defaultValues)

  defaults <- list()
  defaults$cod_centro_asignacion <- '163'
  defaults$cod_departamento_asignacion <- '10'
  defaults$cod_zona_asignacion <- '3'
  defaults$fecha_corte <- '2012-01-01'
  defaults$sit_empadronamiento <- '1'
  defaults$nacionalidad_espanola <- 'S'
  defaults$cod_modalidad <- 'F-SS-1'
  defaults$derecho_medico <- 'S'
  defaults$cod_pais_procedencia_acred <- '108'
  defaults$cod_comunidad_procedencia_acred <- '909'
  defaults$cod_pais_nacimiento <- '108'
  defaults$titular_beneficiario <- 'T'
  assign('tb_sip_spo_resto_2012', defaults, envir = defaultValues)

  defaults <- list()
  defaults$cod_centro_asignacion <- '163'
  defaults$cod_departamento_asignacion <- '9'
  defaults$cod_zona_asignacion <- '3'
  defaults$fecha_corte <- '2015-01-01'
  defaults$sit_empadronamiento <- '1'
  defaults$nacionalidad_espanola <- 'S'
  defaults$cod_modalidad <- 'F-SS-1'
  defaults$derecho_medico <- 'S'
  defaults$cod_pais_procedencia_acred <- '108'
  defaults$cod_comunidad_procedencia_acred <- '909'
  defaults$cod_pais_nacimiento <- '108'
  defaults$titular_beneficiario <- 'T'
  defaults$cod_raf <- '30'
  assign('tb_sip_spo_resto_2015', defaults, envir = defaultValues)

  defaults <- list()
  defaults$fecha_inicio <- '2015-10-27'
  defaults$cod_diagnostico <- '00084'
  defaults$estado_morbilidad <- 'Activo'
  defaults$origen <- 'M'
  assign('tb_diag_juntos', defaults, envir = defaultValues)

  defaults <- list()
  defaults$anomes_facturacion <- '201501'
  defaults$fecha_dispensacion <- '2015-12-09'
  defaults$cod_prinactivo <- '2141A'
  defaults$cod_presfarma <- '713'
  defaults$cod_atc2 <- 'N02'
  defaults$cod_atc4 <- 'A02BC'
  assign('tb_rele', defaults, envir = defaultValues)

  defaults <- list()
  defaults$id_tratamiento <- '-1                   '
  defaults$fecha_prescripcion <- '2015-01-14'
  defaults$cod_atc2 <- 'N02'
  defaults$cod_atc4 <- 'A02BC'
  defaults$cod_presfarma <- '713'
  defaults$cod_prinactivo <- '2141A'
  assign('tb_prescrip', defaults, envir = defaultValues)

  defaults <- list()
  defaults$unidades <- '1.00'
  defaults$cod_prinactivo <- '12A'
  defaults$dias_tratamiento <- '365'
  defaults$cadencia <- '24.00'
  defaults$fecha_inicio_tratamiento <- '2014-12-30'
  defaults$fecha_fin_tratamiento <- '2015-01-16'
  defaults$unidad_posologia <- 'COMPRIMIDO'
  defaults$tipo_posologia <- 'Horaria'
  defaults$cod_presfarma <- '713'
  defaults$cod_atc2 <- 'N02'
  defaults$cod_atc4 <- 'M01AE'
  assign('tb_tratamientos', defaults, envir = defaultValues)

  defaults <- list()
  defaults$fecha_registro <- '2016-04-13'
  defaults$cod_prestacion <- '-1'
  defaults$cod_ud_medida <- '-2'
  assign('tb_prestaci', defaults, envir = defaultValues)

  defaults <- list()
  defaults$fecha_registro <- '2015-04-23'
  defaults$cod_variable_clinic <- '-1'
  defaults$cod_ud_medida <- '-2'
  assign('tb_variables', defaults, envir = defaultValues)

  defaults <- list()
  defaults$num_ac_adversos <- '1'
  defaults$ano_mes <- '201507'
  defaults$cod_crg <- '6'
  defaults$cod_est_salud <- '62702'
  assign('tb_aconadve', defaults, envir = defaultValues)

  defaults <- list()
  defaults$num_alergias <- '1'
  defaults$ano_mes <- '201501'
  defaults$cod_crg <- '6'
  defaults$cod_est_salud <- '40001'
  assign('tb_alergias', defaults, envir = defaultValues)

  defaults <- list()
  defaults$num_consultas <- '1'
  defaults$fecha_consulta <- '2015-12-15'
  defaults$cod_serv_homologado <- 'OFT'
  defaults$cod_serv_propio <- 'EAE'
  assign('tb_cex', defaults, envir = defaultValues)

  defaults <- list()
  defaults$num_consultas <- '1'
  defaults$fecha_registro <- '2014-10-23'
  defaults$cod_serv_homologado <- 'MFC'
  defaults$cod_serv_propio <- 'MFC'
  assign('tb_consultas_atp', defaults, envir = defaultValues)

  defaults <- list()
  defaults$num_contraindicaciones <- '1'
  defaults$ano_mes <- '201506'
  defaults$cod_crg <- '6'
  defaults$cod_est_salud <- '62702'
  defaults$tipo_contraindicacion <- 'R'
  assign('tb_contraind', defaults, envir = defaultValues)

  defaults <- list()
  defaults$num_ctdh <- '1'
  defaults$ano_mes <- '201409'
  defaults$cod_crg <- '6'
  defaults$cod_est_salud <- '40001'
  assign('tb_ctdh', defaults, envir = defaultValues)

  defaults <- list()
  defaults$num_cieatc <- '1'
  defaults$ano_mes <- '201501'
  defaults$cod_crg <- '6'
  defaults$cod_est_salud <- '10000'
  assign('tb_cie_atc', defaults, envir = defaultValues)

  defaults <- list()
  defaults$num_duplicidades <- '1'
  defaults$ano_mes <- '201409'
  defaults$cod_crg <- '6'
  defaults$cod_est_salud <- '40001'
  assign('tb_duplicid', defaults, envir = defaultValues)

  defaults <- list()
  defaults$num_urgencias <- '1'
  defaults$fecha_urgencia <- '2015-08-17'
  defaults$cod_motivo_urg <- '1'
  assign('tb_urgencias', defaults, envir = defaultValues)

  defaults <- list()
  defaults$num_interacciones <- '1'
  defaults$ano_mes <- '201506'
  defaults$cod_crg <- '6'
  defaults$cod_est_salud <- '51921'
  defaults$gravedad_interaccion <- 'MODERADA'
  assign('tb_interacc', defaults, envir = defaultValues)

  defaults <- list()
  defaults$num_posologias <- '1'
  defaults$tipo_posologia <- 'I'
  defaults$ano_mes <- '201501'
  defaults$cod_crg <- '6'
  defaults$cod_est_salud <- '40001'
  assign('tb_posologia', defaults, envir = defaultValues)

  defaults <- list()
  defaults$fecha <- '2016-03-23'
  defaults$num_estancia_uci <- '0'
  assign('tb_estancia_uci', defaults, envir = defaultValues)

  defaults <- list()
  defaults$tipo_actividad <- 'HOS'
  defaults$cie9p <- '13.41          '
  defaults$cir_ingreso <- '1'
  defaults$fecha_ingreso <- '2014-02-24'
  defaults$fecha_alta <- '2015-03-13'
  defaults$cir_alta <- '1'
  defaults$grd <- '039'
  defaults$peso_grd <- '1.04'
  defaults$orden <- '1'
  assign('tb_proc_cmbd', defaults, envir = defaultValues)

  defaults <- list()
  defaults$fecha_inicio <- '2008-01-03'
  defaults$fecha_fin <- '2008-10-13'
  defaults$cod_diagnostico <- '460'
  defaults$estado_morbilidad <- 'Inactivo Resolucion'
  assign('tb_antepers', defaults, envir = defaultValues)

  defaults <- list()
  defaults$fecha_registro <- '2013-02-11'
  defaults$fecha_baja <- '2013-02-11'
  defaults$dias_baja <- '1'
  defaults$cod_causa_alta <- 'MEJ'
  defaults$cod_diagnostico <- '724.2'
  defaults$cod_motivo_cierre <- '-1'
  defaults$cod_procedimiento <- '-1'
  defaults$cod_tipo_baja <- 'EFC'
  assign('tb_incatemp', defaults, envir = defaultValues)

  defaults <- list()
  defaults$ano_mes <- '201203'
  defaults$cod_crg <- '10000'
  defaults$cod_est_salud <- '1'
  assign('tb_scp_2012', defaults, envir = defaultValues)

  defaults <- list()
  defaults$ano_mes <- '201308'
  defaults$cod_crg <- '-1'
  defaults$cod_est_salud <- '1'
  assign('tb_scp_2013', defaults, envir = defaultValues)

  defaults <- list()
  defaults$ano_mes <- '201403'
  defaults$cod_crg <- '10000'
  defaults$cod_est_salud <- '1'
  assign('tb_scp_2014', defaults, envir = defaultValues)

  defaults <- list()
  defaults$ano_mes <- '201508'
  defaults$cod_crg <- '10000'
  defaults$cod_est_salud <- '1'
  assign('tb_scp_2015', defaults, envir = defaultValues)

  defaults <- list()
  defaults$tipo_actividad <- 'HOS'
  defaults$cie9 <- '401.9'
  defaults$cir_ingreso <- '1'
  defaults$fecha_ingreso <- '2015-12-01'
  defaults$fecha_alta <- '2012-12-21'
  defaults$cir_alta <- '1'
  defaults$grd <- '541'
  defaults$peso_grd <- '2.22'
  defaults$orden <- '1'
  assign('tb_diag_cmbd', defaults, envir = defaultValues)

  defaults <- list()
  defaults$fecha_inicio <- '2014-03-12'
  defaults$cod_diagnostico <- '460'
  defaults$estado_morbilidad <- 'Activo'
  assign('tb_morbilid', defaults, envir = defaultValues)

  defaults <- list()
  defaults$tipo_actividad <- 'HOS'
  defaults$fecha_ingreso <- '2014-03-10'
  defaults$fecha_alta <- '2016-02-05'
  defaults$cir_ingreso <- '1'
  defaults$cir_alta <- '1'
  defaults$d1 <- '366.9'
  defaults$grd <- '039'
  defaults$peso_grd <- '1.04'
  assign('tb_ante_cmbd', defaults, envir = defaultValues)

  defaults <- list()
  assign('tba_centros', defaults, envir = defaultValues)

  defaults <- list()
  defaults$des_diagnostico <- 'CEGUERA Y BAJA VISION-NIVEL DE DETERIORO SIN MAS ESPECIFICACION'
  assign('tba_cie9', defaults, envir = defaultValues)

  defaults <- list()
  defaults$des_crg <- 'EPOC y otra enfermedad moderada crónica'
  assign('tba_crg', defaults, envir = defaultValues)

  defaults <- list()
  defaults$cod_prinactivo <- '300127A'
  defaults$des_prinactivo <- 'BOLSAS RESINA SINTETICA MICROPORO Y FILTRO'
  defaults$cod_atc2 <- 'J01'
  defaults$des_atc2 <- 'ANTIBACTERIANOS DE USO SISTEMICO'
  defaults$cod_atc4 <- 'V01AA'
  defaults$des_atc4 <- 'EXTRACTOS DE ALERGENOS'
  assign('tba_farmacia', defaults, envir = defaultValues)

  defaults <- list()
  defaults$des_serv_propio <- 'MEDICINA INTERNA'
  assign('tba_serv_propio', defaults, envir = defaultValues)

  defaults <- list()
  defaults$cod_departamento <- '14'
  defaults$cod_zona <- '4-9'
  assign('tba_centros_asignacion', defaults, envir = defaultValues)

  defaults <- list()
  defaults$des_zona <- 'DESCONOCIDA'
  assign('tba_zonas', defaults, envir = defaultValues)

  defaults <- list()
  assign('tba_atc2', defaults, envir = defaultValues)

  defaults <- list()
  assign('tba_atc4', defaults, envir = defaultValues)

  defaults <- list()
  assign('tba_cau_alta', defaults, envir = defaultValues)

  defaults <- list()
  assign('tba_cau_baja', defaults, envir = defaultValues)

  defaults <- list()
  assign('tba_cie9p', defaults, envir = defaultValues)

  defaults <- list()
  assign('tba_comunidad_acred', defaults, envir = defaultValues)

  defaults <- list()
  assign('tba_departamentos', defaults, envir = defaultValues)

  defaults <- list()
  assign('tba_est_salud', defaults, envir = defaultValues)

  defaults <- list()
  assign('tba_modalidad', defaults, envir = defaultValues)

  defaults <- list()
  assign('tba_mot_cierre', defaults, envir = defaultValues)

  defaults <- list()
  assign('tba_mot_urgencia', defaults, envir = defaultValues)

  defaults <- list()
  assign('tba_pais_acred', defaults, envir = defaultValues)

  defaults <- list()
  assign('tba_presfarma', defaults, envir = defaultValues)

  defaults <- list()
  assign('tba_prinactivo', defaults, envir = defaultValues)

  defaults <- list()
  assign('tba_raf', defaults, envir = defaultValues)

  defaults <- list()
  assign('tba_serv_homologado', defaults, envir = defaultValues)

  defaults <- list()
  assign('tba_tip_baja', defaults, envir = defaultValues)

  defaults <- list()
  assign('tba_tip_prest', defaults, envir = defaultValues)

  defaults <- list()
  defaults$des_variable_clinic <- 'Problema detectado'
  assign('tba_tip_variables', defaults, envir = defaultValues)

  defaults <- list()
  assign('tba_ud_medidas', defaults, envir = defaultValues)
}

initFramework()

generateInsertSql <- function()
{
  insertSql <<- c()
  tables <- unique(insertDf$table)
  lapply(tables, function(t) {
    insertSql <<- c(insertSql, subset(insertDf, table == t)$sql)
  })
  insertSql
}

declareTest <- function(id, description) {
  assign('testId', id, envir = globalenv()) 
  assign('testDescription', description, envir = globalenv()) 
  assign('testNewAdded', TRUE, envir = globalenv()) 
  assign('testNewExpected', TRUE, envir = globalenv()) 
}

set_defaults_tb_sip_spo <- function(id, numsipcod, sexo, fecha_nac, fecha_def, fecha_baja_sip, cod_causa_baja) {
  defaults <- get('tb_sip_spo', envir = defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(numsipcod)) {
    defaults$numsipcod <- numsipcod
  }
  if (!missing(sexo)) {
    defaults$sexo <- sexo
  }
  if (!missing(fecha_nac)) {
    defaults$fecha_nac <- fecha_nac
  }
  if (!missing(fecha_def)) {
    defaults$fecha_def <- fecha_def
  }
  if (!missing(fecha_baja_sip)) {
    defaults$fecha_baja_sip <- fecha_baja_sip
  }
  if (!missing(cod_causa_baja)) {
    defaults$cod_causa_baja <- cod_causa_baja
  }
  assign('tb_sip_spo', defaults, envir = defaultValues)
  invisible(defaults)
}

set_defaults_tb_sip_spo_resto_2012 <- function(id, numsipcod, cod_centro_asignacion, cod_departamento_asignacion, cod_zona_asignacion, clave_medica, codigo_apsig, fecha_corte, sit_empadronamiento, nacionalidad_espanola, cod_modalidad, derecho_medico, cod_pais_procedencia_acred, cod_comunidad_procedencia_acred, cod_pais_nacimiento, titular_beneficiario, cod_raf) {
  defaults <- get('tb_sip_spo_resto_2012', envir = defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(numsipcod)) {
    defaults$numsipcod <- numsipcod
  }
  if (!missing(cod_centro_asignacion)) {
    defaults$cod_centro_asignacion <- cod_centro_asignacion
  }
  if (!missing(cod_departamento_asignacion)) {
    defaults$cod_departamento_asignacion <- cod_departamento_asignacion
  }
  if (!missing(cod_zona_asignacion)) {
    defaults$cod_zona_asignacion <- cod_zona_asignacion
  }
  if (!missing(clave_medica)) {
    defaults$clave_medica <- clave_medica
  }
  if (!missing(codigo_apsig)) {
    defaults$codigo_apsig <- codigo_apsig
  }
  if (!missing(fecha_corte)) {
    defaults$fecha_corte <- fecha_corte
  }
  if (!missing(sit_empadronamiento)) {
    defaults$sit_empadronamiento <- sit_empadronamiento
  }
  if (!missing(nacionalidad_espanola)) {
    defaults$nacionalidad_espanola <- nacionalidad_espanola
  }
  if (!missing(cod_modalidad)) {
    defaults$cod_modalidad <- cod_modalidad
  }
  if (!missing(derecho_medico)) {
    defaults$derecho_medico <- derecho_medico
  }
  if (!missing(cod_pais_procedencia_acred)) {
    defaults$cod_pais_procedencia_acred <- cod_pais_procedencia_acred
  }
  if (!missing(cod_comunidad_procedencia_acred)) {
    defaults$cod_comunidad_procedencia_acred <- cod_comunidad_procedencia_acred
  }
  if (!missing(cod_pais_nacimiento)) {
    defaults$cod_pais_nacimiento <- cod_pais_nacimiento
  }
  if (!missing(titular_beneficiario)) {
    defaults$titular_beneficiario <- titular_beneficiario
  }
  if (!missing(cod_raf)) {
    defaults$cod_raf <- cod_raf
  }
  assign('tb_sip_spo_resto_2012', defaults, envir = defaultValues)
  invisible(defaults)
}

set_defaults_tb_sip_spo_resto_2015 <- function(id, numsipcod, cod_centro_asignacion, cod_departamento_asignacion, cod_zona_asignacion, clave_medica, codigo_apsig, fecha_corte, sit_empadronamiento, nacionalidad_espanola, cod_modalidad, derecho_medico, cod_pais_procedencia_acred, cod_comunidad_procedencia_acred, cod_pais_nacimiento, titular_beneficiario, cod_raf) {
  defaults <- get('tb_sip_spo_resto_2015', envir = defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(numsipcod)) {
    defaults$numsipcod <- numsipcod
  }
  if (!missing(cod_centro_asignacion)) {
    defaults$cod_centro_asignacion <- cod_centro_asignacion
  }
  if (!missing(cod_departamento_asignacion)) {
    defaults$cod_departamento_asignacion <- cod_departamento_asignacion
  }
  if (!missing(cod_zona_asignacion)) {
    defaults$cod_zona_asignacion <- cod_zona_asignacion
  }
  if (!missing(clave_medica)) {
    defaults$clave_medica <- clave_medica
  }
  if (!missing(codigo_apsig)) {
    defaults$codigo_apsig <- codigo_apsig
  }
  if (!missing(fecha_corte)) {
    defaults$fecha_corte <- fecha_corte
  }
  if (!missing(sit_empadronamiento)) {
    defaults$sit_empadronamiento <- sit_empadronamiento
  }
  if (!missing(nacionalidad_espanola)) {
    defaults$nacionalidad_espanola <- nacionalidad_espanola
  }
  if (!missing(cod_modalidad)) {
    defaults$cod_modalidad <- cod_modalidad
  }
  if (!missing(derecho_medico)) {
    defaults$derecho_medico <- derecho_medico
  }
  if (!missing(cod_pais_procedencia_acred)) {
    defaults$cod_pais_procedencia_acred <- cod_pais_procedencia_acred
  }
  if (!missing(cod_comunidad_procedencia_acred)) {
    defaults$cod_comunidad_procedencia_acred <- cod_comunidad_procedencia_acred
  }
  if (!missing(cod_pais_nacimiento)) {
    defaults$cod_pais_nacimiento <- cod_pais_nacimiento
  }
  if (!missing(titular_beneficiario)) {
    defaults$titular_beneficiario <- titular_beneficiario
  }
  if (!missing(cod_raf)) {
    defaults$cod_raf <- cod_raf
  }
  assign('tb_sip_spo_resto_2015', defaults, envir = defaultValues)
  invisible(defaults)
}

set_defaults_tb_diag_juntos <- function(id, numsipcod, fecha_inicio, fecha_fin, cod_diagnostico, estado_morbilidad, tipo_actividad, cir_ingreso, cir_alta, grd, peso_grd, orden, origen) {
  defaults <- get('tb_diag_juntos', envir = defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(numsipcod)) {
    defaults$numsipcod <- numsipcod
  }
  if (!missing(fecha_inicio)) {
    defaults$fecha_inicio <- fecha_inicio
  }
  if (!missing(fecha_fin)) {
    defaults$fecha_fin <- fecha_fin
  }
  if (!missing(cod_diagnostico)) {
    defaults$cod_diagnostico <- cod_diagnostico
  }
  if (!missing(estado_morbilidad)) {
    defaults$estado_morbilidad <- estado_morbilidad
  }
  if (!missing(tipo_actividad)) {
    defaults$tipo_actividad <- tipo_actividad
  }
  if (!missing(cir_ingreso)) {
    defaults$cir_ingreso <- cir_ingreso
  }
  if (!missing(cir_alta)) {
    defaults$cir_alta <- cir_alta
  }
  if (!missing(grd)) {
    defaults$grd <- grd
  }
  if (!missing(peso_grd)) {
    defaults$peso_grd <- peso_grd
  }
  if (!missing(orden)) {
    defaults$orden <- orden
  }
  if (!missing(origen)) {
    defaults$origen <- origen
  }
  assign('tb_diag_juntos', defaults, envir = defaultValues)
  invisible(defaults)
}

set_defaults_tb_rele <- function(id, numsipcod, numreceta, anomes_facturacion, fecha_dispensacion, cod_prinactivo, cod_presfarma, cod_atc2, cod_atc4) {
  defaults <- get('tb_rele', envir = defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(numsipcod)) {
    defaults$numsipcod <- numsipcod
  }
  if (!missing(numreceta)) {
    defaults$numreceta <- numreceta
  }
  if (!missing(anomes_facturacion)) {
    defaults$anomes_facturacion <- anomes_facturacion
  }
  if (!missing(fecha_dispensacion)) {
    defaults$fecha_dispensacion <- fecha_dispensacion
  }
  if (!missing(cod_prinactivo)) {
    defaults$cod_prinactivo <- cod_prinactivo
  }
  if (!missing(cod_presfarma)) {
    defaults$cod_presfarma <- cod_presfarma
  }
  if (!missing(cod_atc2)) {
    defaults$cod_atc2 <- cod_atc2
  }
  if (!missing(cod_atc4)) {
    defaults$cod_atc4 <- cod_atc4
  }
  assign('tb_rele', defaults, envir = defaultValues)
  invisible(defaults)
}

set_defaults_tb_prescrip <- function(id, numsipcod, numreceta, id_tratamiento, fecha_prescripcion, cod_atc2, cod_atc4, cod_presfarma, cod_prinactivo) {
  defaults <- get('tb_prescrip', envir = defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(numsipcod)) {
    defaults$numsipcod <- numsipcod
  }
  if (!missing(numreceta)) {
    defaults$numreceta <- numreceta
  }
  if (!missing(id_tratamiento)) {
    defaults$id_tratamiento <- id_tratamiento
  }
  if (!missing(fecha_prescripcion)) {
    defaults$fecha_prescripcion <- fecha_prescripcion
  }
  if (!missing(cod_atc2)) {
    defaults$cod_atc2 <- cod_atc2
  }
  if (!missing(cod_atc4)) {
    defaults$cod_atc4 <- cod_atc4
  }
  if (!missing(cod_presfarma)) {
    defaults$cod_presfarma <- cod_presfarma
  }
  if (!missing(cod_prinactivo)) {
    defaults$cod_prinactivo <- cod_prinactivo
  }
  assign('tb_prescrip', defaults, envir = defaultValues)
  invisible(defaults)
}

set_defaults_tb_tratamientos <- function(id, unidades, numsipcod, cod_prinactivo, dias_tratamiento, cadencia, fecha_inicio_tratamiento, fecha_fin_tratamiento, unidad_posologia, tipo_posologia, cod_presfarma, id_tratamiento, cod_atc2, cod_atc4) {
  defaults <- get('tb_tratamientos', envir = defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(unidades)) {
    defaults$unidades <- unidades
  }
  if (!missing(numsipcod)) {
    defaults$numsipcod <- numsipcod
  }
  if (!missing(cod_prinactivo)) {
    defaults$cod_prinactivo <- cod_prinactivo
  }
  if (!missing(dias_tratamiento)) {
    defaults$dias_tratamiento <- dias_tratamiento
  }
  if (!missing(cadencia)) {
    defaults$cadencia <- cadencia
  }
  if (!missing(fecha_inicio_tratamiento)) {
    defaults$fecha_inicio_tratamiento <- fecha_inicio_tratamiento
  }
  if (!missing(fecha_fin_tratamiento)) {
    defaults$fecha_fin_tratamiento <- fecha_fin_tratamiento
  }
  if (!missing(unidad_posologia)) {
    defaults$unidad_posologia <- unidad_posologia
  }
  if (!missing(tipo_posologia)) {
    defaults$tipo_posologia <- tipo_posologia
  }
  if (!missing(cod_presfarma)) {
    defaults$cod_presfarma <- cod_presfarma
  }
  if (!missing(id_tratamiento)) {
    defaults$id_tratamiento <- id_tratamiento
  }
  if (!missing(cod_atc2)) {
    defaults$cod_atc2 <- cod_atc2
  }
  if (!missing(cod_atc4)) {
    defaults$cod_atc4 <- cod_atc4
  }
  assign('tb_tratamientos', defaults, envir = defaultValues)
  invisible(defaults)
}

set_defaults_tb_prestaci <- function(id, numsipcod, valor_registrado, fecha_registro, cod_prestacion, cod_ud_medida) {
  defaults <- get('tb_prestaci', envir = defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(numsipcod)) {
    defaults$numsipcod <- numsipcod
  }
  if (!missing(valor_registrado)) {
    defaults$valor_registrado <- valor_registrado
  }
  if (!missing(fecha_registro)) {
    defaults$fecha_registro <- fecha_registro
  }
  if (!missing(cod_prestacion)) {
    defaults$cod_prestacion <- cod_prestacion
  }
  if (!missing(cod_ud_medida)) {
    defaults$cod_ud_medida <- cod_ud_medida
  }
  assign('tb_prestaci', defaults, envir = defaultValues)
  invisible(defaults)
}

set_defaults_tb_variables <- function(id, numsipcod, valor_registrado, fecha_registro, cod_variable_clinic, cod_ud_medida) {
  defaults <- get('tb_variables', envir = defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(numsipcod)) {
    defaults$numsipcod <- numsipcod
  }
  if (!missing(valor_registrado)) {
    defaults$valor_registrado <- valor_registrado
  }
  if (!missing(fecha_registro)) {
    defaults$fecha_registro <- fecha_registro
  }
  if (!missing(cod_variable_clinic)) {
    defaults$cod_variable_clinic <- cod_variable_clinic
  }
  if (!missing(cod_ud_medida)) {
    defaults$cod_ud_medida <- cod_ud_medida
  }
  assign('tb_variables', defaults, envir = defaultValues)
  invisible(defaults)
}

set_defaults_tb_aconadve <- function(id, numsipcod, num_ac_adversos, ano_mes, cod_crg, cod_est_salud) {
  defaults <- get('tb_aconadve', envir = defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(numsipcod)) {
    defaults$numsipcod <- numsipcod
  }
  if (!missing(num_ac_adversos)) {
    defaults$num_ac_adversos <- num_ac_adversos
  }
  if (!missing(ano_mes)) {
    defaults$ano_mes <- ano_mes
  }
  if (!missing(cod_crg)) {
    defaults$cod_crg <- cod_crg
  }
  if (!missing(cod_est_salud)) {
    defaults$cod_est_salud <- cod_est_salud
  }
  assign('tb_aconadve', defaults, envir = defaultValues)
  invisible(defaults)
}

set_defaults_tb_alergias <- function(id, num_alergias, numsipcod, ano_mes, cod_crg, cod_est_salud) {
  defaults <- get('tb_alergias', envir = defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(num_alergias)) {
    defaults$num_alergias <- num_alergias
  }
  if (!missing(numsipcod)) {
    defaults$numsipcod <- numsipcod
  }
  if (!missing(ano_mes)) {
    defaults$ano_mes <- ano_mes
  }
  if (!missing(cod_crg)) {
    defaults$cod_crg <- cod_crg
  }
  if (!missing(cod_est_salud)) {
    defaults$cod_est_salud <- cod_est_salud
  }
  assign('tb_alergias', defaults, envir = defaultValues)
  invisible(defaults)
}

set_defaults_tb_cex <- function(id, num_consultas, numsipcod, fecha_consulta, cod_serv_homologado, cod_serv_propio) {
  defaults <- get('tb_cex', envir = defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(num_consultas)) {
    defaults$num_consultas <- num_consultas
  }
  if (!missing(numsipcod)) {
    defaults$numsipcod <- numsipcod
  }
  if (!missing(fecha_consulta)) {
    defaults$fecha_consulta <- fecha_consulta
  }
  if (!missing(cod_serv_homologado)) {
    defaults$cod_serv_homologado <- cod_serv_homologado
  }
  if (!missing(cod_serv_propio)) {
    defaults$cod_serv_propio <- cod_serv_propio
  }
  assign('tb_cex', defaults, envir = defaultValues)
  invisible(defaults)
}

set_defaults_tb_consultas_atp <- function(id, num_consultas, numsipcod, fecha_registro, cod_serv_homologado, cod_serv_propio) {
  defaults <- get('tb_consultas_atp', envir = defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(num_consultas)) {
    defaults$num_consultas <- num_consultas
  }
  if (!missing(numsipcod)) {
    defaults$numsipcod <- numsipcod
  }
  if (!missing(fecha_registro)) {
    defaults$fecha_registro <- fecha_registro
  }
  if (!missing(cod_serv_homologado)) {
    defaults$cod_serv_homologado <- cod_serv_homologado
  }
  if (!missing(cod_serv_propio)) {
    defaults$cod_serv_propio <- cod_serv_propio
  }
  assign('tb_consultas_atp', defaults, envir = defaultValues)
  invisible(defaults)
}

set_defaults_tb_contraind <- function(id, num_contraindicaciones, numsipcod, ano_mes, cod_crg, cod_est_salud, tipo_contraindicacion) {
  defaults <- get('tb_contraind', envir = defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(num_contraindicaciones)) {
    defaults$num_contraindicaciones <- num_contraindicaciones
  }
  if (!missing(numsipcod)) {
    defaults$numsipcod <- numsipcod
  }
  if (!missing(ano_mes)) {
    defaults$ano_mes <- ano_mes
  }
  if (!missing(cod_crg)) {
    defaults$cod_crg <- cod_crg
  }
  if (!missing(cod_est_salud)) {
    defaults$cod_est_salud <- cod_est_salud
  }
  if (!missing(tipo_contraindicacion)) {
    defaults$tipo_contraindicacion <- tipo_contraindicacion
  }
  assign('tb_contraind', defaults, envir = defaultValues)
  invisible(defaults)
}

set_defaults_tb_ctdh <- function(id, num_ctdh, numsipcod, ano_mes, cod_crg, cod_est_salud) {
  defaults <- get('tb_ctdh', envir = defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(num_ctdh)) {
    defaults$num_ctdh <- num_ctdh
  }
  if (!missing(numsipcod)) {
    defaults$numsipcod <- numsipcod
  }
  if (!missing(ano_mes)) {
    defaults$ano_mes <- ano_mes
  }
  if (!missing(cod_crg)) {
    defaults$cod_crg <- cod_crg
  }
  if (!missing(cod_est_salud)) {
    defaults$cod_est_salud <- cod_est_salud
  }
  assign('tb_ctdh', defaults, envir = defaultValues)
  invisible(defaults)
}

set_defaults_tb_cie_atc <- function(id, num_cieatc, numsipcod, ano_mes, cod_crg, cod_est_salud) {
  defaults <- get('tb_cie_atc', envir = defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(num_cieatc)) {
    defaults$num_cieatc <- num_cieatc
  }
  if (!missing(numsipcod)) {
    defaults$numsipcod <- numsipcod
  }
  if (!missing(ano_mes)) {
    defaults$ano_mes <- ano_mes
  }
  if (!missing(cod_crg)) {
    defaults$cod_crg <- cod_crg
  }
  if (!missing(cod_est_salud)) {
    defaults$cod_est_salud <- cod_est_salud
  }
  assign('tb_cie_atc', defaults, envir = defaultValues)
  invisible(defaults)
}

set_defaults_tb_duplicid <- function(id, num_duplicidades, numsipcod, ano_mes, cod_crg, cod_est_salud) {
  defaults <- get('tb_duplicid', envir = defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(num_duplicidades)) {
    defaults$num_duplicidades <- num_duplicidades
  }
  if (!missing(numsipcod)) {
    defaults$numsipcod <- numsipcod
  }
  if (!missing(ano_mes)) {
    defaults$ano_mes <- ano_mes
  }
  if (!missing(cod_crg)) {
    defaults$cod_crg <- cod_crg
  }
  if (!missing(cod_est_salud)) {
    defaults$cod_est_salud <- cod_est_salud
  }
  assign('tb_duplicid', defaults, envir = defaultValues)
  invisible(defaults)
}

set_defaults_tb_urgencias <- function(id, num_urgencias, numsipcod, fecha_urgencia, cod_motivo_urg) {
  defaults <- get('tb_urgencias', envir = defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(num_urgencias)) {
    defaults$num_urgencias <- num_urgencias
  }
  if (!missing(numsipcod)) {
    defaults$numsipcod <- numsipcod
  }
  if (!missing(fecha_urgencia)) {
    defaults$fecha_urgencia <- fecha_urgencia
  }
  if (!missing(cod_motivo_urg)) {
    defaults$cod_motivo_urg <- cod_motivo_urg
  }
  assign('tb_urgencias', defaults, envir = defaultValues)
  invisible(defaults)
}

set_defaults_tb_interacc <- function(id, num_interacciones, numsipcod, ano_mes, cod_crg, cod_est_salud, gravedad_interaccion) {
  defaults <- get('tb_interacc', envir = defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(num_interacciones)) {
    defaults$num_interacciones <- num_interacciones
  }
  if (!missing(numsipcod)) {
    defaults$numsipcod <- numsipcod
  }
  if (!missing(ano_mes)) {
    defaults$ano_mes <- ano_mes
  }
  if (!missing(cod_crg)) {
    defaults$cod_crg <- cod_crg
  }
  if (!missing(cod_est_salud)) {
    defaults$cod_est_salud <- cod_est_salud
  }
  if (!missing(gravedad_interaccion)) {
    defaults$gravedad_interaccion <- gravedad_interaccion
  }
  assign('tb_interacc', defaults, envir = defaultValues)
  invisible(defaults)
}

set_defaults_tb_posologia <- function(id, num_posologias, tipo_posologia, numsipcod, ano_mes, cod_crg, cod_est_salud) {
  defaults <- get('tb_posologia', envir = defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(num_posologias)) {
    defaults$num_posologias <- num_posologias
  }
  if (!missing(tipo_posologia)) {
    defaults$tipo_posologia <- tipo_posologia
  }
  if (!missing(numsipcod)) {
    defaults$numsipcod <- numsipcod
  }
  if (!missing(ano_mes)) {
    defaults$ano_mes <- ano_mes
  }
  if (!missing(cod_crg)) {
    defaults$cod_crg <- cod_crg
  }
  if (!missing(cod_est_salud)) {
    defaults$cod_est_salud <- cod_est_salud
  }
  assign('tb_posologia', defaults, envir = defaultValues)
  invisible(defaults)
}

set_defaults_tb_estancia_uci <- function(id, numsipcod, fecha, num_estancia_uci) {
  defaults <- get('tb_estancia_uci', envir = defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(numsipcod)) {
    defaults$numsipcod <- numsipcod
  }
  if (!missing(fecha)) {
    defaults$fecha <- fecha
  }
  if (!missing(num_estancia_uci)) {
    defaults$num_estancia_uci <- num_estancia_uci
  }
  assign('tb_estancia_uci', defaults, envir = defaultValues)
  invisible(defaults)
}

set_defaults_tb_proc_cmbd <- function(id, numsipcod, tipo_actividad, cie9p, cir_ingreso, fecha_ingreso, fecha_alta, cir_alta, grd, peso_grd, orden) {
  defaults <- get('tb_proc_cmbd', envir = defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(numsipcod)) {
    defaults$numsipcod <- numsipcod
  }
  if (!missing(tipo_actividad)) {
    defaults$tipo_actividad <- tipo_actividad
  }
  if (!missing(cie9p)) {
    defaults$cie9p <- cie9p
  }
  if (!missing(cir_ingreso)) {
    defaults$cir_ingreso <- cir_ingreso
  }
  if (!missing(fecha_ingreso)) {
    defaults$fecha_ingreso <- fecha_ingreso
  }
  if (!missing(fecha_alta)) {
    defaults$fecha_alta <- fecha_alta
  }
  if (!missing(cir_alta)) {
    defaults$cir_alta <- cir_alta
  }
  if (!missing(grd)) {
    defaults$grd <- grd
  }
  if (!missing(peso_grd)) {
    defaults$peso_grd <- peso_grd
  }
  if (!missing(orden)) {
    defaults$orden <- orden
  }
  assign('tb_proc_cmbd', defaults, envir = defaultValues)
  invisible(defaults)
}

set_defaults_tb_antepers <- function(id, numsipcod, fecha_inicio, fecha_fin, cod_diagnostico, estado_morbilidad) {
  defaults <- get('tb_antepers', envir = defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(numsipcod)) {
    defaults$numsipcod <- numsipcod
  }
  if (!missing(fecha_inicio)) {
    defaults$fecha_inicio <- fecha_inicio
  }
  if (!missing(fecha_fin)) {
    defaults$fecha_fin <- fecha_fin
  }
  if (!missing(cod_diagnostico)) {
    defaults$cod_diagnostico <- cod_diagnostico
  }
  if (!missing(estado_morbilidad)) {
    defaults$estado_morbilidad <- estado_morbilidad
  }
  assign('tb_antepers', defaults, envir = defaultValues)
  invisible(defaults)
}

set_defaults_tb_incatemp <- function(id, numsipcod, fecha_registro, fecha_baja, fecha_alta, dias_baja, cod_causa_alta, cod_diagnostico, cod_motivo_cierre, cod_procedimiento, cod_tipo_baja) {
  defaults <- get('tb_incatemp', envir = defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(numsipcod)) {
    defaults$numsipcod <- numsipcod
  }
  if (!missing(fecha_registro)) {
    defaults$fecha_registro <- fecha_registro
  }
  if (!missing(fecha_baja)) {
    defaults$fecha_baja <- fecha_baja
  }
  if (!missing(fecha_alta)) {
    defaults$fecha_alta <- fecha_alta
  }
  if (!missing(dias_baja)) {
    defaults$dias_baja <- dias_baja
  }
  if (!missing(cod_causa_alta)) {
    defaults$cod_causa_alta <- cod_causa_alta
  }
  if (!missing(cod_diagnostico)) {
    defaults$cod_diagnostico <- cod_diagnostico
  }
  if (!missing(cod_motivo_cierre)) {
    defaults$cod_motivo_cierre <- cod_motivo_cierre
  }
  if (!missing(cod_procedimiento)) {
    defaults$cod_procedimiento <- cod_procedimiento
  }
  if (!missing(cod_tipo_baja)) {
    defaults$cod_tipo_baja <- cod_tipo_baja
  }
  assign('tb_incatemp', defaults, envir = defaultValues)
  invisible(defaults)
}

set_defaults_tb_scp_2012 <- function(id, numsipcod, ano_mes, cod_crg, cod_est_salud) {
  defaults <- get('tb_scp_2012', envir = defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(numsipcod)) {
    defaults$numsipcod <- numsipcod
  }
  if (!missing(ano_mes)) {
    defaults$ano_mes <- ano_mes
  }
  if (!missing(cod_crg)) {
    defaults$cod_crg <- cod_crg
  }
  if (!missing(cod_est_salud)) {
    defaults$cod_est_salud <- cod_est_salud
  }
  assign('tb_scp_2012', defaults, envir = defaultValues)
  invisible(defaults)
}

set_defaults_tb_scp_2013 <- function(id, numsipcod, ano_mes, cod_crg, cod_est_salud) {
  defaults <- get('tb_scp_2013', envir = defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(numsipcod)) {
    defaults$numsipcod <- numsipcod
  }
  if (!missing(ano_mes)) {
    defaults$ano_mes <- ano_mes
  }
  if (!missing(cod_crg)) {
    defaults$cod_crg <- cod_crg
  }
  if (!missing(cod_est_salud)) {
    defaults$cod_est_salud <- cod_est_salud
  }
  assign('tb_scp_2013', defaults, envir = defaultValues)
  invisible(defaults)
}

set_defaults_tb_scp_2014 <- function(id, numsipcod, ano_mes, cod_crg, cod_est_salud) {
  defaults <- get('tb_scp_2014', envir = defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(numsipcod)) {
    defaults$numsipcod <- numsipcod
  }
  if (!missing(ano_mes)) {
    defaults$ano_mes <- ano_mes
  }
  if (!missing(cod_crg)) {
    defaults$cod_crg <- cod_crg
  }
  if (!missing(cod_est_salud)) {
    defaults$cod_est_salud <- cod_est_salud
  }
  assign('tb_scp_2014', defaults, envir = defaultValues)
  invisible(defaults)
}

set_defaults_tb_scp_2015 <- function(id, numsipcod, ano_mes, cod_crg, cod_est_salud) {
  defaults <- get('tb_scp_2015', envir = defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(numsipcod)) {
    defaults$numsipcod <- numsipcod
  }
  if (!missing(ano_mes)) {
    defaults$ano_mes <- ano_mes
  }
  if (!missing(cod_crg)) {
    defaults$cod_crg <- cod_crg
  }
  if (!missing(cod_est_salud)) {
    defaults$cod_est_salud <- cod_est_salud
  }
  assign('tb_scp_2015', defaults, envir = defaultValues)
  invisible(defaults)
}

set_defaults_tb_diag_cmbd <- function(id, tipo_actividad, numsipcod, cie9, cir_ingreso, fecha_ingreso, fecha_alta, cir_alta, grd, peso_grd, orden) {
  defaults <- get('tb_diag_cmbd', envir = defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(tipo_actividad)) {
    defaults$tipo_actividad <- tipo_actividad
  }
  if (!missing(numsipcod)) {
    defaults$numsipcod <- numsipcod
  }
  if (!missing(cie9)) {
    defaults$cie9 <- cie9
  }
  if (!missing(cir_ingreso)) {
    defaults$cir_ingreso <- cir_ingreso
  }
  if (!missing(fecha_ingreso)) {
    defaults$fecha_ingreso <- fecha_ingreso
  }
  if (!missing(fecha_alta)) {
    defaults$fecha_alta <- fecha_alta
  }
  if (!missing(cir_alta)) {
    defaults$cir_alta <- cir_alta
  }
  if (!missing(grd)) {
    defaults$grd <- grd
  }
  if (!missing(peso_grd)) {
    defaults$peso_grd <- peso_grd
  }
  if (!missing(orden)) {
    defaults$orden <- orden
  }
  assign('tb_diag_cmbd', defaults, envir = defaultValues)
  invisible(defaults)
}

set_defaults_tb_morbilid <- function(id, numsipcod, fecha_inicio, fecha_fin, cod_diagnostico, estado_morbilidad) {
  defaults <- get('tb_morbilid', envir = defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(numsipcod)) {
    defaults$numsipcod <- numsipcod
  }
  if (!missing(fecha_inicio)) {
    defaults$fecha_inicio <- fecha_inicio
  }
  if (!missing(fecha_fin)) {
    defaults$fecha_fin <- fecha_fin
  }
  if (!missing(cod_diagnostico)) {
    defaults$cod_diagnostico <- cod_diagnostico
  }
  if (!missing(estado_morbilidad)) {
    defaults$estado_morbilidad <- estado_morbilidad
  }
  assign('tb_morbilid', defaults, envir = defaultValues)
  invisible(defaults)
}

set_defaults_tb_ante_cmbd <- function(id, numsipcod, tipo_actividad, fecha_ingreso, fecha_alta, cir_ingreso, cir_alta, d1, d2, d3, d4, d5, d6, d7, d8, d9, d10, d11, d12, d13, d14, d15, d16, d17, d18, d19, d20, d21, d22, d23, d24, d25, d26, d27, d28, d29, d30, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16, p17, p18, p19, p20, p21, p22, p23, p24, p25, p26, p27, p28, p29, p30, grd, peso_grd) {
  defaults <- get('tb_ante_cmbd', envir = defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(numsipcod)) {
    defaults$numsipcod <- numsipcod
  }
  if (!missing(tipo_actividad)) {
    defaults$tipo_actividad <- tipo_actividad
  }
  if (!missing(fecha_ingreso)) {
    defaults$fecha_ingreso <- fecha_ingreso
  }
  if (!missing(fecha_alta)) {
    defaults$fecha_alta <- fecha_alta
  }
  if (!missing(cir_ingreso)) {
    defaults$cir_ingreso <- cir_ingreso
  }
  if (!missing(cir_alta)) {
    defaults$cir_alta <- cir_alta
  }
  if (!missing(d1)) {
    defaults$d1 <- d1
  }
  if (!missing(d2)) {
    defaults$d2 <- d2
  }
  if (!missing(d3)) {
    defaults$d3 <- d3
  }
  if (!missing(d4)) {
    defaults$d4 <- d4
  }
  if (!missing(d5)) {
    defaults$d5 <- d5
  }
  if (!missing(d6)) {
    defaults$d6 <- d6
  }
  if (!missing(d7)) {
    defaults$d7 <- d7
  }
  if (!missing(d8)) {
    defaults$d8 <- d8
  }
  if (!missing(d9)) {
    defaults$d9 <- d9
  }
  if (!missing(d10)) {
    defaults$d10 <- d10
  }
  if (!missing(d11)) {
    defaults$d11 <- d11
  }
  if (!missing(d12)) {
    defaults$d12 <- d12
  }
  if (!missing(d13)) {
    defaults$d13 <- d13
  }
  if (!missing(d14)) {
    defaults$d14 <- d14
  }
  if (!missing(d15)) {
    defaults$d15 <- d15
  }
  if (!missing(d16)) {
    defaults$d16 <- d16
  }
  if (!missing(d17)) {
    defaults$d17 <- d17
  }
  if (!missing(d18)) {
    defaults$d18 <- d18
  }
  if (!missing(d19)) {
    defaults$d19 <- d19
  }
  if (!missing(d20)) {
    defaults$d20 <- d20
  }
  if (!missing(d21)) {
    defaults$d21 <- d21
  }
  if (!missing(d22)) {
    defaults$d22 <- d22
  }
  if (!missing(d23)) {
    defaults$d23 <- d23
  }
  if (!missing(d24)) {
    defaults$d24 <- d24
  }
  if (!missing(d25)) {
    defaults$d25 <- d25
  }
  if (!missing(d26)) {
    defaults$d26 <- d26
  }
  if (!missing(d27)) {
    defaults$d27 <- d27
  }
  if (!missing(d28)) {
    defaults$d28 <- d28
  }
  if (!missing(d29)) {
    defaults$d29 <- d29
  }
  if (!missing(d30)) {
    defaults$d30 <- d30
  }
  if (!missing(p1)) {
    defaults$p1 <- p1
  }
  if (!missing(p2)) {
    defaults$p2 <- p2
  }
  if (!missing(p3)) {
    defaults$p3 <- p3
  }
  if (!missing(p4)) {
    defaults$p4 <- p4
  }
  if (!missing(p5)) {
    defaults$p5 <- p5
  }
  if (!missing(p6)) {
    defaults$p6 <- p6
  }
  if (!missing(p7)) {
    defaults$p7 <- p7
  }
  if (!missing(p8)) {
    defaults$p8 <- p8
  }
  if (!missing(p9)) {
    defaults$p9 <- p9
  }
  if (!missing(p10)) {
    defaults$p10 <- p10
  }
  if (!missing(p11)) {
    defaults$p11 <- p11
  }
  if (!missing(p12)) {
    defaults$p12 <- p12
  }
  if (!missing(p13)) {
    defaults$p13 <- p13
  }
  if (!missing(p14)) {
    defaults$p14 <- p14
  }
  if (!missing(p15)) {
    defaults$p15 <- p15
  }
  if (!missing(p16)) {
    defaults$p16 <- p16
  }
  if (!missing(p17)) {
    defaults$p17 <- p17
  }
  if (!missing(p18)) {
    defaults$p18 <- p18
  }
  if (!missing(p19)) {
    defaults$p19 <- p19
  }
  if (!missing(p20)) {
    defaults$p20 <- p20
  }
  if (!missing(p21)) {
    defaults$p21 <- p21
  }
  if (!missing(p22)) {
    defaults$p22 <- p22
  }
  if (!missing(p23)) {
    defaults$p23 <- p23
  }
  if (!missing(p24)) {
    defaults$p24 <- p24
  }
  if (!missing(p25)) {
    defaults$p25 <- p25
  }
  if (!missing(p26)) {
    defaults$p26 <- p26
  }
  if (!missing(p27)) {
    defaults$p27 <- p27
  }
  if (!missing(p28)) {
    defaults$p28 <- p28
  }
  if (!missing(p29)) {
    defaults$p29 <- p29
  }
  if (!missing(p30)) {
    defaults$p30 <- p30
  }
  if (!missing(grd)) {
    defaults$grd <- grd
  }
  if (!missing(peso_grd)) {
    defaults$peso_grd <- peso_grd
  }
  assign('tb_ante_cmbd', defaults, envir = defaultValues)
  invisible(defaults)
}

set_defaults_tba_centros <- function(id, cod_centro, des_centro) {
  defaults <- get('tba_centros', envir = defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(cod_centro)) {
    defaults$cod_centro <- cod_centro
  }
  if (!missing(des_centro)) {
    defaults$des_centro <- des_centro
  }
  assign('tba_centros', defaults, envir = defaultValues)
  invisible(defaults)
}

set_defaults_tba_cie9 <- function(id, cod_diagnostico, des_diagnostico) {
  defaults <- get('tba_cie9', envir = defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(cod_diagnostico)) {
    defaults$cod_diagnostico <- cod_diagnostico
  }
  if (!missing(des_diagnostico)) {
    defaults$des_diagnostico <- des_diagnostico
  }
  assign('tba_cie9', defaults, envir = defaultValues)
  invisible(defaults)
}

set_defaults_tba_crg <- function(id, cod_crg, des_crg) {
  defaults <- get('tba_crg', envir = defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(cod_crg)) {
    defaults$cod_crg <- cod_crg
  }
  if (!missing(des_crg)) {
    defaults$des_crg <- des_crg
  }
  assign('tba_crg', defaults, envir = defaultValues)
  invisible(defaults)
}

set_defaults_tba_farmacia <- function(id, cod_presfarma, des_presfarma, cod_prinactivo, des_prinactivo, cod_atc2, des_atc2, cod_atc4, des_atc4) {
  defaults <- get('tba_farmacia', envir = defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(cod_presfarma)) {
    defaults$cod_presfarma <- cod_presfarma
  }
  if (!missing(des_presfarma)) {
    defaults$des_presfarma <- des_presfarma
  }
  if (!missing(cod_prinactivo)) {
    defaults$cod_prinactivo <- cod_prinactivo
  }
  if (!missing(des_prinactivo)) {
    defaults$des_prinactivo <- des_prinactivo
  }
  if (!missing(cod_atc2)) {
    defaults$cod_atc2 <- cod_atc2
  }
  if (!missing(des_atc2)) {
    defaults$des_atc2 <- des_atc2
  }
  if (!missing(cod_atc4)) {
    defaults$cod_atc4 <- cod_atc4
  }
  if (!missing(des_atc4)) {
    defaults$des_atc4 <- des_atc4
  }
  assign('tba_farmacia', defaults, envir = defaultValues)
  invisible(defaults)
}

set_defaults_tba_serv_propio <- function(id, cod_serv_propio, des_serv_propio) {
  defaults <- get('tba_serv_propio', envir = defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(cod_serv_propio)) {
    defaults$cod_serv_propio <- cod_serv_propio
  }
  if (!missing(des_serv_propio)) {
    defaults$des_serv_propio <- des_serv_propio
  }
  assign('tba_serv_propio', defaults, envir = defaultValues)
  invisible(defaults)
}

set_defaults_tba_centros_asignacion <- function(id, cod_centro, cod_departamento, cod_zona) {
  defaults <- get('tba_centros_asignacion', envir = defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(cod_centro)) {
    defaults$cod_centro <- cod_centro
  }
  if (!missing(cod_departamento)) {
    defaults$cod_departamento <- cod_departamento
  }
  if (!missing(cod_zona)) {
    defaults$cod_zona <- cod_zona
  }
  assign('tba_centros_asignacion', defaults, envir = defaultValues)
  invisible(defaults)
}

set_defaults_tba_zonas <- function(id, cod_zona, des_zona) {
  defaults <- get('tba_zonas', envir = defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(cod_zona)) {
    defaults$cod_zona <- cod_zona
  }
  if (!missing(des_zona)) {
    defaults$des_zona <- des_zona
  }
  assign('tba_zonas', defaults, envir = defaultValues)
  invisible(defaults)
}

set_defaults_tba_atc2 <- function(id, cod_atc2, des_atc2) {
  defaults <- get('tba_atc2', envir = defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(cod_atc2)) {
    defaults$cod_atc2 <- cod_atc2
  }
  if (!missing(des_atc2)) {
    defaults$des_atc2 <- des_atc2
  }
  assign('tba_atc2', defaults, envir = defaultValues)
  invisible(defaults)
}

set_defaults_tba_atc4 <- function(id, cod_atc4, des_atc4) {
  defaults <- get('tba_atc4', envir = defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(cod_atc4)) {
    defaults$cod_atc4 <- cod_atc4
  }
  if (!missing(des_atc4)) {
    defaults$des_atc4 <- des_atc4
  }
  assign('tba_atc4', defaults, envir = defaultValues)
  invisible(defaults)
}

set_defaults_tba_cau_alta <- function(id, cod_causa_alta, des_causa_alta) {
  defaults <- get('tba_cau_alta', envir = defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(cod_causa_alta)) {
    defaults$cod_causa_alta <- cod_causa_alta
  }
  if (!missing(des_causa_alta)) {
    defaults$des_causa_alta <- des_causa_alta
  }
  assign('tba_cau_alta', defaults, envir = defaultValues)
  invisible(defaults)
}

set_defaults_tba_cau_baja <- function(id, cod_causa_baja, des_causa_baja) {
  defaults <- get('tba_cau_baja', envir = defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(cod_causa_baja)) {
    defaults$cod_causa_baja <- cod_causa_baja
  }
  if (!missing(des_causa_baja)) {
    defaults$des_causa_baja <- des_causa_baja
  }
  assign('tba_cau_baja', defaults, envir = defaultValues)
  invisible(defaults)
}

set_defaults_tba_cie9p <- function(id, cod_procedimiento, des_procedimiento) {
  defaults <- get('tba_cie9p', envir = defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(cod_procedimiento)) {
    defaults$cod_procedimiento <- cod_procedimiento
  }
  if (!missing(des_procedimiento)) {
    defaults$des_procedimiento <- des_procedimiento
  }
  assign('tba_cie9p', defaults, envir = defaultValues)
  invisible(defaults)
}

set_defaults_tba_comunidad_acred <- function(id, cod_comunidad, des_comunidad) {
  defaults <- get('tba_comunidad_acred', envir = defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(cod_comunidad)) {
    defaults$cod_comunidad <- cod_comunidad
  }
  if (!missing(des_comunidad)) {
    defaults$des_comunidad <- des_comunidad
  }
  assign('tba_comunidad_acred', defaults, envir = defaultValues)
  invisible(defaults)
}

set_defaults_tba_departamentos <- function(id, cod_departamento, des_departamento) {
  defaults <- get('tba_departamentos', envir = defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(cod_departamento)) {
    defaults$cod_departamento <- cod_departamento
  }
  if (!missing(des_departamento)) {
    defaults$des_departamento <- des_departamento
  }
  assign('tba_departamentos', defaults, envir = defaultValues)
  invisible(defaults)
}

set_defaults_tba_est_salud <- function(id, cod_est_salud, des_est_salud) {
  defaults <- get('tba_est_salud', envir = defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(cod_est_salud)) {
    defaults$cod_est_salud <- cod_est_salud
  }
  if (!missing(des_est_salud)) {
    defaults$des_est_salud <- des_est_salud
  }
  assign('tba_est_salud', defaults, envir = defaultValues)
  invisible(defaults)
}

set_defaults_tba_modalidad <- function(id, cod_modalidad, des_modalidad) {
  defaults <- get('tba_modalidad', envir = defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(cod_modalidad)) {
    defaults$cod_modalidad <- cod_modalidad
  }
  if (!missing(des_modalidad)) {
    defaults$des_modalidad <- des_modalidad
  }
  assign('tba_modalidad', defaults, envir = defaultValues)
  invisible(defaults)
}

set_defaults_tba_mot_cierre <- function(id, cod_motivo_cierre, des_motivo_cierre) {
  defaults <- get('tba_mot_cierre', envir = defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(cod_motivo_cierre)) {
    defaults$cod_motivo_cierre <- cod_motivo_cierre
  }
  if (!missing(des_motivo_cierre)) {
    defaults$des_motivo_cierre <- des_motivo_cierre
  }
  assign('tba_mot_cierre', defaults, envir = defaultValues)
  invisible(defaults)
}

set_defaults_tba_mot_urgencia <- function(id, cod_motivo_urg, des_motivo_urg) {
  defaults <- get('tba_mot_urgencia', envir = defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(cod_motivo_urg)) {
    defaults$cod_motivo_urg <- cod_motivo_urg
  }
  if (!missing(des_motivo_urg)) {
    defaults$des_motivo_urg <- des_motivo_urg
  }
  assign('tba_mot_urgencia', defaults, envir = defaultValues)
  invisible(defaults)
}

set_defaults_tba_pais_acred <- function(id, cod_pais, des_pais) {
  defaults <- get('tba_pais_acred', envir = defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(cod_pais)) {
    defaults$cod_pais <- cod_pais
  }
  if (!missing(des_pais)) {
    defaults$des_pais <- des_pais
  }
  assign('tba_pais_acred', defaults, envir = defaultValues)
  invisible(defaults)
}

set_defaults_tba_presfarma <- function(id, cod_presfarma, des_presfarma) {
  defaults <- get('tba_presfarma', envir = defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(cod_presfarma)) {
    defaults$cod_presfarma <- cod_presfarma
  }
  if (!missing(des_presfarma)) {
    defaults$des_presfarma <- des_presfarma
  }
  assign('tba_presfarma', defaults, envir = defaultValues)
  invisible(defaults)
}

set_defaults_tba_prinactivo <- function(id, cod_prinactivo, des_prinactivo) {
  defaults <- get('tba_prinactivo', envir = defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(cod_prinactivo)) {
    defaults$cod_prinactivo <- cod_prinactivo
  }
  if (!missing(des_prinactivo)) {
    defaults$des_prinactivo <- des_prinactivo
  }
  assign('tba_prinactivo', defaults, envir = defaultValues)
  invisible(defaults)
}

set_defaults_tba_raf <- function(id, cod_raf, des_raf) {
  defaults <- get('tba_raf', envir = defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(cod_raf)) {
    defaults$cod_raf <- cod_raf
  }
  if (!missing(des_raf)) {
    defaults$des_raf <- des_raf
  }
  assign('tba_raf', defaults, envir = defaultValues)
  invisible(defaults)
}

set_defaults_tba_serv_homologado <- function(id, cod_serv_homologado, des_serv_homologado) {
  defaults <- get('tba_serv_homologado', envir = defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(cod_serv_homologado)) {
    defaults$cod_serv_homologado <- cod_serv_homologado
  }
  if (!missing(des_serv_homologado)) {
    defaults$des_serv_homologado <- des_serv_homologado
  }
  assign('tba_serv_homologado', defaults, envir = defaultValues)
  invisible(defaults)
}

set_defaults_tba_tip_baja <- function(id, cod_tipo_baja, des_tipo_baja) {
  defaults <- get('tba_tip_baja', envir = defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(cod_tipo_baja)) {
    defaults$cod_tipo_baja <- cod_tipo_baja
  }
  if (!missing(des_tipo_baja)) {
    defaults$des_tipo_baja <- des_tipo_baja
  }
  assign('tba_tip_baja', defaults, envir = defaultValues)
  invisible(defaults)
}

set_defaults_tba_tip_prest <- function(id, cod_prestacion, des_prestacion) {
  defaults <- get('tba_tip_prest', envir = defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(cod_prestacion)) {
    defaults$cod_prestacion <- cod_prestacion
  }
  if (!missing(des_prestacion)) {
    defaults$des_prestacion <- des_prestacion
  }
  assign('tba_tip_prest', defaults, envir = defaultValues)
  invisible(defaults)
}

set_defaults_tba_tip_variables <- function(id, cod_variable_clinic, des_variable_clinic) {
  defaults <- get('tba_tip_variables', envir = defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(cod_variable_clinic)) {
    defaults$cod_variable_clinic <- cod_variable_clinic
  }
  if (!missing(des_variable_clinic)) {
    defaults$des_variable_clinic <- des_variable_clinic
  }
  assign('tba_tip_variables', defaults, envir = defaultValues)
  invisible(defaults)
}

set_defaults_tba_ud_medidas <- function(id, cod_ud_medida, des_ud_medida) {
  defaults <- get('tba_ud_medidas', envir = defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(cod_ud_medida)) {
    defaults$cod_ud_medida <- cod_ud_medida
  }
  if (!missing(des_ud_medida)) {
    defaults$des_ud_medida <- des_ud_medida
  }
  assign('tba_ud_medidas', defaults, envir = defaultValues)
  invisible(defaults)
}

get_defaults_tb_sip_spo <- function() {
  defaults <- get('tb_sip_spo', envir = defaultValues)
  return(defaults)
}

get_defaults_tb_sip_spo_resto_2012 <- function() {
  defaults <- get('tb_sip_spo_resto_2012', envir = defaultValues)
  return(defaults)
}

get_defaults_tb_sip_spo_resto_2015 <- function() {
  defaults <- get('tb_sip_spo_resto_2015', envir = defaultValues)
  return(defaults)
}

get_defaults_tb_diag_juntos <- function() {
  defaults <- get('tb_diag_juntos', envir = defaultValues)
  return(defaults)
}

get_defaults_tb_rele <- function() {
  defaults <- get('tb_rele', envir = defaultValues)
  return(defaults)
}

get_defaults_tb_prescrip <- function() {
  defaults <- get('tb_prescrip', envir = defaultValues)
  return(defaults)
}

get_defaults_tb_tratamientos <- function() {
  defaults <- get('tb_tratamientos', envir = defaultValues)
  return(defaults)
}

get_defaults_tb_prestaci <- function() {
  defaults <- get('tb_prestaci', envir = defaultValues)
  return(defaults)
}

get_defaults_tb_variables <- function() {
  defaults <- get('tb_variables', envir = defaultValues)
  return(defaults)
}

get_defaults_tb_aconadve <- function() {
  defaults <- get('tb_aconadve', envir = defaultValues)
  return(defaults)
}

get_defaults_tb_alergias <- function() {
  defaults <- get('tb_alergias', envir = defaultValues)
  return(defaults)
}

get_defaults_tb_cex <- function() {
  defaults <- get('tb_cex', envir = defaultValues)
  return(defaults)
}

get_defaults_tb_consultas_atp <- function() {
  defaults <- get('tb_consultas_atp', envir = defaultValues)
  return(defaults)
}

get_defaults_tb_contraind <- function() {
  defaults <- get('tb_contraind', envir = defaultValues)
  return(defaults)
}

get_defaults_tb_ctdh <- function() {
  defaults <- get('tb_ctdh', envir = defaultValues)
  return(defaults)
}

get_defaults_tb_cie_atc <- function() {
  defaults <- get('tb_cie_atc', envir = defaultValues)
  return(defaults)
}

get_defaults_tb_duplicid <- function() {
  defaults <- get('tb_duplicid', envir = defaultValues)
  return(defaults)
}

get_defaults_tb_urgencias <- function() {
  defaults <- get('tb_urgencias', envir = defaultValues)
  return(defaults)
}

get_defaults_tb_interacc <- function() {
  defaults <- get('tb_interacc', envir = defaultValues)
  return(defaults)
}

get_defaults_tb_posologia <- function() {
  defaults <- get('tb_posologia', envir = defaultValues)
  return(defaults)
}

get_defaults_tb_estancia_uci <- function() {
  defaults <- get('tb_estancia_uci', envir = defaultValues)
  return(defaults)
}

get_defaults_tb_proc_cmbd <- function() {
  defaults <- get('tb_proc_cmbd', envir = defaultValues)
  return(defaults)
}

get_defaults_tb_antepers <- function() {
  defaults <- get('tb_antepers', envir = defaultValues)
  return(defaults)
}

get_defaults_tb_incatemp <- function() {
  defaults <- get('tb_incatemp', envir = defaultValues)
  return(defaults)
}

get_defaults_tb_scp_2012 <- function() {
  defaults <- get('tb_scp_2012', envir = defaultValues)
  return(defaults)
}

get_defaults_tb_scp_2013 <- function() {
  defaults <- get('tb_scp_2013', envir = defaultValues)
  return(defaults)
}

get_defaults_tb_scp_2014 <- function() {
  defaults <- get('tb_scp_2014', envir = defaultValues)
  return(defaults)
}

get_defaults_tb_scp_2015 <- function() {
  defaults <- get('tb_scp_2015', envir = defaultValues)
  return(defaults)
}

get_defaults_tb_diag_cmbd <- function() {
  defaults <- get('tb_diag_cmbd', envir = defaultValues)
  return(defaults)
}

get_defaults_tb_morbilid <- function() {
  defaults <- get('tb_morbilid', envir = defaultValues)
  return(defaults)
}

get_defaults_tb_ante_cmbd <- function() {
  defaults <- get('tb_ante_cmbd', envir = defaultValues)
  return(defaults)
}

get_defaults_tba_centros <- function() {
  defaults <- get('tba_centros', envir = defaultValues)
  return(defaults)
}

get_defaults_tba_cie9 <- function() {
  defaults <- get('tba_cie9', envir = defaultValues)
  return(defaults)
}

get_defaults_tba_crg <- function() {
  defaults <- get('tba_crg', envir = defaultValues)
  return(defaults)
}

get_defaults_tba_farmacia <- function() {
  defaults <- get('tba_farmacia', envir = defaultValues)
  return(defaults)
}

get_defaults_tba_serv_propio <- function() {
  defaults <- get('tba_serv_propio', envir = defaultValues)
  return(defaults)
}

get_defaults_tba_centros_asignacion <- function() {
  defaults <- get('tba_centros_asignacion', envir = defaultValues)
  return(defaults)
}

get_defaults_tba_zonas <- function() {
  defaults <- get('tba_zonas', envir = defaultValues)
  return(defaults)
}

get_defaults_tba_atc2 <- function() {
  defaults <- get('tba_atc2', envir = defaultValues)
  return(defaults)
}

get_defaults_tba_atc4 <- function() {
  defaults <- get('tba_atc4', envir = defaultValues)
  return(defaults)
}

get_defaults_tba_cau_alta <- function() {
  defaults <- get('tba_cau_alta', envir = defaultValues)
  return(defaults)
}

get_defaults_tba_cau_baja <- function() {
  defaults <- get('tba_cau_baja', envir = defaultValues)
  return(defaults)
}

get_defaults_tba_cie9p <- function() {
  defaults <- get('tba_cie9p', envir = defaultValues)
  return(defaults)
}

get_defaults_tba_comunidad_acred <- function() {
  defaults <- get('tba_comunidad_acred', envir = defaultValues)
  return(defaults)
}

get_defaults_tba_departamentos <- function() {
  defaults <- get('tba_departamentos', envir = defaultValues)
  return(defaults)
}

get_defaults_tba_est_salud <- function() {
  defaults <- get('tba_est_salud', envir = defaultValues)
  return(defaults)
}

get_defaults_tba_modalidad <- function() {
  defaults <- get('tba_modalidad', envir = defaultValues)
  return(defaults)
}

get_defaults_tba_mot_cierre <- function() {
  defaults <- get('tba_mot_cierre', envir = defaultValues)
  return(defaults)
}

get_defaults_tba_mot_urgencia <- function() {
  defaults <- get('tba_mot_urgencia', envir = defaultValues)
  return(defaults)
}

get_defaults_tba_pais_acred <- function() {
  defaults <- get('tba_pais_acred', envir = defaultValues)
  return(defaults)
}

get_defaults_tba_presfarma <- function() {
  defaults <- get('tba_presfarma', envir = defaultValues)
  return(defaults)
}

get_defaults_tba_prinactivo <- function() {
  defaults <- get('tba_prinactivo', envir = defaultValues)
  return(defaults)
}

get_defaults_tba_raf <- function() {
  defaults <- get('tba_raf', envir = defaultValues)
  return(defaults)
}

get_defaults_tba_serv_homologado <- function() {
  defaults <- get('tba_serv_homologado', envir = defaultValues)
  return(defaults)
}

get_defaults_tba_tip_baja <- function() {
  defaults <- get('tba_tip_baja', envir = defaultValues)
  return(defaults)
}

get_defaults_tba_tip_prest <- function() {
  defaults <- get('tba_tip_prest', envir = defaultValues)
  return(defaults)
}

get_defaults_tba_tip_variables <- function() {
  defaults <- get('tba_tip_variables', envir = defaultValues)
  return(defaults)
}

get_defaults_tba_ud_medidas <- function() {
  defaults <- get('tba_ud_medidas', envir = defaultValues)
  return(defaults)
}

add_tb_sip_spo <- function(id, numsipcod, sexo, fecha_nac, fecha_def, fecha_baja_sip, cod_causa_baja) {
  defaults <- get('tb_sip_spo', envir = defaultValues)
  insertFields <- c()
  insertValues <- c()
  if (missing(id)) {
    id <- defaults$id
  }
  if (!is.null(id)) {
    insertFields <- c(insertFields, "id")
    insertValues <- c(insertValues, id)
  }

  if (missing(numsipcod)) {
    numsipcod <- defaults$numsipcod
  }
  if (!is.null(numsipcod)) {
    insertFields <- c(insertFields, "numsipcod")
    insertValues <- c(insertValues, numsipcod)
  }

  if (missing(sexo)) {
    sexo <- defaults$sexo
  }
  if (!is.null(sexo)) {
    insertFields <- c(insertFields, "sexo")
    insertValues <- c(insertValues, sexo)
  }

  if (missing(fecha_nac)) {
    fecha_nac <- defaults$fecha_nac
  }
  if (!is.null(fecha_nac)) {
    insertFields <- c(insertFields, "fecha_nac")
    insertValues <- c(insertValues, fecha_nac)
  }

  if (missing(fecha_def)) {
    fecha_def <- defaults$fecha_def
  }
  if (!is.null(fecha_def)) {
    insertFields <- c(insertFields, "fecha_def")
    insertValues <- c(insertValues, fecha_def)
  }

  if (missing(fecha_baja_sip)) {
    fecha_baja_sip <- defaults$fecha_baja_sip
  }
  if (!is.null(fecha_baja_sip)) {
    insertFields <- c(insertFields, "fecha_baja_sip")
    insertValues <- c(insertValues, fecha_baja_sip)
  }

  if (missing(cod_causa_baja)) {
    cod_causa_baja <- defaults$cod_causa_baja
  }
  if (!is.null(cod_causa_baja)) {
    insertFields <- c(insertFields, "cod_causa_baja")
    insertValues <- c(insertValues, cod_causa_baja)
  }

  if (exists('testNewAdded', where = globalenv()) && get('testNewAdded'))
  {
    assign('testNewAdded', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    insertDf[nrow(insertDf) + 1,] <<- c('tb_sip_spo', comment)
  }
  statement <- paste0("INSERT INTO tb_sip_spo (", paste(insertFields, collapse = ", "), ") VALUES ('", paste(insertValues, collapse = "', '"), "');")
  insertDf[nrow(insertDf) + 1,] <<- c('tb_sip_spo', statement)
  invisible(statement)
}

add_tb_sip_spo_resto_2012 <- function(id, numsipcod, cod_centro_asignacion, cod_departamento_asignacion, cod_zona_asignacion, clave_medica, codigo_apsig, fecha_corte, sit_empadronamiento, nacionalidad_espanola, cod_modalidad, derecho_medico, cod_pais_procedencia_acred, cod_comunidad_procedencia_acred, cod_pais_nacimiento, titular_beneficiario, cod_raf) {
  defaults <- get('tb_sip_spo_resto_2012', envir = defaultValues)
  insertFields <- c()
  insertValues <- c()
  if (missing(id)) {
    id <- defaults$id
  }
  if (!is.null(id)) {
    insertFields <- c(insertFields, "id")
    insertValues <- c(insertValues, id)
  }

  if (missing(numsipcod)) {
    numsipcod <- defaults$numsipcod
  }
  if (!is.null(numsipcod)) {
    insertFields <- c(insertFields, "numsipcod")
    insertValues <- c(insertValues, numsipcod)
  }

  if (missing(cod_centro_asignacion)) {
    cod_centro_asignacion <- defaults$cod_centro_asignacion
  }
  if (!is.null(cod_centro_asignacion)) {
    insertFields <- c(insertFields, "cod_centro_asignacion")
    insertValues <- c(insertValues, cod_centro_asignacion)
  }

  if (missing(cod_departamento_asignacion)) {
    cod_departamento_asignacion <- defaults$cod_departamento_asignacion
  }
  if (!is.null(cod_departamento_asignacion)) {
    insertFields <- c(insertFields, "cod_departamento_asignacion")
    insertValues <- c(insertValues, cod_departamento_asignacion)
  }

  if (missing(cod_zona_asignacion)) {
    cod_zona_asignacion <- defaults$cod_zona_asignacion
  }
  if (!is.null(cod_zona_asignacion)) {
    insertFields <- c(insertFields, "cod_zona_asignacion")
    insertValues <- c(insertValues, cod_zona_asignacion)
  }

  if (missing(clave_medica)) {
    clave_medica <- defaults$clave_medica
  }
  if (!is.null(clave_medica)) {
    insertFields <- c(insertFields, "clave_medica")
    insertValues <- c(insertValues, clave_medica)
  }

  if (missing(codigo_apsig)) {
    codigo_apsig <- defaults$codigo_apsig
  }
  if (!is.null(codigo_apsig)) {
    insertFields <- c(insertFields, "codigo_apsig")
    insertValues <- c(insertValues, codigo_apsig)
  }

  if (missing(fecha_corte)) {
    fecha_corte <- defaults$fecha_corte
  }
  if (!is.null(fecha_corte)) {
    insertFields <- c(insertFields, "fecha_corte")
    insertValues <- c(insertValues, fecha_corte)
  }

  if (missing(sit_empadronamiento)) {
    sit_empadronamiento <- defaults$sit_empadronamiento
  }
  if (!is.null(sit_empadronamiento)) {
    insertFields <- c(insertFields, "sit_empadronamiento")
    insertValues <- c(insertValues, sit_empadronamiento)
  }

  if (missing(nacionalidad_espanola)) {
    nacionalidad_espanola <- defaults$nacionalidad_espanola
  }
  if (!is.null(nacionalidad_espanola)) {
    insertFields <- c(insertFields, "nacionalidad_espanola")
    insertValues <- c(insertValues, nacionalidad_espanola)
  }

  if (missing(cod_modalidad)) {
    cod_modalidad <- defaults$cod_modalidad
  }
  if (!is.null(cod_modalidad)) {
    insertFields <- c(insertFields, "cod_modalidad")
    insertValues <- c(insertValues, cod_modalidad)
  }

  if (missing(derecho_medico)) {
    derecho_medico <- defaults$derecho_medico
  }
  if (!is.null(derecho_medico)) {
    insertFields <- c(insertFields, "derecho_medico")
    insertValues <- c(insertValues, derecho_medico)
  }

  if (missing(cod_pais_procedencia_acred)) {
    cod_pais_procedencia_acred <- defaults$cod_pais_procedencia_acred
  }
  if (!is.null(cod_pais_procedencia_acred)) {
    insertFields <- c(insertFields, "cod_pais_procedencia_acred")
    insertValues <- c(insertValues, cod_pais_procedencia_acred)
  }

  if (missing(cod_comunidad_procedencia_acred)) {
    cod_comunidad_procedencia_acred <- defaults$cod_comunidad_procedencia_acred
  }
  if (!is.null(cod_comunidad_procedencia_acred)) {
    insertFields <- c(insertFields, "cod_comunidad_procedencia_acred")
    insertValues <- c(insertValues, cod_comunidad_procedencia_acred)
  }

  if (missing(cod_pais_nacimiento)) {
    cod_pais_nacimiento <- defaults$cod_pais_nacimiento
  }
  if (!is.null(cod_pais_nacimiento)) {
    insertFields <- c(insertFields, "cod_pais_nacimiento")
    insertValues <- c(insertValues, cod_pais_nacimiento)
  }

  if (missing(titular_beneficiario)) {
    titular_beneficiario <- defaults$titular_beneficiario
  }
  if (!is.null(titular_beneficiario)) {
    insertFields <- c(insertFields, "titular_beneficiario")
    insertValues <- c(insertValues, titular_beneficiario)
  }

  if (missing(cod_raf)) {
    cod_raf <- defaults$cod_raf
  }
  if (!is.null(cod_raf)) {
    insertFields <- c(insertFields, "cod_raf")
    insertValues <- c(insertValues, cod_raf)
  }

  if (exists('testNewAdded', where = globalenv()) && get('testNewAdded'))
  {
    assign('testNewAdded', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    insertDf[nrow(insertDf) + 1,] <<- c('tb_sip_spo_resto_2012', comment)
  }
  statement <- paste0("INSERT INTO tb_sip_spo_resto_2012 (", paste(insertFields, collapse = ", "), ") VALUES ('", paste(insertValues, collapse = "', '"), "');")
  insertDf[nrow(insertDf) + 1,] <<- c('tb_sip_spo_resto_2012', statement)
  invisible(statement)
}

add_tb_sip_spo_resto_2015 <- function(id, numsipcod, cod_centro_asignacion, cod_departamento_asignacion, cod_zona_asignacion, clave_medica, codigo_apsig, fecha_corte, sit_empadronamiento, nacionalidad_espanola, cod_modalidad, derecho_medico, cod_pais_procedencia_acred, cod_comunidad_procedencia_acred, cod_pais_nacimiento, titular_beneficiario, cod_raf) {
  defaults <- get('tb_sip_spo_resto_2015', envir = defaultValues)
  insertFields <- c()
  insertValues <- c()
  if (missing(id)) {
    id <- defaults$id
  }
  if (!is.null(id)) {
    insertFields <- c(insertFields, "id")
    insertValues <- c(insertValues, id)
  }

  if (missing(numsipcod)) {
    numsipcod <- defaults$numsipcod
  }
  if (!is.null(numsipcod)) {
    insertFields <- c(insertFields, "numsipcod")
    insertValues <- c(insertValues, numsipcod)
  }

  if (missing(cod_centro_asignacion)) {
    cod_centro_asignacion <- defaults$cod_centro_asignacion
  }
  if (!is.null(cod_centro_asignacion)) {
    insertFields <- c(insertFields, "cod_centro_asignacion")
    insertValues <- c(insertValues, cod_centro_asignacion)
  }

  if (missing(cod_departamento_asignacion)) {
    cod_departamento_asignacion <- defaults$cod_departamento_asignacion
  }
  if (!is.null(cod_departamento_asignacion)) {
    insertFields <- c(insertFields, "cod_departamento_asignacion")
    insertValues <- c(insertValues, cod_departamento_asignacion)
  }

  if (missing(cod_zona_asignacion)) {
    cod_zona_asignacion <- defaults$cod_zona_asignacion
  }
  if (!is.null(cod_zona_asignacion)) {
    insertFields <- c(insertFields, "cod_zona_asignacion")
    insertValues <- c(insertValues, cod_zona_asignacion)
  }

  if (missing(clave_medica)) {
    clave_medica <- defaults$clave_medica
  }
  if (!is.null(clave_medica)) {
    insertFields <- c(insertFields, "clave_medica")
    insertValues <- c(insertValues, clave_medica)
  }

  if (missing(codigo_apsig)) {
    codigo_apsig <- defaults$codigo_apsig
  }
  if (!is.null(codigo_apsig)) {
    insertFields <- c(insertFields, "codigo_apsig")
    insertValues <- c(insertValues, codigo_apsig)
  }

  if (missing(fecha_corte)) {
    fecha_corte <- defaults$fecha_corte
  }
  if (!is.null(fecha_corte)) {
    insertFields <- c(insertFields, "fecha_corte")
    insertValues <- c(insertValues, fecha_corte)
  }

  if (missing(sit_empadronamiento)) {
    sit_empadronamiento <- defaults$sit_empadronamiento
  }
  if (!is.null(sit_empadronamiento)) {
    insertFields <- c(insertFields, "sit_empadronamiento")
    insertValues <- c(insertValues, sit_empadronamiento)
  }

  if (missing(nacionalidad_espanola)) {
    nacionalidad_espanola <- defaults$nacionalidad_espanola
  }
  if (!is.null(nacionalidad_espanola)) {
    insertFields <- c(insertFields, "nacionalidad_espanola")
    insertValues <- c(insertValues, nacionalidad_espanola)
  }

  if (missing(cod_modalidad)) {
    cod_modalidad <- defaults$cod_modalidad
  }
  if (!is.null(cod_modalidad)) {
    insertFields <- c(insertFields, "cod_modalidad")
    insertValues <- c(insertValues, cod_modalidad)
  }

  if (missing(derecho_medico)) {
    derecho_medico <- defaults$derecho_medico
  }
  if (!is.null(derecho_medico)) {
    insertFields <- c(insertFields, "derecho_medico")
    insertValues <- c(insertValues, derecho_medico)
  }

  if (missing(cod_pais_procedencia_acred)) {
    cod_pais_procedencia_acred <- defaults$cod_pais_procedencia_acred
  }
  if (!is.null(cod_pais_procedencia_acred)) {
    insertFields <- c(insertFields, "cod_pais_procedencia_acred")
    insertValues <- c(insertValues, cod_pais_procedencia_acred)
  }

  if (missing(cod_comunidad_procedencia_acred)) {
    cod_comunidad_procedencia_acred <- defaults$cod_comunidad_procedencia_acred
  }
  if (!is.null(cod_comunidad_procedencia_acred)) {
    insertFields <- c(insertFields, "cod_comunidad_procedencia_acred")
    insertValues <- c(insertValues, cod_comunidad_procedencia_acred)
  }

  if (missing(cod_pais_nacimiento)) {
    cod_pais_nacimiento <- defaults$cod_pais_nacimiento
  }
  if (!is.null(cod_pais_nacimiento)) {
    insertFields <- c(insertFields, "cod_pais_nacimiento")
    insertValues <- c(insertValues, cod_pais_nacimiento)
  }

  if (missing(titular_beneficiario)) {
    titular_beneficiario <- defaults$titular_beneficiario
  }
  if (!is.null(titular_beneficiario)) {
    insertFields <- c(insertFields, "titular_beneficiario")
    insertValues <- c(insertValues, titular_beneficiario)
  }

  if (missing(cod_raf)) {
    cod_raf <- defaults$cod_raf
  }
  if (!is.null(cod_raf)) {
    insertFields <- c(insertFields, "cod_raf")
    insertValues <- c(insertValues, cod_raf)
  }

  if (exists('testNewAdded', where = globalenv()) && get('testNewAdded'))
  {
    assign('testNewAdded', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    insertDf[nrow(insertDf) + 1,] <<- c('tb_sip_spo_resto_2015', comment)
  }
  statement <- paste0("INSERT INTO tb_sip_spo_resto_2015 (", paste(insertFields, collapse = ", "), ") VALUES ('", paste(insertValues, collapse = "', '"), "');")
  insertDf[nrow(insertDf) + 1,] <<- c('tb_sip_spo_resto_2015', statement)
  invisible(statement)
}

add_tb_diag_juntos <- function(id, numsipcod, fecha_inicio, fecha_fin, cod_diagnostico, estado_morbilidad, tipo_actividad, cir_ingreso, cir_alta, grd, peso_grd, orden, origen) {
  defaults <- get('tb_diag_juntos', envir = defaultValues)
  insertFields <- c()
  insertValues <- c()
  if (missing(id)) {
    id <- defaults$id
  }
  if (!is.null(id)) {
    insertFields <- c(insertFields, "id")
    insertValues <- c(insertValues, id)
  }

  if (missing(numsipcod)) {
    numsipcod <- defaults$numsipcod
  }
  if (!is.null(numsipcod)) {
    insertFields <- c(insertFields, "numsipcod")
    insertValues <- c(insertValues, numsipcod)
  }

  if (missing(fecha_inicio)) {
    fecha_inicio <- defaults$fecha_inicio
  }
  if (!is.null(fecha_inicio)) {
    insertFields <- c(insertFields, "fecha_inicio")
    insertValues <- c(insertValues, fecha_inicio)
  }

  if (missing(fecha_fin)) {
    fecha_fin <- defaults$fecha_fin
  }
  if (!is.null(fecha_fin)) {
    insertFields <- c(insertFields, "fecha_fin")
    insertValues <- c(insertValues, fecha_fin)
  }

  if (missing(cod_diagnostico)) {
    cod_diagnostico <- defaults$cod_diagnostico
  }
  if (!is.null(cod_diagnostico)) {
    insertFields <- c(insertFields, "cod_diagnostico")
    insertValues <- c(insertValues, cod_diagnostico)
  }

  if (missing(estado_morbilidad)) {
    estado_morbilidad <- defaults$estado_morbilidad
  }
  if (!is.null(estado_morbilidad)) {
    insertFields <- c(insertFields, "estado_morbilidad")
    insertValues <- c(insertValues, estado_morbilidad)
  }

  if (missing(tipo_actividad)) {
    tipo_actividad <- defaults$tipo_actividad
  }
  if (!is.null(tipo_actividad)) {
    insertFields <- c(insertFields, "tipo_actividad")
    insertValues <- c(insertValues, tipo_actividad)
  }

  if (missing(cir_ingreso)) {
    cir_ingreso <- defaults$cir_ingreso
  }
  if (!is.null(cir_ingreso)) {
    insertFields <- c(insertFields, "cir_ingreso")
    insertValues <- c(insertValues, cir_ingreso)
  }

  if (missing(cir_alta)) {
    cir_alta <- defaults$cir_alta
  }
  if (!is.null(cir_alta)) {
    insertFields <- c(insertFields, "cir_alta")
    insertValues <- c(insertValues, cir_alta)
  }

  if (missing(grd)) {
    grd <- defaults$grd
  }
  if (!is.null(grd)) {
    insertFields <- c(insertFields, "grd")
    insertValues <- c(insertValues, grd)
  }

  if (missing(peso_grd)) {
    peso_grd <- defaults$peso_grd
  }
  if (!is.null(peso_grd)) {
    insertFields <- c(insertFields, "peso_grd")
    insertValues <- c(insertValues, peso_grd)
  }

  if (missing(orden)) {
    orden <- defaults$orden
  }
  if (!is.null(orden)) {
    insertFields <- c(insertFields, "orden")
    insertValues <- c(insertValues, orden)
  }

  if (missing(origen)) {
    origen <- defaults$origen
  }
  if (!is.null(origen)) {
    insertFields <- c(insertFields, "origen")
    insertValues <- c(insertValues, origen)
  }

  if (exists('testNewAdded', where = globalenv()) && get('testNewAdded'))
  {
    assign('testNewAdded', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    insertDf[nrow(insertDf) + 1,] <<- c('tb_diag_juntos', comment)
  }
  statement <- paste0("INSERT INTO tb_diag_juntos (", paste(insertFields, collapse = ", "), ") VALUES ('", paste(insertValues, collapse = "', '"), "');")
  insertDf[nrow(insertDf) + 1,] <<- c('tb_diag_juntos', statement)
  invisible(statement)
}

add_tb_rele <- function(id, numsipcod, numreceta, anomes_facturacion, fecha_dispensacion, cod_prinactivo, cod_presfarma, cod_atc2, cod_atc4) {
  defaults <- get('tb_rele', envir = defaultValues)
  insertFields <- c()
  insertValues <- c()
  if (missing(id)) {
    id <- defaults$id
  }
  if (!is.null(id)) {
    insertFields <- c(insertFields, "id")
    insertValues <- c(insertValues, id)
  }

  if (missing(numsipcod)) {
    numsipcod <- defaults$numsipcod
  }
  if (!is.null(numsipcod)) {
    insertFields <- c(insertFields, "numsipcod")
    insertValues <- c(insertValues, numsipcod)
  }

  if (missing(numreceta)) {
    numreceta <- defaults$numreceta
  }
  if (!is.null(numreceta)) {
    insertFields <- c(insertFields, "numreceta")
    insertValues <- c(insertValues, numreceta)
  }

  if (missing(anomes_facturacion)) {
    anomes_facturacion <- defaults$anomes_facturacion
  }
  if (!is.null(anomes_facturacion)) {
    insertFields <- c(insertFields, "anomes_facturacion")
    insertValues <- c(insertValues, anomes_facturacion)
  }

  if (missing(fecha_dispensacion)) {
    fecha_dispensacion <- defaults$fecha_dispensacion
  }
  if (!is.null(fecha_dispensacion)) {
    insertFields <- c(insertFields, "fecha_dispensacion")
    insertValues <- c(insertValues, fecha_dispensacion)
  }

  if (missing(cod_prinactivo)) {
    cod_prinactivo <- defaults$cod_prinactivo
  }
  if (!is.null(cod_prinactivo)) {
    insertFields <- c(insertFields, "cod_prinactivo")
    insertValues <- c(insertValues, cod_prinactivo)
  }

  if (missing(cod_presfarma)) {
    cod_presfarma <- defaults$cod_presfarma
  }
  if (!is.null(cod_presfarma)) {
    insertFields <- c(insertFields, "cod_presfarma")
    insertValues <- c(insertValues, cod_presfarma)
  }

  if (missing(cod_atc2)) {
    cod_atc2 <- defaults$cod_atc2
  }
  if (!is.null(cod_atc2)) {
    insertFields <- c(insertFields, "cod_atc2")
    insertValues <- c(insertValues, cod_atc2)
  }

  if (missing(cod_atc4)) {
    cod_atc4 <- defaults$cod_atc4
  }
  if (!is.null(cod_atc4)) {
    insertFields <- c(insertFields, "cod_atc4")
    insertValues <- c(insertValues, cod_atc4)
  }

  if (exists('testNewAdded', where = globalenv()) && get('testNewAdded'))
  {
    assign('testNewAdded', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    insertDf[nrow(insertDf) + 1,] <<- c('tb_rele', comment)
  }
  statement <- paste0("INSERT INTO tb_rele (", paste(insertFields, collapse = ", "), ") VALUES ('", paste(insertValues, collapse = "', '"), "');")
  insertDf[nrow(insertDf) + 1,] <<- c('tb_rele', statement)
  invisible(statement)
}

add_tb_prescrip <- function(id, numsipcod, numreceta, id_tratamiento, fecha_prescripcion, cod_atc2, cod_atc4, cod_presfarma, cod_prinactivo) {
  defaults <- get('tb_prescrip', envir = defaultValues)
  insertFields <- c()
  insertValues <- c()
  if (missing(id)) {
    id <- defaults$id
  }
  if (!is.null(id)) {
    insertFields <- c(insertFields, "id")
    insertValues <- c(insertValues, id)
  }

  if (missing(numsipcod)) {
    numsipcod <- defaults$numsipcod
  }
  if (!is.null(numsipcod)) {
    insertFields <- c(insertFields, "numsipcod")
    insertValues <- c(insertValues, numsipcod)
  }

  if (missing(numreceta)) {
    numreceta <- defaults$numreceta
  }
  if (!is.null(numreceta)) {
    insertFields <- c(insertFields, "numreceta")
    insertValues <- c(insertValues, numreceta)
  }

  if (missing(id_tratamiento)) {
    id_tratamiento <- defaults$id_tratamiento
  }
  if (!is.null(id_tratamiento)) {
    insertFields <- c(insertFields, "id_tratamiento")
    insertValues <- c(insertValues, id_tratamiento)
  }

  if (missing(fecha_prescripcion)) {
    fecha_prescripcion <- defaults$fecha_prescripcion
  }
  if (!is.null(fecha_prescripcion)) {
    insertFields <- c(insertFields, "fecha_prescripcion")
    insertValues <- c(insertValues, fecha_prescripcion)
  }

  if (missing(cod_atc2)) {
    cod_atc2 <- defaults$cod_atc2
  }
  if (!is.null(cod_atc2)) {
    insertFields <- c(insertFields, "cod_atc2")
    insertValues <- c(insertValues, cod_atc2)
  }

  if (missing(cod_atc4)) {
    cod_atc4 <- defaults$cod_atc4
  }
  if (!is.null(cod_atc4)) {
    insertFields <- c(insertFields, "cod_atc4")
    insertValues <- c(insertValues, cod_atc4)
  }

  if (missing(cod_presfarma)) {
    cod_presfarma <- defaults$cod_presfarma
  }
  if (!is.null(cod_presfarma)) {
    insertFields <- c(insertFields, "cod_presfarma")
    insertValues <- c(insertValues, cod_presfarma)
  }

  if (missing(cod_prinactivo)) {
    cod_prinactivo <- defaults$cod_prinactivo
  }
  if (!is.null(cod_prinactivo)) {
    insertFields <- c(insertFields, "cod_prinactivo")
    insertValues <- c(insertValues, cod_prinactivo)
  }

  if (exists('testNewAdded', where = globalenv()) && get('testNewAdded'))
  {
    assign('testNewAdded', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    insertDf[nrow(insertDf) + 1,] <<- c('tb_prescrip', comment)
  }
  statement <- paste0("INSERT INTO tb_prescrip (", paste(insertFields, collapse = ", "), ") VALUES ('", paste(insertValues, collapse = "', '"), "');")
  insertDf[nrow(insertDf) + 1,] <<- c('tb_prescrip', statement)
  invisible(statement)
}

add_tb_tratamientos <- function(id, unidades, numsipcod, cod_prinactivo, dias_tratamiento, cadencia, fecha_inicio_tratamiento, fecha_fin_tratamiento, unidad_posologia, tipo_posologia, cod_presfarma, id_tratamiento, cod_atc2, cod_atc4) {
  defaults <- get('tb_tratamientos', envir = defaultValues)
  insertFields <- c()
  insertValues <- c()
  if (missing(id)) {
    id <- defaults$id
  }
  if (!is.null(id)) {
    insertFields <- c(insertFields, "id")
    insertValues <- c(insertValues, id)
  }

  if (missing(unidades)) {
    unidades <- defaults$unidades
  }
  if (!is.null(unidades)) {
    insertFields <- c(insertFields, "unidades")
    insertValues <- c(insertValues, unidades)
  }

  if (missing(numsipcod)) {
    numsipcod <- defaults$numsipcod
  }
  if (!is.null(numsipcod)) {
    insertFields <- c(insertFields, "numsipcod")
    insertValues <- c(insertValues, numsipcod)
  }

  if (missing(cod_prinactivo)) {
    cod_prinactivo <- defaults$cod_prinactivo
  }
  if (!is.null(cod_prinactivo)) {
    insertFields <- c(insertFields, "cod_prinactivo")
    insertValues <- c(insertValues, cod_prinactivo)
  }

  if (missing(dias_tratamiento)) {
    dias_tratamiento <- defaults$dias_tratamiento
  }
  if (!is.null(dias_tratamiento)) {
    insertFields <- c(insertFields, "dias_tratamiento")
    insertValues <- c(insertValues, dias_tratamiento)
  }

  if (missing(cadencia)) {
    cadencia <- defaults$cadencia
  }
  if (!is.null(cadencia)) {
    insertFields <- c(insertFields, "cadencia")
    insertValues <- c(insertValues, cadencia)
  }

  if (missing(fecha_inicio_tratamiento)) {
    fecha_inicio_tratamiento <- defaults$fecha_inicio_tratamiento
  }
  if (!is.null(fecha_inicio_tratamiento)) {
    insertFields <- c(insertFields, "fecha_inicio_tratamiento")
    insertValues <- c(insertValues, fecha_inicio_tratamiento)
  }

  if (missing(fecha_fin_tratamiento)) {
    fecha_fin_tratamiento <- defaults$fecha_fin_tratamiento
  }
  if (!is.null(fecha_fin_tratamiento)) {
    insertFields <- c(insertFields, "fecha_fin_tratamiento")
    insertValues <- c(insertValues, fecha_fin_tratamiento)
  }

  if (missing(unidad_posologia)) {
    unidad_posologia <- defaults$unidad_posologia
  }
  if (!is.null(unidad_posologia)) {
    insertFields <- c(insertFields, "unidad_posologia")
    insertValues <- c(insertValues, unidad_posologia)
  }

  if (missing(tipo_posologia)) {
    tipo_posologia <- defaults$tipo_posologia
  }
  if (!is.null(tipo_posologia)) {
    insertFields <- c(insertFields, "tipo_posologia")
    insertValues <- c(insertValues, tipo_posologia)
  }

  if (missing(cod_presfarma)) {
    cod_presfarma <- defaults$cod_presfarma
  }
  if (!is.null(cod_presfarma)) {
    insertFields <- c(insertFields, "cod_presfarma")
    insertValues <- c(insertValues, cod_presfarma)
  }

  if (missing(id_tratamiento)) {
    id_tratamiento <- defaults$id_tratamiento
  }
  if (!is.null(id_tratamiento)) {
    insertFields <- c(insertFields, "id_tratamiento")
    insertValues <- c(insertValues, id_tratamiento)
  }

  if (missing(cod_atc2)) {
    cod_atc2 <- defaults$cod_atc2
  }
  if (!is.null(cod_atc2)) {
    insertFields <- c(insertFields, "cod_atc2")
    insertValues <- c(insertValues, cod_atc2)
  }

  if (missing(cod_atc4)) {
    cod_atc4 <- defaults$cod_atc4
  }
  if (!is.null(cod_atc4)) {
    insertFields <- c(insertFields, "cod_atc4")
    insertValues <- c(insertValues, cod_atc4)
  }

  if (exists('testNewAdded', where = globalenv()) && get('testNewAdded'))
  {
    assign('testNewAdded', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    insertDf[nrow(insertDf) + 1,] <<- c('tb_tratamientos', comment)
  }
  statement <- paste0("INSERT INTO tb_tratamientos (", paste(insertFields, collapse = ", "), ") VALUES ('", paste(insertValues, collapse = "', '"), "');")
  insertDf[nrow(insertDf) + 1,] <<- c('tb_tratamientos', statement)
  invisible(statement)
}

add_tb_prestaci <- function(id, numsipcod, valor_registrado, fecha_registro, cod_prestacion, cod_ud_medida) {
  defaults <- get('tb_prestaci', envir = defaultValues)
  insertFields <- c()
  insertValues <- c()
  if (missing(id)) {
    id <- defaults$id
  }
  if (!is.null(id)) {
    insertFields <- c(insertFields, "id")
    insertValues <- c(insertValues, id)
  }

  if (missing(numsipcod)) {
    numsipcod <- defaults$numsipcod
  }
  if (!is.null(numsipcod)) {
    insertFields <- c(insertFields, "numsipcod")
    insertValues <- c(insertValues, numsipcod)
  }

  if (missing(valor_registrado)) {
    valor_registrado <- defaults$valor_registrado
  }
  if (!is.null(valor_registrado)) {
    insertFields <- c(insertFields, "valor_registrado")
    insertValues <- c(insertValues, valor_registrado)
  }

  if (missing(fecha_registro)) {
    fecha_registro <- defaults$fecha_registro
  }
  if (!is.null(fecha_registro)) {
    insertFields <- c(insertFields, "fecha_registro")
    insertValues <- c(insertValues, fecha_registro)
  }

  if (missing(cod_prestacion)) {
    cod_prestacion <- defaults$cod_prestacion
  }
  if (!is.null(cod_prestacion)) {
    insertFields <- c(insertFields, "cod_prestacion")
    insertValues <- c(insertValues, cod_prestacion)
  }

  if (missing(cod_ud_medida)) {
    cod_ud_medida <- defaults$cod_ud_medida
  }
  if (!is.null(cod_ud_medida)) {
    insertFields <- c(insertFields, "cod_ud_medida")
    insertValues <- c(insertValues, cod_ud_medida)
  }

  if (exists('testNewAdded', where = globalenv()) && get('testNewAdded'))
  {
    assign('testNewAdded', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    insertDf[nrow(insertDf) + 1,] <<- c('tb_prestaci', comment)
  }
  statement <- paste0("INSERT INTO tb_prestaci (", paste(insertFields, collapse = ", "), ") VALUES ('", paste(insertValues, collapse = "', '"), "');")
  insertDf[nrow(insertDf) + 1,] <<- c('tb_prestaci', statement)
  invisible(statement)
}

add_tb_variables <- function(id, numsipcod, valor_registrado, fecha_registro, cod_variable_clinic, cod_ud_medida) {
  defaults <- get('tb_variables', envir = defaultValues)
  insertFields <- c()
  insertValues <- c()
  if (missing(id)) {
    id <- defaults$id
  }
  if (!is.null(id)) {
    insertFields <- c(insertFields, "id")
    insertValues <- c(insertValues, id)
  }

  if (missing(numsipcod)) {
    numsipcod <- defaults$numsipcod
  }
  if (!is.null(numsipcod)) {
    insertFields <- c(insertFields, "numsipcod")
    insertValues <- c(insertValues, numsipcod)
  }

  if (missing(valor_registrado)) {
    valor_registrado <- defaults$valor_registrado
  }
  if (!is.null(valor_registrado)) {
    insertFields <- c(insertFields, "valor_registrado")
    insertValues <- c(insertValues, valor_registrado)
  }

  if (missing(fecha_registro)) {
    fecha_registro <- defaults$fecha_registro
  }
  if (!is.null(fecha_registro)) {
    insertFields <- c(insertFields, "fecha_registro")
    insertValues <- c(insertValues, fecha_registro)
  }

  if (missing(cod_variable_clinic)) {
    cod_variable_clinic <- defaults$cod_variable_clinic
  }
  if (!is.null(cod_variable_clinic)) {
    insertFields <- c(insertFields, "cod_variable_clinic")
    insertValues <- c(insertValues, cod_variable_clinic)
  }

  if (missing(cod_ud_medida)) {
    cod_ud_medida <- defaults$cod_ud_medida
  }
  if (!is.null(cod_ud_medida)) {
    insertFields <- c(insertFields, "cod_ud_medida")
    insertValues <- c(insertValues, cod_ud_medida)
  }

  if (exists('testNewAdded', where = globalenv()) && get('testNewAdded'))
  {
    assign('testNewAdded', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    insertDf[nrow(insertDf) + 1,] <<- c('tb_variables', comment)
  }
  statement <- paste0("INSERT INTO tb_variables (", paste(insertFields, collapse = ", "), ") VALUES ('", paste(insertValues, collapse = "', '"), "');")
  insertDf[nrow(insertDf) + 1,] <<- c('tb_variables', statement)
  invisible(statement)
}

add_tb_aconadve <- function(id, numsipcod, num_ac_adversos, ano_mes, cod_crg, cod_est_salud) {
  defaults <- get('tb_aconadve', envir = defaultValues)
  insertFields <- c()
  insertValues <- c()
  if (missing(id)) {
    id <- defaults$id
  }
  if (!is.null(id)) {
    insertFields <- c(insertFields, "id")
    insertValues <- c(insertValues, id)
  }

  if (missing(numsipcod)) {
    numsipcod <- defaults$numsipcod
  }
  if (!is.null(numsipcod)) {
    insertFields <- c(insertFields, "numsipcod")
    insertValues <- c(insertValues, numsipcod)
  }

  if (missing(num_ac_adversos)) {
    num_ac_adversos <- defaults$num_ac_adversos
  }
  if (!is.null(num_ac_adversos)) {
    insertFields <- c(insertFields, "num_ac_adversos")
    insertValues <- c(insertValues, num_ac_adversos)
  }

  if (missing(ano_mes)) {
    ano_mes <- defaults$ano_mes
  }
  if (!is.null(ano_mes)) {
    insertFields <- c(insertFields, "ano_mes")
    insertValues <- c(insertValues, ano_mes)
  }

  if (missing(cod_crg)) {
    cod_crg <- defaults$cod_crg
  }
  if (!is.null(cod_crg)) {
    insertFields <- c(insertFields, "cod_crg")
    insertValues <- c(insertValues, cod_crg)
  }

  if (missing(cod_est_salud)) {
    cod_est_salud <- defaults$cod_est_salud
  }
  if (!is.null(cod_est_salud)) {
    insertFields <- c(insertFields, "cod_est_salud")
    insertValues <- c(insertValues, cod_est_salud)
  }

  if (exists('testNewAdded', where = globalenv()) && get('testNewAdded'))
  {
    assign('testNewAdded', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    insertDf[nrow(insertDf) + 1,] <<- c('tb_aconadve', comment)
  }
  statement <- paste0("INSERT INTO tb_aconadve (", paste(insertFields, collapse = ", "), ") VALUES ('", paste(insertValues, collapse = "', '"), "');")
  insertDf[nrow(insertDf) + 1,] <<- c('tb_aconadve', statement)
  invisible(statement)
}

add_tb_alergias <- function(id, num_alergias, numsipcod, ano_mes, cod_crg, cod_est_salud) {
  defaults <- get('tb_alergias', envir = defaultValues)
  insertFields <- c()
  insertValues <- c()
  if (missing(id)) {
    id <- defaults$id
  }
  if (!is.null(id)) {
    insertFields <- c(insertFields, "id")
    insertValues <- c(insertValues, id)
  }

  if (missing(num_alergias)) {
    num_alergias <- defaults$num_alergias
  }
  if (!is.null(num_alergias)) {
    insertFields <- c(insertFields, "num_alergias")
    insertValues <- c(insertValues, num_alergias)
  }

  if (missing(numsipcod)) {
    numsipcod <- defaults$numsipcod
  }
  if (!is.null(numsipcod)) {
    insertFields <- c(insertFields, "numsipcod")
    insertValues <- c(insertValues, numsipcod)
  }

  if (missing(ano_mes)) {
    ano_mes <- defaults$ano_mes
  }
  if (!is.null(ano_mes)) {
    insertFields <- c(insertFields, "ano_mes")
    insertValues <- c(insertValues, ano_mes)
  }

  if (missing(cod_crg)) {
    cod_crg <- defaults$cod_crg
  }
  if (!is.null(cod_crg)) {
    insertFields <- c(insertFields, "cod_crg")
    insertValues <- c(insertValues, cod_crg)
  }

  if (missing(cod_est_salud)) {
    cod_est_salud <- defaults$cod_est_salud
  }
  if (!is.null(cod_est_salud)) {
    insertFields <- c(insertFields, "cod_est_salud")
    insertValues <- c(insertValues, cod_est_salud)
  }

  if (exists('testNewAdded', where = globalenv()) && get('testNewAdded'))
  {
    assign('testNewAdded', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    insertDf[nrow(insertDf) + 1,] <<- c('tb_alergias', comment)
  }
  statement <- paste0("INSERT INTO tb_alergias (", paste(insertFields, collapse = ", "), ") VALUES ('", paste(insertValues, collapse = "', '"), "');")
  insertDf[nrow(insertDf) + 1,] <<- c('tb_alergias', statement)
  invisible(statement)
}

add_tb_cex <- function(id, num_consultas, numsipcod, fecha_consulta, cod_serv_homologado, cod_serv_propio) {
  defaults <- get('tb_cex', envir = defaultValues)
  insertFields <- c()
  insertValues <- c()
  if (missing(id)) {
    id <- defaults$id
  }
  if (!is.null(id)) {
    insertFields <- c(insertFields, "id")
    insertValues <- c(insertValues, id)
  }

  if (missing(num_consultas)) {
    num_consultas <- defaults$num_consultas
  }
  if (!is.null(num_consultas)) {
    insertFields <- c(insertFields, "num_consultas")
    insertValues <- c(insertValues, num_consultas)
  }

  if (missing(numsipcod)) {
    numsipcod <- defaults$numsipcod
  }
  if (!is.null(numsipcod)) {
    insertFields <- c(insertFields, "numsipcod")
    insertValues <- c(insertValues, numsipcod)
  }

  if (missing(fecha_consulta)) {
    fecha_consulta <- defaults$fecha_consulta
  }
  if (!is.null(fecha_consulta)) {
    insertFields <- c(insertFields, "fecha_consulta")
    insertValues <- c(insertValues, fecha_consulta)
  }

  if (missing(cod_serv_homologado)) {
    cod_serv_homologado <- defaults$cod_serv_homologado
  }
  if (!is.null(cod_serv_homologado)) {
    insertFields <- c(insertFields, "cod_serv_homologado")
    insertValues <- c(insertValues, cod_serv_homologado)
  }

  if (missing(cod_serv_propio)) {
    cod_serv_propio <- defaults$cod_serv_propio
  }
  if (!is.null(cod_serv_propio)) {
    insertFields <- c(insertFields, "cod_serv_propio")
    insertValues <- c(insertValues, cod_serv_propio)
  }

  if (exists('testNewAdded', where = globalenv()) && get('testNewAdded'))
  {
    assign('testNewAdded', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    insertDf[nrow(insertDf) + 1,] <<- c('tb_cex', comment)
  }
  statement <- paste0("INSERT INTO tb_cex (", paste(insertFields, collapse = ", "), ") VALUES ('", paste(insertValues, collapse = "', '"), "');")
  insertDf[nrow(insertDf) + 1,] <<- c('tb_cex', statement)
  invisible(statement)
}

add_tb_consultas_atp <- function(id, num_consultas, numsipcod, fecha_registro, cod_serv_homologado, cod_serv_propio) {
  defaults <- get('tb_consultas_atp', envir = defaultValues)
  insertFields <- c()
  insertValues <- c()
  if (missing(id)) {
    id <- defaults$id
  }
  if (!is.null(id)) {
    insertFields <- c(insertFields, "id")
    insertValues <- c(insertValues, id)
  }

  if (missing(num_consultas)) {
    num_consultas <- defaults$num_consultas
  }
  if (!is.null(num_consultas)) {
    insertFields <- c(insertFields, "num_consultas")
    insertValues <- c(insertValues, num_consultas)
  }

  if (missing(numsipcod)) {
    numsipcod <- defaults$numsipcod
  }
  if (!is.null(numsipcod)) {
    insertFields <- c(insertFields, "numsipcod")
    insertValues <- c(insertValues, numsipcod)
  }

  if (missing(fecha_registro)) {
    fecha_registro <- defaults$fecha_registro
  }
  if (!is.null(fecha_registro)) {
    insertFields <- c(insertFields, "fecha_registro")
    insertValues <- c(insertValues, fecha_registro)
  }

  if (missing(cod_serv_homologado)) {
    cod_serv_homologado <- defaults$cod_serv_homologado
  }
  if (!is.null(cod_serv_homologado)) {
    insertFields <- c(insertFields, "cod_serv_homologado")
    insertValues <- c(insertValues, cod_serv_homologado)
  }

  if (missing(cod_serv_propio)) {
    cod_serv_propio <- defaults$cod_serv_propio
  }
  if (!is.null(cod_serv_propio)) {
    insertFields <- c(insertFields, "cod_serv_propio")
    insertValues <- c(insertValues, cod_serv_propio)
  }

  if (exists('testNewAdded', where = globalenv()) && get('testNewAdded'))
  {
    assign('testNewAdded', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    insertDf[nrow(insertDf) + 1,] <<- c('tb_consultas_atp', comment)
  }
  statement <- paste0("INSERT INTO tb_consultas_atp (", paste(insertFields, collapse = ", "), ") VALUES ('", paste(insertValues, collapse = "', '"), "');")
  insertDf[nrow(insertDf) + 1,] <<- c('tb_consultas_atp', statement)
  invisible(statement)
}

add_tb_contraind <- function(id, num_contraindicaciones, numsipcod, ano_mes, cod_crg, cod_est_salud, tipo_contraindicacion) {
  defaults <- get('tb_contraind', envir = defaultValues)
  insertFields <- c()
  insertValues <- c()
  if (missing(id)) {
    id <- defaults$id
  }
  if (!is.null(id)) {
    insertFields <- c(insertFields, "id")
    insertValues <- c(insertValues, id)
  }

  if (missing(num_contraindicaciones)) {
    num_contraindicaciones <- defaults$num_contraindicaciones
  }
  if (!is.null(num_contraindicaciones)) {
    insertFields <- c(insertFields, "num_contraindicaciones")
    insertValues <- c(insertValues, num_contraindicaciones)
  }

  if (missing(numsipcod)) {
    numsipcod <- defaults$numsipcod
  }
  if (!is.null(numsipcod)) {
    insertFields <- c(insertFields, "numsipcod")
    insertValues <- c(insertValues, numsipcod)
  }

  if (missing(ano_mes)) {
    ano_mes <- defaults$ano_mes
  }
  if (!is.null(ano_mes)) {
    insertFields <- c(insertFields, "ano_mes")
    insertValues <- c(insertValues, ano_mes)
  }

  if (missing(cod_crg)) {
    cod_crg <- defaults$cod_crg
  }
  if (!is.null(cod_crg)) {
    insertFields <- c(insertFields, "cod_crg")
    insertValues <- c(insertValues, cod_crg)
  }

  if (missing(cod_est_salud)) {
    cod_est_salud <- defaults$cod_est_salud
  }
  if (!is.null(cod_est_salud)) {
    insertFields <- c(insertFields, "cod_est_salud")
    insertValues <- c(insertValues, cod_est_salud)
  }

  if (missing(tipo_contraindicacion)) {
    tipo_contraindicacion <- defaults$tipo_contraindicacion
  }
  if (!is.null(tipo_contraindicacion)) {
    insertFields <- c(insertFields, "tipo_contraindicacion")
    insertValues <- c(insertValues, tipo_contraindicacion)
  }

  if (exists('testNewAdded', where = globalenv()) && get('testNewAdded'))
  {
    assign('testNewAdded', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    insertDf[nrow(insertDf) + 1,] <<- c('tb_contraind', comment)
  }
  statement <- paste0("INSERT INTO tb_contraind (", paste(insertFields, collapse = ", "), ") VALUES ('", paste(insertValues, collapse = "', '"), "');")
  insertDf[nrow(insertDf) + 1,] <<- c('tb_contraind', statement)
  invisible(statement)
}

add_tb_ctdh <- function(id, num_ctdh, numsipcod, ano_mes, cod_crg, cod_est_salud) {
  defaults <- get('tb_ctdh', envir = defaultValues)
  insertFields <- c()
  insertValues <- c()
  if (missing(id)) {
    id <- defaults$id
  }
  if (!is.null(id)) {
    insertFields <- c(insertFields, "id")
    insertValues <- c(insertValues, id)
  }

  if (missing(num_ctdh)) {
    num_ctdh <- defaults$num_ctdh
  }
  if (!is.null(num_ctdh)) {
    insertFields <- c(insertFields, "num_ctdh")
    insertValues <- c(insertValues, num_ctdh)
  }

  if (missing(numsipcod)) {
    numsipcod <- defaults$numsipcod
  }
  if (!is.null(numsipcod)) {
    insertFields <- c(insertFields, "numsipcod")
    insertValues <- c(insertValues, numsipcod)
  }

  if (missing(ano_mes)) {
    ano_mes <- defaults$ano_mes
  }
  if (!is.null(ano_mes)) {
    insertFields <- c(insertFields, "ano_mes")
    insertValues <- c(insertValues, ano_mes)
  }

  if (missing(cod_crg)) {
    cod_crg <- defaults$cod_crg
  }
  if (!is.null(cod_crg)) {
    insertFields <- c(insertFields, "cod_crg")
    insertValues <- c(insertValues, cod_crg)
  }

  if (missing(cod_est_salud)) {
    cod_est_salud <- defaults$cod_est_salud
  }
  if (!is.null(cod_est_salud)) {
    insertFields <- c(insertFields, "cod_est_salud")
    insertValues <- c(insertValues, cod_est_salud)
  }

  if (exists('testNewAdded', where = globalenv()) && get('testNewAdded'))
  {
    assign('testNewAdded', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    insertDf[nrow(insertDf) + 1,] <<- c('tb_ctdh', comment)
  }
  statement <- paste0("INSERT INTO tb_ctdh (", paste(insertFields, collapse = ", "), ") VALUES ('", paste(insertValues, collapse = "', '"), "');")
  insertDf[nrow(insertDf) + 1,] <<- c('tb_ctdh', statement)
  invisible(statement)
}

add_tb_cie_atc <- function(id, num_cieatc, numsipcod, ano_mes, cod_crg, cod_est_salud) {
  defaults <- get('tb_cie_atc', envir = defaultValues)
  insertFields <- c()
  insertValues <- c()
  if (missing(id)) {
    id <- defaults$id
  }
  if (!is.null(id)) {
    insertFields <- c(insertFields, "id")
    insertValues <- c(insertValues, id)
  }

  if (missing(num_cieatc)) {
    num_cieatc <- defaults$num_cieatc
  }
  if (!is.null(num_cieatc)) {
    insertFields <- c(insertFields, "num_cieatc")
    insertValues <- c(insertValues, num_cieatc)
  }

  if (missing(numsipcod)) {
    numsipcod <- defaults$numsipcod
  }
  if (!is.null(numsipcod)) {
    insertFields <- c(insertFields, "numsipcod")
    insertValues <- c(insertValues, numsipcod)
  }

  if (missing(ano_mes)) {
    ano_mes <- defaults$ano_mes
  }
  if (!is.null(ano_mes)) {
    insertFields <- c(insertFields, "ano_mes")
    insertValues <- c(insertValues, ano_mes)
  }

  if (missing(cod_crg)) {
    cod_crg <- defaults$cod_crg
  }
  if (!is.null(cod_crg)) {
    insertFields <- c(insertFields, "cod_crg")
    insertValues <- c(insertValues, cod_crg)
  }

  if (missing(cod_est_salud)) {
    cod_est_salud <- defaults$cod_est_salud
  }
  if (!is.null(cod_est_salud)) {
    insertFields <- c(insertFields, "cod_est_salud")
    insertValues <- c(insertValues, cod_est_salud)
  }

  if (exists('testNewAdded', where = globalenv()) && get('testNewAdded'))
  {
    assign('testNewAdded', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    insertDf[nrow(insertDf) + 1,] <<- c('tb_cie_atc', comment)
  }
  statement <- paste0("INSERT INTO tb_cie_atc (", paste(insertFields, collapse = ", "), ") VALUES ('", paste(insertValues, collapse = "', '"), "');")
  insertDf[nrow(insertDf) + 1,] <<- c('tb_cie_atc', statement)
  invisible(statement)
}

add_tb_duplicid <- function(id, num_duplicidades, numsipcod, ano_mes, cod_crg, cod_est_salud) {
  defaults <- get('tb_duplicid', envir = defaultValues)
  insertFields <- c()
  insertValues <- c()
  if (missing(id)) {
    id <- defaults$id
  }
  if (!is.null(id)) {
    insertFields <- c(insertFields, "id")
    insertValues <- c(insertValues, id)
  }

  if (missing(num_duplicidades)) {
    num_duplicidades <- defaults$num_duplicidades
  }
  if (!is.null(num_duplicidades)) {
    insertFields <- c(insertFields, "num_duplicidades")
    insertValues <- c(insertValues, num_duplicidades)
  }

  if (missing(numsipcod)) {
    numsipcod <- defaults$numsipcod
  }
  if (!is.null(numsipcod)) {
    insertFields <- c(insertFields, "numsipcod")
    insertValues <- c(insertValues, numsipcod)
  }

  if (missing(ano_mes)) {
    ano_mes <- defaults$ano_mes
  }
  if (!is.null(ano_mes)) {
    insertFields <- c(insertFields, "ano_mes")
    insertValues <- c(insertValues, ano_mes)
  }

  if (missing(cod_crg)) {
    cod_crg <- defaults$cod_crg
  }
  if (!is.null(cod_crg)) {
    insertFields <- c(insertFields, "cod_crg")
    insertValues <- c(insertValues, cod_crg)
  }

  if (missing(cod_est_salud)) {
    cod_est_salud <- defaults$cod_est_salud
  }
  if (!is.null(cod_est_salud)) {
    insertFields <- c(insertFields, "cod_est_salud")
    insertValues <- c(insertValues, cod_est_salud)
  }

  if (exists('testNewAdded', where = globalenv()) && get('testNewAdded'))
  {
    assign('testNewAdded', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    insertDf[nrow(insertDf) + 1,] <<- c('tb_duplicid', comment)
  }
  statement <- paste0("INSERT INTO tb_duplicid (", paste(insertFields, collapse = ", "), ") VALUES ('", paste(insertValues, collapse = "', '"), "');")
  insertDf[nrow(insertDf) + 1,] <<- c('tb_duplicid', statement)
  invisible(statement)
}

add_tb_urgencias <- function(id, num_urgencias, numsipcod, fecha_urgencia, cod_motivo_urg) {
  defaults <- get('tb_urgencias', envir = defaultValues)
  insertFields <- c()
  insertValues <- c()
  if (missing(id)) {
    id <- defaults$id
  }
  if (!is.null(id)) {
    insertFields <- c(insertFields, "id")
    insertValues <- c(insertValues, id)
  }

  if (missing(num_urgencias)) {
    num_urgencias <- defaults$num_urgencias
  }
  if (!is.null(num_urgencias)) {
    insertFields <- c(insertFields, "num_urgencias")
    insertValues <- c(insertValues, num_urgencias)
  }

  if (missing(numsipcod)) {
    numsipcod <- defaults$numsipcod
  }
  if (!is.null(numsipcod)) {
    insertFields <- c(insertFields, "numsipcod")
    insertValues <- c(insertValues, numsipcod)
  }

  if (missing(fecha_urgencia)) {
    fecha_urgencia <- defaults$fecha_urgencia
  }
  if (!is.null(fecha_urgencia)) {
    insertFields <- c(insertFields, "fecha_urgencia")
    insertValues <- c(insertValues, fecha_urgencia)
  }

  if (missing(cod_motivo_urg)) {
    cod_motivo_urg <- defaults$cod_motivo_urg
  }
  if (!is.null(cod_motivo_urg)) {
    insertFields <- c(insertFields, "cod_motivo_urg")
    insertValues <- c(insertValues, cod_motivo_urg)
  }

  if (exists('testNewAdded', where = globalenv()) && get('testNewAdded'))
  {
    assign('testNewAdded', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    insertDf[nrow(insertDf) + 1,] <<- c('tb_urgencias', comment)
  }
  statement <- paste0("INSERT INTO tb_urgencias (", paste(insertFields, collapse = ", "), ") VALUES ('", paste(insertValues, collapse = "', '"), "');")
  insertDf[nrow(insertDf) + 1,] <<- c('tb_urgencias', statement)
  invisible(statement)
}

add_tb_interacc <- function(id, num_interacciones, numsipcod, ano_mes, cod_crg, cod_est_salud, gravedad_interaccion) {
  defaults <- get('tb_interacc', envir = defaultValues)
  insertFields <- c()
  insertValues <- c()
  if (missing(id)) {
    id <- defaults$id
  }
  if (!is.null(id)) {
    insertFields <- c(insertFields, "id")
    insertValues <- c(insertValues, id)
  }

  if (missing(num_interacciones)) {
    num_interacciones <- defaults$num_interacciones
  }
  if (!is.null(num_interacciones)) {
    insertFields <- c(insertFields, "num_interacciones")
    insertValues <- c(insertValues, num_interacciones)
  }

  if (missing(numsipcod)) {
    numsipcod <- defaults$numsipcod
  }
  if (!is.null(numsipcod)) {
    insertFields <- c(insertFields, "numsipcod")
    insertValues <- c(insertValues, numsipcod)
  }

  if (missing(ano_mes)) {
    ano_mes <- defaults$ano_mes
  }
  if (!is.null(ano_mes)) {
    insertFields <- c(insertFields, "ano_mes")
    insertValues <- c(insertValues, ano_mes)
  }

  if (missing(cod_crg)) {
    cod_crg <- defaults$cod_crg
  }
  if (!is.null(cod_crg)) {
    insertFields <- c(insertFields, "cod_crg")
    insertValues <- c(insertValues, cod_crg)
  }

  if (missing(cod_est_salud)) {
    cod_est_salud <- defaults$cod_est_salud
  }
  if (!is.null(cod_est_salud)) {
    insertFields <- c(insertFields, "cod_est_salud")
    insertValues <- c(insertValues, cod_est_salud)
  }

  if (missing(gravedad_interaccion)) {
    gravedad_interaccion <- defaults$gravedad_interaccion
  }
  if (!is.null(gravedad_interaccion)) {
    insertFields <- c(insertFields, "gravedad_interaccion")
    insertValues <- c(insertValues, gravedad_interaccion)
  }

  if (exists('testNewAdded', where = globalenv()) && get('testNewAdded'))
  {
    assign('testNewAdded', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    insertDf[nrow(insertDf) + 1,] <<- c('tb_interacc', comment)
  }
  statement <- paste0("INSERT INTO tb_interacc (", paste(insertFields, collapse = ", "), ") VALUES ('", paste(insertValues, collapse = "', '"), "');")
  insertDf[nrow(insertDf) + 1,] <<- c('tb_interacc', statement)
  invisible(statement)
}

add_tb_posologia <- function(id, num_posologias, tipo_posologia, numsipcod, ano_mes, cod_crg, cod_est_salud) {
  defaults <- get('tb_posologia', envir = defaultValues)
  insertFields <- c()
  insertValues <- c()
  if (missing(id)) {
    id <- defaults$id
  }
  if (!is.null(id)) {
    insertFields <- c(insertFields, "id")
    insertValues <- c(insertValues, id)
  }

  if (missing(num_posologias)) {
    num_posologias <- defaults$num_posologias
  }
  if (!is.null(num_posologias)) {
    insertFields <- c(insertFields, "num_posologias")
    insertValues <- c(insertValues, num_posologias)
  }

  if (missing(tipo_posologia)) {
    tipo_posologia <- defaults$tipo_posologia
  }
  if (!is.null(tipo_posologia)) {
    insertFields <- c(insertFields, "tipo_posologia")
    insertValues <- c(insertValues, tipo_posologia)
  }

  if (missing(numsipcod)) {
    numsipcod <- defaults$numsipcod
  }
  if (!is.null(numsipcod)) {
    insertFields <- c(insertFields, "numsipcod")
    insertValues <- c(insertValues, numsipcod)
  }

  if (missing(ano_mes)) {
    ano_mes <- defaults$ano_mes
  }
  if (!is.null(ano_mes)) {
    insertFields <- c(insertFields, "ano_mes")
    insertValues <- c(insertValues, ano_mes)
  }

  if (missing(cod_crg)) {
    cod_crg <- defaults$cod_crg
  }
  if (!is.null(cod_crg)) {
    insertFields <- c(insertFields, "cod_crg")
    insertValues <- c(insertValues, cod_crg)
  }

  if (missing(cod_est_salud)) {
    cod_est_salud <- defaults$cod_est_salud
  }
  if (!is.null(cod_est_salud)) {
    insertFields <- c(insertFields, "cod_est_salud")
    insertValues <- c(insertValues, cod_est_salud)
  }

  if (exists('testNewAdded', where = globalenv()) && get('testNewAdded'))
  {
    assign('testNewAdded', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    insertDf[nrow(insertDf) + 1,] <<- c('tb_posologia', comment)
  }
  statement <- paste0("INSERT INTO tb_posologia (", paste(insertFields, collapse = ", "), ") VALUES ('", paste(insertValues, collapse = "', '"), "');")
  insertDf[nrow(insertDf) + 1,] <<- c('tb_posologia', statement)
  invisible(statement)
}

add_tb_estancia_uci <- function(id, numsipcod, fecha, num_estancia_uci) {
  defaults <- get('tb_estancia_uci', envir = defaultValues)
  insertFields <- c()
  insertValues <- c()
  if (missing(id)) {
    id <- defaults$id
  }
  if (!is.null(id)) {
    insertFields <- c(insertFields, "id")
    insertValues <- c(insertValues, id)
  }

  if (missing(numsipcod)) {
    numsipcod <- defaults$numsipcod
  }
  if (!is.null(numsipcod)) {
    insertFields <- c(insertFields, "numsipcod")
    insertValues <- c(insertValues, numsipcod)
  }

  if (missing(fecha)) {
    fecha <- defaults$fecha
  }
  if (!is.null(fecha)) {
    insertFields <- c(insertFields, "fecha")
    insertValues <- c(insertValues, fecha)
  }

  if (missing(num_estancia_uci)) {
    num_estancia_uci <- defaults$num_estancia_uci
  }
  if (!is.null(num_estancia_uci)) {
    insertFields <- c(insertFields, "num_estancia_uci")
    insertValues <- c(insertValues, num_estancia_uci)
  }

  if (exists('testNewAdded', where = globalenv()) && get('testNewAdded'))
  {
    assign('testNewAdded', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    insertDf[nrow(insertDf) + 1,] <<- c('tb_estancia_uci', comment)
  }
  statement <- paste0("INSERT INTO tb_estancia_uci (", paste(insertFields, collapse = ", "), ") VALUES ('", paste(insertValues, collapse = "', '"), "');")
  insertDf[nrow(insertDf) + 1,] <<- c('tb_estancia_uci', statement)
  invisible(statement)
}

add_tb_proc_cmbd <- function(id, numsipcod, tipo_actividad, cie9p, cir_ingreso, fecha_ingreso, fecha_alta, cir_alta, grd, peso_grd, orden) {
  defaults <- get('tb_proc_cmbd', envir = defaultValues)
  insertFields <- c()
  insertValues <- c()
  if (missing(id)) {
    id <- defaults$id
  }
  if (!is.null(id)) {
    insertFields <- c(insertFields, "id")
    insertValues <- c(insertValues, id)
  }

  if (missing(numsipcod)) {
    numsipcod <- defaults$numsipcod
  }
  if (!is.null(numsipcod)) {
    insertFields <- c(insertFields, "numsipcod")
    insertValues <- c(insertValues, numsipcod)
  }

  if (missing(tipo_actividad)) {
    tipo_actividad <- defaults$tipo_actividad
  }
  if (!is.null(tipo_actividad)) {
    insertFields <- c(insertFields, "tipo_actividad")
    insertValues <- c(insertValues, tipo_actividad)
  }

  if (missing(cie9p)) {
    cie9p <- defaults$cie9p
  }
  if (!is.null(cie9p)) {
    insertFields <- c(insertFields, "cie9p")
    insertValues <- c(insertValues, cie9p)
  }

  if (missing(cir_ingreso)) {
    cir_ingreso <- defaults$cir_ingreso
  }
  if (!is.null(cir_ingreso)) {
    insertFields <- c(insertFields, "cir_ingreso")
    insertValues <- c(insertValues, cir_ingreso)
  }

  if (missing(fecha_ingreso)) {
    fecha_ingreso <- defaults$fecha_ingreso
  }
  if (!is.null(fecha_ingreso)) {
    insertFields <- c(insertFields, "fecha_ingreso")
    insertValues <- c(insertValues, fecha_ingreso)
  }

  if (missing(fecha_alta)) {
    fecha_alta <- defaults$fecha_alta
  }
  if (!is.null(fecha_alta)) {
    insertFields <- c(insertFields, "fecha_alta")
    insertValues <- c(insertValues, fecha_alta)
  }

  if (missing(cir_alta)) {
    cir_alta <- defaults$cir_alta
  }
  if (!is.null(cir_alta)) {
    insertFields <- c(insertFields, "cir_alta")
    insertValues <- c(insertValues, cir_alta)
  }

  if (missing(grd)) {
    grd <- defaults$grd
  }
  if (!is.null(grd)) {
    insertFields <- c(insertFields, "grd")
    insertValues <- c(insertValues, grd)
  }

  if (missing(peso_grd)) {
    peso_grd <- defaults$peso_grd
  }
  if (!is.null(peso_grd)) {
    insertFields <- c(insertFields, "peso_grd")
    insertValues <- c(insertValues, peso_grd)
  }

  if (missing(orden)) {
    orden <- defaults$orden
  }
  if (!is.null(orden)) {
    insertFields <- c(insertFields, "orden")
    insertValues <- c(insertValues, orden)
  }

  if (exists('testNewAdded', where = globalenv()) && get('testNewAdded'))
  {
    assign('testNewAdded', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    insertDf[nrow(insertDf) + 1,] <<- c('tb_proc_cmbd', comment)
  }
  statement <- paste0("INSERT INTO tb_proc_cmbd (", paste(insertFields, collapse = ", "), ") VALUES ('", paste(insertValues, collapse = "', '"), "');")
  insertDf[nrow(insertDf) + 1,] <<- c('tb_proc_cmbd', statement)
  invisible(statement)
}

add_tb_antepers <- function(id, numsipcod, fecha_inicio, fecha_fin, cod_diagnostico, estado_morbilidad) {
  defaults <- get('tb_antepers', envir = defaultValues)
  insertFields <- c()
  insertValues <- c()
  if (missing(id)) {
    id <- defaults$id
  }
  if (!is.null(id)) {
    insertFields <- c(insertFields, "id")
    insertValues <- c(insertValues, id)
  }

  if (missing(numsipcod)) {
    numsipcod <- defaults$numsipcod
  }
  if (!is.null(numsipcod)) {
    insertFields <- c(insertFields, "numsipcod")
    insertValues <- c(insertValues, numsipcod)
  }

  if (missing(fecha_inicio)) {
    fecha_inicio <- defaults$fecha_inicio
  }
  if (!is.null(fecha_inicio)) {
    insertFields <- c(insertFields, "fecha_inicio")
    insertValues <- c(insertValues, fecha_inicio)
  }

  if (missing(fecha_fin)) {
    fecha_fin <- defaults$fecha_fin
  }
  if (!is.null(fecha_fin)) {
    insertFields <- c(insertFields, "fecha_fin")
    insertValues <- c(insertValues, fecha_fin)
  }

  if (missing(cod_diagnostico)) {
    cod_diagnostico <- defaults$cod_diagnostico
  }
  if (!is.null(cod_diagnostico)) {
    insertFields <- c(insertFields, "cod_diagnostico")
    insertValues <- c(insertValues, cod_diagnostico)
  }

  if (missing(estado_morbilidad)) {
    estado_morbilidad <- defaults$estado_morbilidad
  }
  if (!is.null(estado_morbilidad)) {
    insertFields <- c(insertFields, "estado_morbilidad")
    insertValues <- c(insertValues, estado_morbilidad)
  }

  if (exists('testNewAdded', where = globalenv()) && get('testNewAdded'))
  {
    assign('testNewAdded', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    insertDf[nrow(insertDf) + 1,] <<- c('tb_antepers', comment)
  }
  statement <- paste0("INSERT INTO tb_antepers (", paste(insertFields, collapse = ", "), ") VALUES ('", paste(insertValues, collapse = "', '"), "');")
  insertDf[nrow(insertDf) + 1,] <<- c('tb_antepers', statement)
  invisible(statement)
}

add_tb_incatemp <- function(id, numsipcod, fecha_registro, fecha_baja, fecha_alta, dias_baja, cod_causa_alta, cod_diagnostico, cod_motivo_cierre, cod_procedimiento, cod_tipo_baja) {
  defaults <- get('tb_incatemp', envir = defaultValues)
  insertFields <- c()
  insertValues <- c()
  if (missing(id)) {
    id <- defaults$id
  }
  if (!is.null(id)) {
    insertFields <- c(insertFields, "id")
    insertValues <- c(insertValues, id)
  }

  if (missing(numsipcod)) {
    numsipcod <- defaults$numsipcod
  }
  if (!is.null(numsipcod)) {
    insertFields <- c(insertFields, "numsipcod")
    insertValues <- c(insertValues, numsipcod)
  }

  if (missing(fecha_registro)) {
    fecha_registro <- defaults$fecha_registro
  }
  if (!is.null(fecha_registro)) {
    insertFields <- c(insertFields, "fecha_registro")
    insertValues <- c(insertValues, fecha_registro)
  }

  if (missing(fecha_baja)) {
    fecha_baja <- defaults$fecha_baja
  }
  if (!is.null(fecha_baja)) {
    insertFields <- c(insertFields, "fecha_baja")
    insertValues <- c(insertValues, fecha_baja)
  }

  if (missing(fecha_alta)) {
    fecha_alta <- defaults$fecha_alta
  }
  if (!is.null(fecha_alta)) {
    insertFields <- c(insertFields, "fecha_alta")
    insertValues <- c(insertValues, fecha_alta)
  }

  if (missing(dias_baja)) {
    dias_baja <- defaults$dias_baja
  }
  if (!is.null(dias_baja)) {
    insertFields <- c(insertFields, "dias_baja")
    insertValues <- c(insertValues, dias_baja)
  }

  if (missing(cod_causa_alta)) {
    cod_causa_alta <- defaults$cod_causa_alta
  }
  if (!is.null(cod_causa_alta)) {
    insertFields <- c(insertFields, "cod_causa_alta")
    insertValues <- c(insertValues, cod_causa_alta)
  }

  if (missing(cod_diagnostico)) {
    cod_diagnostico <- defaults$cod_diagnostico
  }
  if (!is.null(cod_diagnostico)) {
    insertFields <- c(insertFields, "cod_diagnostico")
    insertValues <- c(insertValues, cod_diagnostico)
  }

  if (missing(cod_motivo_cierre)) {
    cod_motivo_cierre <- defaults$cod_motivo_cierre
  }
  if (!is.null(cod_motivo_cierre)) {
    insertFields <- c(insertFields, "cod_motivo_cierre")
    insertValues <- c(insertValues, cod_motivo_cierre)
  }

  if (missing(cod_procedimiento)) {
    cod_procedimiento <- defaults$cod_procedimiento
  }
  if (!is.null(cod_procedimiento)) {
    insertFields <- c(insertFields, "cod_procedimiento")
    insertValues <- c(insertValues, cod_procedimiento)
  }

  if (missing(cod_tipo_baja)) {
    cod_tipo_baja <- defaults$cod_tipo_baja
  }
  if (!is.null(cod_tipo_baja)) {
    insertFields <- c(insertFields, "cod_tipo_baja")
    insertValues <- c(insertValues, cod_tipo_baja)
  }

  if (exists('testNewAdded', where = globalenv()) && get('testNewAdded'))
  {
    assign('testNewAdded', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    insertDf[nrow(insertDf) + 1,] <<- c('tb_incatemp', comment)
  }
  statement <- paste0("INSERT INTO tb_incatemp (", paste(insertFields, collapse = ", "), ") VALUES ('", paste(insertValues, collapse = "', '"), "');")
  insertDf[nrow(insertDf) + 1,] <<- c('tb_incatemp', statement)
  invisible(statement)
}

add_tb_scp_2012 <- function(id, numsipcod, ano_mes, cod_crg, cod_est_salud) {
  defaults <- get('tb_scp_2012', envir = defaultValues)
  insertFields <- c()
  insertValues <- c()
  if (missing(id)) {
    id <- defaults$id
  }
  if (!is.null(id)) {
    insertFields <- c(insertFields, "id")
    insertValues <- c(insertValues, id)
  }

  if (missing(numsipcod)) {
    numsipcod <- defaults$numsipcod
  }
  if (!is.null(numsipcod)) {
    insertFields <- c(insertFields, "numsipcod")
    insertValues <- c(insertValues, numsipcod)
  }

  if (missing(ano_mes)) {
    ano_mes <- defaults$ano_mes
  }
  if (!is.null(ano_mes)) {
    insertFields <- c(insertFields, "ano_mes")
    insertValues <- c(insertValues, ano_mes)
  }

  if (missing(cod_crg)) {
    cod_crg <- defaults$cod_crg
  }
  if (!is.null(cod_crg)) {
    insertFields <- c(insertFields, "cod_crg")
    insertValues <- c(insertValues, cod_crg)
  }

  if (missing(cod_est_salud)) {
    cod_est_salud <- defaults$cod_est_salud
  }
  if (!is.null(cod_est_salud)) {
    insertFields <- c(insertFields, "cod_est_salud")
    insertValues <- c(insertValues, cod_est_salud)
  }

  if (exists('testNewAdded', where = globalenv()) && get('testNewAdded'))
  {
    assign('testNewAdded', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    insertDf[nrow(insertDf) + 1,] <<- c('tb_scp_2012', comment)
  }
  statement <- paste0("INSERT INTO tb_scp_2012 (", paste(insertFields, collapse = ", "), ") VALUES ('", paste(insertValues, collapse = "', '"), "');")
  insertDf[nrow(insertDf) + 1,] <<- c('tb_scp_2012', statement)
  invisible(statement)
}

add_tb_scp_2013 <- function(id, numsipcod, ano_mes, cod_crg, cod_est_salud) {
  defaults <- get('tb_scp_2013', envir = defaultValues)
  insertFields <- c()
  insertValues <- c()
  if (missing(id)) {
    id <- defaults$id
  }
  if (!is.null(id)) {
    insertFields <- c(insertFields, "id")
    insertValues <- c(insertValues, id)
  }

  if (missing(numsipcod)) {
    numsipcod <- defaults$numsipcod
  }
  if (!is.null(numsipcod)) {
    insertFields <- c(insertFields, "numsipcod")
    insertValues <- c(insertValues, numsipcod)
  }

  if (missing(ano_mes)) {
    ano_mes <- defaults$ano_mes
  }
  if (!is.null(ano_mes)) {
    insertFields <- c(insertFields, "ano_mes")
    insertValues <- c(insertValues, ano_mes)
  }

  if (missing(cod_crg)) {
    cod_crg <- defaults$cod_crg
  }
  if (!is.null(cod_crg)) {
    insertFields <- c(insertFields, "cod_crg")
    insertValues <- c(insertValues, cod_crg)
  }

  if (missing(cod_est_salud)) {
    cod_est_salud <- defaults$cod_est_salud
  }
  if (!is.null(cod_est_salud)) {
    insertFields <- c(insertFields, "cod_est_salud")
    insertValues <- c(insertValues, cod_est_salud)
  }

  if (exists('testNewAdded', where = globalenv()) && get('testNewAdded'))
  {
    assign('testNewAdded', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    insertDf[nrow(insertDf) + 1,] <<- c('tb_scp_2013', comment)
  }
  statement <- paste0("INSERT INTO tb_scp_2013 (", paste(insertFields, collapse = ", "), ") VALUES ('", paste(insertValues, collapse = "', '"), "');")
  insertDf[nrow(insertDf) + 1,] <<- c('tb_scp_2013', statement)
  invisible(statement)
}

add_tb_scp_2014 <- function(id, numsipcod, ano_mes, cod_crg, cod_est_salud) {
  defaults <- get('tb_scp_2014', envir = defaultValues)
  insertFields <- c()
  insertValues <- c()
  if (missing(id)) {
    id <- defaults$id
  }
  if (!is.null(id)) {
    insertFields <- c(insertFields, "id")
    insertValues <- c(insertValues, id)
  }

  if (missing(numsipcod)) {
    numsipcod <- defaults$numsipcod
  }
  if (!is.null(numsipcod)) {
    insertFields <- c(insertFields, "numsipcod")
    insertValues <- c(insertValues, numsipcod)
  }

  if (missing(ano_mes)) {
    ano_mes <- defaults$ano_mes
  }
  if (!is.null(ano_mes)) {
    insertFields <- c(insertFields, "ano_mes")
    insertValues <- c(insertValues, ano_mes)
  }

  if (missing(cod_crg)) {
    cod_crg <- defaults$cod_crg
  }
  if (!is.null(cod_crg)) {
    insertFields <- c(insertFields, "cod_crg")
    insertValues <- c(insertValues, cod_crg)
  }

  if (missing(cod_est_salud)) {
    cod_est_salud <- defaults$cod_est_salud
  }
  if (!is.null(cod_est_salud)) {
    insertFields <- c(insertFields, "cod_est_salud")
    insertValues <- c(insertValues, cod_est_salud)
  }

  if (exists('testNewAdded', where = globalenv()) && get('testNewAdded'))
  {
    assign('testNewAdded', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    insertDf[nrow(insertDf) + 1,] <<- c('tb_scp_2014', comment)
  }
  statement <- paste0("INSERT INTO tb_scp_2014 (", paste(insertFields, collapse = ", "), ") VALUES ('", paste(insertValues, collapse = "', '"), "');")
  insertDf[nrow(insertDf) + 1,] <<- c('tb_scp_2014', statement)
  invisible(statement)
}

add_tb_scp_2015 <- function(id, numsipcod, ano_mes, cod_crg, cod_est_salud) {
  defaults <- get('tb_scp_2015', envir = defaultValues)
  insertFields <- c()
  insertValues <- c()
  if (missing(id)) {
    id <- defaults$id
  }
  if (!is.null(id)) {
    insertFields <- c(insertFields, "id")
    insertValues <- c(insertValues, id)
  }

  if (missing(numsipcod)) {
    numsipcod <- defaults$numsipcod
  }
  if (!is.null(numsipcod)) {
    insertFields <- c(insertFields, "numsipcod")
    insertValues <- c(insertValues, numsipcod)
  }

  if (missing(ano_mes)) {
    ano_mes <- defaults$ano_mes
  }
  if (!is.null(ano_mes)) {
    insertFields <- c(insertFields, "ano_mes")
    insertValues <- c(insertValues, ano_mes)
  }

  if (missing(cod_crg)) {
    cod_crg <- defaults$cod_crg
  }
  if (!is.null(cod_crg)) {
    insertFields <- c(insertFields, "cod_crg")
    insertValues <- c(insertValues, cod_crg)
  }

  if (missing(cod_est_salud)) {
    cod_est_salud <- defaults$cod_est_salud
  }
  if (!is.null(cod_est_salud)) {
    insertFields <- c(insertFields, "cod_est_salud")
    insertValues <- c(insertValues, cod_est_salud)
  }

  if (exists('testNewAdded', where = globalenv()) && get('testNewAdded'))
  {
    assign('testNewAdded', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    insertDf[nrow(insertDf) + 1,] <<- c('tb_scp_2015', comment)
  }
  statement <- paste0("INSERT INTO tb_scp_2015 (", paste(insertFields, collapse = ", "), ") VALUES ('", paste(insertValues, collapse = "', '"), "');")
  insertDf[nrow(insertDf) + 1,] <<- c('tb_scp_2015', statement)
  invisible(statement)
}

add_tb_diag_cmbd <- function(id, tipo_actividad, numsipcod, cie9, cir_ingreso, fecha_ingreso, fecha_alta, cir_alta, grd, peso_grd, orden) {
  defaults <- get('tb_diag_cmbd', envir = defaultValues)
  insertFields <- c()
  insertValues <- c()
  if (missing(id)) {
    id <- defaults$id
  }
  if (!is.null(id)) {
    insertFields <- c(insertFields, "id")
    insertValues <- c(insertValues, id)
  }

  if (missing(tipo_actividad)) {
    tipo_actividad <- defaults$tipo_actividad
  }
  if (!is.null(tipo_actividad)) {
    insertFields <- c(insertFields, "tipo_actividad")
    insertValues <- c(insertValues, tipo_actividad)
  }

  if (missing(numsipcod)) {
    numsipcod <- defaults$numsipcod
  }
  if (!is.null(numsipcod)) {
    insertFields <- c(insertFields, "numsipcod")
    insertValues <- c(insertValues, numsipcod)
  }

  if (missing(cie9)) {
    cie9 <- defaults$cie9
  }
  if (!is.null(cie9)) {
    insertFields <- c(insertFields, "cie9")
    insertValues <- c(insertValues, cie9)
  }

  if (missing(cir_ingreso)) {
    cir_ingreso <- defaults$cir_ingreso
  }
  if (!is.null(cir_ingreso)) {
    insertFields <- c(insertFields, "cir_ingreso")
    insertValues <- c(insertValues, cir_ingreso)
  }

  if (missing(fecha_ingreso)) {
    fecha_ingreso <- defaults$fecha_ingreso
  }
  if (!is.null(fecha_ingreso)) {
    insertFields <- c(insertFields, "fecha_ingreso")
    insertValues <- c(insertValues, fecha_ingreso)
  }

  if (missing(fecha_alta)) {
    fecha_alta <- defaults$fecha_alta
  }
  if (!is.null(fecha_alta)) {
    insertFields <- c(insertFields, "fecha_alta")
    insertValues <- c(insertValues, fecha_alta)
  }

  if (missing(cir_alta)) {
    cir_alta <- defaults$cir_alta
  }
  if (!is.null(cir_alta)) {
    insertFields <- c(insertFields, "cir_alta")
    insertValues <- c(insertValues, cir_alta)
  }

  if (missing(grd)) {
    grd <- defaults$grd
  }
  if (!is.null(grd)) {
    insertFields <- c(insertFields, "grd")
    insertValues <- c(insertValues, grd)
  }

  if (missing(peso_grd)) {
    peso_grd <- defaults$peso_grd
  }
  if (!is.null(peso_grd)) {
    insertFields <- c(insertFields, "peso_grd")
    insertValues <- c(insertValues, peso_grd)
  }

  if (missing(orden)) {
    orden <- defaults$orden
  }
  if (!is.null(orden)) {
    insertFields <- c(insertFields, "orden")
    insertValues <- c(insertValues, orden)
  }

  if (exists('testNewAdded', where = globalenv()) && get('testNewAdded'))
  {
    assign('testNewAdded', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    insertDf[nrow(insertDf) + 1,] <<- c('tb_diag_cmbd', comment)
  }
  statement <- paste0("INSERT INTO tb_diag_cmbd (", paste(insertFields, collapse = ", "), ") VALUES ('", paste(insertValues, collapse = "', '"), "');")
  insertDf[nrow(insertDf) + 1,] <<- c('tb_diag_cmbd', statement)
  invisible(statement)
}

add_tb_morbilid <- function(id, numsipcod, fecha_inicio, fecha_fin, cod_diagnostico, estado_morbilidad) {
  defaults <- get('tb_morbilid', envir = defaultValues)
  insertFields <- c()
  insertValues <- c()
  if (missing(id)) {
    id <- defaults$id
  }
  if (!is.null(id)) {
    insertFields <- c(insertFields, "id")
    insertValues <- c(insertValues, id)
  }

  if (missing(numsipcod)) {
    numsipcod <- defaults$numsipcod
  }
  if (!is.null(numsipcod)) {
    insertFields <- c(insertFields, "numsipcod")
    insertValues <- c(insertValues, numsipcod)
  }

  if (missing(fecha_inicio)) {
    fecha_inicio <- defaults$fecha_inicio
  }
  if (!is.null(fecha_inicio)) {
    insertFields <- c(insertFields, "fecha_inicio")
    insertValues <- c(insertValues, fecha_inicio)
  }

  if (missing(fecha_fin)) {
    fecha_fin <- defaults$fecha_fin
  }
  if (!is.null(fecha_fin)) {
    insertFields <- c(insertFields, "fecha_fin")
    insertValues <- c(insertValues, fecha_fin)
  }

  if (missing(cod_diagnostico)) {
    cod_diagnostico <- defaults$cod_diagnostico
  }
  if (!is.null(cod_diagnostico)) {
    insertFields <- c(insertFields, "cod_diagnostico")
    insertValues <- c(insertValues, cod_diagnostico)
  }

  if (missing(estado_morbilidad)) {
    estado_morbilidad <- defaults$estado_morbilidad
  }
  if (!is.null(estado_morbilidad)) {
    insertFields <- c(insertFields, "estado_morbilidad")
    insertValues <- c(insertValues, estado_morbilidad)
  }

  if (exists('testNewAdded', where = globalenv()) && get('testNewAdded'))
  {
    assign('testNewAdded', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    insertDf[nrow(insertDf) + 1,] <<- c('tb_morbilid', comment)
  }
  statement <- paste0("INSERT INTO tb_morbilid (", paste(insertFields, collapse = ", "), ") VALUES ('", paste(insertValues, collapse = "', '"), "');")
  insertDf[nrow(insertDf) + 1,] <<- c('tb_morbilid', statement)
  invisible(statement)
}

add_tb_ante_cmbd <- function(id, numsipcod, tipo_actividad, fecha_ingreso, fecha_alta, cir_ingreso, cir_alta, d1, d2, d3, d4, d5, d6, d7, d8, d9, d10, d11, d12, d13, d14, d15, d16, d17, d18, d19, d20, d21, d22, d23, d24, d25, d26, d27, d28, d29, d30, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16, p17, p18, p19, p20, p21, p22, p23, p24, p25, p26, p27, p28, p29, p30, grd, peso_grd) {
  defaults <- get('tb_ante_cmbd', envir = defaultValues)
  insertFields <- c()
  insertValues <- c()
  if (missing(id)) {
    id <- defaults$id
  }
  if (!is.null(id)) {
    insertFields <- c(insertFields, "id")
    insertValues <- c(insertValues, id)
  }

  if (missing(numsipcod)) {
    numsipcod <- defaults$numsipcod
  }
  if (!is.null(numsipcod)) {
    insertFields <- c(insertFields, "numsipcod")
    insertValues <- c(insertValues, numsipcod)
  }

  if (missing(tipo_actividad)) {
    tipo_actividad <- defaults$tipo_actividad
  }
  if (!is.null(tipo_actividad)) {
    insertFields <- c(insertFields, "tipo_actividad")
    insertValues <- c(insertValues, tipo_actividad)
  }

  if (missing(fecha_ingreso)) {
    fecha_ingreso <- defaults$fecha_ingreso
  }
  if (!is.null(fecha_ingreso)) {
    insertFields <- c(insertFields, "fecha_ingreso")
    insertValues <- c(insertValues, fecha_ingreso)
  }

  if (missing(fecha_alta)) {
    fecha_alta <- defaults$fecha_alta
  }
  if (!is.null(fecha_alta)) {
    insertFields <- c(insertFields, "fecha_alta")
    insertValues <- c(insertValues, fecha_alta)
  }

  if (missing(cir_ingreso)) {
    cir_ingreso <- defaults$cir_ingreso
  }
  if (!is.null(cir_ingreso)) {
    insertFields <- c(insertFields, "cir_ingreso")
    insertValues <- c(insertValues, cir_ingreso)
  }

  if (missing(cir_alta)) {
    cir_alta <- defaults$cir_alta
  }
  if (!is.null(cir_alta)) {
    insertFields <- c(insertFields, "cir_alta")
    insertValues <- c(insertValues, cir_alta)
  }

  if (missing(d1)) {
    d1 <- defaults$d1
  }
  if (!is.null(d1)) {
    insertFields <- c(insertFields, "d1")
    insertValues <- c(insertValues, d1)
  }

  if (missing(d2)) {
    d2 <- defaults$d2
  }
  if (!is.null(d2)) {
    insertFields <- c(insertFields, "d2")
    insertValues <- c(insertValues, d2)
  }

  if (missing(d3)) {
    d3 <- defaults$d3
  }
  if (!is.null(d3)) {
    insertFields <- c(insertFields, "d3")
    insertValues <- c(insertValues, d3)
  }

  if (missing(d4)) {
    d4 <- defaults$d4
  }
  if (!is.null(d4)) {
    insertFields <- c(insertFields, "d4")
    insertValues <- c(insertValues, d4)
  }

  if (missing(d5)) {
    d5 <- defaults$d5
  }
  if (!is.null(d5)) {
    insertFields <- c(insertFields, "d5")
    insertValues <- c(insertValues, d5)
  }

  if (missing(d6)) {
    d6 <- defaults$d6
  }
  if (!is.null(d6)) {
    insertFields <- c(insertFields, "d6")
    insertValues <- c(insertValues, d6)
  }

  if (missing(d7)) {
    d7 <- defaults$d7
  }
  if (!is.null(d7)) {
    insertFields <- c(insertFields, "d7")
    insertValues <- c(insertValues, d7)
  }

  if (missing(d8)) {
    d8 <- defaults$d8
  }
  if (!is.null(d8)) {
    insertFields <- c(insertFields, "d8")
    insertValues <- c(insertValues, d8)
  }

  if (missing(d9)) {
    d9 <- defaults$d9
  }
  if (!is.null(d9)) {
    insertFields <- c(insertFields, "d9")
    insertValues <- c(insertValues, d9)
  }

  if (missing(d10)) {
    d10 <- defaults$d10
  }
  if (!is.null(d10)) {
    insertFields <- c(insertFields, "d10")
    insertValues <- c(insertValues, d10)
  }

  if (missing(d11)) {
    d11 <- defaults$d11
  }
  if (!is.null(d11)) {
    insertFields <- c(insertFields, "d11")
    insertValues <- c(insertValues, d11)
  }

  if (missing(d12)) {
    d12 <- defaults$d12
  }
  if (!is.null(d12)) {
    insertFields <- c(insertFields, "d12")
    insertValues <- c(insertValues, d12)
  }

  if (missing(d13)) {
    d13 <- defaults$d13
  }
  if (!is.null(d13)) {
    insertFields <- c(insertFields, "d13")
    insertValues <- c(insertValues, d13)
  }

  if (missing(d14)) {
    d14 <- defaults$d14
  }
  if (!is.null(d14)) {
    insertFields <- c(insertFields, "d14")
    insertValues <- c(insertValues, d14)
  }

  if (missing(d15)) {
    d15 <- defaults$d15
  }
  if (!is.null(d15)) {
    insertFields <- c(insertFields, "d15")
    insertValues <- c(insertValues, d15)
  }

  if (missing(d16)) {
    d16 <- defaults$d16
  }
  if (!is.null(d16)) {
    insertFields <- c(insertFields, "d16")
    insertValues <- c(insertValues, d16)
  }

  if (missing(d17)) {
    d17 <- defaults$d17
  }
  if (!is.null(d17)) {
    insertFields <- c(insertFields, "d17")
    insertValues <- c(insertValues, d17)
  }

  if (missing(d18)) {
    d18 <- defaults$d18
  }
  if (!is.null(d18)) {
    insertFields <- c(insertFields, "d18")
    insertValues <- c(insertValues, d18)
  }

  if (missing(d19)) {
    d19 <- defaults$d19
  }
  if (!is.null(d19)) {
    insertFields <- c(insertFields, "d19")
    insertValues <- c(insertValues, d19)
  }

  if (missing(d20)) {
    d20 <- defaults$d20
  }
  if (!is.null(d20)) {
    insertFields <- c(insertFields, "d20")
    insertValues <- c(insertValues, d20)
  }

  if (missing(d21)) {
    d21 <- defaults$d21
  }
  if (!is.null(d21)) {
    insertFields <- c(insertFields, "d21")
    insertValues <- c(insertValues, d21)
  }

  if (missing(d22)) {
    d22 <- defaults$d22
  }
  if (!is.null(d22)) {
    insertFields <- c(insertFields, "d22")
    insertValues <- c(insertValues, d22)
  }

  if (missing(d23)) {
    d23 <- defaults$d23
  }
  if (!is.null(d23)) {
    insertFields <- c(insertFields, "d23")
    insertValues <- c(insertValues, d23)
  }

  if (missing(d24)) {
    d24 <- defaults$d24
  }
  if (!is.null(d24)) {
    insertFields <- c(insertFields, "d24")
    insertValues <- c(insertValues, d24)
  }

  if (missing(d25)) {
    d25 <- defaults$d25
  }
  if (!is.null(d25)) {
    insertFields <- c(insertFields, "d25")
    insertValues <- c(insertValues, d25)
  }

  if (missing(d26)) {
    d26 <- defaults$d26
  }
  if (!is.null(d26)) {
    insertFields <- c(insertFields, "d26")
    insertValues <- c(insertValues, d26)
  }

  if (missing(d27)) {
    d27 <- defaults$d27
  }
  if (!is.null(d27)) {
    insertFields <- c(insertFields, "d27")
    insertValues <- c(insertValues, d27)
  }

  if (missing(d28)) {
    d28 <- defaults$d28
  }
  if (!is.null(d28)) {
    insertFields <- c(insertFields, "d28")
    insertValues <- c(insertValues, d28)
  }

  if (missing(d29)) {
    d29 <- defaults$d29
  }
  if (!is.null(d29)) {
    insertFields <- c(insertFields, "d29")
    insertValues <- c(insertValues, d29)
  }

  if (missing(d30)) {
    d30 <- defaults$d30
  }
  if (!is.null(d30)) {
    insertFields <- c(insertFields, "d30")
    insertValues <- c(insertValues, d30)
  }

  if (missing(p1)) {
    p1 <- defaults$p1
  }
  if (!is.null(p1)) {
    insertFields <- c(insertFields, "p1")
    insertValues <- c(insertValues, p1)
  }

  if (missing(p2)) {
    p2 <- defaults$p2
  }
  if (!is.null(p2)) {
    insertFields <- c(insertFields, "p2")
    insertValues <- c(insertValues, p2)
  }

  if (missing(p3)) {
    p3 <- defaults$p3
  }
  if (!is.null(p3)) {
    insertFields <- c(insertFields, "p3")
    insertValues <- c(insertValues, p3)
  }

  if (missing(p4)) {
    p4 <- defaults$p4
  }
  if (!is.null(p4)) {
    insertFields <- c(insertFields, "p4")
    insertValues <- c(insertValues, p4)
  }

  if (missing(p5)) {
    p5 <- defaults$p5
  }
  if (!is.null(p5)) {
    insertFields <- c(insertFields, "p5")
    insertValues <- c(insertValues, p5)
  }

  if (missing(p6)) {
    p6 <- defaults$p6
  }
  if (!is.null(p6)) {
    insertFields <- c(insertFields, "p6")
    insertValues <- c(insertValues, p6)
  }

  if (missing(p7)) {
    p7 <- defaults$p7
  }
  if (!is.null(p7)) {
    insertFields <- c(insertFields, "p7")
    insertValues <- c(insertValues, p7)
  }

  if (missing(p8)) {
    p8 <- defaults$p8
  }
  if (!is.null(p8)) {
    insertFields <- c(insertFields, "p8")
    insertValues <- c(insertValues, p8)
  }

  if (missing(p9)) {
    p9 <- defaults$p9
  }
  if (!is.null(p9)) {
    insertFields <- c(insertFields, "p9")
    insertValues <- c(insertValues, p9)
  }

  if (missing(p10)) {
    p10 <- defaults$p10
  }
  if (!is.null(p10)) {
    insertFields <- c(insertFields, "p10")
    insertValues <- c(insertValues, p10)
  }

  if (missing(p11)) {
    p11 <- defaults$p11
  }
  if (!is.null(p11)) {
    insertFields <- c(insertFields, "p11")
    insertValues <- c(insertValues, p11)
  }

  if (missing(p12)) {
    p12 <- defaults$p12
  }
  if (!is.null(p12)) {
    insertFields <- c(insertFields, "p12")
    insertValues <- c(insertValues, p12)
  }

  if (missing(p13)) {
    p13 <- defaults$p13
  }
  if (!is.null(p13)) {
    insertFields <- c(insertFields, "p13")
    insertValues <- c(insertValues, p13)
  }

  if (missing(p14)) {
    p14 <- defaults$p14
  }
  if (!is.null(p14)) {
    insertFields <- c(insertFields, "p14")
    insertValues <- c(insertValues, p14)
  }

  if (missing(p15)) {
    p15 <- defaults$p15
  }
  if (!is.null(p15)) {
    insertFields <- c(insertFields, "p15")
    insertValues <- c(insertValues, p15)
  }

  if (missing(p16)) {
    p16 <- defaults$p16
  }
  if (!is.null(p16)) {
    insertFields <- c(insertFields, "p16")
    insertValues <- c(insertValues, p16)
  }

  if (missing(p17)) {
    p17 <- defaults$p17
  }
  if (!is.null(p17)) {
    insertFields <- c(insertFields, "p17")
    insertValues <- c(insertValues, p17)
  }

  if (missing(p18)) {
    p18 <- defaults$p18
  }
  if (!is.null(p18)) {
    insertFields <- c(insertFields, "p18")
    insertValues <- c(insertValues, p18)
  }

  if (missing(p19)) {
    p19 <- defaults$p19
  }
  if (!is.null(p19)) {
    insertFields <- c(insertFields, "p19")
    insertValues <- c(insertValues, p19)
  }

  if (missing(p20)) {
    p20 <- defaults$p20
  }
  if (!is.null(p20)) {
    insertFields <- c(insertFields, "p20")
    insertValues <- c(insertValues, p20)
  }

  if (missing(p21)) {
    p21 <- defaults$p21
  }
  if (!is.null(p21)) {
    insertFields <- c(insertFields, "p21")
    insertValues <- c(insertValues, p21)
  }

  if (missing(p22)) {
    p22 <- defaults$p22
  }
  if (!is.null(p22)) {
    insertFields <- c(insertFields, "p22")
    insertValues <- c(insertValues, p22)
  }

  if (missing(p23)) {
    p23 <- defaults$p23
  }
  if (!is.null(p23)) {
    insertFields <- c(insertFields, "p23")
    insertValues <- c(insertValues, p23)
  }

  if (missing(p24)) {
    p24 <- defaults$p24
  }
  if (!is.null(p24)) {
    insertFields <- c(insertFields, "p24")
    insertValues <- c(insertValues, p24)
  }

  if (missing(p25)) {
    p25 <- defaults$p25
  }
  if (!is.null(p25)) {
    insertFields <- c(insertFields, "p25")
    insertValues <- c(insertValues, p25)
  }

  if (missing(p26)) {
    p26 <- defaults$p26
  }
  if (!is.null(p26)) {
    insertFields <- c(insertFields, "p26")
    insertValues <- c(insertValues, p26)
  }

  if (missing(p27)) {
    p27 <- defaults$p27
  }
  if (!is.null(p27)) {
    insertFields <- c(insertFields, "p27")
    insertValues <- c(insertValues, p27)
  }

  if (missing(p28)) {
    p28 <- defaults$p28
  }
  if (!is.null(p28)) {
    insertFields <- c(insertFields, "p28")
    insertValues <- c(insertValues, p28)
  }

  if (missing(p29)) {
    p29 <- defaults$p29
  }
  if (!is.null(p29)) {
    insertFields <- c(insertFields, "p29")
    insertValues <- c(insertValues, p29)
  }

  if (missing(p30)) {
    p30 <- defaults$p30
  }
  if (!is.null(p30)) {
    insertFields <- c(insertFields, "p30")
    insertValues <- c(insertValues, p30)
  }

  if (missing(grd)) {
    grd <- defaults$grd
  }
  if (!is.null(grd)) {
    insertFields <- c(insertFields, "grd")
    insertValues <- c(insertValues, grd)
  }

  if (missing(peso_grd)) {
    peso_grd <- defaults$peso_grd
  }
  if (!is.null(peso_grd)) {
    insertFields <- c(insertFields, "peso_grd")
    insertValues <- c(insertValues, peso_grd)
  }

  if (exists('testNewAdded', where = globalenv()) && get('testNewAdded'))
  {
    assign('testNewAdded', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    insertDf[nrow(insertDf) + 1,] <<- c('tb_ante_cmbd', comment)
  }
  statement <- paste0("INSERT INTO tb_ante_cmbd (", paste(insertFields, collapse = ", "), ") VALUES ('", paste(insertValues, collapse = "', '"), "');")
  insertDf[nrow(insertDf) + 1,] <<- c('tb_ante_cmbd', statement)
  invisible(statement)
}

add_tba_centros <- function(id, cod_centro, des_centro) {
  defaults <- get('tba_centros', envir = defaultValues)
  insertFields <- c()
  insertValues <- c()
  if (missing(id)) {
    id <- defaults$id
  }
  if (!is.null(id)) {
    insertFields <- c(insertFields, "id")
    insertValues <- c(insertValues, id)
  }

  if (missing(cod_centro)) {
    cod_centro <- defaults$cod_centro
  }
  if (!is.null(cod_centro)) {
    insertFields <- c(insertFields, "cod_centro")
    insertValues <- c(insertValues, cod_centro)
  }

  if (missing(des_centro)) {
    des_centro <- defaults$des_centro
  }
  if (!is.null(des_centro)) {
    insertFields <- c(insertFields, "des_centro")
    insertValues <- c(insertValues, des_centro)
  }

  if (exists('testNewAdded', where = globalenv()) && get('testNewAdded'))
  {
    assign('testNewAdded', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    insertDf[nrow(insertDf) + 1,] <<- c('tba_centros', comment)
  }
  statement <- paste0("INSERT INTO tba_centros (", paste(insertFields, collapse = ", "), ") VALUES ('", paste(insertValues, collapse = "', '"), "');")
  insertDf[nrow(insertDf) + 1,] <<- c('tba_centros', statement)
  invisible(statement)
}

add_tba_cie9 <- function(id, cod_diagnostico, des_diagnostico) {
  defaults <- get('tba_cie9', envir = defaultValues)
  insertFields <- c()
  insertValues <- c()
  if (missing(id)) {
    id <- defaults$id
  }
  if (!is.null(id)) {
    insertFields <- c(insertFields, "id")
    insertValues <- c(insertValues, id)
  }

  if (missing(cod_diagnostico)) {
    cod_diagnostico <- defaults$cod_diagnostico
  }
  if (!is.null(cod_diagnostico)) {
    insertFields <- c(insertFields, "cod_diagnostico")
    insertValues <- c(insertValues, cod_diagnostico)
  }

  if (missing(des_diagnostico)) {
    des_diagnostico <- defaults$des_diagnostico
  }
  if (!is.null(des_diagnostico)) {
    insertFields <- c(insertFields, "des_diagnostico")
    insertValues <- c(insertValues, des_diagnostico)
  }

  if (exists('testNewAdded', where = globalenv()) && get('testNewAdded'))
  {
    assign('testNewAdded', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    insertDf[nrow(insertDf) + 1,] <<- c('tba_cie9', comment)
  }
  statement <- paste0("INSERT INTO tba_cie9 (", paste(insertFields, collapse = ", "), ") VALUES ('", paste(insertValues, collapse = "', '"), "');")
  insertDf[nrow(insertDf) + 1,] <<- c('tba_cie9', statement)
  invisible(statement)
}

add_tba_crg <- function(id, cod_crg, des_crg) {
  defaults <- get('tba_crg', envir = defaultValues)
  insertFields <- c()
  insertValues <- c()
  if (missing(id)) {
    id <- defaults$id
  }
  if (!is.null(id)) {
    insertFields <- c(insertFields, "id")
    insertValues <- c(insertValues, id)
  }

  if (missing(cod_crg)) {
    cod_crg <- defaults$cod_crg
  }
  if (!is.null(cod_crg)) {
    insertFields <- c(insertFields, "cod_crg")
    insertValues <- c(insertValues, cod_crg)
  }

  if (missing(des_crg)) {
    des_crg <- defaults$des_crg
  }
  if (!is.null(des_crg)) {
    insertFields <- c(insertFields, "des_crg")
    insertValues <- c(insertValues, des_crg)
  }

  if (exists('testNewAdded', where = globalenv()) && get('testNewAdded'))
  {
    assign('testNewAdded', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    insertDf[nrow(insertDf) + 1,] <<- c('tba_crg', comment)
  }
  statement <- paste0("INSERT INTO tba_crg (", paste(insertFields, collapse = ", "), ") VALUES ('", paste(insertValues, collapse = "', '"), "');")
  insertDf[nrow(insertDf) + 1,] <<- c('tba_crg', statement)
  invisible(statement)
}

add_tba_farmacia <- function(id, cod_presfarma, des_presfarma, cod_prinactivo, des_prinactivo, cod_atc2, des_atc2, cod_atc4, des_atc4) {
  defaults <- get('tba_farmacia', envir = defaultValues)
  insertFields <- c()
  insertValues <- c()
  if (missing(id)) {
    id <- defaults$id
  }
  if (!is.null(id)) {
    insertFields <- c(insertFields, "id")
    insertValues <- c(insertValues, id)
  }

  if (missing(cod_presfarma)) {
    cod_presfarma <- defaults$cod_presfarma
  }
  if (!is.null(cod_presfarma)) {
    insertFields <- c(insertFields, "cod_presfarma")
    insertValues <- c(insertValues, cod_presfarma)
  }

  if (missing(des_presfarma)) {
    des_presfarma <- defaults$des_presfarma
  }
  if (!is.null(des_presfarma)) {
    insertFields <- c(insertFields, "des_presfarma")
    insertValues <- c(insertValues, des_presfarma)
  }

  if (missing(cod_prinactivo)) {
    cod_prinactivo <- defaults$cod_prinactivo
  }
  if (!is.null(cod_prinactivo)) {
    insertFields <- c(insertFields, "cod_prinactivo")
    insertValues <- c(insertValues, cod_prinactivo)
  }

  if (missing(des_prinactivo)) {
    des_prinactivo <- defaults$des_prinactivo
  }
  if (!is.null(des_prinactivo)) {
    insertFields <- c(insertFields, "des_prinactivo")
    insertValues <- c(insertValues, des_prinactivo)
  }

  if (missing(cod_atc2)) {
    cod_atc2 <- defaults$cod_atc2
  }
  if (!is.null(cod_atc2)) {
    insertFields <- c(insertFields, "cod_atc2")
    insertValues <- c(insertValues, cod_atc2)
  }

  if (missing(des_atc2)) {
    des_atc2 <- defaults$des_atc2
  }
  if (!is.null(des_atc2)) {
    insertFields <- c(insertFields, "des_atc2")
    insertValues <- c(insertValues, des_atc2)
  }

  if (missing(cod_atc4)) {
    cod_atc4 <- defaults$cod_atc4
  }
  if (!is.null(cod_atc4)) {
    insertFields <- c(insertFields, "cod_atc4")
    insertValues <- c(insertValues, cod_atc4)
  }

  if (missing(des_atc4)) {
    des_atc4 <- defaults$des_atc4
  }
  if (!is.null(des_atc4)) {
    insertFields <- c(insertFields, "des_atc4")
    insertValues <- c(insertValues, des_atc4)
  }

  if (exists('testNewAdded', where = globalenv()) && get('testNewAdded'))
  {
    assign('testNewAdded', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    insertDf[nrow(insertDf) + 1,] <<- c('tba_farmacia', comment)
  }
  statement <- paste0("INSERT INTO tba_farmacia (", paste(insertFields, collapse = ", "), ") VALUES ('", paste(insertValues, collapse = "', '"), "');")
  insertDf[nrow(insertDf) + 1,] <<- c('tba_farmacia', statement)
  invisible(statement)
}

add_tba_serv_propio <- function(id, cod_serv_propio, des_serv_propio) {
  defaults <- get('tba_serv_propio', envir = defaultValues)
  insertFields <- c()
  insertValues <- c()
  if (missing(id)) {
    id <- defaults$id
  }
  if (!is.null(id)) {
    insertFields <- c(insertFields, "id")
    insertValues <- c(insertValues, id)
  }

  if (missing(cod_serv_propio)) {
    cod_serv_propio <- defaults$cod_serv_propio
  }
  if (!is.null(cod_serv_propio)) {
    insertFields <- c(insertFields, "cod_serv_propio")
    insertValues <- c(insertValues, cod_serv_propio)
  }

  if (missing(des_serv_propio)) {
    des_serv_propio <- defaults$des_serv_propio
  }
  if (!is.null(des_serv_propio)) {
    insertFields <- c(insertFields, "des_serv_propio")
    insertValues <- c(insertValues, des_serv_propio)
  }

  if (exists('testNewAdded', where = globalenv()) && get('testNewAdded'))
  {
    assign('testNewAdded', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    insertDf[nrow(insertDf) + 1,] <<- c('tba_serv_propio', comment)
  }
  statement <- paste0("INSERT INTO tba_serv_propio (", paste(insertFields, collapse = ", "), ") VALUES ('", paste(insertValues, collapse = "', '"), "');")
  insertDf[nrow(insertDf) + 1,] <<- c('tba_serv_propio', statement)
  invisible(statement)
}

add_tba_centros_asignacion <- function(id, cod_centro, cod_departamento, cod_zona) {
  defaults <- get('tba_centros_asignacion', envir = defaultValues)
  insertFields <- c()
  insertValues <- c()
  if (missing(id)) {
    id <- defaults$id
  }
  if (!is.null(id)) {
    insertFields <- c(insertFields, "id")
    insertValues <- c(insertValues, id)
  }

  if (missing(cod_centro)) {
    cod_centro <- defaults$cod_centro
  }
  if (!is.null(cod_centro)) {
    insertFields <- c(insertFields, "cod_centro")
    insertValues <- c(insertValues, cod_centro)
  }

  if (missing(cod_departamento)) {
    cod_departamento <- defaults$cod_departamento
  }
  if (!is.null(cod_departamento)) {
    insertFields <- c(insertFields, "cod_departamento")
    insertValues <- c(insertValues, cod_departamento)
  }

  if (missing(cod_zona)) {
    cod_zona <- defaults$cod_zona
  }
  if (!is.null(cod_zona)) {
    insertFields <- c(insertFields, "cod_zona")
    insertValues <- c(insertValues, cod_zona)
  }

  if (exists('testNewAdded', where = globalenv()) && get('testNewAdded'))
  {
    assign('testNewAdded', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    insertDf[nrow(insertDf) + 1,] <<- c('tba_centros_asignacion', comment)
  }
  statement <- paste0("INSERT INTO tba_centros_asignacion (", paste(insertFields, collapse = ", "), ") VALUES ('", paste(insertValues, collapse = "', '"), "');")
  insertDf[nrow(insertDf) + 1,] <<- c('tba_centros_asignacion', statement)
  invisible(statement)
}

add_tba_zonas <- function(id, cod_zona, des_zona) {
  defaults <- get('tba_zonas', envir = defaultValues)
  insertFields <- c()
  insertValues <- c()
  if (missing(id)) {
    id <- defaults$id
  }
  if (!is.null(id)) {
    insertFields <- c(insertFields, "id")
    insertValues <- c(insertValues, id)
  }

  if (missing(cod_zona)) {
    cod_zona <- defaults$cod_zona
  }
  if (!is.null(cod_zona)) {
    insertFields <- c(insertFields, "cod_zona")
    insertValues <- c(insertValues, cod_zona)
  }

  if (missing(des_zona)) {
    des_zona <- defaults$des_zona
  }
  if (!is.null(des_zona)) {
    insertFields <- c(insertFields, "des_zona")
    insertValues <- c(insertValues, des_zona)
  }

  if (exists('testNewAdded', where = globalenv()) && get('testNewAdded'))
  {
    assign('testNewAdded', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    insertDf[nrow(insertDf) + 1,] <<- c('tba_zonas', comment)
  }
  statement <- paste0("INSERT INTO tba_zonas (", paste(insertFields, collapse = ", "), ") VALUES ('", paste(insertValues, collapse = "', '"), "');")
  insertDf[nrow(insertDf) + 1,] <<- c('tba_zonas', statement)
  invisible(statement)
}

add_tba_atc2 <- function(id, cod_atc2, des_atc2) {
  defaults <- get('tba_atc2', envir = defaultValues)
  insertFields <- c()
  insertValues <- c()
  if (missing(id)) {
    id <- defaults$id
  }
  if (!is.null(id)) {
    insertFields <- c(insertFields, "id")
    insertValues <- c(insertValues, id)
  }

  if (missing(cod_atc2)) {
    cod_atc2 <- defaults$cod_atc2
  }
  if (!is.null(cod_atc2)) {
    insertFields <- c(insertFields, "cod_atc2")
    insertValues <- c(insertValues, cod_atc2)
  }

  if (missing(des_atc2)) {
    des_atc2 <- defaults$des_atc2
  }
  if (!is.null(des_atc2)) {
    insertFields <- c(insertFields, "des_atc2")
    insertValues <- c(insertValues, des_atc2)
  }

  if (exists('testNewAdded', where = globalenv()) && get('testNewAdded'))
  {
    assign('testNewAdded', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    insertDf[nrow(insertDf) + 1,] <<- c('tba_atc2', comment)
  }
  statement <- paste0("INSERT INTO tba_atc2 (", paste(insertFields, collapse = ", "), ") VALUES ('", paste(insertValues, collapse = "', '"), "');")
  insertDf[nrow(insertDf) + 1,] <<- c('tba_atc2', statement)
  invisible(statement)
}

add_tba_atc4 <- function(id, cod_atc4, des_atc4) {
  defaults <- get('tba_atc4', envir = defaultValues)
  insertFields <- c()
  insertValues <- c()
  if (missing(id)) {
    id <- defaults$id
  }
  if (!is.null(id)) {
    insertFields <- c(insertFields, "id")
    insertValues <- c(insertValues, id)
  }

  if (missing(cod_atc4)) {
    cod_atc4 <- defaults$cod_atc4
  }
  if (!is.null(cod_atc4)) {
    insertFields <- c(insertFields, "cod_atc4")
    insertValues <- c(insertValues, cod_atc4)
  }

  if (missing(des_atc4)) {
    des_atc4 <- defaults$des_atc4
  }
  if (!is.null(des_atc4)) {
    insertFields <- c(insertFields, "des_atc4")
    insertValues <- c(insertValues, des_atc4)
  }

  if (exists('testNewAdded', where = globalenv()) && get('testNewAdded'))
  {
    assign('testNewAdded', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    insertDf[nrow(insertDf) + 1,] <<- c('tba_atc4', comment)
  }
  statement <- paste0("INSERT INTO tba_atc4 (", paste(insertFields, collapse = ", "), ") VALUES ('", paste(insertValues, collapse = "', '"), "');")
  insertDf[nrow(insertDf) + 1,] <<- c('tba_atc4', statement)
  invisible(statement)
}

add_tba_cau_alta <- function(id, cod_causa_alta, des_causa_alta) {
  defaults <- get('tba_cau_alta', envir = defaultValues)
  insertFields <- c()
  insertValues <- c()
  if (missing(id)) {
    id <- defaults$id
  }
  if (!is.null(id)) {
    insertFields <- c(insertFields, "id")
    insertValues <- c(insertValues, id)
  }

  if (missing(cod_causa_alta)) {
    cod_causa_alta <- defaults$cod_causa_alta
  }
  if (!is.null(cod_causa_alta)) {
    insertFields <- c(insertFields, "cod_causa_alta")
    insertValues <- c(insertValues, cod_causa_alta)
  }

  if (missing(des_causa_alta)) {
    des_causa_alta <- defaults$des_causa_alta
  }
  if (!is.null(des_causa_alta)) {
    insertFields <- c(insertFields, "des_causa_alta")
    insertValues <- c(insertValues, des_causa_alta)
  }

  if (exists('testNewAdded', where = globalenv()) && get('testNewAdded'))
  {
    assign('testNewAdded', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    insertDf[nrow(insertDf) + 1,] <<- c('tba_cau_alta', comment)
  }
  statement <- paste0("INSERT INTO tba_cau_alta (", paste(insertFields, collapse = ", "), ") VALUES ('", paste(insertValues, collapse = "', '"), "');")
  insertDf[nrow(insertDf) + 1,] <<- c('tba_cau_alta', statement)
  invisible(statement)
}

add_tba_cau_baja <- function(id, cod_causa_baja, des_causa_baja) {
  defaults <- get('tba_cau_baja', envir = defaultValues)
  insertFields <- c()
  insertValues <- c()
  if (missing(id)) {
    id <- defaults$id
  }
  if (!is.null(id)) {
    insertFields <- c(insertFields, "id")
    insertValues <- c(insertValues, id)
  }

  if (missing(cod_causa_baja)) {
    cod_causa_baja <- defaults$cod_causa_baja
  }
  if (!is.null(cod_causa_baja)) {
    insertFields <- c(insertFields, "cod_causa_baja")
    insertValues <- c(insertValues, cod_causa_baja)
  }

  if (missing(des_causa_baja)) {
    des_causa_baja <- defaults$des_causa_baja
  }
  if (!is.null(des_causa_baja)) {
    insertFields <- c(insertFields, "des_causa_baja")
    insertValues <- c(insertValues, des_causa_baja)
  }

  if (exists('testNewAdded', where = globalenv()) && get('testNewAdded'))
  {
    assign('testNewAdded', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    insertDf[nrow(insertDf) + 1,] <<- c('tba_cau_baja', comment)
  }
  statement <- paste0("INSERT INTO tba_cau_baja (", paste(insertFields, collapse = ", "), ") VALUES ('", paste(insertValues, collapse = "', '"), "');")
  insertDf[nrow(insertDf) + 1,] <<- c('tba_cau_baja', statement)
  invisible(statement)
}

add_tba_cie9p <- function(id, cod_procedimiento, des_procedimiento) {
  defaults <- get('tba_cie9p', envir = defaultValues)
  insertFields <- c()
  insertValues <- c()
  if (missing(id)) {
    id <- defaults$id
  }
  if (!is.null(id)) {
    insertFields <- c(insertFields, "id")
    insertValues <- c(insertValues, id)
  }

  if (missing(cod_procedimiento)) {
    cod_procedimiento <- defaults$cod_procedimiento
  }
  if (!is.null(cod_procedimiento)) {
    insertFields <- c(insertFields, "cod_procedimiento")
    insertValues <- c(insertValues, cod_procedimiento)
  }

  if (missing(des_procedimiento)) {
    des_procedimiento <- defaults$des_procedimiento
  }
  if (!is.null(des_procedimiento)) {
    insertFields <- c(insertFields, "des_procedimiento")
    insertValues <- c(insertValues, des_procedimiento)
  }

  if (exists('testNewAdded', where = globalenv()) && get('testNewAdded'))
  {
    assign('testNewAdded', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    insertDf[nrow(insertDf) + 1,] <<- c('tba_cie9p', comment)
  }
  statement <- paste0("INSERT INTO tba_cie9p (", paste(insertFields, collapse = ", "), ") VALUES ('", paste(insertValues, collapse = "', '"), "');")
  insertDf[nrow(insertDf) + 1,] <<- c('tba_cie9p', statement)
  invisible(statement)
}

add_tba_comunidad_acred <- function(id, cod_comunidad, des_comunidad) {
  defaults <- get('tba_comunidad_acred', envir = defaultValues)
  insertFields <- c()
  insertValues <- c()
  if (missing(id)) {
    id <- defaults$id
  }
  if (!is.null(id)) {
    insertFields <- c(insertFields, "id")
    insertValues <- c(insertValues, id)
  }

  if (missing(cod_comunidad)) {
    cod_comunidad <- defaults$cod_comunidad
  }
  if (!is.null(cod_comunidad)) {
    insertFields <- c(insertFields, "cod_comunidad")
    insertValues <- c(insertValues, cod_comunidad)
  }

  if (missing(des_comunidad)) {
    des_comunidad <- defaults$des_comunidad
  }
  if (!is.null(des_comunidad)) {
    insertFields <- c(insertFields, "des_comunidad")
    insertValues <- c(insertValues, des_comunidad)
  }

  if (exists('testNewAdded', where = globalenv()) && get('testNewAdded'))
  {
    assign('testNewAdded', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    insertDf[nrow(insertDf) + 1,] <<- c('tba_comunidad_acred', comment)
  }
  statement <- paste0("INSERT INTO tba_comunidad_acred (", paste(insertFields, collapse = ", "), ") VALUES ('", paste(insertValues, collapse = "', '"), "');")
  insertDf[nrow(insertDf) + 1,] <<- c('tba_comunidad_acred', statement)
  invisible(statement)
}

add_tba_departamentos <- function(id, cod_departamento, des_departamento) {
  defaults <- get('tba_departamentos', envir = defaultValues)
  insertFields <- c()
  insertValues <- c()
  if (missing(id)) {
    id <- defaults$id
  }
  if (!is.null(id)) {
    insertFields <- c(insertFields, "id")
    insertValues <- c(insertValues, id)
  }

  if (missing(cod_departamento)) {
    cod_departamento <- defaults$cod_departamento
  }
  if (!is.null(cod_departamento)) {
    insertFields <- c(insertFields, "cod_departamento")
    insertValues <- c(insertValues, cod_departamento)
  }

  if (missing(des_departamento)) {
    des_departamento <- defaults$des_departamento
  }
  if (!is.null(des_departamento)) {
    insertFields <- c(insertFields, "des_departamento")
    insertValues <- c(insertValues, des_departamento)
  }

  if (exists('testNewAdded', where = globalenv()) && get('testNewAdded'))
  {
    assign('testNewAdded', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    insertDf[nrow(insertDf) + 1,] <<- c('tba_departamentos', comment)
  }
  statement <- paste0("INSERT INTO tba_departamentos (", paste(insertFields, collapse = ", "), ") VALUES ('", paste(insertValues, collapse = "', '"), "');")
  insertDf[nrow(insertDf) + 1,] <<- c('tba_departamentos', statement)
  invisible(statement)
}

add_tba_est_salud <- function(id, cod_est_salud, des_est_salud) {
  defaults <- get('tba_est_salud', envir = defaultValues)
  insertFields <- c()
  insertValues <- c()
  if (missing(id)) {
    id <- defaults$id
  }
  if (!is.null(id)) {
    insertFields <- c(insertFields, "id")
    insertValues <- c(insertValues, id)
  }

  if (missing(cod_est_salud)) {
    cod_est_salud <- defaults$cod_est_salud
  }
  if (!is.null(cod_est_salud)) {
    insertFields <- c(insertFields, "cod_est_salud")
    insertValues <- c(insertValues, cod_est_salud)
  }

  if (missing(des_est_salud)) {
    des_est_salud <- defaults$des_est_salud
  }
  if (!is.null(des_est_salud)) {
    insertFields <- c(insertFields, "des_est_salud")
    insertValues <- c(insertValues, des_est_salud)
  }

  if (exists('testNewAdded', where = globalenv()) && get('testNewAdded'))
  {
    assign('testNewAdded', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    insertDf[nrow(insertDf) + 1,] <<- c('tba_est_salud', comment)
  }
  statement <- paste0("INSERT INTO tba_est_salud (", paste(insertFields, collapse = ", "), ") VALUES ('", paste(insertValues, collapse = "', '"), "');")
  insertDf[nrow(insertDf) + 1,] <<- c('tba_est_salud', statement)
  invisible(statement)
}

add_tba_modalidad <- function(id, cod_modalidad, des_modalidad) {
  defaults <- get('tba_modalidad', envir = defaultValues)
  insertFields <- c()
  insertValues <- c()
  if (missing(id)) {
    id <- defaults$id
  }
  if (!is.null(id)) {
    insertFields <- c(insertFields, "id")
    insertValues <- c(insertValues, id)
  }

  if (missing(cod_modalidad)) {
    cod_modalidad <- defaults$cod_modalidad
  }
  if (!is.null(cod_modalidad)) {
    insertFields <- c(insertFields, "cod_modalidad")
    insertValues <- c(insertValues, cod_modalidad)
  }

  if (missing(des_modalidad)) {
    des_modalidad <- defaults$des_modalidad
  }
  if (!is.null(des_modalidad)) {
    insertFields <- c(insertFields, "des_modalidad")
    insertValues <- c(insertValues, des_modalidad)
  }

  if (exists('testNewAdded', where = globalenv()) && get('testNewAdded'))
  {
    assign('testNewAdded', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    insertDf[nrow(insertDf) + 1,] <<- c('tba_modalidad', comment)
  }
  statement <- paste0("INSERT INTO tba_modalidad (", paste(insertFields, collapse = ", "), ") VALUES ('", paste(insertValues, collapse = "', '"), "');")
  insertDf[nrow(insertDf) + 1,] <<- c('tba_modalidad', statement)
  invisible(statement)
}

add_tba_mot_cierre <- function(id, cod_motivo_cierre, des_motivo_cierre) {
  defaults <- get('tba_mot_cierre', envir = defaultValues)
  insertFields <- c()
  insertValues <- c()
  if (missing(id)) {
    id <- defaults$id
  }
  if (!is.null(id)) {
    insertFields <- c(insertFields, "id")
    insertValues <- c(insertValues, id)
  }

  if (missing(cod_motivo_cierre)) {
    cod_motivo_cierre <- defaults$cod_motivo_cierre
  }
  if (!is.null(cod_motivo_cierre)) {
    insertFields <- c(insertFields, "cod_motivo_cierre")
    insertValues <- c(insertValues, cod_motivo_cierre)
  }

  if (missing(des_motivo_cierre)) {
    des_motivo_cierre <- defaults$des_motivo_cierre
  }
  if (!is.null(des_motivo_cierre)) {
    insertFields <- c(insertFields, "des_motivo_cierre")
    insertValues <- c(insertValues, des_motivo_cierre)
  }

  if (exists('testNewAdded', where = globalenv()) && get('testNewAdded'))
  {
    assign('testNewAdded', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    insertDf[nrow(insertDf) + 1,] <<- c('tba_mot_cierre', comment)
  }
  statement <- paste0("INSERT INTO tba_mot_cierre (", paste(insertFields, collapse = ", "), ") VALUES ('", paste(insertValues, collapse = "', '"), "');")
  insertDf[nrow(insertDf) + 1,] <<- c('tba_mot_cierre', statement)
  invisible(statement)
}

add_tba_mot_urgencia <- function(id, cod_motivo_urg, des_motivo_urg) {
  defaults <- get('tba_mot_urgencia', envir = defaultValues)
  insertFields <- c()
  insertValues <- c()
  if (missing(id)) {
    id <- defaults$id
  }
  if (!is.null(id)) {
    insertFields <- c(insertFields, "id")
    insertValues <- c(insertValues, id)
  }

  if (missing(cod_motivo_urg)) {
    cod_motivo_urg <- defaults$cod_motivo_urg
  }
  if (!is.null(cod_motivo_urg)) {
    insertFields <- c(insertFields, "cod_motivo_urg")
    insertValues <- c(insertValues, cod_motivo_urg)
  }

  if (missing(des_motivo_urg)) {
    des_motivo_urg <- defaults$des_motivo_urg
  }
  if (!is.null(des_motivo_urg)) {
    insertFields <- c(insertFields, "des_motivo_urg")
    insertValues <- c(insertValues, des_motivo_urg)
  }

  if (exists('testNewAdded', where = globalenv()) && get('testNewAdded'))
  {
    assign('testNewAdded', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    insertDf[nrow(insertDf) + 1,] <<- c('tba_mot_urgencia', comment)
  }
  statement <- paste0("INSERT INTO tba_mot_urgencia (", paste(insertFields, collapse = ", "), ") VALUES ('", paste(insertValues, collapse = "', '"), "');")
  insertDf[nrow(insertDf) + 1,] <<- c('tba_mot_urgencia', statement)
  invisible(statement)
}

add_tba_pais_acred <- function(id, cod_pais, des_pais) {
  defaults <- get('tba_pais_acred', envir = defaultValues)
  insertFields <- c()
  insertValues <- c()
  if (missing(id)) {
    id <- defaults$id
  }
  if (!is.null(id)) {
    insertFields <- c(insertFields, "id")
    insertValues <- c(insertValues, id)
  }

  if (missing(cod_pais)) {
    cod_pais <- defaults$cod_pais
  }
  if (!is.null(cod_pais)) {
    insertFields <- c(insertFields, "cod_pais")
    insertValues <- c(insertValues, cod_pais)
  }

  if (missing(des_pais)) {
    des_pais <- defaults$des_pais
  }
  if (!is.null(des_pais)) {
    insertFields <- c(insertFields, "des_pais")
    insertValues <- c(insertValues, des_pais)
  }

  if (exists('testNewAdded', where = globalenv()) && get('testNewAdded'))
  {
    assign('testNewAdded', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    insertDf[nrow(insertDf) + 1,] <<- c('tba_pais_acred', comment)
  }
  statement <- paste0("INSERT INTO tba_pais_acred (", paste(insertFields, collapse = ", "), ") VALUES ('", paste(insertValues, collapse = "', '"), "');")
  insertDf[nrow(insertDf) + 1,] <<- c('tba_pais_acred', statement)
  invisible(statement)
}

add_tba_presfarma <- function(id, cod_presfarma, des_presfarma) {
  defaults <- get('tba_presfarma', envir = defaultValues)
  insertFields <- c()
  insertValues <- c()
  if (missing(id)) {
    id <- defaults$id
  }
  if (!is.null(id)) {
    insertFields <- c(insertFields, "id")
    insertValues <- c(insertValues, id)
  }

  if (missing(cod_presfarma)) {
    cod_presfarma <- defaults$cod_presfarma
  }
  if (!is.null(cod_presfarma)) {
    insertFields <- c(insertFields, "cod_presfarma")
    insertValues <- c(insertValues, cod_presfarma)
  }

  if (missing(des_presfarma)) {
    des_presfarma <- defaults$des_presfarma
  }
  if (!is.null(des_presfarma)) {
    insertFields <- c(insertFields, "des_presfarma")
    insertValues <- c(insertValues, des_presfarma)
  }

  if (exists('testNewAdded', where = globalenv()) && get('testNewAdded'))
  {
    assign('testNewAdded', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    insertDf[nrow(insertDf) + 1,] <<- c('tba_presfarma', comment)
  }
  statement <- paste0("INSERT INTO tba_presfarma (", paste(insertFields, collapse = ", "), ") VALUES ('", paste(insertValues, collapse = "', '"), "');")
  insertDf[nrow(insertDf) + 1,] <<- c('tba_presfarma', statement)
  invisible(statement)
}

add_tba_prinactivo <- function(id, cod_prinactivo, des_prinactivo) {
  defaults <- get('tba_prinactivo', envir = defaultValues)
  insertFields <- c()
  insertValues <- c()
  if (missing(id)) {
    id <- defaults$id
  }
  if (!is.null(id)) {
    insertFields <- c(insertFields, "id")
    insertValues <- c(insertValues, id)
  }

  if (missing(cod_prinactivo)) {
    cod_prinactivo <- defaults$cod_prinactivo
  }
  if (!is.null(cod_prinactivo)) {
    insertFields <- c(insertFields, "cod_prinactivo")
    insertValues <- c(insertValues, cod_prinactivo)
  }

  if (missing(des_prinactivo)) {
    des_prinactivo <- defaults$des_prinactivo
  }
  if (!is.null(des_prinactivo)) {
    insertFields <- c(insertFields, "des_prinactivo")
    insertValues <- c(insertValues, des_prinactivo)
  }

  if (exists('testNewAdded', where = globalenv()) && get('testNewAdded'))
  {
    assign('testNewAdded', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    insertDf[nrow(insertDf) + 1,] <<- c('tba_prinactivo', comment)
  }
  statement <- paste0("INSERT INTO tba_prinactivo (", paste(insertFields, collapse = ", "), ") VALUES ('", paste(insertValues, collapse = "', '"), "');")
  insertDf[nrow(insertDf) + 1,] <<- c('tba_prinactivo', statement)
  invisible(statement)
}

add_tba_raf <- function(id, cod_raf, des_raf) {
  defaults <- get('tba_raf', envir = defaultValues)
  insertFields <- c()
  insertValues <- c()
  if (missing(id)) {
    id <- defaults$id
  }
  if (!is.null(id)) {
    insertFields <- c(insertFields, "id")
    insertValues <- c(insertValues, id)
  }

  if (missing(cod_raf)) {
    cod_raf <- defaults$cod_raf
  }
  if (!is.null(cod_raf)) {
    insertFields <- c(insertFields, "cod_raf")
    insertValues <- c(insertValues, cod_raf)
  }

  if (missing(des_raf)) {
    des_raf <- defaults$des_raf
  }
  if (!is.null(des_raf)) {
    insertFields <- c(insertFields, "des_raf")
    insertValues <- c(insertValues, des_raf)
  }

  if (exists('testNewAdded', where = globalenv()) && get('testNewAdded'))
  {
    assign('testNewAdded', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    insertDf[nrow(insertDf) + 1,] <<- c('tba_raf', comment)
  }
  statement <- paste0("INSERT INTO tba_raf (", paste(insertFields, collapse = ", "), ") VALUES ('", paste(insertValues, collapse = "', '"), "');")
  insertDf[nrow(insertDf) + 1,] <<- c('tba_raf', statement)
  invisible(statement)
}

add_tba_serv_homologado <- function(id, cod_serv_homologado, des_serv_homologado) {
  defaults <- get('tba_serv_homologado', envir = defaultValues)
  insertFields <- c()
  insertValues <- c()
  if (missing(id)) {
    id <- defaults$id
  }
  if (!is.null(id)) {
    insertFields <- c(insertFields, "id")
    insertValues <- c(insertValues, id)
  }

  if (missing(cod_serv_homologado)) {
    cod_serv_homologado <- defaults$cod_serv_homologado
  }
  if (!is.null(cod_serv_homologado)) {
    insertFields <- c(insertFields, "cod_serv_homologado")
    insertValues <- c(insertValues, cod_serv_homologado)
  }

  if (missing(des_serv_homologado)) {
    des_serv_homologado <- defaults$des_serv_homologado
  }
  if (!is.null(des_serv_homologado)) {
    insertFields <- c(insertFields, "des_serv_homologado")
    insertValues <- c(insertValues, des_serv_homologado)
  }

  if (exists('testNewAdded', where = globalenv()) && get('testNewAdded'))
  {
    assign('testNewAdded', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    insertDf[nrow(insertDf) + 1,] <<- c('tba_serv_homologado', comment)
  }
  statement <- paste0("INSERT INTO tba_serv_homologado (", paste(insertFields, collapse = ", "), ") VALUES ('", paste(insertValues, collapse = "', '"), "');")
  insertDf[nrow(insertDf) + 1,] <<- c('tba_serv_homologado', statement)
  invisible(statement)
}

add_tba_tip_baja <- function(id, cod_tipo_baja, des_tipo_baja) {
  defaults <- get('tba_tip_baja', envir = defaultValues)
  insertFields <- c()
  insertValues <- c()
  if (missing(id)) {
    id <- defaults$id
  }
  if (!is.null(id)) {
    insertFields <- c(insertFields, "id")
    insertValues <- c(insertValues, id)
  }

  if (missing(cod_tipo_baja)) {
    cod_tipo_baja <- defaults$cod_tipo_baja
  }
  if (!is.null(cod_tipo_baja)) {
    insertFields <- c(insertFields, "cod_tipo_baja")
    insertValues <- c(insertValues, cod_tipo_baja)
  }

  if (missing(des_tipo_baja)) {
    des_tipo_baja <- defaults$des_tipo_baja
  }
  if (!is.null(des_tipo_baja)) {
    insertFields <- c(insertFields, "des_tipo_baja")
    insertValues <- c(insertValues, des_tipo_baja)
  }

  if (exists('testNewAdded', where = globalenv()) && get('testNewAdded'))
  {
    assign('testNewAdded', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    insertDf[nrow(insertDf) + 1,] <<- c('tba_tip_baja', comment)
  }
  statement <- paste0("INSERT INTO tba_tip_baja (", paste(insertFields, collapse = ", "), ") VALUES ('", paste(insertValues, collapse = "', '"), "');")
  insertDf[nrow(insertDf) + 1,] <<- c('tba_tip_baja', statement)
  invisible(statement)
}

add_tba_tip_prest <- function(id, cod_prestacion, des_prestacion) {
  defaults <- get('tba_tip_prest', envir = defaultValues)
  insertFields <- c()
  insertValues <- c()
  if (missing(id)) {
    id <- defaults$id
  }
  if (!is.null(id)) {
    insertFields <- c(insertFields, "id")
    insertValues <- c(insertValues, id)
  }

  if (missing(cod_prestacion)) {
    cod_prestacion <- defaults$cod_prestacion
  }
  if (!is.null(cod_prestacion)) {
    insertFields <- c(insertFields, "cod_prestacion")
    insertValues <- c(insertValues, cod_prestacion)
  }

  if (missing(des_prestacion)) {
    des_prestacion <- defaults$des_prestacion
  }
  if (!is.null(des_prestacion)) {
    insertFields <- c(insertFields, "des_prestacion")
    insertValues <- c(insertValues, des_prestacion)
  }

  if (exists('testNewAdded', where = globalenv()) && get('testNewAdded'))
  {
    assign('testNewAdded', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    insertDf[nrow(insertDf) + 1,] <<- c('tba_tip_prest', comment)
  }
  statement <- paste0("INSERT INTO tba_tip_prest (", paste(insertFields, collapse = ", "), ") VALUES ('", paste(insertValues, collapse = "', '"), "');")
  insertDf[nrow(insertDf) + 1,] <<- c('tba_tip_prest', statement)
  invisible(statement)
}

add_tba_tip_variables <- function(id, cod_variable_clinic, des_variable_clinic) {
  defaults <- get('tba_tip_variables', envir = defaultValues)
  insertFields <- c()
  insertValues <- c()
  if (missing(id)) {
    id <- defaults$id
  }
  if (!is.null(id)) {
    insertFields <- c(insertFields, "id")
    insertValues <- c(insertValues, id)
  }

  if (missing(cod_variable_clinic)) {
    cod_variable_clinic <- defaults$cod_variable_clinic
  }
  if (!is.null(cod_variable_clinic)) {
    insertFields <- c(insertFields, "cod_variable_clinic")
    insertValues <- c(insertValues, cod_variable_clinic)
  }

  if (missing(des_variable_clinic)) {
    des_variable_clinic <- defaults$des_variable_clinic
  }
  if (!is.null(des_variable_clinic)) {
    insertFields <- c(insertFields, "des_variable_clinic")
    insertValues <- c(insertValues, des_variable_clinic)
  }

  if (exists('testNewAdded', where = globalenv()) && get('testNewAdded'))
  {
    assign('testNewAdded', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    insertDf[nrow(insertDf) + 1,] <<- c('tba_tip_variables', comment)
  }
  statement <- paste0("INSERT INTO tba_tip_variables (", paste(insertFields, collapse = ", "), ") VALUES ('", paste(insertValues, collapse = "', '"), "');")
  insertDf[nrow(insertDf) + 1,] <<- c('tba_tip_variables', statement)
  invisible(statement)
}

add_tba_ud_medidas <- function(id, cod_ud_medida, des_ud_medida) {
  defaults <- get('tba_ud_medidas', envir = defaultValues)
  insertFields <- c()
  insertValues <- c()
  if (missing(id)) {
    id <- defaults$id
  }
  if (!is.null(id)) {
    insertFields <- c(insertFields, "id")
    insertValues <- c(insertValues, id)
  }

  if (missing(cod_ud_medida)) {
    cod_ud_medida <- defaults$cod_ud_medida
  }
  if (!is.null(cod_ud_medida)) {
    insertFields <- c(insertFields, "cod_ud_medida")
    insertValues <- c(insertValues, cod_ud_medida)
  }

  if (missing(des_ud_medida)) {
    des_ud_medida <- defaults$des_ud_medida
  }
  if (!is.null(des_ud_medida)) {
    insertFields <- c(insertFields, "des_ud_medida")
    insertValues <- c(insertValues, des_ud_medida)
  }

  if (exists('testNewAdded', where = globalenv()) && get('testNewAdded'))
  {
    assign('testNewAdded', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    insertDf[nrow(insertDf) + 1,] <<- c('tba_ud_medidas', comment)
  }
  statement <- paste0("INSERT INTO tba_ud_medidas (", paste(insertFields, collapse = ", "), ") VALUES ('", paste(insertValues, collapse = "', '"), "');")
  insertDf[nrow(insertDf) + 1,] <<- c('tba_ud_medidas', statement)
  invisible(statement)
}

expect_person <- function(person_id, person_source_value, gender_concept_id, gender_source_value, year_of_birth, month_of_birth, day_of_birth, time_of_birth, race_concept_id, ethnicity_concept_id, location_id, provider_id, care_site_id, gender_source_concept_id, race_source_value, race_source_concept_id, ethnicity_source_value, ethnicity_source_concept_id) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect person' AS test, CASE WHEN(SELECT COUNT(*) FROM person WHERE")
  first <- TRUE
  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(person_id)) {
      statement <- paste0(statement, ' person_id IS NULL')
    } else if (is(person_id, 'subQuery')){
      statement <- paste0(statement, ' person_id = (', as.character(person_id), ')')
    } else {
      statement <- paste0(statement, " person_id = '", person_id,"'")
    }
  }

  if (!missing(person_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(person_source_value)) {
      statement <- paste0(statement, ' person_source_value IS NULL')
    } else if (is(person_source_value, 'subQuery')){
      statement <- paste0(statement, ' person_source_value = (', as.character(person_source_value), ')')
    } else {
      statement <- paste0(statement, " person_source_value = '", person_source_value,"'")
    }
  }

  if (!missing(gender_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(gender_concept_id)) {
      statement <- paste0(statement, ' gender_concept_id IS NULL')
    } else if (is(gender_concept_id, 'subQuery')){
      statement <- paste0(statement, ' gender_concept_id = (', as.character(gender_concept_id), ')')
    } else {
      statement <- paste0(statement, " gender_concept_id = '", gender_concept_id,"'")
    }
  }

  if (!missing(gender_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(gender_source_value)) {
      statement <- paste0(statement, ' gender_source_value IS NULL')
    } else if (is(gender_source_value, 'subQuery')){
      statement <- paste0(statement, ' gender_source_value = (', as.character(gender_source_value), ')')
    } else {
      statement <- paste0(statement, " gender_source_value = '", gender_source_value,"'")
    }
  }

  if (!missing(year_of_birth)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(year_of_birth)) {
      statement <- paste0(statement, ' year_of_birth IS NULL')
    } else if (is(year_of_birth, 'subQuery')){
      statement <- paste0(statement, ' year_of_birth = (', as.character(year_of_birth), ')')
    } else {
      statement <- paste0(statement, " year_of_birth = '", year_of_birth,"'")
    }
  }

  if (!missing(month_of_birth)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(month_of_birth)) {
      statement <- paste0(statement, ' month_of_birth IS NULL')
    } else if (is(month_of_birth, 'subQuery')){
      statement <- paste0(statement, ' month_of_birth = (', as.character(month_of_birth), ')')
    } else {
      statement <- paste0(statement, " month_of_birth = '", month_of_birth,"'")
    }
  }

  if (!missing(day_of_birth)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(day_of_birth)) {
      statement <- paste0(statement, ' day_of_birth IS NULL')
    } else if (is(day_of_birth, 'subQuery')){
      statement <- paste0(statement, ' day_of_birth = (', as.character(day_of_birth), ')')
    } else {
      statement <- paste0(statement, " day_of_birth = '", day_of_birth,"'")
    }
  }

  if (!missing(time_of_birth)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(time_of_birth)) {
      statement <- paste0(statement, ' time_of_birth IS NULL')
    } else if (is(time_of_birth, 'subQuery')){
      statement <- paste0(statement, ' time_of_birth = (', as.character(time_of_birth), ')')
    } else {
      statement <- paste0(statement, " time_of_birth = '", time_of_birth,"'")
    }
  }

  if (!missing(race_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(race_concept_id)) {
      statement <- paste0(statement, ' race_concept_id IS NULL')
    } else if (is(race_concept_id, 'subQuery')){
      statement <- paste0(statement, ' race_concept_id = (', as.character(race_concept_id), ')')
    } else {
      statement <- paste0(statement, " race_concept_id = '", race_concept_id,"'")
    }
  }

  if (!missing(ethnicity_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(ethnicity_concept_id)) {
      statement <- paste0(statement, ' ethnicity_concept_id IS NULL')
    } else if (is(ethnicity_concept_id, 'subQuery')){
      statement <- paste0(statement, ' ethnicity_concept_id = (', as.character(ethnicity_concept_id), ')')
    } else {
      statement <- paste0(statement, " ethnicity_concept_id = '", ethnicity_concept_id,"'")
    }
  }

  if (!missing(location_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(location_id)) {
      statement <- paste0(statement, ' location_id IS NULL')
    } else if (is(location_id, 'subQuery')){
      statement <- paste0(statement, ' location_id = (', as.character(location_id), ')')
    } else {
      statement <- paste0(statement, " location_id = '", location_id,"'")
    }
  }

  if (!missing(provider_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(provider_id)) {
      statement <- paste0(statement, ' provider_id IS NULL')
    } else if (is(provider_id, 'subQuery')){
      statement <- paste0(statement, ' provider_id = (', as.character(provider_id), ')')
    } else {
      statement <- paste0(statement, " provider_id = '", provider_id,"'")
    }
  }

  if (!missing(care_site_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(care_site_id)) {
      statement <- paste0(statement, ' care_site_id IS NULL')
    } else if (is(care_site_id, 'subQuery')){
      statement <- paste0(statement, ' care_site_id = (', as.character(care_site_id), ')')
    } else {
      statement <- paste0(statement, " care_site_id = '", care_site_id,"'")
    }
  }

  if (!missing(gender_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(gender_source_concept_id)) {
      statement <- paste0(statement, ' gender_source_concept_id IS NULL')
    } else if (is(gender_source_concept_id, 'subQuery')){
      statement <- paste0(statement, ' gender_source_concept_id = (', as.character(gender_source_concept_id), ')')
    } else {
      statement <- paste0(statement, " gender_source_concept_id = '", gender_source_concept_id,"'")
    }
  }

  if (!missing(race_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(race_source_value)) {
      statement <- paste0(statement, ' race_source_value IS NULL')
    } else if (is(race_source_value, 'subQuery')){
      statement <- paste0(statement, ' race_source_value = (', as.character(race_source_value), ')')
    } else {
      statement <- paste0(statement, " race_source_value = '", race_source_value,"'")
    }
  }

  if (!missing(race_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(race_source_concept_id)) {
      statement <- paste0(statement, ' race_source_concept_id IS NULL')
    } else if (is(race_source_concept_id, 'subQuery')){
      statement <- paste0(statement, ' race_source_concept_id = (', as.character(race_source_concept_id), ')')
    } else {
      statement <- paste0(statement, " race_source_concept_id = '", race_source_concept_id,"'")
    }
  }

  if (!missing(ethnicity_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(ethnicity_source_value)) {
      statement <- paste0(statement, ' ethnicity_source_value IS NULL')
    } else if (is(ethnicity_source_value, 'subQuery')){
      statement <- paste0(statement, ' ethnicity_source_value = (', as.character(ethnicity_source_value), ')')
    } else {
      statement <- paste0(statement, " ethnicity_source_value = '", ethnicity_source_value,"'")
    }
  }

  if (!missing(ethnicity_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(ethnicity_source_concept_id)) {
      statement <- paste0(statement, ' ethnicity_source_concept_id IS NULL')
    } else if (is(ethnicity_source_concept_id, 'subQuery')){
      statement <- paste0(statement, ' ethnicity_source_concept_id = (', as.character(ethnicity_source_concept_id), ')')
    } else {
      statement <- paste0(statement, " ethnicity_source_concept_id = '", ethnicity_source_concept_id,"'")
    }
  }

  statement <- paste0(statement, ") = 0 THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_observation_period <- function(observation_period_id, person_id, observation_period_start_date, observation_period_end_date, period_type_concept_id) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect observation_period' AS test, CASE WHEN(SELECT COUNT(*) FROM observation_period WHERE")
  first <- TRUE
  if (!missing(observation_period_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(observation_period_id)) {
      statement <- paste0(statement, ' observation_period_id IS NULL')
    } else if (is(observation_period_id, 'subQuery')){
      statement <- paste0(statement, ' observation_period_id = (', as.character(observation_period_id), ')')
    } else {
      statement <- paste0(statement, " observation_period_id = '", observation_period_id,"'")
    }
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(person_id)) {
      statement <- paste0(statement, ' person_id IS NULL')
    } else if (is(person_id, 'subQuery')){
      statement <- paste0(statement, ' person_id = (', as.character(person_id), ')')
    } else {
      statement <- paste0(statement, " person_id = '", person_id,"'")
    }
  }

  if (!missing(observation_period_start_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(observation_period_start_date)) {
      statement <- paste0(statement, ' observation_period_start_date IS NULL')
    } else if (is(observation_period_start_date, 'subQuery')){
      statement <- paste0(statement, ' observation_period_start_date = (', as.character(observation_period_start_date), ')')
    } else {
      statement <- paste0(statement, " observation_period_start_date = '", observation_period_start_date,"'")
    }
  }

  if (!missing(observation_period_end_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(observation_period_end_date)) {
      statement <- paste0(statement, ' observation_period_end_date IS NULL')
    } else if (is(observation_period_end_date, 'subQuery')){
      statement <- paste0(statement, ' observation_period_end_date = (', as.character(observation_period_end_date), ')')
    } else {
      statement <- paste0(statement, " observation_period_end_date = '", observation_period_end_date,"'")
    }
  }

  if (!missing(period_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(period_type_concept_id)) {
      statement <- paste0(statement, ' period_type_concept_id IS NULL')
    } else if (is(period_type_concept_id, 'subQuery')){
      statement <- paste0(statement, ' period_type_concept_id = (', as.character(period_type_concept_id), ')')
    } else {
      statement <- paste0(statement, " period_type_concept_id = '", period_type_concept_id,"'")
    }
  }

  statement <- paste0(statement, ") = 0 THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_visit_occurrence <- function(visit_occurrence_id, person_id, visit_concept_id, visit_start_date, visit_start_time, visit_end_date, visit_end_time, visit_type_concept_id, provider_id, care_site_id, visit_source_value, visit_source_concept_id) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect visit_occurrence' AS test, CASE WHEN(SELECT COUNT(*) FROM visit_occurrence WHERE")
  first <- TRUE
  if (!missing(visit_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(visit_occurrence_id)) {
      statement <- paste0(statement, ' visit_occurrence_id IS NULL')
    } else if (is(visit_occurrence_id, 'subQuery')){
      statement <- paste0(statement, ' visit_occurrence_id = (', as.character(visit_occurrence_id), ')')
    } else {
      statement <- paste0(statement, " visit_occurrence_id = '", visit_occurrence_id,"'")
    }
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(person_id)) {
      statement <- paste0(statement, ' person_id IS NULL')
    } else if (is(person_id, 'subQuery')){
      statement <- paste0(statement, ' person_id = (', as.character(person_id), ')')
    } else {
      statement <- paste0(statement, " person_id = '", person_id,"'")
    }
  }

  if (!missing(visit_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(visit_concept_id)) {
      statement <- paste0(statement, ' visit_concept_id IS NULL')
    } else if (is(visit_concept_id, 'subQuery')){
      statement <- paste0(statement, ' visit_concept_id = (', as.character(visit_concept_id), ')')
    } else {
      statement <- paste0(statement, " visit_concept_id = '", visit_concept_id,"'")
    }
  }

  if (!missing(visit_start_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(visit_start_date)) {
      statement <- paste0(statement, ' visit_start_date IS NULL')
    } else if (is(visit_start_date, 'subQuery')){
      statement <- paste0(statement, ' visit_start_date = (', as.character(visit_start_date), ')')
    } else {
      statement <- paste0(statement, " visit_start_date = '", visit_start_date,"'")
    }
  }

  if (!missing(visit_start_time)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(visit_start_time)) {
      statement <- paste0(statement, ' visit_start_time IS NULL')
    } else if (is(visit_start_time, 'subQuery')){
      statement <- paste0(statement, ' visit_start_time = (', as.character(visit_start_time), ')')
    } else {
      statement <- paste0(statement, " visit_start_time = '", visit_start_time,"'")
    }
  }

  if (!missing(visit_end_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(visit_end_date)) {
      statement <- paste0(statement, ' visit_end_date IS NULL')
    } else if (is(visit_end_date, 'subQuery')){
      statement <- paste0(statement, ' visit_end_date = (', as.character(visit_end_date), ')')
    } else {
      statement <- paste0(statement, " visit_end_date = '", visit_end_date,"'")
    }
  }

  if (!missing(visit_end_time)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(visit_end_time)) {
      statement <- paste0(statement, ' visit_end_time IS NULL')
    } else if (is(visit_end_time, 'subQuery')){
      statement <- paste0(statement, ' visit_end_time = (', as.character(visit_end_time), ')')
    } else {
      statement <- paste0(statement, " visit_end_time = '", visit_end_time,"'")
    }
  }

  if (!missing(visit_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(visit_type_concept_id)) {
      statement <- paste0(statement, ' visit_type_concept_id IS NULL')
    } else if (is(visit_type_concept_id, 'subQuery')){
      statement <- paste0(statement, ' visit_type_concept_id = (', as.character(visit_type_concept_id), ')')
    } else {
      statement <- paste0(statement, " visit_type_concept_id = '", visit_type_concept_id,"'")
    }
  }

  if (!missing(provider_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(provider_id)) {
      statement <- paste0(statement, ' provider_id IS NULL')
    } else if (is(provider_id, 'subQuery')){
      statement <- paste0(statement, ' provider_id = (', as.character(provider_id), ')')
    } else {
      statement <- paste0(statement, " provider_id = '", provider_id,"'")
    }
  }

  if (!missing(care_site_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(care_site_id)) {
      statement <- paste0(statement, ' care_site_id IS NULL')
    } else if (is(care_site_id, 'subQuery')){
      statement <- paste0(statement, ' care_site_id = (', as.character(care_site_id), ')')
    } else {
      statement <- paste0(statement, " care_site_id = '", care_site_id,"'")
    }
  }

  if (!missing(visit_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(visit_source_value)) {
      statement <- paste0(statement, ' visit_source_value IS NULL')
    } else if (is(visit_source_value, 'subQuery')){
      statement <- paste0(statement, ' visit_source_value = (', as.character(visit_source_value), ')')
    } else {
      statement <- paste0(statement, " visit_source_value = '", visit_source_value,"'")
    }
  }

  if (!missing(visit_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(visit_source_concept_id)) {
      statement <- paste0(statement, ' visit_source_concept_id IS NULL')
    } else if (is(visit_source_concept_id, 'subQuery')){
      statement <- paste0(statement, ' visit_source_concept_id = (', as.character(visit_source_concept_id), ')')
    } else {
      statement <- paste0(statement, " visit_source_concept_id = '", visit_source_concept_id,"'")
    }
  }

  statement <- paste0(statement, ") = 0 THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_death <- function(person_id, death_date, death_type_concept_id, cause_concept_id, cause_source_value, cause_source_concept_id) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect death' AS test, CASE WHEN(SELECT COUNT(*) FROM death WHERE")
  first <- TRUE
  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(person_id)) {
      statement <- paste0(statement, ' person_id IS NULL')
    } else if (is(person_id, 'subQuery')){
      statement <- paste0(statement, ' person_id = (', as.character(person_id), ')')
    } else {
      statement <- paste0(statement, " person_id = '", person_id,"'")
    }
  }

  if (!missing(death_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(death_date)) {
      statement <- paste0(statement, ' death_date IS NULL')
    } else if (is(death_date, 'subQuery')){
      statement <- paste0(statement, ' death_date = (', as.character(death_date), ')')
    } else {
      statement <- paste0(statement, " death_date = '", death_date,"'")
    }
  }

  if (!missing(death_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(death_type_concept_id)) {
      statement <- paste0(statement, ' death_type_concept_id IS NULL')
    } else if (is(death_type_concept_id, 'subQuery')){
      statement <- paste0(statement, ' death_type_concept_id = (', as.character(death_type_concept_id), ')')
    } else {
      statement <- paste0(statement, " death_type_concept_id = '", death_type_concept_id,"'")
    }
  }

  if (!missing(cause_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cause_concept_id)) {
      statement <- paste0(statement, ' cause_concept_id IS NULL')
    } else if (is(cause_concept_id, 'subQuery')){
      statement <- paste0(statement, ' cause_concept_id = (', as.character(cause_concept_id), ')')
    } else {
      statement <- paste0(statement, " cause_concept_id = '", cause_concept_id,"'")
    }
  }

  if (!missing(cause_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cause_source_value)) {
      statement <- paste0(statement, ' cause_source_value IS NULL')
    } else if (is(cause_source_value, 'subQuery')){
      statement <- paste0(statement, ' cause_source_value = (', as.character(cause_source_value), ')')
    } else {
      statement <- paste0(statement, " cause_source_value = '", cause_source_value,"'")
    }
  }

  if (!missing(cause_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cause_source_concept_id)) {
      statement <- paste0(statement, ' cause_source_concept_id IS NULL')
    } else if (is(cause_source_concept_id, 'subQuery')){
      statement <- paste0(statement, ' cause_source_concept_id = (', as.character(cause_source_concept_id), ')')
    } else {
      statement <- paste0(statement, " cause_source_concept_id = '", cause_source_concept_id,"'")
    }
  }

  statement <- paste0(statement, ") = 0 THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_condition_occurrence <- function(condition_occurrence_id, person_id, condition_start_date, condition_end_date, condition_concept_id, condition_source_value, condition_type_concept_id, stop_reason, provider_id, visit_occurrence_id, condition_source_concept_id) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect condition_occurrence' AS test, CASE WHEN(SELECT COUNT(*) FROM condition_occurrence WHERE")
  first <- TRUE
  if (!missing(condition_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(condition_occurrence_id)) {
      statement <- paste0(statement, ' condition_occurrence_id IS NULL')
    } else if (is(condition_occurrence_id, 'subQuery')){
      statement <- paste0(statement, ' condition_occurrence_id = (', as.character(condition_occurrence_id), ')')
    } else {
      statement <- paste0(statement, " condition_occurrence_id = '", condition_occurrence_id,"'")
    }
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(person_id)) {
      statement <- paste0(statement, ' person_id IS NULL')
    } else if (is(person_id, 'subQuery')){
      statement <- paste0(statement, ' person_id = (', as.character(person_id), ')')
    } else {
      statement <- paste0(statement, " person_id = '", person_id,"'")
    }
  }

  if (!missing(condition_start_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(condition_start_date)) {
      statement <- paste0(statement, ' condition_start_date IS NULL')
    } else if (is(condition_start_date, 'subQuery')){
      statement <- paste0(statement, ' condition_start_date = (', as.character(condition_start_date), ')')
    } else {
      statement <- paste0(statement, " condition_start_date = '", condition_start_date,"'")
    }
  }

  if (!missing(condition_end_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(condition_end_date)) {
      statement <- paste0(statement, ' condition_end_date IS NULL')
    } else if (is(condition_end_date, 'subQuery')){
      statement <- paste0(statement, ' condition_end_date = (', as.character(condition_end_date), ')')
    } else {
      statement <- paste0(statement, " condition_end_date = '", condition_end_date,"'")
    }
  }

  if (!missing(condition_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(condition_concept_id)) {
      statement <- paste0(statement, ' condition_concept_id IS NULL')
    } else if (is(condition_concept_id, 'subQuery')){
      statement <- paste0(statement, ' condition_concept_id = (', as.character(condition_concept_id), ')')
    } else {
      statement <- paste0(statement, " condition_concept_id = '", condition_concept_id,"'")
    }
  }

  if (!missing(condition_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(condition_source_value)) {
      statement <- paste0(statement, ' condition_source_value IS NULL')
    } else if (is(condition_source_value, 'subQuery')){
      statement <- paste0(statement, ' condition_source_value = (', as.character(condition_source_value), ')')
    } else {
      statement <- paste0(statement, " condition_source_value = '", condition_source_value,"'")
    }
  }

  if (!missing(condition_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(condition_type_concept_id)) {
      statement <- paste0(statement, ' condition_type_concept_id IS NULL')
    } else if (is(condition_type_concept_id, 'subQuery')){
      statement <- paste0(statement, ' condition_type_concept_id = (', as.character(condition_type_concept_id), ')')
    } else {
      statement <- paste0(statement, " condition_type_concept_id = '", condition_type_concept_id,"'")
    }
  }

  if (!missing(stop_reason)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(stop_reason)) {
      statement <- paste0(statement, ' stop_reason IS NULL')
    } else if (is(stop_reason, 'subQuery')){
      statement <- paste0(statement, ' stop_reason = (', as.character(stop_reason), ')')
    } else {
      statement <- paste0(statement, " stop_reason = '", stop_reason,"'")
    }
  }

  if (!missing(provider_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(provider_id)) {
      statement <- paste0(statement, ' provider_id IS NULL')
    } else if (is(provider_id, 'subQuery')){
      statement <- paste0(statement, ' provider_id = (', as.character(provider_id), ')')
    } else {
      statement <- paste0(statement, " provider_id = '", provider_id,"'")
    }
  }

  if (!missing(visit_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(visit_occurrence_id)) {
      statement <- paste0(statement, ' visit_occurrence_id IS NULL')
    } else if (is(visit_occurrence_id, 'subQuery')){
      statement <- paste0(statement, ' visit_occurrence_id = (', as.character(visit_occurrence_id), ')')
    } else {
      statement <- paste0(statement, " visit_occurrence_id = '", visit_occurrence_id,"'")
    }
  }

  if (!missing(condition_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(condition_source_concept_id)) {
      statement <- paste0(statement, ' condition_source_concept_id IS NULL')
    } else if (is(condition_source_concept_id, 'subQuery')){
      statement <- paste0(statement, ' condition_source_concept_id = (', as.character(condition_source_concept_id), ')')
    } else {
      statement <- paste0(statement, " condition_source_concept_id = '", condition_source_concept_id,"'")
    }
  }

  statement <- paste0(statement, ") = 0 THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_drug_exposure <- function(drug_exposure_id, person_id, drug_source_concept_id, drug_concept_id, drug_source_value, quantity, days_supply, drug_exposure_start_date, drug_exposure_end_date, dose_unit_concept_id, dose_unit_source_value, effective_drug_dose, drug_type_concept_id, sig, stop_reason, refills, route_concept_id, lot_number, provider_id, visit_occurrence_id, route_source_value) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect drug_exposure' AS test, CASE WHEN(SELECT COUNT(*) FROM drug_exposure WHERE")
  first <- TRUE
  if (!missing(drug_exposure_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(drug_exposure_id)) {
      statement <- paste0(statement, ' drug_exposure_id IS NULL')
    } else if (is(drug_exposure_id, 'subQuery')){
      statement <- paste0(statement, ' drug_exposure_id = (', as.character(drug_exposure_id), ')')
    } else {
      statement <- paste0(statement, " drug_exposure_id = '", drug_exposure_id,"'")
    }
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(person_id)) {
      statement <- paste0(statement, ' person_id IS NULL')
    } else if (is(person_id, 'subQuery')){
      statement <- paste0(statement, ' person_id = (', as.character(person_id), ')')
    } else {
      statement <- paste0(statement, " person_id = '", person_id,"'")
    }
  }

  if (!missing(drug_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(drug_source_concept_id)) {
      statement <- paste0(statement, ' drug_source_concept_id IS NULL')
    } else if (is(drug_source_concept_id, 'subQuery')){
      statement <- paste0(statement, ' drug_source_concept_id = (', as.character(drug_source_concept_id), ')')
    } else {
      statement <- paste0(statement, " drug_source_concept_id = '", drug_source_concept_id,"'")
    }
  }

  if (!missing(drug_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(drug_concept_id)) {
      statement <- paste0(statement, ' drug_concept_id IS NULL')
    } else if (is(drug_concept_id, 'subQuery')){
      statement <- paste0(statement, ' drug_concept_id = (', as.character(drug_concept_id), ')')
    } else {
      statement <- paste0(statement, " drug_concept_id = '", drug_concept_id,"'")
    }
  }

  if (!missing(drug_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(drug_source_value)) {
      statement <- paste0(statement, ' drug_source_value IS NULL')
    } else if (is(drug_source_value, 'subQuery')){
      statement <- paste0(statement, ' drug_source_value = (', as.character(drug_source_value), ')')
    } else {
      statement <- paste0(statement, " drug_source_value = '", drug_source_value,"'")
    }
  }

  if (!missing(quantity)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(quantity)) {
      statement <- paste0(statement, ' quantity IS NULL')
    } else if (is(quantity, 'subQuery')){
      statement <- paste0(statement, ' quantity = (', as.character(quantity), ')')
    } else {
      statement <- paste0(statement, " quantity = '", quantity,"'")
    }
  }

  if (!missing(days_supply)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(days_supply)) {
      statement <- paste0(statement, ' days_supply IS NULL')
    } else if (is(days_supply, 'subQuery')){
      statement <- paste0(statement, ' days_supply = (', as.character(days_supply), ')')
    } else {
      statement <- paste0(statement, " days_supply = '", days_supply,"'")
    }
  }

  if (!missing(drug_exposure_start_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(drug_exposure_start_date)) {
      statement <- paste0(statement, ' drug_exposure_start_date IS NULL')
    } else if (is(drug_exposure_start_date, 'subQuery')){
      statement <- paste0(statement, ' drug_exposure_start_date = (', as.character(drug_exposure_start_date), ')')
    } else {
      statement <- paste0(statement, " drug_exposure_start_date = '", drug_exposure_start_date,"'")
    }
  }

  if (!missing(drug_exposure_end_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(drug_exposure_end_date)) {
      statement <- paste0(statement, ' drug_exposure_end_date IS NULL')
    } else if (is(drug_exposure_end_date, 'subQuery')){
      statement <- paste0(statement, ' drug_exposure_end_date = (', as.character(drug_exposure_end_date), ')')
    } else {
      statement <- paste0(statement, " drug_exposure_end_date = '", drug_exposure_end_date,"'")
    }
  }

  if (!missing(dose_unit_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(dose_unit_concept_id)) {
      statement <- paste0(statement, ' dose_unit_concept_id IS NULL')
    } else if (is(dose_unit_concept_id, 'subQuery')){
      statement <- paste0(statement, ' dose_unit_concept_id = (', as.character(dose_unit_concept_id), ')')
    } else {
      statement <- paste0(statement, " dose_unit_concept_id = '", dose_unit_concept_id,"'")
    }
  }

  if (!missing(dose_unit_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(dose_unit_source_value)) {
      statement <- paste0(statement, ' dose_unit_source_value IS NULL')
    } else if (is(dose_unit_source_value, 'subQuery')){
      statement <- paste0(statement, ' dose_unit_source_value = (', as.character(dose_unit_source_value), ')')
    } else {
      statement <- paste0(statement, " dose_unit_source_value = '", dose_unit_source_value,"'")
    }
  }

  if (!missing(effective_drug_dose)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(effective_drug_dose)) {
      statement <- paste0(statement, ' effective_drug_dose IS NULL')
    } else if (is(effective_drug_dose, 'subQuery')){
      statement <- paste0(statement, ' effective_drug_dose = (', as.character(effective_drug_dose), ')')
    } else {
      statement <- paste0(statement, " effective_drug_dose = '", effective_drug_dose,"'")
    }
  }

  if (!missing(drug_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(drug_type_concept_id)) {
      statement <- paste0(statement, ' drug_type_concept_id IS NULL')
    } else if (is(drug_type_concept_id, 'subQuery')){
      statement <- paste0(statement, ' drug_type_concept_id = (', as.character(drug_type_concept_id), ')')
    } else {
      statement <- paste0(statement, " drug_type_concept_id = '", drug_type_concept_id,"'")
    }
  }

  if (!missing(sig)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(sig)) {
      statement <- paste0(statement, ' sig IS NULL')
    } else if (is(sig, 'subQuery')){
      statement <- paste0(statement, ' sig = (', as.character(sig), ')')
    } else {
      statement <- paste0(statement, " sig = '", sig,"'")
    }
  }

  if (!missing(stop_reason)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(stop_reason)) {
      statement <- paste0(statement, ' stop_reason IS NULL')
    } else if (is(stop_reason, 'subQuery')){
      statement <- paste0(statement, ' stop_reason = (', as.character(stop_reason), ')')
    } else {
      statement <- paste0(statement, " stop_reason = '", stop_reason,"'")
    }
  }

  if (!missing(refills)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(refills)) {
      statement <- paste0(statement, ' refills IS NULL')
    } else if (is(refills, 'subQuery')){
      statement <- paste0(statement, ' refills = (', as.character(refills), ')')
    } else {
      statement <- paste0(statement, " refills = '", refills,"'")
    }
  }

  if (!missing(route_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(route_concept_id)) {
      statement <- paste0(statement, ' route_concept_id IS NULL')
    } else if (is(route_concept_id, 'subQuery')){
      statement <- paste0(statement, ' route_concept_id = (', as.character(route_concept_id), ')')
    } else {
      statement <- paste0(statement, " route_concept_id = '", route_concept_id,"'")
    }
  }

  if (!missing(lot_number)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(lot_number)) {
      statement <- paste0(statement, ' lot_number IS NULL')
    } else if (is(lot_number, 'subQuery')){
      statement <- paste0(statement, ' lot_number = (', as.character(lot_number), ')')
    } else {
      statement <- paste0(statement, " lot_number = '", lot_number,"'")
    }
  }

  if (!missing(provider_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(provider_id)) {
      statement <- paste0(statement, ' provider_id IS NULL')
    } else if (is(provider_id, 'subQuery')){
      statement <- paste0(statement, ' provider_id = (', as.character(provider_id), ')')
    } else {
      statement <- paste0(statement, " provider_id = '", provider_id,"'")
    }
  }

  if (!missing(visit_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(visit_occurrence_id)) {
      statement <- paste0(statement, ' visit_occurrence_id IS NULL')
    } else if (is(visit_occurrence_id, 'subQuery')){
      statement <- paste0(statement, ' visit_occurrence_id = (', as.character(visit_occurrence_id), ')')
    } else {
      statement <- paste0(statement, " visit_occurrence_id = '", visit_occurrence_id,"'")
    }
  }

  if (!missing(route_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(route_source_value)) {
      statement <- paste0(statement, ' route_source_value IS NULL')
    } else if (is(route_source_value, 'subQuery')){
      statement <- paste0(statement, ' route_source_value = (', as.character(route_source_value), ')')
    } else {
      statement <- paste0(statement, " route_source_value = '", route_source_value,"'")
    }
  }

  statement <- paste0(statement, ") = 0 THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_drug_era <- function(drug_era_id, person_id, drug_concept_id, drug_era_start_date, drug_era_end_date, drug_exposure_count, gap_days) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect drug_era' AS test, CASE WHEN(SELECT COUNT(*) FROM drug_era WHERE")
  first <- TRUE
  if (!missing(drug_era_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(drug_era_id)) {
      statement <- paste0(statement, ' drug_era_id IS NULL')
    } else if (is(drug_era_id, 'subQuery')){
      statement <- paste0(statement, ' drug_era_id = (', as.character(drug_era_id), ')')
    } else {
      statement <- paste0(statement, " drug_era_id = '", drug_era_id,"'")
    }
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(person_id)) {
      statement <- paste0(statement, ' person_id IS NULL')
    } else if (is(person_id, 'subQuery')){
      statement <- paste0(statement, ' person_id = (', as.character(person_id), ')')
    } else {
      statement <- paste0(statement, " person_id = '", person_id,"'")
    }
  }

  if (!missing(drug_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(drug_concept_id)) {
      statement <- paste0(statement, ' drug_concept_id IS NULL')
    } else if (is(drug_concept_id, 'subQuery')){
      statement <- paste0(statement, ' drug_concept_id = (', as.character(drug_concept_id), ')')
    } else {
      statement <- paste0(statement, " drug_concept_id = '", drug_concept_id,"'")
    }
  }

  if (!missing(drug_era_start_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(drug_era_start_date)) {
      statement <- paste0(statement, ' drug_era_start_date IS NULL')
    } else if (is(drug_era_start_date, 'subQuery')){
      statement <- paste0(statement, ' drug_era_start_date = (', as.character(drug_era_start_date), ')')
    } else {
      statement <- paste0(statement, " drug_era_start_date = '", drug_era_start_date,"'")
    }
  }

  if (!missing(drug_era_end_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(drug_era_end_date)) {
      statement <- paste0(statement, ' drug_era_end_date IS NULL')
    } else if (is(drug_era_end_date, 'subQuery')){
      statement <- paste0(statement, ' drug_era_end_date = (', as.character(drug_era_end_date), ')')
    } else {
      statement <- paste0(statement, " drug_era_end_date = '", drug_era_end_date,"'")
    }
  }

  if (!missing(drug_exposure_count)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(drug_exposure_count)) {
      statement <- paste0(statement, ' drug_exposure_count IS NULL')
    } else if (is(drug_exposure_count, 'subQuery')){
      statement <- paste0(statement, ' drug_exposure_count = (', as.character(drug_exposure_count), ')')
    } else {
      statement <- paste0(statement, " drug_exposure_count = '", drug_exposure_count,"'")
    }
  }

  if (!missing(gap_days)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(gap_days)) {
      statement <- paste0(statement, ' gap_days IS NULL')
    } else if (is(gap_days, 'subQuery')){
      statement <- paste0(statement, ' gap_days = (', as.character(gap_days), ')')
    } else {
      statement <- paste0(statement, " gap_days = '", gap_days,"'")
    }
  }

  statement <- paste0(statement, ") = 0 THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_measurement <- function(measurement_id, person_id, value_as_number, measurement_concept_id, measurement_source_value, measurement_date, unit_concept_id, unit_source_value, measurement_time, measurement_type_concept_id, operator_concept_id, value_as_concept_id, range_low, range_high, provider_id, visit_occurrence_id, measurement_source_concept_id, value_source_value) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect measurement' AS test, CASE WHEN(SELECT COUNT(*) FROM measurement WHERE")
  first <- TRUE
  if (!missing(measurement_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(measurement_id)) {
      statement <- paste0(statement, ' measurement_id IS NULL')
    } else if (is(measurement_id, 'subQuery')){
      statement <- paste0(statement, ' measurement_id = (', as.character(measurement_id), ')')
    } else {
      statement <- paste0(statement, " measurement_id = '", measurement_id,"'")
    }
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(person_id)) {
      statement <- paste0(statement, ' person_id IS NULL')
    } else if (is(person_id, 'subQuery')){
      statement <- paste0(statement, ' person_id = (', as.character(person_id), ')')
    } else {
      statement <- paste0(statement, " person_id = '", person_id,"'")
    }
  }

  if (!missing(value_as_number)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(value_as_number)) {
      statement <- paste0(statement, ' value_as_number IS NULL')
    } else if (is(value_as_number, 'subQuery')){
      statement <- paste0(statement, ' value_as_number = (', as.character(value_as_number), ')')
    } else {
      statement <- paste0(statement, " value_as_number = '", value_as_number,"'")
    }
  }

  if (!missing(measurement_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(measurement_concept_id)) {
      statement <- paste0(statement, ' measurement_concept_id IS NULL')
    } else if (is(measurement_concept_id, 'subQuery')){
      statement <- paste0(statement, ' measurement_concept_id = (', as.character(measurement_concept_id), ')')
    } else {
      statement <- paste0(statement, " measurement_concept_id = '", measurement_concept_id,"'")
    }
  }

  if (!missing(measurement_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(measurement_source_value)) {
      statement <- paste0(statement, ' measurement_source_value IS NULL')
    } else if (is(measurement_source_value, 'subQuery')){
      statement <- paste0(statement, ' measurement_source_value = (', as.character(measurement_source_value), ')')
    } else {
      statement <- paste0(statement, " measurement_source_value = '", measurement_source_value,"'")
    }
  }

  if (!missing(measurement_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(measurement_date)) {
      statement <- paste0(statement, ' measurement_date IS NULL')
    } else if (is(measurement_date, 'subQuery')){
      statement <- paste0(statement, ' measurement_date = (', as.character(measurement_date), ')')
    } else {
      statement <- paste0(statement, " measurement_date = '", measurement_date,"'")
    }
  }

  if (!missing(unit_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(unit_concept_id)) {
      statement <- paste0(statement, ' unit_concept_id IS NULL')
    } else if (is(unit_concept_id, 'subQuery')){
      statement <- paste0(statement, ' unit_concept_id = (', as.character(unit_concept_id), ')')
    } else {
      statement <- paste0(statement, " unit_concept_id = '", unit_concept_id,"'")
    }
  }

  if (!missing(unit_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(unit_source_value)) {
      statement <- paste0(statement, ' unit_source_value IS NULL')
    } else if (is(unit_source_value, 'subQuery')){
      statement <- paste0(statement, ' unit_source_value = (', as.character(unit_source_value), ')')
    } else {
      statement <- paste0(statement, " unit_source_value = '", unit_source_value,"'")
    }
  }

  if (!missing(measurement_time)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(measurement_time)) {
      statement <- paste0(statement, ' measurement_time IS NULL')
    } else if (is(measurement_time, 'subQuery')){
      statement <- paste0(statement, ' measurement_time = (', as.character(measurement_time), ')')
    } else {
      statement <- paste0(statement, " measurement_time = '", measurement_time,"'")
    }
  }

  if (!missing(measurement_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(measurement_type_concept_id)) {
      statement <- paste0(statement, ' measurement_type_concept_id IS NULL')
    } else if (is(measurement_type_concept_id, 'subQuery')){
      statement <- paste0(statement, ' measurement_type_concept_id = (', as.character(measurement_type_concept_id), ')')
    } else {
      statement <- paste0(statement, " measurement_type_concept_id = '", measurement_type_concept_id,"'")
    }
  }

  if (!missing(operator_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(operator_concept_id)) {
      statement <- paste0(statement, ' operator_concept_id IS NULL')
    } else if (is(operator_concept_id, 'subQuery')){
      statement <- paste0(statement, ' operator_concept_id = (', as.character(operator_concept_id), ')')
    } else {
      statement <- paste0(statement, " operator_concept_id = '", operator_concept_id,"'")
    }
  }

  if (!missing(value_as_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(value_as_concept_id)) {
      statement <- paste0(statement, ' value_as_concept_id IS NULL')
    } else if (is(value_as_concept_id, 'subQuery')){
      statement <- paste0(statement, ' value_as_concept_id = (', as.character(value_as_concept_id), ')')
    } else {
      statement <- paste0(statement, " value_as_concept_id = '", value_as_concept_id,"'")
    }
  }

  if (!missing(range_low)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(range_low)) {
      statement <- paste0(statement, ' range_low IS NULL')
    } else if (is(range_low, 'subQuery')){
      statement <- paste0(statement, ' range_low = (', as.character(range_low), ')')
    } else {
      statement <- paste0(statement, " range_low = '", range_low,"'")
    }
  }

  if (!missing(range_high)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(range_high)) {
      statement <- paste0(statement, ' range_high IS NULL')
    } else if (is(range_high, 'subQuery')){
      statement <- paste0(statement, ' range_high = (', as.character(range_high), ')')
    } else {
      statement <- paste0(statement, " range_high = '", range_high,"'")
    }
  }

  if (!missing(provider_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(provider_id)) {
      statement <- paste0(statement, ' provider_id IS NULL')
    } else if (is(provider_id, 'subQuery')){
      statement <- paste0(statement, ' provider_id = (', as.character(provider_id), ')')
    } else {
      statement <- paste0(statement, " provider_id = '", provider_id,"'")
    }
  }

  if (!missing(visit_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(visit_occurrence_id)) {
      statement <- paste0(statement, ' visit_occurrence_id IS NULL')
    } else if (is(visit_occurrence_id, 'subQuery')){
      statement <- paste0(statement, ' visit_occurrence_id = (', as.character(visit_occurrence_id), ')')
    } else {
      statement <- paste0(statement, " visit_occurrence_id = '", visit_occurrence_id,"'")
    }
  }

  if (!missing(measurement_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(measurement_source_concept_id)) {
      statement <- paste0(statement, ' measurement_source_concept_id IS NULL')
    } else if (is(measurement_source_concept_id, 'subQuery')){
      statement <- paste0(statement, ' measurement_source_concept_id = (', as.character(measurement_source_concept_id), ')')
    } else {
      statement <- paste0(statement, " measurement_source_concept_id = '", measurement_source_concept_id,"'")
    }
  }

  if (!missing(value_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(value_source_value)) {
      statement <- paste0(statement, ' value_source_value IS NULL')
    } else if (is(value_source_value, 'subQuery')){
      statement <- paste0(statement, ' value_source_value = (', as.character(value_source_value), ')')
    } else {
      statement <- paste0(statement, " value_source_value = '", value_source_value,"'")
    }
  }

  statement <- paste0(statement, ") = 0 THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_observation <- function(observation_id, person_id, observation_concept_id, observation_source_value, observation_source_concept_id, observation_date, observation_time, observation_type_concept_id, value_as_number, value_as_string, value_as_concept_id, qualifier_concept_id, unit_concept_id, provider_id, visit_occurrence_id, unit_source_value, qualifier_source_value) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect observation' AS test, CASE WHEN(SELECT COUNT(*) FROM observation WHERE")
  first <- TRUE
  if (!missing(observation_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(observation_id)) {
      statement <- paste0(statement, ' observation_id IS NULL')
    } else if (is(observation_id, 'subQuery')){
      statement <- paste0(statement, ' observation_id = (', as.character(observation_id), ')')
    } else {
      statement <- paste0(statement, " observation_id = '", observation_id,"'")
    }
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(person_id)) {
      statement <- paste0(statement, ' person_id IS NULL')
    } else if (is(person_id, 'subQuery')){
      statement <- paste0(statement, ' person_id = (', as.character(person_id), ')')
    } else {
      statement <- paste0(statement, " person_id = '", person_id,"'")
    }
  }

  if (!missing(observation_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(observation_concept_id)) {
      statement <- paste0(statement, ' observation_concept_id IS NULL')
    } else if (is(observation_concept_id, 'subQuery')){
      statement <- paste0(statement, ' observation_concept_id = (', as.character(observation_concept_id), ')')
    } else {
      statement <- paste0(statement, " observation_concept_id = '", observation_concept_id,"'")
    }
  }

  if (!missing(observation_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(observation_source_value)) {
      statement <- paste0(statement, ' observation_source_value IS NULL')
    } else if (is(observation_source_value, 'subQuery')){
      statement <- paste0(statement, ' observation_source_value = (', as.character(observation_source_value), ')')
    } else {
      statement <- paste0(statement, " observation_source_value = '", observation_source_value,"'")
    }
  }

  if (!missing(observation_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(observation_source_concept_id)) {
      statement <- paste0(statement, ' observation_source_concept_id IS NULL')
    } else if (is(observation_source_concept_id, 'subQuery')){
      statement <- paste0(statement, ' observation_source_concept_id = (', as.character(observation_source_concept_id), ')')
    } else {
      statement <- paste0(statement, " observation_source_concept_id = '", observation_source_concept_id,"'")
    }
  }

  if (!missing(observation_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(observation_date)) {
      statement <- paste0(statement, ' observation_date IS NULL')
    } else if (is(observation_date, 'subQuery')){
      statement <- paste0(statement, ' observation_date = (', as.character(observation_date), ')')
    } else {
      statement <- paste0(statement, " observation_date = '", observation_date,"'")
    }
  }

  if (!missing(observation_time)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(observation_time)) {
      statement <- paste0(statement, ' observation_time IS NULL')
    } else if (is(observation_time, 'subQuery')){
      statement <- paste0(statement, ' observation_time = (', as.character(observation_time), ')')
    } else {
      statement <- paste0(statement, " observation_time = '", observation_time,"'")
    }
  }

  if (!missing(observation_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(observation_type_concept_id)) {
      statement <- paste0(statement, ' observation_type_concept_id IS NULL')
    } else if (is(observation_type_concept_id, 'subQuery')){
      statement <- paste0(statement, ' observation_type_concept_id = (', as.character(observation_type_concept_id), ')')
    } else {
      statement <- paste0(statement, " observation_type_concept_id = '", observation_type_concept_id,"'")
    }
  }

  if (!missing(value_as_number)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(value_as_number)) {
      statement <- paste0(statement, ' value_as_number IS NULL')
    } else if (is(value_as_number, 'subQuery')){
      statement <- paste0(statement, ' value_as_number = (', as.character(value_as_number), ')')
    } else {
      statement <- paste0(statement, " value_as_number = '", value_as_number,"'")
    }
  }

  if (!missing(value_as_string)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(value_as_string)) {
      statement <- paste0(statement, ' value_as_string IS NULL')
    } else if (is(value_as_string, 'subQuery')){
      statement <- paste0(statement, ' value_as_string = (', as.character(value_as_string), ')')
    } else {
      statement <- paste0(statement, " value_as_string = '", value_as_string,"'")
    }
  }

  if (!missing(value_as_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(value_as_concept_id)) {
      statement <- paste0(statement, ' value_as_concept_id IS NULL')
    } else if (is(value_as_concept_id, 'subQuery')){
      statement <- paste0(statement, ' value_as_concept_id = (', as.character(value_as_concept_id), ')')
    } else {
      statement <- paste0(statement, " value_as_concept_id = '", value_as_concept_id,"'")
    }
  }

  if (!missing(qualifier_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(qualifier_concept_id)) {
      statement <- paste0(statement, ' qualifier_concept_id IS NULL')
    } else if (is(qualifier_concept_id, 'subQuery')){
      statement <- paste0(statement, ' qualifier_concept_id = (', as.character(qualifier_concept_id), ')')
    } else {
      statement <- paste0(statement, " qualifier_concept_id = '", qualifier_concept_id,"'")
    }
  }

  if (!missing(unit_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(unit_concept_id)) {
      statement <- paste0(statement, ' unit_concept_id IS NULL')
    } else if (is(unit_concept_id, 'subQuery')){
      statement <- paste0(statement, ' unit_concept_id = (', as.character(unit_concept_id), ')')
    } else {
      statement <- paste0(statement, " unit_concept_id = '", unit_concept_id,"'")
    }
  }

  if (!missing(provider_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(provider_id)) {
      statement <- paste0(statement, ' provider_id IS NULL')
    } else if (is(provider_id, 'subQuery')){
      statement <- paste0(statement, ' provider_id = (', as.character(provider_id), ')')
    } else {
      statement <- paste0(statement, " provider_id = '", provider_id,"'")
    }
  }

  if (!missing(visit_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(visit_occurrence_id)) {
      statement <- paste0(statement, ' visit_occurrence_id IS NULL')
    } else if (is(visit_occurrence_id, 'subQuery')){
      statement <- paste0(statement, ' visit_occurrence_id = (', as.character(visit_occurrence_id), ')')
    } else {
      statement <- paste0(statement, " visit_occurrence_id = '", visit_occurrence_id,"'")
    }
  }

  if (!missing(unit_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(unit_source_value)) {
      statement <- paste0(statement, ' unit_source_value IS NULL')
    } else if (is(unit_source_value, 'subQuery')){
      statement <- paste0(statement, ' unit_source_value = (', as.character(unit_source_value), ')')
    } else {
      statement <- paste0(statement, " unit_source_value = '", unit_source_value,"'")
    }
  }

  if (!missing(qualifier_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(qualifier_source_value)) {
      statement <- paste0(statement, ' qualifier_source_value IS NULL')
    } else if (is(qualifier_source_value, 'subQuery')){
      statement <- paste0(statement, ' qualifier_source_value = (', as.character(qualifier_source_value), ')')
    } else {
      statement <- paste0(statement, " qualifier_source_value = '", qualifier_source_value,"'")
    }
  }

  statement <- paste0(statement, ") = 0 THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_procedure_occurrence <- function(procedure_occurrence_id, person_id, procedure_concept_id, procedure_date, procedure_type_concept_id, modifier_concept_id, quantity, provider_id, visit_occurrence_id, procedure_source_value, procedure_source_concept_id, qualifier_source_value) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect procedure_occurrence' AS test, CASE WHEN(SELECT COUNT(*) FROM procedure_occurrence WHERE")
  first <- TRUE
  if (!missing(procedure_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(procedure_occurrence_id)) {
      statement <- paste0(statement, ' procedure_occurrence_id IS NULL')
    } else if (is(procedure_occurrence_id, 'subQuery')){
      statement <- paste0(statement, ' procedure_occurrence_id = (', as.character(procedure_occurrence_id), ')')
    } else {
      statement <- paste0(statement, " procedure_occurrence_id = '", procedure_occurrence_id,"'")
    }
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(person_id)) {
      statement <- paste0(statement, ' person_id IS NULL')
    } else if (is(person_id, 'subQuery')){
      statement <- paste0(statement, ' person_id = (', as.character(person_id), ')')
    } else {
      statement <- paste0(statement, " person_id = '", person_id,"'")
    }
  }

  if (!missing(procedure_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(procedure_concept_id)) {
      statement <- paste0(statement, ' procedure_concept_id IS NULL')
    } else if (is(procedure_concept_id, 'subQuery')){
      statement <- paste0(statement, ' procedure_concept_id = (', as.character(procedure_concept_id), ')')
    } else {
      statement <- paste0(statement, " procedure_concept_id = '", procedure_concept_id,"'")
    }
  }

  if (!missing(procedure_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(procedure_date)) {
      statement <- paste0(statement, ' procedure_date IS NULL')
    } else if (is(procedure_date, 'subQuery')){
      statement <- paste0(statement, ' procedure_date = (', as.character(procedure_date), ')')
    } else {
      statement <- paste0(statement, " procedure_date = '", procedure_date,"'")
    }
  }

  if (!missing(procedure_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(procedure_type_concept_id)) {
      statement <- paste0(statement, ' procedure_type_concept_id IS NULL')
    } else if (is(procedure_type_concept_id, 'subQuery')){
      statement <- paste0(statement, ' procedure_type_concept_id = (', as.character(procedure_type_concept_id), ')')
    } else {
      statement <- paste0(statement, " procedure_type_concept_id = '", procedure_type_concept_id,"'")
    }
  }

  if (!missing(modifier_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(modifier_concept_id)) {
      statement <- paste0(statement, ' modifier_concept_id IS NULL')
    } else if (is(modifier_concept_id, 'subQuery')){
      statement <- paste0(statement, ' modifier_concept_id = (', as.character(modifier_concept_id), ')')
    } else {
      statement <- paste0(statement, " modifier_concept_id = '", modifier_concept_id,"'")
    }
  }

  if (!missing(quantity)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(quantity)) {
      statement <- paste0(statement, ' quantity IS NULL')
    } else if (is(quantity, 'subQuery')){
      statement <- paste0(statement, ' quantity = (', as.character(quantity), ')')
    } else {
      statement <- paste0(statement, " quantity = '", quantity,"'")
    }
  }

  if (!missing(provider_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(provider_id)) {
      statement <- paste0(statement, ' provider_id IS NULL')
    } else if (is(provider_id, 'subQuery')){
      statement <- paste0(statement, ' provider_id = (', as.character(provider_id), ')')
    } else {
      statement <- paste0(statement, " provider_id = '", provider_id,"'")
    }
  }

  if (!missing(visit_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(visit_occurrence_id)) {
      statement <- paste0(statement, ' visit_occurrence_id IS NULL')
    } else if (is(visit_occurrence_id, 'subQuery')){
      statement <- paste0(statement, ' visit_occurrence_id = (', as.character(visit_occurrence_id), ')')
    } else {
      statement <- paste0(statement, " visit_occurrence_id = '", visit_occurrence_id,"'")
    }
  }

  if (!missing(procedure_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(procedure_source_value)) {
      statement <- paste0(statement, ' procedure_source_value IS NULL')
    } else if (is(procedure_source_value, 'subQuery')){
      statement <- paste0(statement, ' procedure_source_value = (', as.character(procedure_source_value), ')')
    } else {
      statement <- paste0(statement, " procedure_source_value = '", procedure_source_value,"'")
    }
  }

  if (!missing(procedure_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(procedure_source_concept_id)) {
      statement <- paste0(statement, ' procedure_source_concept_id IS NULL')
    } else if (is(procedure_source_concept_id, 'subQuery')){
      statement <- paste0(statement, ' procedure_source_concept_id = (', as.character(procedure_source_concept_id), ')')
    } else {
      statement <- paste0(statement, " procedure_source_concept_id = '", procedure_source_concept_id,"'")
    }
  }

  if (!missing(qualifier_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(qualifier_source_value)) {
      statement <- paste0(statement, ' qualifier_source_value IS NULL')
    } else if (is(qualifier_source_value, 'subQuery')){
      statement <- paste0(statement, ' qualifier_source_value = (', as.character(qualifier_source_value), ')')
    } else {
      statement <- paste0(statement, " qualifier_source_value = '", qualifier_source_value,"'")
    }
  }

  statement <- paste0(statement, ") = 0 THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_device_exposure <- function(device_exposure_id, person_id, device_concept_id, device_exposure_start_date, device_exposure_end_date, device_type_concept_id, unique_device_id, quantity, provider_id, visit_occurrence_id, device_source_value, device_source_concept_id) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect device_exposure' AS test, CASE WHEN(SELECT COUNT(*) FROM device_exposure WHERE")
  first <- TRUE
  if (!missing(device_exposure_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(device_exposure_id)) {
      statement <- paste0(statement, ' device_exposure_id IS NULL')
    } else if (is(device_exposure_id, 'subQuery')){
      statement <- paste0(statement, ' device_exposure_id = (', as.character(device_exposure_id), ')')
    } else {
      statement <- paste0(statement, " device_exposure_id = '", device_exposure_id,"'")
    }
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(person_id)) {
      statement <- paste0(statement, ' person_id IS NULL')
    } else if (is(person_id, 'subQuery')){
      statement <- paste0(statement, ' person_id = (', as.character(person_id), ')')
    } else {
      statement <- paste0(statement, " person_id = '", person_id,"'")
    }
  }

  if (!missing(device_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(device_concept_id)) {
      statement <- paste0(statement, ' device_concept_id IS NULL')
    } else if (is(device_concept_id, 'subQuery')){
      statement <- paste0(statement, ' device_concept_id = (', as.character(device_concept_id), ')')
    } else {
      statement <- paste0(statement, " device_concept_id = '", device_concept_id,"'")
    }
  }

  if (!missing(device_exposure_start_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(device_exposure_start_date)) {
      statement <- paste0(statement, ' device_exposure_start_date IS NULL')
    } else if (is(device_exposure_start_date, 'subQuery')){
      statement <- paste0(statement, ' device_exposure_start_date = (', as.character(device_exposure_start_date), ')')
    } else {
      statement <- paste0(statement, " device_exposure_start_date = '", device_exposure_start_date,"'")
    }
  }

  if (!missing(device_exposure_end_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(device_exposure_end_date)) {
      statement <- paste0(statement, ' device_exposure_end_date IS NULL')
    } else if (is(device_exposure_end_date, 'subQuery')){
      statement <- paste0(statement, ' device_exposure_end_date = (', as.character(device_exposure_end_date), ')')
    } else {
      statement <- paste0(statement, " device_exposure_end_date = '", device_exposure_end_date,"'")
    }
  }

  if (!missing(device_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(device_type_concept_id)) {
      statement <- paste0(statement, ' device_type_concept_id IS NULL')
    } else if (is(device_type_concept_id, 'subQuery')){
      statement <- paste0(statement, ' device_type_concept_id = (', as.character(device_type_concept_id), ')')
    } else {
      statement <- paste0(statement, " device_type_concept_id = '", device_type_concept_id,"'")
    }
  }

  if (!missing(unique_device_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(unique_device_id)) {
      statement <- paste0(statement, ' unique_device_id IS NULL')
    } else if (is(unique_device_id, 'subQuery')){
      statement <- paste0(statement, ' unique_device_id = (', as.character(unique_device_id), ')')
    } else {
      statement <- paste0(statement, " unique_device_id = '", unique_device_id,"'")
    }
  }

  if (!missing(quantity)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(quantity)) {
      statement <- paste0(statement, ' quantity IS NULL')
    } else if (is(quantity, 'subQuery')){
      statement <- paste0(statement, ' quantity = (', as.character(quantity), ')')
    } else {
      statement <- paste0(statement, " quantity = '", quantity,"'")
    }
  }

  if (!missing(provider_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(provider_id)) {
      statement <- paste0(statement, ' provider_id IS NULL')
    } else if (is(provider_id, 'subQuery')){
      statement <- paste0(statement, ' provider_id = (', as.character(provider_id), ')')
    } else {
      statement <- paste0(statement, " provider_id = '", provider_id,"'")
    }
  }

  if (!missing(visit_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(visit_occurrence_id)) {
      statement <- paste0(statement, ' visit_occurrence_id IS NULL')
    } else if (is(visit_occurrence_id, 'subQuery')){
      statement <- paste0(statement, ' visit_occurrence_id = (', as.character(visit_occurrence_id), ')')
    } else {
      statement <- paste0(statement, " visit_occurrence_id = '", visit_occurrence_id,"'")
    }
  }

  if (!missing(device_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(device_source_value)) {
      statement <- paste0(statement, ' device_source_value IS NULL')
    } else if (is(device_source_value, 'subQuery')){
      statement <- paste0(statement, ' device_source_value = (', as.character(device_source_value), ')')
    } else {
      statement <- paste0(statement, " device_source_value = '", device_source_value,"'")
    }
  }

  if (!missing(device_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(device_source_concept_id)) {
      statement <- paste0(statement, ' device_source_concept_id IS NULL')
    } else if (is(device_source_concept_id, 'subQuery')){
      statement <- paste0(statement, ' device_source_concept_id = (', as.character(device_source_concept_id), ')')
    } else {
      statement <- paste0(statement, " device_source_concept_id = '", device_source_concept_id,"'")
    }
  }

  statement <- paste0(statement, ") = 0 THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_location <- function(location_id, address_1, address_2, city, state, zip, county, location_source_value) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect location' AS test, CASE WHEN(SELECT COUNT(*) FROM location WHERE")
  first <- TRUE
  if (!missing(location_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(location_id)) {
      statement <- paste0(statement, ' location_id IS NULL')
    } else if (is(location_id, 'subQuery')){
      statement <- paste0(statement, ' location_id = (', as.character(location_id), ')')
    } else {
      statement <- paste0(statement, " location_id = '", location_id,"'")
    }
  }

  if (!missing(address_1)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(address_1)) {
      statement <- paste0(statement, ' address_1 IS NULL')
    } else if (is(address_1, 'subQuery')){
      statement <- paste0(statement, ' address_1 = (', as.character(address_1), ')')
    } else {
      statement <- paste0(statement, " address_1 = '", address_1,"'")
    }
  }

  if (!missing(address_2)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(address_2)) {
      statement <- paste0(statement, ' address_2 IS NULL')
    } else if (is(address_2, 'subQuery')){
      statement <- paste0(statement, ' address_2 = (', as.character(address_2), ')')
    } else {
      statement <- paste0(statement, " address_2 = '", address_2,"'")
    }
  }

  if (!missing(city)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(city)) {
      statement <- paste0(statement, ' city IS NULL')
    } else if (is(city, 'subQuery')){
      statement <- paste0(statement, ' city = (', as.character(city), ')')
    } else {
      statement <- paste0(statement, " city = '", city,"'")
    }
  }

  if (!missing(state)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(state)) {
      statement <- paste0(statement, ' state IS NULL')
    } else if (is(state, 'subQuery')){
      statement <- paste0(statement, ' state = (', as.character(state), ')')
    } else {
      statement <- paste0(statement, " state = '", state,"'")
    }
  }

  if (!missing(zip)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(zip)) {
      statement <- paste0(statement, ' zip IS NULL')
    } else if (is(zip, 'subQuery')){
      statement <- paste0(statement, ' zip = (', as.character(zip), ')')
    } else {
      statement <- paste0(statement, " zip = '", zip,"'")
    }
  }

  if (!missing(county)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(county)) {
      statement <- paste0(statement, ' county IS NULL')
    } else if (is(county, 'subQuery')){
      statement <- paste0(statement, ' county = (', as.character(county), ')')
    } else {
      statement <- paste0(statement, " county = '", county,"'")
    }
  }

  if (!missing(location_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(location_source_value)) {
      statement <- paste0(statement, ' location_source_value IS NULL')
    } else if (is(location_source_value, 'subQuery')){
      statement <- paste0(statement, ' location_source_value = (', as.character(location_source_value), ')')
    } else {
      statement <- paste0(statement, " location_source_value = '", location_source_value,"'")
    }
  }

  statement <- paste0(statement, ") = 0 THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_care_site <- function(care_site_id, care_site_name, place_of_service_concept_id, location_id, care_site_source_value, place_of_service_source_value) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect care_site' AS test, CASE WHEN(SELECT COUNT(*) FROM care_site WHERE")
  first <- TRUE
  if (!missing(care_site_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(care_site_id)) {
      statement <- paste0(statement, ' care_site_id IS NULL')
    } else if (is(care_site_id, 'subQuery')){
      statement <- paste0(statement, ' care_site_id = (', as.character(care_site_id), ')')
    } else {
      statement <- paste0(statement, " care_site_id = '", care_site_id,"'")
    }
  }

  if (!missing(care_site_name)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(care_site_name)) {
      statement <- paste0(statement, ' care_site_name IS NULL')
    } else if (is(care_site_name, 'subQuery')){
      statement <- paste0(statement, ' care_site_name = (', as.character(care_site_name), ')')
    } else {
      statement <- paste0(statement, " care_site_name = '", care_site_name,"'")
    }
  }

  if (!missing(place_of_service_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(place_of_service_concept_id)) {
      statement <- paste0(statement, ' place_of_service_concept_id IS NULL')
    } else if (is(place_of_service_concept_id, 'subQuery')){
      statement <- paste0(statement, ' place_of_service_concept_id = (', as.character(place_of_service_concept_id), ')')
    } else {
      statement <- paste0(statement, " place_of_service_concept_id = '", place_of_service_concept_id,"'")
    }
  }

  if (!missing(location_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(location_id)) {
      statement <- paste0(statement, ' location_id IS NULL')
    } else if (is(location_id, 'subQuery')){
      statement <- paste0(statement, ' location_id = (', as.character(location_id), ')')
    } else {
      statement <- paste0(statement, " location_id = '", location_id,"'")
    }
  }

  if (!missing(care_site_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(care_site_source_value)) {
      statement <- paste0(statement, ' care_site_source_value IS NULL')
    } else if (is(care_site_source_value, 'subQuery')){
      statement <- paste0(statement, ' care_site_source_value = (', as.character(care_site_source_value), ')')
    } else {
      statement <- paste0(statement, " care_site_source_value = '", care_site_source_value,"'")
    }
  }

  if (!missing(place_of_service_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(place_of_service_source_value)) {
      statement <- paste0(statement, ' place_of_service_source_value IS NULL')
    } else if (is(place_of_service_source_value, 'subQuery')){
      statement <- paste0(statement, ' place_of_service_source_value = (', as.character(place_of_service_source_value), ')')
    } else {
      statement <- paste0(statement, " place_of_service_source_value = '", place_of_service_source_value,"'")
    }
  }

  statement <- paste0(statement, ") = 0 THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_provider <- function(provider_id, provider_name, npi, dea, specialty_concept_id, care_site_id, year_of_birth, gender_concept_id, provider_source_value, specialty_source_value, specialty_source_concept_id, gender_source_value, gender_source_concept_id) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect provider' AS test, CASE WHEN(SELECT COUNT(*) FROM provider WHERE")
  first <- TRUE
  if (!missing(provider_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(provider_id)) {
      statement <- paste0(statement, ' provider_id IS NULL')
    } else if (is(provider_id, 'subQuery')){
      statement <- paste0(statement, ' provider_id = (', as.character(provider_id), ')')
    } else {
      statement <- paste0(statement, " provider_id = '", provider_id,"'")
    }
  }

  if (!missing(provider_name)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(provider_name)) {
      statement <- paste0(statement, ' provider_name IS NULL')
    } else if (is(provider_name, 'subQuery')){
      statement <- paste0(statement, ' provider_name = (', as.character(provider_name), ')')
    } else {
      statement <- paste0(statement, " provider_name = '", provider_name,"'")
    }
  }

  if (!missing(npi)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(npi)) {
      statement <- paste0(statement, ' npi IS NULL')
    } else if (is(npi, 'subQuery')){
      statement <- paste0(statement, ' npi = (', as.character(npi), ')')
    } else {
      statement <- paste0(statement, " npi = '", npi,"'")
    }
  }

  if (!missing(dea)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(dea)) {
      statement <- paste0(statement, ' dea IS NULL')
    } else if (is(dea, 'subQuery')){
      statement <- paste0(statement, ' dea = (', as.character(dea), ')')
    } else {
      statement <- paste0(statement, " dea = '", dea,"'")
    }
  }

  if (!missing(specialty_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(specialty_concept_id)) {
      statement <- paste0(statement, ' specialty_concept_id IS NULL')
    } else if (is(specialty_concept_id, 'subQuery')){
      statement <- paste0(statement, ' specialty_concept_id = (', as.character(specialty_concept_id), ')')
    } else {
      statement <- paste0(statement, " specialty_concept_id = '", specialty_concept_id,"'")
    }
  }

  if (!missing(care_site_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(care_site_id)) {
      statement <- paste0(statement, ' care_site_id IS NULL')
    } else if (is(care_site_id, 'subQuery')){
      statement <- paste0(statement, ' care_site_id = (', as.character(care_site_id), ')')
    } else {
      statement <- paste0(statement, " care_site_id = '", care_site_id,"'")
    }
  }

  if (!missing(year_of_birth)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(year_of_birth)) {
      statement <- paste0(statement, ' year_of_birth IS NULL')
    } else if (is(year_of_birth, 'subQuery')){
      statement <- paste0(statement, ' year_of_birth = (', as.character(year_of_birth), ')')
    } else {
      statement <- paste0(statement, " year_of_birth = '", year_of_birth,"'")
    }
  }

  if (!missing(gender_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(gender_concept_id)) {
      statement <- paste0(statement, ' gender_concept_id IS NULL')
    } else if (is(gender_concept_id, 'subQuery')){
      statement <- paste0(statement, ' gender_concept_id = (', as.character(gender_concept_id), ')')
    } else {
      statement <- paste0(statement, " gender_concept_id = '", gender_concept_id,"'")
    }
  }

  if (!missing(provider_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(provider_source_value)) {
      statement <- paste0(statement, ' provider_source_value IS NULL')
    } else if (is(provider_source_value, 'subQuery')){
      statement <- paste0(statement, ' provider_source_value = (', as.character(provider_source_value), ')')
    } else {
      statement <- paste0(statement, " provider_source_value = '", provider_source_value,"'")
    }
  }

  if (!missing(specialty_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(specialty_source_value)) {
      statement <- paste0(statement, ' specialty_source_value IS NULL')
    } else if (is(specialty_source_value, 'subQuery')){
      statement <- paste0(statement, ' specialty_source_value = (', as.character(specialty_source_value), ')')
    } else {
      statement <- paste0(statement, " specialty_source_value = '", specialty_source_value,"'")
    }
  }

  if (!missing(specialty_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(specialty_source_concept_id)) {
      statement <- paste0(statement, ' specialty_source_concept_id IS NULL')
    } else if (is(specialty_source_concept_id, 'subQuery')){
      statement <- paste0(statement, ' specialty_source_concept_id = (', as.character(specialty_source_concept_id), ')')
    } else {
      statement <- paste0(statement, " specialty_source_concept_id = '", specialty_source_concept_id,"'")
    }
  }

  if (!missing(gender_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(gender_source_value)) {
      statement <- paste0(statement, ' gender_source_value IS NULL')
    } else if (is(gender_source_value, 'subQuery')){
      statement <- paste0(statement, ' gender_source_value = (', as.character(gender_source_value), ')')
    } else {
      statement <- paste0(statement, " gender_source_value = '", gender_source_value,"'")
    }
  }

  if (!missing(gender_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(gender_source_concept_id)) {
      statement <- paste0(statement, ' gender_source_concept_id IS NULL')
    } else if (is(gender_source_concept_id, 'subQuery')){
      statement <- paste0(statement, ' gender_source_concept_id = (', as.character(gender_source_concept_id), ')')
    } else {
      statement <- paste0(statement, " gender_source_concept_id = '", gender_source_concept_id,"'")
    }
  }

  statement <- paste0(statement, ") = 0 THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_note <- function(note_id, person_id, note_date, note_time, note_type_concept_id, note_text, provider_id, visit_occurrence_id, note_source_value) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect note' AS test, CASE WHEN(SELECT COUNT(*) FROM note WHERE")
  first <- TRUE
  if (!missing(note_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(note_id)) {
      statement <- paste0(statement, ' note_id IS NULL')
    } else if (is(note_id, 'subQuery')){
      statement <- paste0(statement, ' note_id = (', as.character(note_id), ')')
    } else {
      statement <- paste0(statement, " note_id = '", note_id,"'")
    }
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(person_id)) {
      statement <- paste0(statement, ' person_id IS NULL')
    } else if (is(person_id, 'subQuery')){
      statement <- paste0(statement, ' person_id = (', as.character(person_id), ')')
    } else {
      statement <- paste0(statement, " person_id = '", person_id,"'")
    }
  }

  if (!missing(note_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(note_date)) {
      statement <- paste0(statement, ' note_date IS NULL')
    } else if (is(note_date, 'subQuery')){
      statement <- paste0(statement, ' note_date = (', as.character(note_date), ')')
    } else {
      statement <- paste0(statement, " note_date = '", note_date,"'")
    }
  }

  if (!missing(note_time)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(note_time)) {
      statement <- paste0(statement, ' note_time IS NULL')
    } else if (is(note_time, 'subQuery')){
      statement <- paste0(statement, ' note_time = (', as.character(note_time), ')')
    } else {
      statement <- paste0(statement, " note_time = '", note_time,"'")
    }
  }

  if (!missing(note_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(note_type_concept_id)) {
      statement <- paste0(statement, ' note_type_concept_id IS NULL')
    } else if (is(note_type_concept_id, 'subQuery')){
      statement <- paste0(statement, ' note_type_concept_id = (', as.character(note_type_concept_id), ')')
    } else {
      statement <- paste0(statement, " note_type_concept_id = '", note_type_concept_id,"'")
    }
  }

  if (!missing(note_text)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(note_text)) {
      statement <- paste0(statement, ' note_text IS NULL')
    } else if (is(note_text, 'subQuery')){
      statement <- paste0(statement, ' note_text = (', as.character(note_text), ')')
    } else {
      statement <- paste0(statement, " note_text = '", note_text,"'")
    }
  }

  if (!missing(provider_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(provider_id)) {
      statement <- paste0(statement, ' provider_id IS NULL')
    } else if (is(provider_id, 'subQuery')){
      statement <- paste0(statement, ' provider_id = (', as.character(provider_id), ')')
    } else {
      statement <- paste0(statement, " provider_id = '", provider_id,"'")
    }
  }

  if (!missing(visit_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(visit_occurrence_id)) {
      statement <- paste0(statement, ' visit_occurrence_id IS NULL')
    } else if (is(visit_occurrence_id, 'subQuery')){
      statement <- paste0(statement, ' visit_occurrence_id = (', as.character(visit_occurrence_id), ')')
    } else {
      statement <- paste0(statement, " visit_occurrence_id = '", visit_occurrence_id,"'")
    }
  }

  if (!missing(note_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(note_source_value)) {
      statement <- paste0(statement, ' note_source_value IS NULL')
    } else if (is(note_source_value, 'subQuery')){
      statement <- paste0(statement, ' note_source_value = (', as.character(note_source_value), ')')
    } else {
      statement <- paste0(statement, " note_source_value = '", note_source_value,"'")
    }
  }

  statement <- paste0(statement, ") = 0 THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_specimen <- function(specimen_id, person_id, specimen_concept_id, specimen_type_concept_id, specimen_date, specimen_time, quantity, unit_concept_id, anatomic_site_concept_id, disease_status_concept_id, specimen_source_id, specimen_source_value, unit_source_value, anatomic_site_source_value, disease_status_source_value) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect specimen' AS test, CASE WHEN(SELECT COUNT(*) FROM specimen WHERE")
  first <- TRUE
  if (!missing(specimen_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(specimen_id)) {
      statement <- paste0(statement, ' specimen_id IS NULL')
    } else if (is(specimen_id, 'subQuery')){
      statement <- paste0(statement, ' specimen_id = (', as.character(specimen_id), ')')
    } else {
      statement <- paste0(statement, " specimen_id = '", specimen_id,"'")
    }
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(person_id)) {
      statement <- paste0(statement, ' person_id IS NULL')
    } else if (is(person_id, 'subQuery')){
      statement <- paste0(statement, ' person_id = (', as.character(person_id), ')')
    } else {
      statement <- paste0(statement, " person_id = '", person_id,"'")
    }
  }

  if (!missing(specimen_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(specimen_concept_id)) {
      statement <- paste0(statement, ' specimen_concept_id IS NULL')
    } else if (is(specimen_concept_id, 'subQuery')){
      statement <- paste0(statement, ' specimen_concept_id = (', as.character(specimen_concept_id), ')')
    } else {
      statement <- paste0(statement, " specimen_concept_id = '", specimen_concept_id,"'")
    }
  }

  if (!missing(specimen_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(specimen_type_concept_id)) {
      statement <- paste0(statement, ' specimen_type_concept_id IS NULL')
    } else if (is(specimen_type_concept_id, 'subQuery')){
      statement <- paste0(statement, ' specimen_type_concept_id = (', as.character(specimen_type_concept_id), ')')
    } else {
      statement <- paste0(statement, " specimen_type_concept_id = '", specimen_type_concept_id,"'")
    }
  }

  if (!missing(specimen_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(specimen_date)) {
      statement <- paste0(statement, ' specimen_date IS NULL')
    } else if (is(specimen_date, 'subQuery')){
      statement <- paste0(statement, ' specimen_date = (', as.character(specimen_date), ')')
    } else {
      statement <- paste0(statement, " specimen_date = '", specimen_date,"'")
    }
  }

  if (!missing(specimen_time)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(specimen_time)) {
      statement <- paste0(statement, ' specimen_time IS NULL')
    } else if (is(specimen_time, 'subQuery')){
      statement <- paste0(statement, ' specimen_time = (', as.character(specimen_time), ')')
    } else {
      statement <- paste0(statement, " specimen_time = '", specimen_time,"'")
    }
  }

  if (!missing(quantity)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(quantity)) {
      statement <- paste0(statement, ' quantity IS NULL')
    } else if (is(quantity, 'subQuery')){
      statement <- paste0(statement, ' quantity = (', as.character(quantity), ')')
    } else {
      statement <- paste0(statement, " quantity = '", quantity,"'")
    }
  }

  if (!missing(unit_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(unit_concept_id)) {
      statement <- paste0(statement, ' unit_concept_id IS NULL')
    } else if (is(unit_concept_id, 'subQuery')){
      statement <- paste0(statement, ' unit_concept_id = (', as.character(unit_concept_id), ')')
    } else {
      statement <- paste0(statement, " unit_concept_id = '", unit_concept_id,"'")
    }
  }

  if (!missing(anatomic_site_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(anatomic_site_concept_id)) {
      statement <- paste0(statement, ' anatomic_site_concept_id IS NULL')
    } else if (is(anatomic_site_concept_id, 'subQuery')){
      statement <- paste0(statement, ' anatomic_site_concept_id = (', as.character(anatomic_site_concept_id), ')')
    } else {
      statement <- paste0(statement, " anatomic_site_concept_id = '", anatomic_site_concept_id,"'")
    }
  }

  if (!missing(disease_status_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(disease_status_concept_id)) {
      statement <- paste0(statement, ' disease_status_concept_id IS NULL')
    } else if (is(disease_status_concept_id, 'subQuery')){
      statement <- paste0(statement, ' disease_status_concept_id = (', as.character(disease_status_concept_id), ')')
    } else {
      statement <- paste0(statement, " disease_status_concept_id = '", disease_status_concept_id,"'")
    }
  }

  if (!missing(specimen_source_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(specimen_source_id)) {
      statement <- paste0(statement, ' specimen_source_id IS NULL')
    } else if (is(specimen_source_id, 'subQuery')){
      statement <- paste0(statement, ' specimen_source_id = (', as.character(specimen_source_id), ')')
    } else {
      statement <- paste0(statement, " specimen_source_id = '", specimen_source_id,"'")
    }
  }

  if (!missing(specimen_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(specimen_source_value)) {
      statement <- paste0(statement, ' specimen_source_value IS NULL')
    } else if (is(specimen_source_value, 'subQuery')){
      statement <- paste0(statement, ' specimen_source_value = (', as.character(specimen_source_value), ')')
    } else {
      statement <- paste0(statement, " specimen_source_value = '", specimen_source_value,"'")
    }
  }

  if (!missing(unit_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(unit_source_value)) {
      statement <- paste0(statement, ' unit_source_value IS NULL')
    } else if (is(unit_source_value, 'subQuery')){
      statement <- paste0(statement, ' unit_source_value = (', as.character(unit_source_value), ')')
    } else {
      statement <- paste0(statement, " unit_source_value = '", unit_source_value,"'")
    }
  }

  if (!missing(anatomic_site_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(anatomic_site_source_value)) {
      statement <- paste0(statement, ' anatomic_site_source_value IS NULL')
    } else if (is(anatomic_site_source_value, 'subQuery')){
      statement <- paste0(statement, ' anatomic_site_source_value = (', as.character(anatomic_site_source_value), ')')
    } else {
      statement <- paste0(statement, " anatomic_site_source_value = '", anatomic_site_source_value,"'")
    }
  }

  if (!missing(disease_status_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(disease_status_source_value)) {
      statement <- paste0(statement, ' disease_status_source_value IS NULL')
    } else if (is(disease_status_source_value, 'subQuery')){
      statement <- paste0(statement, ' disease_status_source_value = (', as.character(disease_status_source_value), ')')
    } else {
      statement <- paste0(statement, " disease_status_source_value = '", disease_status_source_value,"'")
    }
  }

  statement <- paste0(statement, ") = 0 THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_fact_relationship <- function(domain_concept_id_1, fact_id_1, domain_concept_id_2, fact_id_2, relationship_concept_id) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect fact_relationship' AS test, CASE WHEN(SELECT COUNT(*) FROM fact_relationship WHERE")
  first <- TRUE
  if (!missing(domain_concept_id_1)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(domain_concept_id_1)) {
      statement <- paste0(statement, ' domain_concept_id_1 IS NULL')
    } else if (is(domain_concept_id_1, 'subQuery')){
      statement <- paste0(statement, ' domain_concept_id_1 = (', as.character(domain_concept_id_1), ')')
    } else {
      statement <- paste0(statement, " domain_concept_id_1 = '", domain_concept_id_1,"'")
    }
  }

  if (!missing(fact_id_1)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(fact_id_1)) {
      statement <- paste0(statement, ' fact_id_1 IS NULL')
    } else if (is(fact_id_1, 'subQuery')){
      statement <- paste0(statement, ' fact_id_1 = (', as.character(fact_id_1), ')')
    } else {
      statement <- paste0(statement, " fact_id_1 = '", fact_id_1,"'")
    }
  }

  if (!missing(domain_concept_id_2)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(domain_concept_id_2)) {
      statement <- paste0(statement, ' domain_concept_id_2 IS NULL')
    } else if (is(domain_concept_id_2, 'subQuery')){
      statement <- paste0(statement, ' domain_concept_id_2 = (', as.character(domain_concept_id_2), ')')
    } else {
      statement <- paste0(statement, " domain_concept_id_2 = '", domain_concept_id_2,"'")
    }
  }

  if (!missing(fact_id_2)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(fact_id_2)) {
      statement <- paste0(statement, ' fact_id_2 IS NULL')
    } else if (is(fact_id_2, 'subQuery')){
      statement <- paste0(statement, ' fact_id_2 = (', as.character(fact_id_2), ')')
    } else {
      statement <- paste0(statement, " fact_id_2 = '", fact_id_2,"'")
    }
  }

  if (!missing(relationship_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(relationship_concept_id)) {
      statement <- paste0(statement, ' relationship_concept_id IS NULL')
    } else if (is(relationship_concept_id, 'subQuery')){
      statement <- paste0(statement, ' relationship_concept_id = (', as.character(relationship_concept_id), ')')
    } else {
      statement <- paste0(statement, " relationship_concept_id = '", relationship_concept_id,"'")
    }
  }

  statement <- paste0(statement, ") = 0 THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_procedure_cost <- function(procedure_cost_id, procedure_occurrence_id, currency_concept_id, paid_copay, paid_coinsurance, paid_toward_deductible, paid_by_payer, paid_by_coordination_benefits, total_out_of_pocket, total_paid, revenue_code_concept_id, payer_plan_period_id, revenue_code_source_value) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect procedure_cost' AS test, CASE WHEN(SELECT COUNT(*) FROM procedure_cost WHERE")
  first <- TRUE
  if (!missing(procedure_cost_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(procedure_cost_id)) {
      statement <- paste0(statement, ' procedure_cost_id IS NULL')
    } else if (is(procedure_cost_id, 'subQuery')){
      statement <- paste0(statement, ' procedure_cost_id = (', as.character(procedure_cost_id), ')')
    } else {
      statement <- paste0(statement, " procedure_cost_id = '", procedure_cost_id,"'")
    }
  }

  if (!missing(procedure_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(procedure_occurrence_id)) {
      statement <- paste0(statement, ' procedure_occurrence_id IS NULL')
    } else if (is(procedure_occurrence_id, 'subQuery')){
      statement <- paste0(statement, ' procedure_occurrence_id = (', as.character(procedure_occurrence_id), ')')
    } else {
      statement <- paste0(statement, " procedure_occurrence_id = '", procedure_occurrence_id,"'")
    }
  }

  if (!missing(currency_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(currency_concept_id)) {
      statement <- paste0(statement, ' currency_concept_id IS NULL')
    } else if (is(currency_concept_id, 'subQuery')){
      statement <- paste0(statement, ' currency_concept_id = (', as.character(currency_concept_id), ')')
    } else {
      statement <- paste0(statement, " currency_concept_id = '", currency_concept_id,"'")
    }
  }

  if (!missing(paid_copay)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_copay)) {
      statement <- paste0(statement, ' paid_copay IS NULL')
    } else if (is(paid_copay, 'subQuery')){
      statement <- paste0(statement, ' paid_copay = (', as.character(paid_copay), ')')
    } else {
      statement <- paste0(statement, " paid_copay = '", paid_copay,"'")
    }
  }

  if (!missing(paid_coinsurance)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_coinsurance)) {
      statement <- paste0(statement, ' paid_coinsurance IS NULL')
    } else if (is(paid_coinsurance, 'subQuery')){
      statement <- paste0(statement, ' paid_coinsurance = (', as.character(paid_coinsurance), ')')
    } else {
      statement <- paste0(statement, " paid_coinsurance = '", paid_coinsurance,"'")
    }
  }

  if (!missing(paid_toward_deductible)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_toward_deductible)) {
      statement <- paste0(statement, ' paid_toward_deductible IS NULL')
    } else if (is(paid_toward_deductible, 'subQuery')){
      statement <- paste0(statement, ' paid_toward_deductible = (', as.character(paid_toward_deductible), ')')
    } else {
      statement <- paste0(statement, " paid_toward_deductible = '", paid_toward_deductible,"'")
    }
  }

  if (!missing(paid_by_payer)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_by_payer)) {
      statement <- paste0(statement, ' paid_by_payer IS NULL')
    } else if (is(paid_by_payer, 'subQuery')){
      statement <- paste0(statement, ' paid_by_payer = (', as.character(paid_by_payer), ')')
    } else {
      statement <- paste0(statement, " paid_by_payer = '", paid_by_payer,"'")
    }
  }

  if (!missing(paid_by_coordination_benefits)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_by_coordination_benefits)) {
      statement <- paste0(statement, ' paid_by_coordination_benefits IS NULL')
    } else if (is(paid_by_coordination_benefits, 'subQuery')){
      statement <- paste0(statement, ' paid_by_coordination_benefits = (', as.character(paid_by_coordination_benefits), ')')
    } else {
      statement <- paste0(statement, " paid_by_coordination_benefits = '", paid_by_coordination_benefits,"'")
    }
  }

  if (!missing(total_out_of_pocket)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(total_out_of_pocket)) {
      statement <- paste0(statement, ' total_out_of_pocket IS NULL')
    } else if (is(total_out_of_pocket, 'subQuery')){
      statement <- paste0(statement, ' total_out_of_pocket = (', as.character(total_out_of_pocket), ')')
    } else {
      statement <- paste0(statement, " total_out_of_pocket = '", total_out_of_pocket,"'")
    }
  }

  if (!missing(total_paid)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(total_paid)) {
      statement <- paste0(statement, ' total_paid IS NULL')
    } else if (is(total_paid, 'subQuery')){
      statement <- paste0(statement, ' total_paid = (', as.character(total_paid), ')')
    } else {
      statement <- paste0(statement, " total_paid = '", total_paid,"'")
    }
  }

  if (!missing(revenue_code_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(revenue_code_concept_id)) {
      statement <- paste0(statement, ' revenue_code_concept_id IS NULL')
    } else if (is(revenue_code_concept_id, 'subQuery')){
      statement <- paste0(statement, ' revenue_code_concept_id = (', as.character(revenue_code_concept_id), ')')
    } else {
      statement <- paste0(statement, " revenue_code_concept_id = '", revenue_code_concept_id,"'")
    }
  }

  if (!missing(payer_plan_period_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(payer_plan_period_id)) {
      statement <- paste0(statement, ' payer_plan_period_id IS NULL')
    } else if (is(payer_plan_period_id, 'subQuery')){
      statement <- paste0(statement, ' payer_plan_period_id = (', as.character(payer_plan_period_id), ')')
    } else {
      statement <- paste0(statement, " payer_plan_period_id = '", payer_plan_period_id,"'")
    }
  }

  if (!missing(revenue_code_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(revenue_code_source_value)) {
      statement <- paste0(statement, ' revenue_code_source_value IS NULL')
    } else if (is(revenue_code_source_value, 'subQuery')){
      statement <- paste0(statement, ' revenue_code_source_value = (', as.character(revenue_code_source_value), ')')
    } else {
      statement <- paste0(statement, " revenue_code_source_value = '", revenue_code_source_value,"'")
    }
  }

  statement <- paste0(statement, ") = 0 THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_visit_cost <- function(visit_cost_id, visit_occurrence_id, currency_concept_id, paid_copay, paid_coinsurance, paid_toward_deductible, paid_by_payer, paid_by_coordination_benefits, total_out_of_pocket, total_paid, payer_plan_period_id) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect visit_cost' AS test, CASE WHEN(SELECT COUNT(*) FROM visit_cost WHERE")
  first <- TRUE
  if (!missing(visit_cost_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(visit_cost_id)) {
      statement <- paste0(statement, ' visit_cost_id IS NULL')
    } else if (is(visit_cost_id, 'subQuery')){
      statement <- paste0(statement, ' visit_cost_id = (', as.character(visit_cost_id), ')')
    } else {
      statement <- paste0(statement, " visit_cost_id = '", visit_cost_id,"'")
    }
  }

  if (!missing(visit_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(visit_occurrence_id)) {
      statement <- paste0(statement, ' visit_occurrence_id IS NULL')
    } else if (is(visit_occurrence_id, 'subQuery')){
      statement <- paste0(statement, ' visit_occurrence_id = (', as.character(visit_occurrence_id), ')')
    } else {
      statement <- paste0(statement, " visit_occurrence_id = '", visit_occurrence_id,"'")
    }
  }

  if (!missing(currency_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(currency_concept_id)) {
      statement <- paste0(statement, ' currency_concept_id IS NULL')
    } else if (is(currency_concept_id, 'subQuery')){
      statement <- paste0(statement, ' currency_concept_id = (', as.character(currency_concept_id), ')')
    } else {
      statement <- paste0(statement, " currency_concept_id = '", currency_concept_id,"'")
    }
  }

  if (!missing(paid_copay)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_copay)) {
      statement <- paste0(statement, ' paid_copay IS NULL')
    } else if (is(paid_copay, 'subQuery')){
      statement <- paste0(statement, ' paid_copay = (', as.character(paid_copay), ')')
    } else {
      statement <- paste0(statement, " paid_copay = '", paid_copay,"'")
    }
  }

  if (!missing(paid_coinsurance)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_coinsurance)) {
      statement <- paste0(statement, ' paid_coinsurance IS NULL')
    } else if (is(paid_coinsurance, 'subQuery')){
      statement <- paste0(statement, ' paid_coinsurance = (', as.character(paid_coinsurance), ')')
    } else {
      statement <- paste0(statement, " paid_coinsurance = '", paid_coinsurance,"'")
    }
  }

  if (!missing(paid_toward_deductible)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_toward_deductible)) {
      statement <- paste0(statement, ' paid_toward_deductible IS NULL')
    } else if (is(paid_toward_deductible, 'subQuery')){
      statement <- paste0(statement, ' paid_toward_deductible = (', as.character(paid_toward_deductible), ')')
    } else {
      statement <- paste0(statement, " paid_toward_deductible = '", paid_toward_deductible,"'")
    }
  }

  if (!missing(paid_by_payer)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_by_payer)) {
      statement <- paste0(statement, ' paid_by_payer IS NULL')
    } else if (is(paid_by_payer, 'subQuery')){
      statement <- paste0(statement, ' paid_by_payer = (', as.character(paid_by_payer), ')')
    } else {
      statement <- paste0(statement, " paid_by_payer = '", paid_by_payer,"'")
    }
  }

  if (!missing(paid_by_coordination_benefits)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_by_coordination_benefits)) {
      statement <- paste0(statement, ' paid_by_coordination_benefits IS NULL')
    } else if (is(paid_by_coordination_benefits, 'subQuery')){
      statement <- paste0(statement, ' paid_by_coordination_benefits = (', as.character(paid_by_coordination_benefits), ')')
    } else {
      statement <- paste0(statement, " paid_by_coordination_benefits = '", paid_by_coordination_benefits,"'")
    }
  }

  if (!missing(total_out_of_pocket)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(total_out_of_pocket)) {
      statement <- paste0(statement, ' total_out_of_pocket IS NULL')
    } else if (is(total_out_of_pocket, 'subQuery')){
      statement <- paste0(statement, ' total_out_of_pocket = (', as.character(total_out_of_pocket), ')')
    } else {
      statement <- paste0(statement, " total_out_of_pocket = '", total_out_of_pocket,"'")
    }
  }

  if (!missing(total_paid)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(total_paid)) {
      statement <- paste0(statement, ' total_paid IS NULL')
    } else if (is(total_paid, 'subQuery')){
      statement <- paste0(statement, ' total_paid = (', as.character(total_paid), ')')
    } else {
      statement <- paste0(statement, " total_paid = '", total_paid,"'")
    }
  }

  if (!missing(payer_plan_period_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(payer_plan_period_id)) {
      statement <- paste0(statement, ' payer_plan_period_id IS NULL')
    } else if (is(payer_plan_period_id, 'subQuery')){
      statement <- paste0(statement, ' payer_plan_period_id = (', as.character(payer_plan_period_id), ')')
    } else {
      statement <- paste0(statement, " payer_plan_period_id = '", payer_plan_period_id,"'")
    }
  }

  statement <- paste0(statement, ") = 0 THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_drug_cost <- function(drug_cost_id, drug_exposure_id, currency_concept_id, paid_copay, paid_coinsurance, paid_toward_deductible, paid_by_payer, paid_by_coordination_benefits, total_out_of_pocket, total_paid, ingredient_cost, dispensing_fee, average_wholesale_price, payer_plan_period_id) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect drug_cost' AS test, CASE WHEN(SELECT COUNT(*) FROM drug_cost WHERE")
  first <- TRUE
  if (!missing(drug_cost_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(drug_cost_id)) {
      statement <- paste0(statement, ' drug_cost_id IS NULL')
    } else if (is(drug_cost_id, 'subQuery')){
      statement <- paste0(statement, ' drug_cost_id = (', as.character(drug_cost_id), ')')
    } else {
      statement <- paste0(statement, " drug_cost_id = '", drug_cost_id,"'")
    }
  }

  if (!missing(drug_exposure_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(drug_exposure_id)) {
      statement <- paste0(statement, ' drug_exposure_id IS NULL')
    } else if (is(drug_exposure_id, 'subQuery')){
      statement <- paste0(statement, ' drug_exposure_id = (', as.character(drug_exposure_id), ')')
    } else {
      statement <- paste0(statement, " drug_exposure_id = '", drug_exposure_id,"'")
    }
  }

  if (!missing(currency_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(currency_concept_id)) {
      statement <- paste0(statement, ' currency_concept_id IS NULL')
    } else if (is(currency_concept_id, 'subQuery')){
      statement <- paste0(statement, ' currency_concept_id = (', as.character(currency_concept_id), ')')
    } else {
      statement <- paste0(statement, " currency_concept_id = '", currency_concept_id,"'")
    }
  }

  if (!missing(paid_copay)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_copay)) {
      statement <- paste0(statement, ' paid_copay IS NULL')
    } else if (is(paid_copay, 'subQuery')){
      statement <- paste0(statement, ' paid_copay = (', as.character(paid_copay), ')')
    } else {
      statement <- paste0(statement, " paid_copay = '", paid_copay,"'")
    }
  }

  if (!missing(paid_coinsurance)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_coinsurance)) {
      statement <- paste0(statement, ' paid_coinsurance IS NULL')
    } else if (is(paid_coinsurance, 'subQuery')){
      statement <- paste0(statement, ' paid_coinsurance = (', as.character(paid_coinsurance), ')')
    } else {
      statement <- paste0(statement, " paid_coinsurance = '", paid_coinsurance,"'")
    }
  }

  if (!missing(paid_toward_deductible)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_toward_deductible)) {
      statement <- paste0(statement, ' paid_toward_deductible IS NULL')
    } else if (is(paid_toward_deductible, 'subQuery')){
      statement <- paste0(statement, ' paid_toward_deductible = (', as.character(paid_toward_deductible), ')')
    } else {
      statement <- paste0(statement, " paid_toward_deductible = '", paid_toward_deductible,"'")
    }
  }

  if (!missing(paid_by_payer)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_by_payer)) {
      statement <- paste0(statement, ' paid_by_payer IS NULL')
    } else if (is(paid_by_payer, 'subQuery')){
      statement <- paste0(statement, ' paid_by_payer = (', as.character(paid_by_payer), ')')
    } else {
      statement <- paste0(statement, " paid_by_payer = '", paid_by_payer,"'")
    }
  }

  if (!missing(paid_by_coordination_benefits)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_by_coordination_benefits)) {
      statement <- paste0(statement, ' paid_by_coordination_benefits IS NULL')
    } else if (is(paid_by_coordination_benefits, 'subQuery')){
      statement <- paste0(statement, ' paid_by_coordination_benefits = (', as.character(paid_by_coordination_benefits), ')')
    } else {
      statement <- paste0(statement, " paid_by_coordination_benefits = '", paid_by_coordination_benefits,"'")
    }
  }

  if (!missing(total_out_of_pocket)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(total_out_of_pocket)) {
      statement <- paste0(statement, ' total_out_of_pocket IS NULL')
    } else if (is(total_out_of_pocket, 'subQuery')){
      statement <- paste0(statement, ' total_out_of_pocket = (', as.character(total_out_of_pocket), ')')
    } else {
      statement <- paste0(statement, " total_out_of_pocket = '", total_out_of_pocket,"'")
    }
  }

  if (!missing(total_paid)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(total_paid)) {
      statement <- paste0(statement, ' total_paid IS NULL')
    } else if (is(total_paid, 'subQuery')){
      statement <- paste0(statement, ' total_paid = (', as.character(total_paid), ')')
    } else {
      statement <- paste0(statement, " total_paid = '", total_paid,"'")
    }
  }

  if (!missing(ingredient_cost)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(ingredient_cost)) {
      statement <- paste0(statement, ' ingredient_cost IS NULL')
    } else if (is(ingredient_cost, 'subQuery')){
      statement <- paste0(statement, ' ingredient_cost = (', as.character(ingredient_cost), ')')
    } else {
      statement <- paste0(statement, " ingredient_cost = '", ingredient_cost,"'")
    }
  }

  if (!missing(dispensing_fee)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(dispensing_fee)) {
      statement <- paste0(statement, ' dispensing_fee IS NULL')
    } else if (is(dispensing_fee, 'subQuery')){
      statement <- paste0(statement, ' dispensing_fee = (', as.character(dispensing_fee), ')')
    } else {
      statement <- paste0(statement, " dispensing_fee = '", dispensing_fee,"'")
    }
  }

  if (!missing(average_wholesale_price)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(average_wholesale_price)) {
      statement <- paste0(statement, ' average_wholesale_price IS NULL')
    } else if (is(average_wholesale_price, 'subQuery')){
      statement <- paste0(statement, ' average_wholesale_price = (', as.character(average_wholesale_price), ')')
    } else {
      statement <- paste0(statement, " average_wholesale_price = '", average_wholesale_price,"'")
    }
  }

  if (!missing(payer_plan_period_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(payer_plan_period_id)) {
      statement <- paste0(statement, ' payer_plan_period_id IS NULL')
    } else if (is(payer_plan_period_id, 'subQuery')){
      statement <- paste0(statement, ' payer_plan_period_id = (', as.character(payer_plan_period_id), ')')
    } else {
      statement <- paste0(statement, " payer_plan_period_id = '", payer_plan_period_id,"'")
    }
  }

  statement <- paste0(statement, ") = 0 THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_payer_plan_period <- function(payer_plan_period_id, person_id, payer_plan_period_start_date, payer_plan_period_end_date, payer_source_value, plan_source_value, family_source_value) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect payer_plan_period' AS test, CASE WHEN(SELECT COUNT(*) FROM payer_plan_period WHERE")
  first <- TRUE
  if (!missing(payer_plan_period_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(payer_plan_period_id)) {
      statement <- paste0(statement, ' payer_plan_period_id IS NULL')
    } else if (is(payer_plan_period_id, 'subQuery')){
      statement <- paste0(statement, ' payer_plan_period_id = (', as.character(payer_plan_period_id), ')')
    } else {
      statement <- paste0(statement, " payer_plan_period_id = '", payer_plan_period_id,"'")
    }
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(person_id)) {
      statement <- paste0(statement, ' person_id IS NULL')
    } else if (is(person_id, 'subQuery')){
      statement <- paste0(statement, ' person_id = (', as.character(person_id), ')')
    } else {
      statement <- paste0(statement, " person_id = '", person_id,"'")
    }
  }

  if (!missing(payer_plan_period_start_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(payer_plan_period_start_date)) {
      statement <- paste0(statement, ' payer_plan_period_start_date IS NULL')
    } else if (is(payer_plan_period_start_date, 'subQuery')){
      statement <- paste0(statement, ' payer_plan_period_start_date = (', as.character(payer_plan_period_start_date), ')')
    } else {
      statement <- paste0(statement, " payer_plan_period_start_date = '", payer_plan_period_start_date,"'")
    }
  }

  if (!missing(payer_plan_period_end_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(payer_plan_period_end_date)) {
      statement <- paste0(statement, ' payer_plan_period_end_date IS NULL')
    } else if (is(payer_plan_period_end_date, 'subQuery')){
      statement <- paste0(statement, ' payer_plan_period_end_date = (', as.character(payer_plan_period_end_date), ')')
    } else {
      statement <- paste0(statement, " payer_plan_period_end_date = '", payer_plan_period_end_date,"'")
    }
  }

  if (!missing(payer_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(payer_source_value)) {
      statement <- paste0(statement, ' payer_source_value IS NULL')
    } else if (is(payer_source_value, 'subQuery')){
      statement <- paste0(statement, ' payer_source_value = (', as.character(payer_source_value), ')')
    } else {
      statement <- paste0(statement, " payer_source_value = '", payer_source_value,"'")
    }
  }

  if (!missing(plan_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(plan_source_value)) {
      statement <- paste0(statement, ' plan_source_value IS NULL')
    } else if (is(plan_source_value, 'subQuery')){
      statement <- paste0(statement, ' plan_source_value = (', as.character(plan_source_value), ')')
    } else {
      statement <- paste0(statement, " plan_source_value = '", plan_source_value,"'")
    }
  }

  if (!missing(family_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(family_source_value)) {
      statement <- paste0(statement, ' family_source_value IS NULL')
    } else if (is(family_source_value, 'subQuery')){
      statement <- paste0(statement, ' family_source_value = (', as.character(family_source_value), ')')
    } else {
      statement <- paste0(statement, " family_source_value = '", family_source_value,"'")
    }
  }

  statement <- paste0(statement, ") = 0 THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_device_cost <- function(device_cost_id, device_exposure_id, currency_concept_id, paid_copay, paid_coinsurance, paid_toward_deductible, paid_by_payer, paid_by_coordination_benefits, total_out_of_pocket, total_paid, payer_plan_period_id) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect device_cost' AS test, CASE WHEN(SELECT COUNT(*) FROM device_cost WHERE")
  first <- TRUE
  if (!missing(device_cost_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(device_cost_id)) {
      statement <- paste0(statement, ' device_cost_id IS NULL')
    } else if (is(device_cost_id, 'subQuery')){
      statement <- paste0(statement, ' device_cost_id = (', as.character(device_cost_id), ')')
    } else {
      statement <- paste0(statement, " device_cost_id = '", device_cost_id,"'")
    }
  }

  if (!missing(device_exposure_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(device_exposure_id)) {
      statement <- paste0(statement, ' device_exposure_id IS NULL')
    } else if (is(device_exposure_id, 'subQuery')){
      statement <- paste0(statement, ' device_exposure_id = (', as.character(device_exposure_id), ')')
    } else {
      statement <- paste0(statement, " device_exposure_id = '", device_exposure_id,"'")
    }
  }

  if (!missing(currency_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(currency_concept_id)) {
      statement <- paste0(statement, ' currency_concept_id IS NULL')
    } else if (is(currency_concept_id, 'subQuery')){
      statement <- paste0(statement, ' currency_concept_id = (', as.character(currency_concept_id), ')')
    } else {
      statement <- paste0(statement, " currency_concept_id = '", currency_concept_id,"'")
    }
  }

  if (!missing(paid_copay)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_copay)) {
      statement <- paste0(statement, ' paid_copay IS NULL')
    } else if (is(paid_copay, 'subQuery')){
      statement <- paste0(statement, ' paid_copay = (', as.character(paid_copay), ')')
    } else {
      statement <- paste0(statement, " paid_copay = '", paid_copay,"'")
    }
  }

  if (!missing(paid_coinsurance)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_coinsurance)) {
      statement <- paste0(statement, ' paid_coinsurance IS NULL')
    } else if (is(paid_coinsurance, 'subQuery')){
      statement <- paste0(statement, ' paid_coinsurance = (', as.character(paid_coinsurance), ')')
    } else {
      statement <- paste0(statement, " paid_coinsurance = '", paid_coinsurance,"'")
    }
  }

  if (!missing(paid_toward_deductible)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_toward_deductible)) {
      statement <- paste0(statement, ' paid_toward_deductible IS NULL')
    } else if (is(paid_toward_deductible, 'subQuery')){
      statement <- paste0(statement, ' paid_toward_deductible = (', as.character(paid_toward_deductible), ')')
    } else {
      statement <- paste0(statement, " paid_toward_deductible = '", paid_toward_deductible,"'")
    }
  }

  if (!missing(paid_by_payer)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_by_payer)) {
      statement <- paste0(statement, ' paid_by_payer IS NULL')
    } else if (is(paid_by_payer, 'subQuery')){
      statement <- paste0(statement, ' paid_by_payer = (', as.character(paid_by_payer), ')')
    } else {
      statement <- paste0(statement, " paid_by_payer = '", paid_by_payer,"'")
    }
  }

  if (!missing(paid_by_coordination_benefits)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_by_coordination_benefits)) {
      statement <- paste0(statement, ' paid_by_coordination_benefits IS NULL')
    } else if (is(paid_by_coordination_benefits, 'subQuery')){
      statement <- paste0(statement, ' paid_by_coordination_benefits = (', as.character(paid_by_coordination_benefits), ')')
    } else {
      statement <- paste0(statement, " paid_by_coordination_benefits = '", paid_by_coordination_benefits,"'")
    }
  }

  if (!missing(total_out_of_pocket)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(total_out_of_pocket)) {
      statement <- paste0(statement, ' total_out_of_pocket IS NULL')
    } else if (is(total_out_of_pocket, 'subQuery')){
      statement <- paste0(statement, ' total_out_of_pocket = (', as.character(total_out_of_pocket), ')')
    } else {
      statement <- paste0(statement, " total_out_of_pocket = '", total_out_of_pocket,"'")
    }
  }

  if (!missing(total_paid)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(total_paid)) {
      statement <- paste0(statement, ' total_paid IS NULL')
    } else if (is(total_paid, 'subQuery')){
      statement <- paste0(statement, ' total_paid = (', as.character(total_paid), ')')
    } else {
      statement <- paste0(statement, " total_paid = '", total_paid,"'")
    }
  }

  if (!missing(payer_plan_period_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(payer_plan_period_id)) {
      statement <- paste0(statement, ' payer_plan_period_id IS NULL')
    } else if (is(payer_plan_period_id, 'subQuery')){
      statement <- paste0(statement, ' payer_plan_period_id = (', as.character(payer_plan_period_id), ')')
    } else {
      statement <- paste0(statement, " payer_plan_period_id = '", payer_plan_period_id,"'")
    }
  }

  statement <- paste0(statement, ") = 0 THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_dose_era <- function(dose_era_id, person_id, drug_concept_id, unit_concept_id, dose_value, dose_era_start_date, dose_era_end_date) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect dose_era' AS test, CASE WHEN(SELECT COUNT(*) FROM dose_era WHERE")
  first <- TRUE
  if (!missing(dose_era_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(dose_era_id)) {
      statement <- paste0(statement, ' dose_era_id IS NULL')
    } else if (is(dose_era_id, 'subQuery')){
      statement <- paste0(statement, ' dose_era_id = (', as.character(dose_era_id), ')')
    } else {
      statement <- paste0(statement, " dose_era_id = '", dose_era_id,"'")
    }
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(person_id)) {
      statement <- paste0(statement, ' person_id IS NULL')
    } else if (is(person_id, 'subQuery')){
      statement <- paste0(statement, ' person_id = (', as.character(person_id), ')')
    } else {
      statement <- paste0(statement, " person_id = '", person_id,"'")
    }
  }

  if (!missing(drug_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(drug_concept_id)) {
      statement <- paste0(statement, ' drug_concept_id IS NULL')
    } else if (is(drug_concept_id, 'subQuery')){
      statement <- paste0(statement, ' drug_concept_id = (', as.character(drug_concept_id), ')')
    } else {
      statement <- paste0(statement, " drug_concept_id = '", drug_concept_id,"'")
    }
  }

  if (!missing(unit_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(unit_concept_id)) {
      statement <- paste0(statement, ' unit_concept_id IS NULL')
    } else if (is(unit_concept_id, 'subQuery')){
      statement <- paste0(statement, ' unit_concept_id = (', as.character(unit_concept_id), ')')
    } else {
      statement <- paste0(statement, " unit_concept_id = '", unit_concept_id,"'")
    }
  }

  if (!missing(dose_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(dose_value)) {
      statement <- paste0(statement, ' dose_value IS NULL')
    } else if (is(dose_value, 'subQuery')){
      statement <- paste0(statement, ' dose_value = (', as.character(dose_value), ')')
    } else {
      statement <- paste0(statement, " dose_value = '", dose_value,"'")
    }
  }

  if (!missing(dose_era_start_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(dose_era_start_date)) {
      statement <- paste0(statement, ' dose_era_start_date IS NULL')
    } else if (is(dose_era_start_date, 'subQuery')){
      statement <- paste0(statement, ' dose_era_start_date = (', as.character(dose_era_start_date), ')')
    } else {
      statement <- paste0(statement, " dose_era_start_date = '", dose_era_start_date,"'")
    }
  }

  if (!missing(dose_era_end_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(dose_era_end_date)) {
      statement <- paste0(statement, ' dose_era_end_date IS NULL')
    } else if (is(dose_era_end_date, 'subQuery')){
      statement <- paste0(statement, ' dose_era_end_date = (', as.character(dose_era_end_date), ')')
    } else {
      statement <- paste0(statement, " dose_era_end_date = '", dose_era_end_date,"'")
    }
  }

  statement <- paste0(statement, ") = 0 THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_condition_era <- function(condition_era_id, person_id, condition_concept_id, condition_era_start_date, condition_era_end_date, condition_occurrence_count) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect condition_era' AS test, CASE WHEN(SELECT COUNT(*) FROM condition_era WHERE")
  first <- TRUE
  if (!missing(condition_era_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(condition_era_id)) {
      statement <- paste0(statement, ' condition_era_id IS NULL')
    } else if (is(condition_era_id, 'subQuery')){
      statement <- paste0(statement, ' condition_era_id = (', as.character(condition_era_id), ')')
    } else {
      statement <- paste0(statement, " condition_era_id = '", condition_era_id,"'")
    }
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(person_id)) {
      statement <- paste0(statement, ' person_id IS NULL')
    } else if (is(person_id, 'subQuery')){
      statement <- paste0(statement, ' person_id = (', as.character(person_id), ')')
    } else {
      statement <- paste0(statement, " person_id = '", person_id,"'")
    }
  }

  if (!missing(condition_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(condition_concept_id)) {
      statement <- paste0(statement, ' condition_concept_id IS NULL')
    } else if (is(condition_concept_id, 'subQuery')){
      statement <- paste0(statement, ' condition_concept_id = (', as.character(condition_concept_id), ')')
    } else {
      statement <- paste0(statement, " condition_concept_id = '", condition_concept_id,"'")
    }
  }

  if (!missing(condition_era_start_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(condition_era_start_date)) {
      statement <- paste0(statement, ' condition_era_start_date IS NULL')
    } else if (is(condition_era_start_date, 'subQuery')){
      statement <- paste0(statement, ' condition_era_start_date = (', as.character(condition_era_start_date), ')')
    } else {
      statement <- paste0(statement, " condition_era_start_date = '", condition_era_start_date,"'")
    }
  }

  if (!missing(condition_era_end_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(condition_era_end_date)) {
      statement <- paste0(statement, ' condition_era_end_date IS NULL')
    } else if (is(condition_era_end_date, 'subQuery')){
      statement <- paste0(statement, ' condition_era_end_date = (', as.character(condition_era_end_date), ')')
    } else {
      statement <- paste0(statement, " condition_era_end_date = '", condition_era_end_date,"'")
    }
  }

  if (!missing(condition_occurrence_count)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(condition_occurrence_count)) {
      statement <- paste0(statement, ' condition_occurrence_count IS NULL')
    } else if (is(condition_occurrence_count, 'subQuery')){
      statement <- paste0(statement, ' condition_occurrence_count = (', as.character(condition_occurrence_count), ')')
    } else {
      statement <- paste0(statement, " condition_occurrence_count = '", condition_occurrence_count,"'")
    }
  }

  statement <- paste0(statement, ") = 0 THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_cdm_source <- function(cdm_source_name, cdm_source_abbreviation, cdm_holder, source_description, source_documentation_reference, cdm_etl_reference, source_release_date, cdm_release_date, cdm_version, vocabulary_version) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect cdm_source' AS test, CASE WHEN(SELECT COUNT(*) FROM cdm_source WHERE")
  first <- TRUE
  if (!missing(cdm_source_name)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cdm_source_name)) {
      statement <- paste0(statement, ' cdm_source_name IS NULL')
    } else if (is(cdm_source_name, 'subQuery')){
      statement <- paste0(statement, ' cdm_source_name = (', as.character(cdm_source_name), ')')
    } else {
      statement <- paste0(statement, " cdm_source_name = '", cdm_source_name,"'")
    }
  }

  if (!missing(cdm_source_abbreviation)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cdm_source_abbreviation)) {
      statement <- paste0(statement, ' cdm_source_abbreviation IS NULL')
    } else if (is(cdm_source_abbreviation, 'subQuery')){
      statement <- paste0(statement, ' cdm_source_abbreviation = (', as.character(cdm_source_abbreviation), ')')
    } else {
      statement <- paste0(statement, " cdm_source_abbreviation = '", cdm_source_abbreviation,"'")
    }
  }

  if (!missing(cdm_holder)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cdm_holder)) {
      statement <- paste0(statement, ' cdm_holder IS NULL')
    } else if (is(cdm_holder, 'subQuery')){
      statement <- paste0(statement, ' cdm_holder = (', as.character(cdm_holder), ')')
    } else {
      statement <- paste0(statement, " cdm_holder = '", cdm_holder,"'")
    }
  }

  if (!missing(source_description)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(source_description)) {
      statement <- paste0(statement, ' source_description IS NULL')
    } else if (is(source_description, 'subQuery')){
      statement <- paste0(statement, ' source_description = (', as.character(source_description), ')')
    } else {
      statement <- paste0(statement, " source_description = '", source_description,"'")
    }
  }

  if (!missing(source_documentation_reference)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(source_documentation_reference)) {
      statement <- paste0(statement, ' source_documentation_reference IS NULL')
    } else if (is(source_documentation_reference, 'subQuery')){
      statement <- paste0(statement, ' source_documentation_reference = (', as.character(source_documentation_reference), ')')
    } else {
      statement <- paste0(statement, " source_documentation_reference = '", source_documentation_reference,"'")
    }
  }

  if (!missing(cdm_etl_reference)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cdm_etl_reference)) {
      statement <- paste0(statement, ' cdm_etl_reference IS NULL')
    } else if (is(cdm_etl_reference, 'subQuery')){
      statement <- paste0(statement, ' cdm_etl_reference = (', as.character(cdm_etl_reference), ')')
    } else {
      statement <- paste0(statement, " cdm_etl_reference = '", cdm_etl_reference,"'")
    }
  }

  if (!missing(source_release_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(source_release_date)) {
      statement <- paste0(statement, ' source_release_date IS NULL')
    } else if (is(source_release_date, 'subQuery')){
      statement <- paste0(statement, ' source_release_date = (', as.character(source_release_date), ')')
    } else {
      statement <- paste0(statement, " source_release_date = '", source_release_date,"'")
    }
  }

  if (!missing(cdm_release_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cdm_release_date)) {
      statement <- paste0(statement, ' cdm_release_date IS NULL')
    } else if (is(cdm_release_date, 'subQuery')){
      statement <- paste0(statement, ' cdm_release_date = (', as.character(cdm_release_date), ')')
    } else {
      statement <- paste0(statement, " cdm_release_date = '", cdm_release_date,"'")
    }
  }

  if (!missing(cdm_version)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cdm_version)) {
      statement <- paste0(statement, ' cdm_version IS NULL')
    } else if (is(cdm_version, 'subQuery')){
      statement <- paste0(statement, ' cdm_version = (', as.character(cdm_version), ')')
    } else {
      statement <- paste0(statement, " cdm_version = '", cdm_version,"'")
    }
  }

  if (!missing(vocabulary_version)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(vocabulary_version)) {
      statement <- paste0(statement, ' vocabulary_version IS NULL')
    } else if (is(vocabulary_version, 'subQuery')){
      statement <- paste0(statement, ' vocabulary_version = (', as.character(vocabulary_version), ')')
    } else {
      statement <- paste0(statement, " vocabulary_version = '", vocabulary_version,"'")
    }
  }

  statement <- paste0(statement, ") = 0 THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_cohort <- function(cohort_definition_id, subject_id, cohort_start_date, cohort_end_date) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect cohort' AS test, CASE WHEN(SELECT COUNT(*) FROM cohort WHERE")
  first <- TRUE
  if (!missing(cohort_definition_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cohort_definition_id)) {
      statement <- paste0(statement, ' cohort_definition_id IS NULL')
    } else if (is(cohort_definition_id, 'subQuery')){
      statement <- paste0(statement, ' cohort_definition_id = (', as.character(cohort_definition_id), ')')
    } else {
      statement <- paste0(statement, " cohort_definition_id = '", cohort_definition_id,"'")
    }
  }

  if (!missing(subject_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(subject_id)) {
      statement <- paste0(statement, ' subject_id IS NULL')
    } else if (is(subject_id, 'subQuery')){
      statement <- paste0(statement, ' subject_id = (', as.character(subject_id), ')')
    } else {
      statement <- paste0(statement, " subject_id = '", subject_id,"'")
    }
  }

  if (!missing(cohort_start_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cohort_start_date)) {
      statement <- paste0(statement, ' cohort_start_date IS NULL')
    } else if (is(cohort_start_date, 'subQuery')){
      statement <- paste0(statement, ' cohort_start_date = (', as.character(cohort_start_date), ')')
    } else {
      statement <- paste0(statement, " cohort_start_date = '", cohort_start_date,"'")
    }
  }

  if (!missing(cohort_end_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cohort_end_date)) {
      statement <- paste0(statement, ' cohort_end_date IS NULL')
    } else if (is(cohort_end_date, 'subQuery')){
      statement <- paste0(statement, ' cohort_end_date = (', as.character(cohort_end_date), ')')
    } else {
      statement <- paste0(statement, " cohort_end_date = '", cohort_end_date,"'")
    }
  }

  statement <- paste0(statement, ") = 0 THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_cohort_definition <- function(cohort_definition_id, cohort_definition_name, cohort_definition_description, definition_type_concept_id, cohort_definition_syntax, subject_concept_id, cohort_instantiation_date) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect cohort_definition' AS test, CASE WHEN(SELECT COUNT(*) FROM cohort_definition WHERE")
  first <- TRUE
  if (!missing(cohort_definition_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cohort_definition_id)) {
      statement <- paste0(statement, ' cohort_definition_id IS NULL')
    } else if (is(cohort_definition_id, 'subQuery')){
      statement <- paste0(statement, ' cohort_definition_id = (', as.character(cohort_definition_id), ')')
    } else {
      statement <- paste0(statement, " cohort_definition_id = '", cohort_definition_id,"'")
    }
  }

  if (!missing(cohort_definition_name)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cohort_definition_name)) {
      statement <- paste0(statement, ' cohort_definition_name IS NULL')
    } else if (is(cohort_definition_name, 'subQuery')){
      statement <- paste0(statement, ' cohort_definition_name = (', as.character(cohort_definition_name), ')')
    } else {
      statement <- paste0(statement, " cohort_definition_name = '", cohort_definition_name,"'")
    }
  }

  if (!missing(cohort_definition_description)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cohort_definition_description)) {
      statement <- paste0(statement, ' cohort_definition_description IS NULL')
    } else if (is(cohort_definition_description, 'subQuery')){
      statement <- paste0(statement, ' cohort_definition_description = (', as.character(cohort_definition_description), ')')
    } else {
      statement <- paste0(statement, " cohort_definition_description = '", cohort_definition_description,"'")
    }
  }

  if (!missing(definition_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(definition_type_concept_id)) {
      statement <- paste0(statement, ' definition_type_concept_id IS NULL')
    } else if (is(definition_type_concept_id, 'subQuery')){
      statement <- paste0(statement, ' definition_type_concept_id = (', as.character(definition_type_concept_id), ')')
    } else {
      statement <- paste0(statement, " definition_type_concept_id = '", definition_type_concept_id,"'")
    }
  }

  if (!missing(cohort_definition_syntax)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cohort_definition_syntax)) {
      statement <- paste0(statement, ' cohort_definition_syntax IS NULL')
    } else if (is(cohort_definition_syntax, 'subQuery')){
      statement <- paste0(statement, ' cohort_definition_syntax = (', as.character(cohort_definition_syntax), ')')
    } else {
      statement <- paste0(statement, " cohort_definition_syntax = '", cohort_definition_syntax,"'")
    }
  }

  if (!missing(subject_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(subject_concept_id)) {
      statement <- paste0(statement, ' subject_concept_id IS NULL')
    } else if (is(subject_concept_id, 'subQuery')){
      statement <- paste0(statement, ' subject_concept_id = (', as.character(subject_concept_id), ')')
    } else {
      statement <- paste0(statement, " subject_concept_id = '", subject_concept_id,"'")
    }
  }

  if (!missing(cohort_instantiation_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cohort_instantiation_date)) {
      statement <- paste0(statement, ' cohort_instantiation_date IS NULL')
    } else if (is(cohort_instantiation_date, 'subQuery')){
      statement <- paste0(statement, ' cohort_instantiation_date = (', as.character(cohort_instantiation_date), ')')
    } else {
      statement <- paste0(statement, " cohort_instantiation_date = '", cohort_instantiation_date,"'")
    }
  }

  statement <- paste0(statement, ") = 0 THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_cohort_attribute <- function(cohort_definition_id, cohort_start_date, cohort_end_date, subject_id, attribute_definition_id, value_as_number, value_as_concept_id) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect cohort_attribute' AS test, CASE WHEN(SELECT COUNT(*) FROM cohort_attribute WHERE")
  first <- TRUE
  if (!missing(cohort_definition_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cohort_definition_id)) {
      statement <- paste0(statement, ' cohort_definition_id IS NULL')
    } else if (is(cohort_definition_id, 'subQuery')){
      statement <- paste0(statement, ' cohort_definition_id = (', as.character(cohort_definition_id), ')')
    } else {
      statement <- paste0(statement, " cohort_definition_id = '", cohort_definition_id,"'")
    }
  }

  if (!missing(cohort_start_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cohort_start_date)) {
      statement <- paste0(statement, ' cohort_start_date IS NULL')
    } else if (is(cohort_start_date, 'subQuery')){
      statement <- paste0(statement, ' cohort_start_date = (', as.character(cohort_start_date), ')')
    } else {
      statement <- paste0(statement, " cohort_start_date = '", cohort_start_date,"'")
    }
  }

  if (!missing(cohort_end_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cohort_end_date)) {
      statement <- paste0(statement, ' cohort_end_date IS NULL')
    } else if (is(cohort_end_date, 'subQuery')){
      statement <- paste0(statement, ' cohort_end_date = (', as.character(cohort_end_date), ')')
    } else {
      statement <- paste0(statement, " cohort_end_date = '", cohort_end_date,"'")
    }
  }

  if (!missing(subject_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(subject_id)) {
      statement <- paste0(statement, ' subject_id IS NULL')
    } else if (is(subject_id, 'subQuery')){
      statement <- paste0(statement, ' subject_id = (', as.character(subject_id), ')')
    } else {
      statement <- paste0(statement, " subject_id = '", subject_id,"'")
    }
  }

  if (!missing(attribute_definition_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(attribute_definition_id)) {
      statement <- paste0(statement, ' attribute_definition_id IS NULL')
    } else if (is(attribute_definition_id, 'subQuery')){
      statement <- paste0(statement, ' attribute_definition_id = (', as.character(attribute_definition_id), ')')
    } else {
      statement <- paste0(statement, " attribute_definition_id = '", attribute_definition_id,"'")
    }
  }

  if (!missing(value_as_number)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(value_as_number)) {
      statement <- paste0(statement, ' value_as_number IS NULL')
    } else if (is(value_as_number, 'subQuery')){
      statement <- paste0(statement, ' value_as_number = (', as.character(value_as_number), ')')
    } else {
      statement <- paste0(statement, " value_as_number = '", value_as_number,"'")
    }
  }

  if (!missing(value_as_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(value_as_concept_id)) {
      statement <- paste0(statement, ' value_as_concept_id IS NULL')
    } else if (is(value_as_concept_id, 'subQuery')){
      statement <- paste0(statement, ' value_as_concept_id = (', as.character(value_as_concept_id), ')')
    } else {
      statement <- paste0(statement, " value_as_concept_id = '", value_as_concept_id,"'")
    }
  }

  statement <- paste0(statement, ") = 0 THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_attribute_definition <- function(attribute_definition_id, attribute_name, attribute_description, attribute_type_concept_id, attribute_syntax) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect attribute_definition' AS test, CASE WHEN(SELECT COUNT(*) FROM attribute_definition WHERE")
  first <- TRUE
  if (!missing(attribute_definition_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(attribute_definition_id)) {
      statement <- paste0(statement, ' attribute_definition_id IS NULL')
    } else if (is(attribute_definition_id, 'subQuery')){
      statement <- paste0(statement, ' attribute_definition_id = (', as.character(attribute_definition_id), ')')
    } else {
      statement <- paste0(statement, " attribute_definition_id = '", attribute_definition_id,"'")
    }
  }

  if (!missing(attribute_name)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(attribute_name)) {
      statement <- paste0(statement, ' attribute_name IS NULL')
    } else if (is(attribute_name, 'subQuery')){
      statement <- paste0(statement, ' attribute_name = (', as.character(attribute_name), ')')
    } else {
      statement <- paste0(statement, " attribute_name = '", attribute_name,"'")
    }
  }

  if (!missing(attribute_description)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(attribute_description)) {
      statement <- paste0(statement, ' attribute_description IS NULL')
    } else if (is(attribute_description, 'subQuery')){
      statement <- paste0(statement, ' attribute_description = (', as.character(attribute_description), ')')
    } else {
      statement <- paste0(statement, " attribute_description = '", attribute_description,"'")
    }
  }

  if (!missing(attribute_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(attribute_type_concept_id)) {
      statement <- paste0(statement, ' attribute_type_concept_id IS NULL')
    } else if (is(attribute_type_concept_id, 'subQuery')){
      statement <- paste0(statement, ' attribute_type_concept_id = (', as.character(attribute_type_concept_id), ')')
    } else {
      statement <- paste0(statement, " attribute_type_concept_id = '", attribute_type_concept_id,"'")
    }
  }

  if (!missing(attribute_syntax)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(attribute_syntax)) {
      statement <- paste0(statement, ' attribute_syntax IS NULL')
    } else if (is(attribute_syntax, 'subQuery')){
      statement <- paste0(statement, ' attribute_syntax = (', as.character(attribute_syntax), ')')
    } else {
      statement <- paste0(statement, " attribute_syntax = '", attribute_syntax,"'")
    }
  }

  statement <- paste0(statement, ") = 0 THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_no_person <- function(person_id, person_source_value, gender_concept_id, gender_source_value, year_of_birth, month_of_birth, day_of_birth, time_of_birth, race_concept_id, ethnicity_concept_id, location_id, provider_id, care_site_id, gender_source_concept_id, race_source_value, race_source_concept_id, ethnicity_source_value, ethnicity_source_concept_id) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect person' AS test, CASE WHEN(SELECT COUNT(*) FROM person WHERE")
  first <- TRUE
  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(person_id)) {
      statement <- paste0(statement, ' person_id IS NULL')
    } else if (is(person_id, 'subQuery')){
      statement <- paste0(statement, ' person_id = (', as.character(person_id), ')')
    } else {
      statement <- paste0(statement, " person_id = '", person_id,"'")
    }
  }

  if (!missing(person_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(person_source_value)) {
      statement <- paste0(statement, ' person_source_value IS NULL')
    } else if (is(person_source_value, 'subQuery')){
      statement <- paste0(statement, ' person_source_value = (', as.character(person_source_value), ')')
    } else {
      statement <- paste0(statement, " person_source_value = '", person_source_value,"'")
    }
  }

  if (!missing(gender_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(gender_concept_id)) {
      statement <- paste0(statement, ' gender_concept_id IS NULL')
    } else if (is(gender_concept_id, 'subQuery')){
      statement <- paste0(statement, ' gender_concept_id = (', as.character(gender_concept_id), ')')
    } else {
      statement <- paste0(statement, " gender_concept_id = '", gender_concept_id,"'")
    }
  }

  if (!missing(gender_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(gender_source_value)) {
      statement <- paste0(statement, ' gender_source_value IS NULL')
    } else if (is(gender_source_value, 'subQuery')){
      statement <- paste0(statement, ' gender_source_value = (', as.character(gender_source_value), ')')
    } else {
      statement <- paste0(statement, " gender_source_value = '", gender_source_value,"'")
    }
  }

  if (!missing(year_of_birth)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(year_of_birth)) {
      statement <- paste0(statement, ' year_of_birth IS NULL')
    } else if (is(year_of_birth, 'subQuery')){
      statement <- paste0(statement, ' year_of_birth = (', as.character(year_of_birth), ')')
    } else {
      statement <- paste0(statement, " year_of_birth = '", year_of_birth,"'")
    }
  }

  if (!missing(month_of_birth)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(month_of_birth)) {
      statement <- paste0(statement, ' month_of_birth IS NULL')
    } else if (is(month_of_birth, 'subQuery')){
      statement <- paste0(statement, ' month_of_birth = (', as.character(month_of_birth), ')')
    } else {
      statement <- paste0(statement, " month_of_birth = '", month_of_birth,"'")
    }
  }

  if (!missing(day_of_birth)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(day_of_birth)) {
      statement <- paste0(statement, ' day_of_birth IS NULL')
    } else if (is(day_of_birth, 'subQuery')){
      statement <- paste0(statement, ' day_of_birth = (', as.character(day_of_birth), ')')
    } else {
      statement <- paste0(statement, " day_of_birth = '", day_of_birth,"'")
    }
  }

  if (!missing(time_of_birth)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(time_of_birth)) {
      statement <- paste0(statement, ' time_of_birth IS NULL')
    } else if (is(time_of_birth, 'subQuery')){
      statement <- paste0(statement, ' time_of_birth = (', as.character(time_of_birth), ')')
    } else {
      statement <- paste0(statement, " time_of_birth = '", time_of_birth,"'")
    }
  }

  if (!missing(race_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(race_concept_id)) {
      statement <- paste0(statement, ' race_concept_id IS NULL')
    } else if (is(race_concept_id, 'subQuery')){
      statement <- paste0(statement, ' race_concept_id = (', as.character(race_concept_id), ')')
    } else {
      statement <- paste0(statement, " race_concept_id = '", race_concept_id,"'")
    }
  }

  if (!missing(ethnicity_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(ethnicity_concept_id)) {
      statement <- paste0(statement, ' ethnicity_concept_id IS NULL')
    } else if (is(ethnicity_concept_id, 'subQuery')){
      statement <- paste0(statement, ' ethnicity_concept_id = (', as.character(ethnicity_concept_id), ')')
    } else {
      statement <- paste0(statement, " ethnicity_concept_id = '", ethnicity_concept_id,"'")
    }
  }

  if (!missing(location_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(location_id)) {
      statement <- paste0(statement, ' location_id IS NULL')
    } else if (is(location_id, 'subQuery')){
      statement <- paste0(statement, ' location_id = (', as.character(location_id), ')')
    } else {
      statement <- paste0(statement, " location_id = '", location_id,"'")
    }
  }

  if (!missing(provider_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(provider_id)) {
      statement <- paste0(statement, ' provider_id IS NULL')
    } else if (is(provider_id, 'subQuery')){
      statement <- paste0(statement, ' provider_id = (', as.character(provider_id), ')')
    } else {
      statement <- paste0(statement, " provider_id = '", provider_id,"'")
    }
  }

  if (!missing(care_site_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(care_site_id)) {
      statement <- paste0(statement, ' care_site_id IS NULL')
    } else if (is(care_site_id, 'subQuery')){
      statement <- paste0(statement, ' care_site_id = (', as.character(care_site_id), ')')
    } else {
      statement <- paste0(statement, " care_site_id = '", care_site_id,"'")
    }
  }

  if (!missing(gender_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(gender_source_concept_id)) {
      statement <- paste0(statement, ' gender_source_concept_id IS NULL')
    } else if (is(gender_source_concept_id, 'subQuery')){
      statement <- paste0(statement, ' gender_source_concept_id = (', as.character(gender_source_concept_id), ')')
    } else {
      statement <- paste0(statement, " gender_source_concept_id = '", gender_source_concept_id,"'")
    }
  }

  if (!missing(race_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(race_source_value)) {
      statement <- paste0(statement, ' race_source_value IS NULL')
    } else if (is(race_source_value, 'subQuery')){
      statement <- paste0(statement, ' race_source_value = (', as.character(race_source_value), ')')
    } else {
      statement <- paste0(statement, " race_source_value = '", race_source_value,"'")
    }
  }

  if (!missing(race_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(race_source_concept_id)) {
      statement <- paste0(statement, ' race_source_concept_id IS NULL')
    } else if (is(race_source_concept_id, 'subQuery')){
      statement <- paste0(statement, ' race_source_concept_id = (', as.character(race_source_concept_id), ')')
    } else {
      statement <- paste0(statement, " race_source_concept_id = '", race_source_concept_id,"'")
    }
  }

  if (!missing(ethnicity_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(ethnicity_source_value)) {
      statement <- paste0(statement, ' ethnicity_source_value IS NULL')
    } else if (is(ethnicity_source_value, 'subQuery')){
      statement <- paste0(statement, ' ethnicity_source_value = (', as.character(ethnicity_source_value), ')')
    } else {
      statement <- paste0(statement, " ethnicity_source_value = '", ethnicity_source_value,"'")
    }
  }

  if (!missing(ethnicity_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(ethnicity_source_concept_id)) {
      statement <- paste0(statement, ' ethnicity_source_concept_id IS NULL')
    } else if (is(ethnicity_source_concept_id, 'subQuery')){
      statement <- paste0(statement, ' ethnicity_source_concept_id = (', as.character(ethnicity_source_concept_id), ')')
    } else {
      statement <- paste0(statement, " ethnicity_source_concept_id = '", ethnicity_source_concept_id,"'")
    }
  }

  statement <- paste0(statement, ") != 0 THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_no_observation_period <- function(observation_period_id, person_id, observation_period_start_date, observation_period_end_date, period_type_concept_id) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect observation_period' AS test, CASE WHEN(SELECT COUNT(*) FROM observation_period WHERE")
  first <- TRUE
  if (!missing(observation_period_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(observation_period_id)) {
      statement <- paste0(statement, ' observation_period_id IS NULL')
    } else if (is(observation_period_id, 'subQuery')){
      statement <- paste0(statement, ' observation_period_id = (', as.character(observation_period_id), ')')
    } else {
      statement <- paste0(statement, " observation_period_id = '", observation_period_id,"'")
    }
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(person_id)) {
      statement <- paste0(statement, ' person_id IS NULL')
    } else if (is(person_id, 'subQuery')){
      statement <- paste0(statement, ' person_id = (', as.character(person_id), ')')
    } else {
      statement <- paste0(statement, " person_id = '", person_id,"'")
    }
  }

  if (!missing(observation_period_start_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(observation_period_start_date)) {
      statement <- paste0(statement, ' observation_period_start_date IS NULL')
    } else if (is(observation_period_start_date, 'subQuery')){
      statement <- paste0(statement, ' observation_period_start_date = (', as.character(observation_period_start_date), ')')
    } else {
      statement <- paste0(statement, " observation_period_start_date = '", observation_period_start_date,"'")
    }
  }

  if (!missing(observation_period_end_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(observation_period_end_date)) {
      statement <- paste0(statement, ' observation_period_end_date IS NULL')
    } else if (is(observation_period_end_date, 'subQuery')){
      statement <- paste0(statement, ' observation_period_end_date = (', as.character(observation_period_end_date), ')')
    } else {
      statement <- paste0(statement, " observation_period_end_date = '", observation_period_end_date,"'")
    }
  }

  if (!missing(period_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(period_type_concept_id)) {
      statement <- paste0(statement, ' period_type_concept_id IS NULL')
    } else if (is(period_type_concept_id, 'subQuery')){
      statement <- paste0(statement, ' period_type_concept_id = (', as.character(period_type_concept_id), ')')
    } else {
      statement <- paste0(statement, " period_type_concept_id = '", period_type_concept_id,"'")
    }
  }

  statement <- paste0(statement, ") != 0 THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_no_visit_occurrence <- function(visit_occurrence_id, person_id, visit_concept_id, visit_start_date, visit_start_time, visit_end_date, visit_end_time, visit_type_concept_id, provider_id, care_site_id, visit_source_value, visit_source_concept_id) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect visit_occurrence' AS test, CASE WHEN(SELECT COUNT(*) FROM visit_occurrence WHERE")
  first <- TRUE
  if (!missing(visit_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(visit_occurrence_id)) {
      statement <- paste0(statement, ' visit_occurrence_id IS NULL')
    } else if (is(visit_occurrence_id, 'subQuery')){
      statement <- paste0(statement, ' visit_occurrence_id = (', as.character(visit_occurrence_id), ')')
    } else {
      statement <- paste0(statement, " visit_occurrence_id = '", visit_occurrence_id,"'")
    }
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(person_id)) {
      statement <- paste0(statement, ' person_id IS NULL')
    } else if (is(person_id, 'subQuery')){
      statement <- paste0(statement, ' person_id = (', as.character(person_id), ')')
    } else {
      statement <- paste0(statement, " person_id = '", person_id,"'")
    }
  }

  if (!missing(visit_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(visit_concept_id)) {
      statement <- paste0(statement, ' visit_concept_id IS NULL')
    } else if (is(visit_concept_id, 'subQuery')){
      statement <- paste0(statement, ' visit_concept_id = (', as.character(visit_concept_id), ')')
    } else {
      statement <- paste0(statement, " visit_concept_id = '", visit_concept_id,"'")
    }
  }

  if (!missing(visit_start_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(visit_start_date)) {
      statement <- paste0(statement, ' visit_start_date IS NULL')
    } else if (is(visit_start_date, 'subQuery')){
      statement <- paste0(statement, ' visit_start_date = (', as.character(visit_start_date), ')')
    } else {
      statement <- paste0(statement, " visit_start_date = '", visit_start_date,"'")
    }
  }

  if (!missing(visit_start_time)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(visit_start_time)) {
      statement <- paste0(statement, ' visit_start_time IS NULL')
    } else if (is(visit_start_time, 'subQuery')){
      statement <- paste0(statement, ' visit_start_time = (', as.character(visit_start_time), ')')
    } else {
      statement <- paste0(statement, " visit_start_time = '", visit_start_time,"'")
    }
  }

  if (!missing(visit_end_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(visit_end_date)) {
      statement <- paste0(statement, ' visit_end_date IS NULL')
    } else if (is(visit_end_date, 'subQuery')){
      statement <- paste0(statement, ' visit_end_date = (', as.character(visit_end_date), ')')
    } else {
      statement <- paste0(statement, " visit_end_date = '", visit_end_date,"'")
    }
  }

  if (!missing(visit_end_time)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(visit_end_time)) {
      statement <- paste0(statement, ' visit_end_time IS NULL')
    } else if (is(visit_end_time, 'subQuery')){
      statement <- paste0(statement, ' visit_end_time = (', as.character(visit_end_time), ')')
    } else {
      statement <- paste0(statement, " visit_end_time = '", visit_end_time,"'")
    }
  }

  if (!missing(visit_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(visit_type_concept_id)) {
      statement <- paste0(statement, ' visit_type_concept_id IS NULL')
    } else if (is(visit_type_concept_id, 'subQuery')){
      statement <- paste0(statement, ' visit_type_concept_id = (', as.character(visit_type_concept_id), ')')
    } else {
      statement <- paste0(statement, " visit_type_concept_id = '", visit_type_concept_id,"'")
    }
  }

  if (!missing(provider_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(provider_id)) {
      statement <- paste0(statement, ' provider_id IS NULL')
    } else if (is(provider_id, 'subQuery')){
      statement <- paste0(statement, ' provider_id = (', as.character(provider_id), ')')
    } else {
      statement <- paste0(statement, " provider_id = '", provider_id,"'")
    }
  }

  if (!missing(care_site_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(care_site_id)) {
      statement <- paste0(statement, ' care_site_id IS NULL')
    } else if (is(care_site_id, 'subQuery')){
      statement <- paste0(statement, ' care_site_id = (', as.character(care_site_id), ')')
    } else {
      statement <- paste0(statement, " care_site_id = '", care_site_id,"'")
    }
  }

  if (!missing(visit_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(visit_source_value)) {
      statement <- paste0(statement, ' visit_source_value IS NULL')
    } else if (is(visit_source_value, 'subQuery')){
      statement <- paste0(statement, ' visit_source_value = (', as.character(visit_source_value), ')')
    } else {
      statement <- paste0(statement, " visit_source_value = '", visit_source_value,"'")
    }
  }

  if (!missing(visit_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(visit_source_concept_id)) {
      statement <- paste0(statement, ' visit_source_concept_id IS NULL')
    } else if (is(visit_source_concept_id, 'subQuery')){
      statement <- paste0(statement, ' visit_source_concept_id = (', as.character(visit_source_concept_id), ')')
    } else {
      statement <- paste0(statement, " visit_source_concept_id = '", visit_source_concept_id,"'")
    }
  }

  statement <- paste0(statement, ") != 0 THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_no_death <- function(person_id, death_date, death_type_concept_id, cause_concept_id, cause_source_value, cause_source_concept_id) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect death' AS test, CASE WHEN(SELECT COUNT(*) FROM death WHERE")
  first <- TRUE
  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(person_id)) {
      statement <- paste0(statement, ' person_id IS NULL')
    } else if (is(person_id, 'subQuery')){
      statement <- paste0(statement, ' person_id = (', as.character(person_id), ')')
    } else {
      statement <- paste0(statement, " person_id = '", person_id,"'")
    }
  }

  if (!missing(death_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(death_date)) {
      statement <- paste0(statement, ' death_date IS NULL')
    } else if (is(death_date, 'subQuery')){
      statement <- paste0(statement, ' death_date = (', as.character(death_date), ')')
    } else {
      statement <- paste0(statement, " death_date = '", death_date,"'")
    }
  }

  if (!missing(death_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(death_type_concept_id)) {
      statement <- paste0(statement, ' death_type_concept_id IS NULL')
    } else if (is(death_type_concept_id, 'subQuery')){
      statement <- paste0(statement, ' death_type_concept_id = (', as.character(death_type_concept_id), ')')
    } else {
      statement <- paste0(statement, " death_type_concept_id = '", death_type_concept_id,"'")
    }
  }

  if (!missing(cause_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cause_concept_id)) {
      statement <- paste0(statement, ' cause_concept_id IS NULL')
    } else if (is(cause_concept_id, 'subQuery')){
      statement <- paste0(statement, ' cause_concept_id = (', as.character(cause_concept_id), ')')
    } else {
      statement <- paste0(statement, " cause_concept_id = '", cause_concept_id,"'")
    }
  }

  if (!missing(cause_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cause_source_value)) {
      statement <- paste0(statement, ' cause_source_value IS NULL')
    } else if (is(cause_source_value, 'subQuery')){
      statement <- paste0(statement, ' cause_source_value = (', as.character(cause_source_value), ')')
    } else {
      statement <- paste0(statement, " cause_source_value = '", cause_source_value,"'")
    }
  }

  if (!missing(cause_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cause_source_concept_id)) {
      statement <- paste0(statement, ' cause_source_concept_id IS NULL')
    } else if (is(cause_source_concept_id, 'subQuery')){
      statement <- paste0(statement, ' cause_source_concept_id = (', as.character(cause_source_concept_id), ')')
    } else {
      statement <- paste0(statement, " cause_source_concept_id = '", cause_source_concept_id,"'")
    }
  }

  statement <- paste0(statement, ") != 0 THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_no_condition_occurrence <- function(condition_occurrence_id, person_id, condition_start_date, condition_end_date, condition_concept_id, condition_source_value, condition_type_concept_id, stop_reason, provider_id, visit_occurrence_id, condition_source_concept_id) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect condition_occurrence' AS test, CASE WHEN(SELECT COUNT(*) FROM condition_occurrence WHERE")
  first <- TRUE
  if (!missing(condition_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(condition_occurrence_id)) {
      statement <- paste0(statement, ' condition_occurrence_id IS NULL')
    } else if (is(condition_occurrence_id, 'subQuery')){
      statement <- paste0(statement, ' condition_occurrence_id = (', as.character(condition_occurrence_id), ')')
    } else {
      statement <- paste0(statement, " condition_occurrence_id = '", condition_occurrence_id,"'")
    }
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(person_id)) {
      statement <- paste0(statement, ' person_id IS NULL')
    } else if (is(person_id, 'subQuery')){
      statement <- paste0(statement, ' person_id = (', as.character(person_id), ')')
    } else {
      statement <- paste0(statement, " person_id = '", person_id,"'")
    }
  }

  if (!missing(condition_start_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(condition_start_date)) {
      statement <- paste0(statement, ' condition_start_date IS NULL')
    } else if (is(condition_start_date, 'subQuery')){
      statement <- paste0(statement, ' condition_start_date = (', as.character(condition_start_date), ')')
    } else {
      statement <- paste0(statement, " condition_start_date = '", condition_start_date,"'")
    }
  }

  if (!missing(condition_end_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(condition_end_date)) {
      statement <- paste0(statement, ' condition_end_date IS NULL')
    } else if (is(condition_end_date, 'subQuery')){
      statement <- paste0(statement, ' condition_end_date = (', as.character(condition_end_date), ')')
    } else {
      statement <- paste0(statement, " condition_end_date = '", condition_end_date,"'")
    }
  }

  if (!missing(condition_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(condition_concept_id)) {
      statement <- paste0(statement, ' condition_concept_id IS NULL')
    } else if (is(condition_concept_id, 'subQuery')){
      statement <- paste0(statement, ' condition_concept_id = (', as.character(condition_concept_id), ')')
    } else {
      statement <- paste0(statement, " condition_concept_id = '", condition_concept_id,"'")
    }
  }

  if (!missing(condition_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(condition_source_value)) {
      statement <- paste0(statement, ' condition_source_value IS NULL')
    } else if (is(condition_source_value, 'subQuery')){
      statement <- paste0(statement, ' condition_source_value = (', as.character(condition_source_value), ')')
    } else {
      statement <- paste0(statement, " condition_source_value = '", condition_source_value,"'")
    }
  }

  if (!missing(condition_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(condition_type_concept_id)) {
      statement <- paste0(statement, ' condition_type_concept_id IS NULL')
    } else if (is(condition_type_concept_id, 'subQuery')){
      statement <- paste0(statement, ' condition_type_concept_id = (', as.character(condition_type_concept_id), ')')
    } else {
      statement <- paste0(statement, " condition_type_concept_id = '", condition_type_concept_id,"'")
    }
  }

  if (!missing(stop_reason)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(stop_reason)) {
      statement <- paste0(statement, ' stop_reason IS NULL')
    } else if (is(stop_reason, 'subQuery')){
      statement <- paste0(statement, ' stop_reason = (', as.character(stop_reason), ')')
    } else {
      statement <- paste0(statement, " stop_reason = '", stop_reason,"'")
    }
  }

  if (!missing(provider_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(provider_id)) {
      statement <- paste0(statement, ' provider_id IS NULL')
    } else if (is(provider_id, 'subQuery')){
      statement <- paste0(statement, ' provider_id = (', as.character(provider_id), ')')
    } else {
      statement <- paste0(statement, " provider_id = '", provider_id,"'")
    }
  }

  if (!missing(visit_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(visit_occurrence_id)) {
      statement <- paste0(statement, ' visit_occurrence_id IS NULL')
    } else if (is(visit_occurrence_id, 'subQuery')){
      statement <- paste0(statement, ' visit_occurrence_id = (', as.character(visit_occurrence_id), ')')
    } else {
      statement <- paste0(statement, " visit_occurrence_id = '", visit_occurrence_id,"'")
    }
  }

  if (!missing(condition_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(condition_source_concept_id)) {
      statement <- paste0(statement, ' condition_source_concept_id IS NULL')
    } else if (is(condition_source_concept_id, 'subQuery')){
      statement <- paste0(statement, ' condition_source_concept_id = (', as.character(condition_source_concept_id), ')')
    } else {
      statement <- paste0(statement, " condition_source_concept_id = '", condition_source_concept_id,"'")
    }
  }

  statement <- paste0(statement, ") != 0 THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_no_drug_exposure <- function(drug_exposure_id, person_id, drug_source_concept_id, drug_concept_id, drug_source_value, quantity, days_supply, drug_exposure_start_date, drug_exposure_end_date, dose_unit_concept_id, dose_unit_source_value, effective_drug_dose, drug_type_concept_id, sig, stop_reason, refills, route_concept_id, lot_number, provider_id, visit_occurrence_id, route_source_value) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect drug_exposure' AS test, CASE WHEN(SELECT COUNT(*) FROM drug_exposure WHERE")
  first <- TRUE
  if (!missing(drug_exposure_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(drug_exposure_id)) {
      statement <- paste0(statement, ' drug_exposure_id IS NULL')
    } else if (is(drug_exposure_id, 'subQuery')){
      statement <- paste0(statement, ' drug_exposure_id = (', as.character(drug_exposure_id), ')')
    } else {
      statement <- paste0(statement, " drug_exposure_id = '", drug_exposure_id,"'")
    }
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(person_id)) {
      statement <- paste0(statement, ' person_id IS NULL')
    } else if (is(person_id, 'subQuery')){
      statement <- paste0(statement, ' person_id = (', as.character(person_id), ')')
    } else {
      statement <- paste0(statement, " person_id = '", person_id,"'")
    }
  }

  if (!missing(drug_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(drug_source_concept_id)) {
      statement <- paste0(statement, ' drug_source_concept_id IS NULL')
    } else if (is(drug_source_concept_id, 'subQuery')){
      statement <- paste0(statement, ' drug_source_concept_id = (', as.character(drug_source_concept_id), ')')
    } else {
      statement <- paste0(statement, " drug_source_concept_id = '", drug_source_concept_id,"'")
    }
  }

  if (!missing(drug_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(drug_concept_id)) {
      statement <- paste0(statement, ' drug_concept_id IS NULL')
    } else if (is(drug_concept_id, 'subQuery')){
      statement <- paste0(statement, ' drug_concept_id = (', as.character(drug_concept_id), ')')
    } else {
      statement <- paste0(statement, " drug_concept_id = '", drug_concept_id,"'")
    }
  }

  if (!missing(drug_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(drug_source_value)) {
      statement <- paste0(statement, ' drug_source_value IS NULL')
    } else if (is(drug_source_value, 'subQuery')){
      statement <- paste0(statement, ' drug_source_value = (', as.character(drug_source_value), ')')
    } else {
      statement <- paste0(statement, " drug_source_value = '", drug_source_value,"'")
    }
  }

  if (!missing(quantity)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(quantity)) {
      statement <- paste0(statement, ' quantity IS NULL')
    } else if (is(quantity, 'subQuery')){
      statement <- paste0(statement, ' quantity = (', as.character(quantity), ')')
    } else {
      statement <- paste0(statement, " quantity = '", quantity,"'")
    }
  }

  if (!missing(days_supply)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(days_supply)) {
      statement <- paste0(statement, ' days_supply IS NULL')
    } else if (is(days_supply, 'subQuery')){
      statement <- paste0(statement, ' days_supply = (', as.character(days_supply), ')')
    } else {
      statement <- paste0(statement, " days_supply = '", days_supply,"'")
    }
  }

  if (!missing(drug_exposure_start_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(drug_exposure_start_date)) {
      statement <- paste0(statement, ' drug_exposure_start_date IS NULL')
    } else if (is(drug_exposure_start_date, 'subQuery')){
      statement <- paste0(statement, ' drug_exposure_start_date = (', as.character(drug_exposure_start_date), ')')
    } else {
      statement <- paste0(statement, " drug_exposure_start_date = '", drug_exposure_start_date,"'")
    }
  }

  if (!missing(drug_exposure_end_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(drug_exposure_end_date)) {
      statement <- paste0(statement, ' drug_exposure_end_date IS NULL')
    } else if (is(drug_exposure_end_date, 'subQuery')){
      statement <- paste0(statement, ' drug_exposure_end_date = (', as.character(drug_exposure_end_date), ')')
    } else {
      statement <- paste0(statement, " drug_exposure_end_date = '", drug_exposure_end_date,"'")
    }
  }

  if (!missing(dose_unit_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(dose_unit_concept_id)) {
      statement <- paste0(statement, ' dose_unit_concept_id IS NULL')
    } else if (is(dose_unit_concept_id, 'subQuery')){
      statement <- paste0(statement, ' dose_unit_concept_id = (', as.character(dose_unit_concept_id), ')')
    } else {
      statement <- paste0(statement, " dose_unit_concept_id = '", dose_unit_concept_id,"'")
    }
  }

  if (!missing(dose_unit_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(dose_unit_source_value)) {
      statement <- paste0(statement, ' dose_unit_source_value IS NULL')
    } else if (is(dose_unit_source_value, 'subQuery')){
      statement <- paste0(statement, ' dose_unit_source_value = (', as.character(dose_unit_source_value), ')')
    } else {
      statement <- paste0(statement, " dose_unit_source_value = '", dose_unit_source_value,"'")
    }
  }

  if (!missing(effective_drug_dose)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(effective_drug_dose)) {
      statement <- paste0(statement, ' effective_drug_dose IS NULL')
    } else if (is(effective_drug_dose, 'subQuery')){
      statement <- paste0(statement, ' effective_drug_dose = (', as.character(effective_drug_dose), ')')
    } else {
      statement <- paste0(statement, " effective_drug_dose = '", effective_drug_dose,"'")
    }
  }

  if (!missing(drug_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(drug_type_concept_id)) {
      statement <- paste0(statement, ' drug_type_concept_id IS NULL')
    } else if (is(drug_type_concept_id, 'subQuery')){
      statement <- paste0(statement, ' drug_type_concept_id = (', as.character(drug_type_concept_id), ')')
    } else {
      statement <- paste0(statement, " drug_type_concept_id = '", drug_type_concept_id,"'")
    }
  }

  if (!missing(sig)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(sig)) {
      statement <- paste0(statement, ' sig IS NULL')
    } else if (is(sig, 'subQuery')){
      statement <- paste0(statement, ' sig = (', as.character(sig), ')')
    } else {
      statement <- paste0(statement, " sig = '", sig,"'")
    }
  }

  if (!missing(stop_reason)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(stop_reason)) {
      statement <- paste0(statement, ' stop_reason IS NULL')
    } else if (is(stop_reason, 'subQuery')){
      statement <- paste0(statement, ' stop_reason = (', as.character(stop_reason), ')')
    } else {
      statement <- paste0(statement, " stop_reason = '", stop_reason,"'")
    }
  }

  if (!missing(refills)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(refills)) {
      statement <- paste0(statement, ' refills IS NULL')
    } else if (is(refills, 'subQuery')){
      statement <- paste0(statement, ' refills = (', as.character(refills), ')')
    } else {
      statement <- paste0(statement, " refills = '", refills,"'")
    }
  }

  if (!missing(route_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(route_concept_id)) {
      statement <- paste0(statement, ' route_concept_id IS NULL')
    } else if (is(route_concept_id, 'subQuery')){
      statement <- paste0(statement, ' route_concept_id = (', as.character(route_concept_id), ')')
    } else {
      statement <- paste0(statement, " route_concept_id = '", route_concept_id,"'")
    }
  }

  if (!missing(lot_number)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(lot_number)) {
      statement <- paste0(statement, ' lot_number IS NULL')
    } else if (is(lot_number, 'subQuery')){
      statement <- paste0(statement, ' lot_number = (', as.character(lot_number), ')')
    } else {
      statement <- paste0(statement, " lot_number = '", lot_number,"'")
    }
  }

  if (!missing(provider_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(provider_id)) {
      statement <- paste0(statement, ' provider_id IS NULL')
    } else if (is(provider_id, 'subQuery')){
      statement <- paste0(statement, ' provider_id = (', as.character(provider_id), ')')
    } else {
      statement <- paste0(statement, " provider_id = '", provider_id,"'")
    }
  }

  if (!missing(visit_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(visit_occurrence_id)) {
      statement <- paste0(statement, ' visit_occurrence_id IS NULL')
    } else if (is(visit_occurrence_id, 'subQuery')){
      statement <- paste0(statement, ' visit_occurrence_id = (', as.character(visit_occurrence_id), ')')
    } else {
      statement <- paste0(statement, " visit_occurrence_id = '", visit_occurrence_id,"'")
    }
  }

  if (!missing(route_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(route_source_value)) {
      statement <- paste0(statement, ' route_source_value IS NULL')
    } else if (is(route_source_value, 'subQuery')){
      statement <- paste0(statement, ' route_source_value = (', as.character(route_source_value), ')')
    } else {
      statement <- paste0(statement, " route_source_value = '", route_source_value,"'")
    }
  }

  statement <- paste0(statement, ") != 0 THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_no_drug_era <- function(drug_era_id, person_id, drug_concept_id, drug_era_start_date, drug_era_end_date, drug_exposure_count, gap_days) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect drug_era' AS test, CASE WHEN(SELECT COUNT(*) FROM drug_era WHERE")
  first <- TRUE
  if (!missing(drug_era_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(drug_era_id)) {
      statement <- paste0(statement, ' drug_era_id IS NULL')
    } else if (is(drug_era_id, 'subQuery')){
      statement <- paste0(statement, ' drug_era_id = (', as.character(drug_era_id), ')')
    } else {
      statement <- paste0(statement, " drug_era_id = '", drug_era_id,"'")
    }
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(person_id)) {
      statement <- paste0(statement, ' person_id IS NULL')
    } else if (is(person_id, 'subQuery')){
      statement <- paste0(statement, ' person_id = (', as.character(person_id), ')')
    } else {
      statement <- paste0(statement, " person_id = '", person_id,"'")
    }
  }

  if (!missing(drug_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(drug_concept_id)) {
      statement <- paste0(statement, ' drug_concept_id IS NULL')
    } else if (is(drug_concept_id, 'subQuery')){
      statement <- paste0(statement, ' drug_concept_id = (', as.character(drug_concept_id), ')')
    } else {
      statement <- paste0(statement, " drug_concept_id = '", drug_concept_id,"'")
    }
  }

  if (!missing(drug_era_start_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(drug_era_start_date)) {
      statement <- paste0(statement, ' drug_era_start_date IS NULL')
    } else if (is(drug_era_start_date, 'subQuery')){
      statement <- paste0(statement, ' drug_era_start_date = (', as.character(drug_era_start_date), ')')
    } else {
      statement <- paste0(statement, " drug_era_start_date = '", drug_era_start_date,"'")
    }
  }

  if (!missing(drug_era_end_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(drug_era_end_date)) {
      statement <- paste0(statement, ' drug_era_end_date IS NULL')
    } else if (is(drug_era_end_date, 'subQuery')){
      statement <- paste0(statement, ' drug_era_end_date = (', as.character(drug_era_end_date), ')')
    } else {
      statement <- paste0(statement, " drug_era_end_date = '", drug_era_end_date,"'")
    }
  }

  if (!missing(drug_exposure_count)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(drug_exposure_count)) {
      statement <- paste0(statement, ' drug_exposure_count IS NULL')
    } else if (is(drug_exposure_count, 'subQuery')){
      statement <- paste0(statement, ' drug_exposure_count = (', as.character(drug_exposure_count), ')')
    } else {
      statement <- paste0(statement, " drug_exposure_count = '", drug_exposure_count,"'")
    }
  }

  if (!missing(gap_days)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(gap_days)) {
      statement <- paste0(statement, ' gap_days IS NULL')
    } else if (is(gap_days, 'subQuery')){
      statement <- paste0(statement, ' gap_days = (', as.character(gap_days), ')')
    } else {
      statement <- paste0(statement, " gap_days = '", gap_days,"'")
    }
  }

  statement <- paste0(statement, ") != 0 THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_no_measurement <- function(measurement_id, person_id, value_as_number, measurement_concept_id, measurement_source_value, measurement_date, unit_concept_id, unit_source_value, measurement_time, measurement_type_concept_id, operator_concept_id, value_as_concept_id, range_low, range_high, provider_id, visit_occurrence_id, measurement_source_concept_id, value_source_value) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect measurement' AS test, CASE WHEN(SELECT COUNT(*) FROM measurement WHERE")
  first <- TRUE
  if (!missing(measurement_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(measurement_id)) {
      statement <- paste0(statement, ' measurement_id IS NULL')
    } else if (is(measurement_id, 'subQuery')){
      statement <- paste0(statement, ' measurement_id = (', as.character(measurement_id), ')')
    } else {
      statement <- paste0(statement, " measurement_id = '", measurement_id,"'")
    }
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(person_id)) {
      statement <- paste0(statement, ' person_id IS NULL')
    } else if (is(person_id, 'subQuery')){
      statement <- paste0(statement, ' person_id = (', as.character(person_id), ')')
    } else {
      statement <- paste0(statement, " person_id = '", person_id,"'")
    }
  }

  if (!missing(value_as_number)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(value_as_number)) {
      statement <- paste0(statement, ' value_as_number IS NULL')
    } else if (is(value_as_number, 'subQuery')){
      statement <- paste0(statement, ' value_as_number = (', as.character(value_as_number), ')')
    } else {
      statement <- paste0(statement, " value_as_number = '", value_as_number,"'")
    }
  }

  if (!missing(measurement_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(measurement_concept_id)) {
      statement <- paste0(statement, ' measurement_concept_id IS NULL')
    } else if (is(measurement_concept_id, 'subQuery')){
      statement <- paste0(statement, ' measurement_concept_id = (', as.character(measurement_concept_id), ')')
    } else {
      statement <- paste0(statement, " measurement_concept_id = '", measurement_concept_id,"'")
    }
  }

  if (!missing(measurement_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(measurement_source_value)) {
      statement <- paste0(statement, ' measurement_source_value IS NULL')
    } else if (is(measurement_source_value, 'subQuery')){
      statement <- paste0(statement, ' measurement_source_value = (', as.character(measurement_source_value), ')')
    } else {
      statement <- paste0(statement, " measurement_source_value = '", measurement_source_value,"'")
    }
  }

  if (!missing(measurement_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(measurement_date)) {
      statement <- paste0(statement, ' measurement_date IS NULL')
    } else if (is(measurement_date, 'subQuery')){
      statement <- paste0(statement, ' measurement_date = (', as.character(measurement_date), ')')
    } else {
      statement <- paste0(statement, " measurement_date = '", measurement_date,"'")
    }
  }

  if (!missing(unit_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(unit_concept_id)) {
      statement <- paste0(statement, ' unit_concept_id IS NULL')
    } else if (is(unit_concept_id, 'subQuery')){
      statement <- paste0(statement, ' unit_concept_id = (', as.character(unit_concept_id), ')')
    } else {
      statement <- paste0(statement, " unit_concept_id = '", unit_concept_id,"'")
    }
  }

  if (!missing(unit_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(unit_source_value)) {
      statement <- paste0(statement, ' unit_source_value IS NULL')
    } else if (is(unit_source_value, 'subQuery')){
      statement <- paste0(statement, ' unit_source_value = (', as.character(unit_source_value), ')')
    } else {
      statement <- paste0(statement, " unit_source_value = '", unit_source_value,"'")
    }
  }

  if (!missing(measurement_time)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(measurement_time)) {
      statement <- paste0(statement, ' measurement_time IS NULL')
    } else if (is(measurement_time, 'subQuery')){
      statement <- paste0(statement, ' measurement_time = (', as.character(measurement_time), ')')
    } else {
      statement <- paste0(statement, " measurement_time = '", measurement_time,"'")
    }
  }

  if (!missing(measurement_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(measurement_type_concept_id)) {
      statement <- paste0(statement, ' measurement_type_concept_id IS NULL')
    } else if (is(measurement_type_concept_id, 'subQuery')){
      statement <- paste0(statement, ' measurement_type_concept_id = (', as.character(measurement_type_concept_id), ')')
    } else {
      statement <- paste0(statement, " measurement_type_concept_id = '", measurement_type_concept_id,"'")
    }
  }

  if (!missing(operator_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(operator_concept_id)) {
      statement <- paste0(statement, ' operator_concept_id IS NULL')
    } else if (is(operator_concept_id, 'subQuery')){
      statement <- paste0(statement, ' operator_concept_id = (', as.character(operator_concept_id), ')')
    } else {
      statement <- paste0(statement, " operator_concept_id = '", operator_concept_id,"'")
    }
  }

  if (!missing(value_as_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(value_as_concept_id)) {
      statement <- paste0(statement, ' value_as_concept_id IS NULL')
    } else if (is(value_as_concept_id, 'subQuery')){
      statement <- paste0(statement, ' value_as_concept_id = (', as.character(value_as_concept_id), ')')
    } else {
      statement <- paste0(statement, " value_as_concept_id = '", value_as_concept_id,"'")
    }
  }

  if (!missing(range_low)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(range_low)) {
      statement <- paste0(statement, ' range_low IS NULL')
    } else if (is(range_low, 'subQuery')){
      statement <- paste0(statement, ' range_low = (', as.character(range_low), ')')
    } else {
      statement <- paste0(statement, " range_low = '", range_low,"'")
    }
  }

  if (!missing(range_high)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(range_high)) {
      statement <- paste0(statement, ' range_high IS NULL')
    } else if (is(range_high, 'subQuery')){
      statement <- paste0(statement, ' range_high = (', as.character(range_high), ')')
    } else {
      statement <- paste0(statement, " range_high = '", range_high,"'")
    }
  }

  if (!missing(provider_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(provider_id)) {
      statement <- paste0(statement, ' provider_id IS NULL')
    } else if (is(provider_id, 'subQuery')){
      statement <- paste0(statement, ' provider_id = (', as.character(provider_id), ')')
    } else {
      statement <- paste0(statement, " provider_id = '", provider_id,"'")
    }
  }

  if (!missing(visit_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(visit_occurrence_id)) {
      statement <- paste0(statement, ' visit_occurrence_id IS NULL')
    } else if (is(visit_occurrence_id, 'subQuery')){
      statement <- paste0(statement, ' visit_occurrence_id = (', as.character(visit_occurrence_id), ')')
    } else {
      statement <- paste0(statement, " visit_occurrence_id = '", visit_occurrence_id,"'")
    }
  }

  if (!missing(measurement_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(measurement_source_concept_id)) {
      statement <- paste0(statement, ' measurement_source_concept_id IS NULL')
    } else if (is(measurement_source_concept_id, 'subQuery')){
      statement <- paste0(statement, ' measurement_source_concept_id = (', as.character(measurement_source_concept_id), ')')
    } else {
      statement <- paste0(statement, " measurement_source_concept_id = '", measurement_source_concept_id,"'")
    }
  }

  if (!missing(value_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(value_source_value)) {
      statement <- paste0(statement, ' value_source_value IS NULL')
    } else if (is(value_source_value, 'subQuery')){
      statement <- paste0(statement, ' value_source_value = (', as.character(value_source_value), ')')
    } else {
      statement <- paste0(statement, " value_source_value = '", value_source_value,"'")
    }
  }

  statement <- paste0(statement, ") != 0 THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_no_observation <- function(observation_id, person_id, observation_concept_id, observation_source_value, observation_source_concept_id, observation_date, observation_time, observation_type_concept_id, value_as_number, value_as_string, value_as_concept_id, qualifier_concept_id, unit_concept_id, provider_id, visit_occurrence_id, unit_source_value, qualifier_source_value) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect observation' AS test, CASE WHEN(SELECT COUNT(*) FROM observation WHERE")
  first <- TRUE
  if (!missing(observation_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(observation_id)) {
      statement <- paste0(statement, ' observation_id IS NULL')
    } else if (is(observation_id, 'subQuery')){
      statement <- paste0(statement, ' observation_id = (', as.character(observation_id), ')')
    } else {
      statement <- paste0(statement, " observation_id = '", observation_id,"'")
    }
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(person_id)) {
      statement <- paste0(statement, ' person_id IS NULL')
    } else if (is(person_id, 'subQuery')){
      statement <- paste0(statement, ' person_id = (', as.character(person_id), ')')
    } else {
      statement <- paste0(statement, " person_id = '", person_id,"'")
    }
  }

  if (!missing(observation_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(observation_concept_id)) {
      statement <- paste0(statement, ' observation_concept_id IS NULL')
    } else if (is(observation_concept_id, 'subQuery')){
      statement <- paste0(statement, ' observation_concept_id = (', as.character(observation_concept_id), ')')
    } else {
      statement <- paste0(statement, " observation_concept_id = '", observation_concept_id,"'")
    }
  }

  if (!missing(observation_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(observation_source_value)) {
      statement <- paste0(statement, ' observation_source_value IS NULL')
    } else if (is(observation_source_value, 'subQuery')){
      statement <- paste0(statement, ' observation_source_value = (', as.character(observation_source_value), ')')
    } else {
      statement <- paste0(statement, " observation_source_value = '", observation_source_value,"'")
    }
  }

  if (!missing(observation_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(observation_source_concept_id)) {
      statement <- paste0(statement, ' observation_source_concept_id IS NULL')
    } else if (is(observation_source_concept_id, 'subQuery')){
      statement <- paste0(statement, ' observation_source_concept_id = (', as.character(observation_source_concept_id), ')')
    } else {
      statement <- paste0(statement, " observation_source_concept_id = '", observation_source_concept_id,"'")
    }
  }

  if (!missing(observation_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(observation_date)) {
      statement <- paste0(statement, ' observation_date IS NULL')
    } else if (is(observation_date, 'subQuery')){
      statement <- paste0(statement, ' observation_date = (', as.character(observation_date), ')')
    } else {
      statement <- paste0(statement, " observation_date = '", observation_date,"'")
    }
  }

  if (!missing(observation_time)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(observation_time)) {
      statement <- paste0(statement, ' observation_time IS NULL')
    } else if (is(observation_time, 'subQuery')){
      statement <- paste0(statement, ' observation_time = (', as.character(observation_time), ')')
    } else {
      statement <- paste0(statement, " observation_time = '", observation_time,"'")
    }
  }

  if (!missing(observation_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(observation_type_concept_id)) {
      statement <- paste0(statement, ' observation_type_concept_id IS NULL')
    } else if (is(observation_type_concept_id, 'subQuery')){
      statement <- paste0(statement, ' observation_type_concept_id = (', as.character(observation_type_concept_id), ')')
    } else {
      statement <- paste0(statement, " observation_type_concept_id = '", observation_type_concept_id,"'")
    }
  }

  if (!missing(value_as_number)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(value_as_number)) {
      statement <- paste0(statement, ' value_as_number IS NULL')
    } else if (is(value_as_number, 'subQuery')){
      statement <- paste0(statement, ' value_as_number = (', as.character(value_as_number), ')')
    } else {
      statement <- paste0(statement, " value_as_number = '", value_as_number,"'")
    }
  }

  if (!missing(value_as_string)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(value_as_string)) {
      statement <- paste0(statement, ' value_as_string IS NULL')
    } else if (is(value_as_string, 'subQuery')){
      statement <- paste0(statement, ' value_as_string = (', as.character(value_as_string), ')')
    } else {
      statement <- paste0(statement, " value_as_string = '", value_as_string,"'")
    }
  }

  if (!missing(value_as_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(value_as_concept_id)) {
      statement <- paste0(statement, ' value_as_concept_id IS NULL')
    } else if (is(value_as_concept_id, 'subQuery')){
      statement <- paste0(statement, ' value_as_concept_id = (', as.character(value_as_concept_id), ')')
    } else {
      statement <- paste0(statement, " value_as_concept_id = '", value_as_concept_id,"'")
    }
  }

  if (!missing(qualifier_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(qualifier_concept_id)) {
      statement <- paste0(statement, ' qualifier_concept_id IS NULL')
    } else if (is(qualifier_concept_id, 'subQuery')){
      statement <- paste0(statement, ' qualifier_concept_id = (', as.character(qualifier_concept_id), ')')
    } else {
      statement <- paste0(statement, " qualifier_concept_id = '", qualifier_concept_id,"'")
    }
  }

  if (!missing(unit_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(unit_concept_id)) {
      statement <- paste0(statement, ' unit_concept_id IS NULL')
    } else if (is(unit_concept_id, 'subQuery')){
      statement <- paste0(statement, ' unit_concept_id = (', as.character(unit_concept_id), ')')
    } else {
      statement <- paste0(statement, " unit_concept_id = '", unit_concept_id,"'")
    }
  }

  if (!missing(provider_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(provider_id)) {
      statement <- paste0(statement, ' provider_id IS NULL')
    } else if (is(provider_id, 'subQuery')){
      statement <- paste0(statement, ' provider_id = (', as.character(provider_id), ')')
    } else {
      statement <- paste0(statement, " provider_id = '", provider_id,"'")
    }
  }

  if (!missing(visit_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(visit_occurrence_id)) {
      statement <- paste0(statement, ' visit_occurrence_id IS NULL')
    } else if (is(visit_occurrence_id, 'subQuery')){
      statement <- paste0(statement, ' visit_occurrence_id = (', as.character(visit_occurrence_id), ')')
    } else {
      statement <- paste0(statement, " visit_occurrence_id = '", visit_occurrence_id,"'")
    }
  }

  if (!missing(unit_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(unit_source_value)) {
      statement <- paste0(statement, ' unit_source_value IS NULL')
    } else if (is(unit_source_value, 'subQuery')){
      statement <- paste0(statement, ' unit_source_value = (', as.character(unit_source_value), ')')
    } else {
      statement <- paste0(statement, " unit_source_value = '", unit_source_value,"'")
    }
  }

  if (!missing(qualifier_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(qualifier_source_value)) {
      statement <- paste0(statement, ' qualifier_source_value IS NULL')
    } else if (is(qualifier_source_value, 'subQuery')){
      statement <- paste0(statement, ' qualifier_source_value = (', as.character(qualifier_source_value), ')')
    } else {
      statement <- paste0(statement, " qualifier_source_value = '", qualifier_source_value,"'")
    }
  }

  statement <- paste0(statement, ") != 0 THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_no_procedure_occurrence <- function(procedure_occurrence_id, person_id, procedure_concept_id, procedure_date, procedure_type_concept_id, modifier_concept_id, quantity, provider_id, visit_occurrence_id, procedure_source_value, procedure_source_concept_id, qualifier_source_value) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect procedure_occurrence' AS test, CASE WHEN(SELECT COUNT(*) FROM procedure_occurrence WHERE")
  first <- TRUE
  if (!missing(procedure_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(procedure_occurrence_id)) {
      statement <- paste0(statement, ' procedure_occurrence_id IS NULL')
    } else if (is(procedure_occurrence_id, 'subQuery')){
      statement <- paste0(statement, ' procedure_occurrence_id = (', as.character(procedure_occurrence_id), ')')
    } else {
      statement <- paste0(statement, " procedure_occurrence_id = '", procedure_occurrence_id,"'")
    }
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(person_id)) {
      statement <- paste0(statement, ' person_id IS NULL')
    } else if (is(person_id, 'subQuery')){
      statement <- paste0(statement, ' person_id = (', as.character(person_id), ')')
    } else {
      statement <- paste0(statement, " person_id = '", person_id,"'")
    }
  }

  if (!missing(procedure_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(procedure_concept_id)) {
      statement <- paste0(statement, ' procedure_concept_id IS NULL')
    } else if (is(procedure_concept_id, 'subQuery')){
      statement <- paste0(statement, ' procedure_concept_id = (', as.character(procedure_concept_id), ')')
    } else {
      statement <- paste0(statement, " procedure_concept_id = '", procedure_concept_id,"'")
    }
  }

  if (!missing(procedure_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(procedure_date)) {
      statement <- paste0(statement, ' procedure_date IS NULL')
    } else if (is(procedure_date, 'subQuery')){
      statement <- paste0(statement, ' procedure_date = (', as.character(procedure_date), ')')
    } else {
      statement <- paste0(statement, " procedure_date = '", procedure_date,"'")
    }
  }

  if (!missing(procedure_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(procedure_type_concept_id)) {
      statement <- paste0(statement, ' procedure_type_concept_id IS NULL')
    } else if (is(procedure_type_concept_id, 'subQuery')){
      statement <- paste0(statement, ' procedure_type_concept_id = (', as.character(procedure_type_concept_id), ')')
    } else {
      statement <- paste0(statement, " procedure_type_concept_id = '", procedure_type_concept_id,"'")
    }
  }

  if (!missing(modifier_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(modifier_concept_id)) {
      statement <- paste0(statement, ' modifier_concept_id IS NULL')
    } else if (is(modifier_concept_id, 'subQuery')){
      statement <- paste0(statement, ' modifier_concept_id = (', as.character(modifier_concept_id), ')')
    } else {
      statement <- paste0(statement, " modifier_concept_id = '", modifier_concept_id,"'")
    }
  }

  if (!missing(quantity)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(quantity)) {
      statement <- paste0(statement, ' quantity IS NULL')
    } else if (is(quantity, 'subQuery')){
      statement <- paste0(statement, ' quantity = (', as.character(quantity), ')')
    } else {
      statement <- paste0(statement, " quantity = '", quantity,"'")
    }
  }

  if (!missing(provider_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(provider_id)) {
      statement <- paste0(statement, ' provider_id IS NULL')
    } else if (is(provider_id, 'subQuery')){
      statement <- paste0(statement, ' provider_id = (', as.character(provider_id), ')')
    } else {
      statement <- paste0(statement, " provider_id = '", provider_id,"'")
    }
  }

  if (!missing(visit_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(visit_occurrence_id)) {
      statement <- paste0(statement, ' visit_occurrence_id IS NULL')
    } else if (is(visit_occurrence_id, 'subQuery')){
      statement <- paste0(statement, ' visit_occurrence_id = (', as.character(visit_occurrence_id), ')')
    } else {
      statement <- paste0(statement, " visit_occurrence_id = '", visit_occurrence_id,"'")
    }
  }

  if (!missing(procedure_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(procedure_source_value)) {
      statement <- paste0(statement, ' procedure_source_value IS NULL')
    } else if (is(procedure_source_value, 'subQuery')){
      statement <- paste0(statement, ' procedure_source_value = (', as.character(procedure_source_value), ')')
    } else {
      statement <- paste0(statement, " procedure_source_value = '", procedure_source_value,"'")
    }
  }

  if (!missing(procedure_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(procedure_source_concept_id)) {
      statement <- paste0(statement, ' procedure_source_concept_id IS NULL')
    } else if (is(procedure_source_concept_id, 'subQuery')){
      statement <- paste0(statement, ' procedure_source_concept_id = (', as.character(procedure_source_concept_id), ')')
    } else {
      statement <- paste0(statement, " procedure_source_concept_id = '", procedure_source_concept_id,"'")
    }
  }

  if (!missing(qualifier_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(qualifier_source_value)) {
      statement <- paste0(statement, ' qualifier_source_value IS NULL')
    } else if (is(qualifier_source_value, 'subQuery')){
      statement <- paste0(statement, ' qualifier_source_value = (', as.character(qualifier_source_value), ')')
    } else {
      statement <- paste0(statement, " qualifier_source_value = '", qualifier_source_value,"'")
    }
  }

  statement <- paste0(statement, ") != 0 THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_no_device_exposure <- function(device_exposure_id, person_id, device_concept_id, device_exposure_start_date, device_exposure_end_date, device_type_concept_id, unique_device_id, quantity, provider_id, visit_occurrence_id, device_source_value, device_source_concept_id) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect device_exposure' AS test, CASE WHEN(SELECT COUNT(*) FROM device_exposure WHERE")
  first <- TRUE
  if (!missing(device_exposure_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(device_exposure_id)) {
      statement <- paste0(statement, ' device_exposure_id IS NULL')
    } else if (is(device_exposure_id, 'subQuery')){
      statement <- paste0(statement, ' device_exposure_id = (', as.character(device_exposure_id), ')')
    } else {
      statement <- paste0(statement, " device_exposure_id = '", device_exposure_id,"'")
    }
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(person_id)) {
      statement <- paste0(statement, ' person_id IS NULL')
    } else if (is(person_id, 'subQuery')){
      statement <- paste0(statement, ' person_id = (', as.character(person_id), ')')
    } else {
      statement <- paste0(statement, " person_id = '", person_id,"'")
    }
  }

  if (!missing(device_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(device_concept_id)) {
      statement <- paste0(statement, ' device_concept_id IS NULL')
    } else if (is(device_concept_id, 'subQuery')){
      statement <- paste0(statement, ' device_concept_id = (', as.character(device_concept_id), ')')
    } else {
      statement <- paste0(statement, " device_concept_id = '", device_concept_id,"'")
    }
  }

  if (!missing(device_exposure_start_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(device_exposure_start_date)) {
      statement <- paste0(statement, ' device_exposure_start_date IS NULL')
    } else if (is(device_exposure_start_date, 'subQuery')){
      statement <- paste0(statement, ' device_exposure_start_date = (', as.character(device_exposure_start_date), ')')
    } else {
      statement <- paste0(statement, " device_exposure_start_date = '", device_exposure_start_date,"'")
    }
  }

  if (!missing(device_exposure_end_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(device_exposure_end_date)) {
      statement <- paste0(statement, ' device_exposure_end_date IS NULL')
    } else if (is(device_exposure_end_date, 'subQuery')){
      statement <- paste0(statement, ' device_exposure_end_date = (', as.character(device_exposure_end_date), ')')
    } else {
      statement <- paste0(statement, " device_exposure_end_date = '", device_exposure_end_date,"'")
    }
  }

  if (!missing(device_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(device_type_concept_id)) {
      statement <- paste0(statement, ' device_type_concept_id IS NULL')
    } else if (is(device_type_concept_id, 'subQuery')){
      statement <- paste0(statement, ' device_type_concept_id = (', as.character(device_type_concept_id), ')')
    } else {
      statement <- paste0(statement, " device_type_concept_id = '", device_type_concept_id,"'")
    }
  }

  if (!missing(unique_device_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(unique_device_id)) {
      statement <- paste0(statement, ' unique_device_id IS NULL')
    } else if (is(unique_device_id, 'subQuery')){
      statement <- paste0(statement, ' unique_device_id = (', as.character(unique_device_id), ')')
    } else {
      statement <- paste0(statement, " unique_device_id = '", unique_device_id,"'")
    }
  }

  if (!missing(quantity)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(quantity)) {
      statement <- paste0(statement, ' quantity IS NULL')
    } else if (is(quantity, 'subQuery')){
      statement <- paste0(statement, ' quantity = (', as.character(quantity), ')')
    } else {
      statement <- paste0(statement, " quantity = '", quantity,"'")
    }
  }

  if (!missing(provider_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(provider_id)) {
      statement <- paste0(statement, ' provider_id IS NULL')
    } else if (is(provider_id, 'subQuery')){
      statement <- paste0(statement, ' provider_id = (', as.character(provider_id), ')')
    } else {
      statement <- paste0(statement, " provider_id = '", provider_id,"'")
    }
  }

  if (!missing(visit_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(visit_occurrence_id)) {
      statement <- paste0(statement, ' visit_occurrence_id IS NULL')
    } else if (is(visit_occurrence_id, 'subQuery')){
      statement <- paste0(statement, ' visit_occurrence_id = (', as.character(visit_occurrence_id), ')')
    } else {
      statement <- paste0(statement, " visit_occurrence_id = '", visit_occurrence_id,"'")
    }
  }

  if (!missing(device_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(device_source_value)) {
      statement <- paste0(statement, ' device_source_value IS NULL')
    } else if (is(device_source_value, 'subQuery')){
      statement <- paste0(statement, ' device_source_value = (', as.character(device_source_value), ')')
    } else {
      statement <- paste0(statement, " device_source_value = '", device_source_value,"'")
    }
  }

  if (!missing(device_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(device_source_concept_id)) {
      statement <- paste0(statement, ' device_source_concept_id IS NULL')
    } else if (is(device_source_concept_id, 'subQuery')){
      statement <- paste0(statement, ' device_source_concept_id = (', as.character(device_source_concept_id), ')')
    } else {
      statement <- paste0(statement, " device_source_concept_id = '", device_source_concept_id,"'")
    }
  }

  statement <- paste0(statement, ") != 0 THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_no_location <- function(location_id, address_1, address_2, city, state, zip, county, location_source_value) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect location' AS test, CASE WHEN(SELECT COUNT(*) FROM location WHERE")
  first <- TRUE
  if (!missing(location_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(location_id)) {
      statement <- paste0(statement, ' location_id IS NULL')
    } else if (is(location_id, 'subQuery')){
      statement <- paste0(statement, ' location_id = (', as.character(location_id), ')')
    } else {
      statement <- paste0(statement, " location_id = '", location_id,"'")
    }
  }

  if (!missing(address_1)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(address_1)) {
      statement <- paste0(statement, ' address_1 IS NULL')
    } else if (is(address_1, 'subQuery')){
      statement <- paste0(statement, ' address_1 = (', as.character(address_1), ')')
    } else {
      statement <- paste0(statement, " address_1 = '", address_1,"'")
    }
  }

  if (!missing(address_2)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(address_2)) {
      statement <- paste0(statement, ' address_2 IS NULL')
    } else if (is(address_2, 'subQuery')){
      statement <- paste0(statement, ' address_2 = (', as.character(address_2), ')')
    } else {
      statement <- paste0(statement, " address_2 = '", address_2,"'")
    }
  }

  if (!missing(city)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(city)) {
      statement <- paste0(statement, ' city IS NULL')
    } else if (is(city, 'subQuery')){
      statement <- paste0(statement, ' city = (', as.character(city), ')')
    } else {
      statement <- paste0(statement, " city = '", city,"'")
    }
  }

  if (!missing(state)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(state)) {
      statement <- paste0(statement, ' state IS NULL')
    } else if (is(state, 'subQuery')){
      statement <- paste0(statement, ' state = (', as.character(state), ')')
    } else {
      statement <- paste0(statement, " state = '", state,"'")
    }
  }

  if (!missing(zip)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(zip)) {
      statement <- paste0(statement, ' zip IS NULL')
    } else if (is(zip, 'subQuery')){
      statement <- paste0(statement, ' zip = (', as.character(zip), ')')
    } else {
      statement <- paste0(statement, " zip = '", zip,"'")
    }
  }

  if (!missing(county)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(county)) {
      statement <- paste0(statement, ' county IS NULL')
    } else if (is(county, 'subQuery')){
      statement <- paste0(statement, ' county = (', as.character(county), ')')
    } else {
      statement <- paste0(statement, " county = '", county,"'")
    }
  }

  if (!missing(location_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(location_source_value)) {
      statement <- paste0(statement, ' location_source_value IS NULL')
    } else if (is(location_source_value, 'subQuery')){
      statement <- paste0(statement, ' location_source_value = (', as.character(location_source_value), ')')
    } else {
      statement <- paste0(statement, " location_source_value = '", location_source_value,"'")
    }
  }

  statement <- paste0(statement, ") != 0 THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_no_care_site <- function(care_site_id, care_site_name, place_of_service_concept_id, location_id, care_site_source_value, place_of_service_source_value) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect care_site' AS test, CASE WHEN(SELECT COUNT(*) FROM care_site WHERE")
  first <- TRUE
  if (!missing(care_site_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(care_site_id)) {
      statement <- paste0(statement, ' care_site_id IS NULL')
    } else if (is(care_site_id, 'subQuery')){
      statement <- paste0(statement, ' care_site_id = (', as.character(care_site_id), ')')
    } else {
      statement <- paste0(statement, " care_site_id = '", care_site_id,"'")
    }
  }

  if (!missing(care_site_name)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(care_site_name)) {
      statement <- paste0(statement, ' care_site_name IS NULL')
    } else if (is(care_site_name, 'subQuery')){
      statement <- paste0(statement, ' care_site_name = (', as.character(care_site_name), ')')
    } else {
      statement <- paste0(statement, " care_site_name = '", care_site_name,"'")
    }
  }

  if (!missing(place_of_service_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(place_of_service_concept_id)) {
      statement <- paste0(statement, ' place_of_service_concept_id IS NULL')
    } else if (is(place_of_service_concept_id, 'subQuery')){
      statement <- paste0(statement, ' place_of_service_concept_id = (', as.character(place_of_service_concept_id), ')')
    } else {
      statement <- paste0(statement, " place_of_service_concept_id = '", place_of_service_concept_id,"'")
    }
  }

  if (!missing(location_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(location_id)) {
      statement <- paste0(statement, ' location_id IS NULL')
    } else if (is(location_id, 'subQuery')){
      statement <- paste0(statement, ' location_id = (', as.character(location_id), ')')
    } else {
      statement <- paste0(statement, " location_id = '", location_id,"'")
    }
  }

  if (!missing(care_site_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(care_site_source_value)) {
      statement <- paste0(statement, ' care_site_source_value IS NULL')
    } else if (is(care_site_source_value, 'subQuery')){
      statement <- paste0(statement, ' care_site_source_value = (', as.character(care_site_source_value), ')')
    } else {
      statement <- paste0(statement, " care_site_source_value = '", care_site_source_value,"'")
    }
  }

  if (!missing(place_of_service_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(place_of_service_source_value)) {
      statement <- paste0(statement, ' place_of_service_source_value IS NULL')
    } else if (is(place_of_service_source_value, 'subQuery')){
      statement <- paste0(statement, ' place_of_service_source_value = (', as.character(place_of_service_source_value), ')')
    } else {
      statement <- paste0(statement, " place_of_service_source_value = '", place_of_service_source_value,"'")
    }
  }

  statement <- paste0(statement, ") != 0 THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_no_provider <- function(provider_id, provider_name, npi, dea, specialty_concept_id, care_site_id, year_of_birth, gender_concept_id, provider_source_value, specialty_source_value, specialty_source_concept_id, gender_source_value, gender_source_concept_id) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect provider' AS test, CASE WHEN(SELECT COUNT(*) FROM provider WHERE")
  first <- TRUE
  if (!missing(provider_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(provider_id)) {
      statement <- paste0(statement, ' provider_id IS NULL')
    } else if (is(provider_id, 'subQuery')){
      statement <- paste0(statement, ' provider_id = (', as.character(provider_id), ')')
    } else {
      statement <- paste0(statement, " provider_id = '", provider_id,"'")
    }
  }

  if (!missing(provider_name)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(provider_name)) {
      statement <- paste0(statement, ' provider_name IS NULL')
    } else if (is(provider_name, 'subQuery')){
      statement <- paste0(statement, ' provider_name = (', as.character(provider_name), ')')
    } else {
      statement <- paste0(statement, " provider_name = '", provider_name,"'")
    }
  }

  if (!missing(npi)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(npi)) {
      statement <- paste0(statement, ' npi IS NULL')
    } else if (is(npi, 'subQuery')){
      statement <- paste0(statement, ' npi = (', as.character(npi), ')')
    } else {
      statement <- paste0(statement, " npi = '", npi,"'")
    }
  }

  if (!missing(dea)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(dea)) {
      statement <- paste0(statement, ' dea IS NULL')
    } else if (is(dea, 'subQuery')){
      statement <- paste0(statement, ' dea = (', as.character(dea), ')')
    } else {
      statement <- paste0(statement, " dea = '", dea,"'")
    }
  }

  if (!missing(specialty_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(specialty_concept_id)) {
      statement <- paste0(statement, ' specialty_concept_id IS NULL')
    } else if (is(specialty_concept_id, 'subQuery')){
      statement <- paste0(statement, ' specialty_concept_id = (', as.character(specialty_concept_id), ')')
    } else {
      statement <- paste0(statement, " specialty_concept_id = '", specialty_concept_id,"'")
    }
  }

  if (!missing(care_site_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(care_site_id)) {
      statement <- paste0(statement, ' care_site_id IS NULL')
    } else if (is(care_site_id, 'subQuery')){
      statement <- paste0(statement, ' care_site_id = (', as.character(care_site_id), ')')
    } else {
      statement <- paste0(statement, " care_site_id = '", care_site_id,"'")
    }
  }

  if (!missing(year_of_birth)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(year_of_birth)) {
      statement <- paste0(statement, ' year_of_birth IS NULL')
    } else if (is(year_of_birth, 'subQuery')){
      statement <- paste0(statement, ' year_of_birth = (', as.character(year_of_birth), ')')
    } else {
      statement <- paste0(statement, " year_of_birth = '", year_of_birth,"'")
    }
  }

  if (!missing(gender_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(gender_concept_id)) {
      statement <- paste0(statement, ' gender_concept_id IS NULL')
    } else if (is(gender_concept_id, 'subQuery')){
      statement <- paste0(statement, ' gender_concept_id = (', as.character(gender_concept_id), ')')
    } else {
      statement <- paste0(statement, " gender_concept_id = '", gender_concept_id,"'")
    }
  }

  if (!missing(provider_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(provider_source_value)) {
      statement <- paste0(statement, ' provider_source_value IS NULL')
    } else if (is(provider_source_value, 'subQuery')){
      statement <- paste0(statement, ' provider_source_value = (', as.character(provider_source_value), ')')
    } else {
      statement <- paste0(statement, " provider_source_value = '", provider_source_value,"'")
    }
  }

  if (!missing(specialty_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(specialty_source_value)) {
      statement <- paste0(statement, ' specialty_source_value IS NULL')
    } else if (is(specialty_source_value, 'subQuery')){
      statement <- paste0(statement, ' specialty_source_value = (', as.character(specialty_source_value), ')')
    } else {
      statement <- paste0(statement, " specialty_source_value = '", specialty_source_value,"'")
    }
  }

  if (!missing(specialty_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(specialty_source_concept_id)) {
      statement <- paste0(statement, ' specialty_source_concept_id IS NULL')
    } else if (is(specialty_source_concept_id, 'subQuery')){
      statement <- paste0(statement, ' specialty_source_concept_id = (', as.character(specialty_source_concept_id), ')')
    } else {
      statement <- paste0(statement, " specialty_source_concept_id = '", specialty_source_concept_id,"'")
    }
  }

  if (!missing(gender_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(gender_source_value)) {
      statement <- paste0(statement, ' gender_source_value IS NULL')
    } else if (is(gender_source_value, 'subQuery')){
      statement <- paste0(statement, ' gender_source_value = (', as.character(gender_source_value), ')')
    } else {
      statement <- paste0(statement, " gender_source_value = '", gender_source_value,"'")
    }
  }

  if (!missing(gender_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(gender_source_concept_id)) {
      statement <- paste0(statement, ' gender_source_concept_id IS NULL')
    } else if (is(gender_source_concept_id, 'subQuery')){
      statement <- paste0(statement, ' gender_source_concept_id = (', as.character(gender_source_concept_id), ')')
    } else {
      statement <- paste0(statement, " gender_source_concept_id = '", gender_source_concept_id,"'")
    }
  }

  statement <- paste0(statement, ") != 0 THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_no_note <- function(note_id, person_id, note_date, note_time, note_type_concept_id, note_text, provider_id, visit_occurrence_id, note_source_value) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect note' AS test, CASE WHEN(SELECT COUNT(*) FROM note WHERE")
  first <- TRUE
  if (!missing(note_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(note_id)) {
      statement <- paste0(statement, ' note_id IS NULL')
    } else if (is(note_id, 'subQuery')){
      statement <- paste0(statement, ' note_id = (', as.character(note_id), ')')
    } else {
      statement <- paste0(statement, " note_id = '", note_id,"'")
    }
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(person_id)) {
      statement <- paste0(statement, ' person_id IS NULL')
    } else if (is(person_id, 'subQuery')){
      statement <- paste0(statement, ' person_id = (', as.character(person_id), ')')
    } else {
      statement <- paste0(statement, " person_id = '", person_id,"'")
    }
  }

  if (!missing(note_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(note_date)) {
      statement <- paste0(statement, ' note_date IS NULL')
    } else if (is(note_date, 'subQuery')){
      statement <- paste0(statement, ' note_date = (', as.character(note_date), ')')
    } else {
      statement <- paste0(statement, " note_date = '", note_date,"'")
    }
  }

  if (!missing(note_time)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(note_time)) {
      statement <- paste0(statement, ' note_time IS NULL')
    } else if (is(note_time, 'subQuery')){
      statement <- paste0(statement, ' note_time = (', as.character(note_time), ')')
    } else {
      statement <- paste0(statement, " note_time = '", note_time,"'")
    }
  }

  if (!missing(note_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(note_type_concept_id)) {
      statement <- paste0(statement, ' note_type_concept_id IS NULL')
    } else if (is(note_type_concept_id, 'subQuery')){
      statement <- paste0(statement, ' note_type_concept_id = (', as.character(note_type_concept_id), ')')
    } else {
      statement <- paste0(statement, " note_type_concept_id = '", note_type_concept_id,"'")
    }
  }

  if (!missing(note_text)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(note_text)) {
      statement <- paste0(statement, ' note_text IS NULL')
    } else if (is(note_text, 'subQuery')){
      statement <- paste0(statement, ' note_text = (', as.character(note_text), ')')
    } else {
      statement <- paste0(statement, " note_text = '", note_text,"'")
    }
  }

  if (!missing(provider_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(provider_id)) {
      statement <- paste0(statement, ' provider_id IS NULL')
    } else if (is(provider_id, 'subQuery')){
      statement <- paste0(statement, ' provider_id = (', as.character(provider_id), ')')
    } else {
      statement <- paste0(statement, " provider_id = '", provider_id,"'")
    }
  }

  if (!missing(visit_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(visit_occurrence_id)) {
      statement <- paste0(statement, ' visit_occurrence_id IS NULL')
    } else if (is(visit_occurrence_id, 'subQuery')){
      statement <- paste0(statement, ' visit_occurrence_id = (', as.character(visit_occurrence_id), ')')
    } else {
      statement <- paste0(statement, " visit_occurrence_id = '", visit_occurrence_id,"'")
    }
  }

  if (!missing(note_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(note_source_value)) {
      statement <- paste0(statement, ' note_source_value IS NULL')
    } else if (is(note_source_value, 'subQuery')){
      statement <- paste0(statement, ' note_source_value = (', as.character(note_source_value), ')')
    } else {
      statement <- paste0(statement, " note_source_value = '", note_source_value,"'")
    }
  }

  statement <- paste0(statement, ") != 0 THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_no_specimen <- function(specimen_id, person_id, specimen_concept_id, specimen_type_concept_id, specimen_date, specimen_time, quantity, unit_concept_id, anatomic_site_concept_id, disease_status_concept_id, specimen_source_id, specimen_source_value, unit_source_value, anatomic_site_source_value, disease_status_source_value) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect specimen' AS test, CASE WHEN(SELECT COUNT(*) FROM specimen WHERE")
  first <- TRUE
  if (!missing(specimen_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(specimen_id)) {
      statement <- paste0(statement, ' specimen_id IS NULL')
    } else if (is(specimen_id, 'subQuery')){
      statement <- paste0(statement, ' specimen_id = (', as.character(specimen_id), ')')
    } else {
      statement <- paste0(statement, " specimen_id = '", specimen_id,"'")
    }
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(person_id)) {
      statement <- paste0(statement, ' person_id IS NULL')
    } else if (is(person_id, 'subQuery')){
      statement <- paste0(statement, ' person_id = (', as.character(person_id), ')')
    } else {
      statement <- paste0(statement, " person_id = '", person_id,"'")
    }
  }

  if (!missing(specimen_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(specimen_concept_id)) {
      statement <- paste0(statement, ' specimen_concept_id IS NULL')
    } else if (is(specimen_concept_id, 'subQuery')){
      statement <- paste0(statement, ' specimen_concept_id = (', as.character(specimen_concept_id), ')')
    } else {
      statement <- paste0(statement, " specimen_concept_id = '", specimen_concept_id,"'")
    }
  }

  if (!missing(specimen_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(specimen_type_concept_id)) {
      statement <- paste0(statement, ' specimen_type_concept_id IS NULL')
    } else if (is(specimen_type_concept_id, 'subQuery')){
      statement <- paste0(statement, ' specimen_type_concept_id = (', as.character(specimen_type_concept_id), ')')
    } else {
      statement <- paste0(statement, " specimen_type_concept_id = '", specimen_type_concept_id,"'")
    }
  }

  if (!missing(specimen_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(specimen_date)) {
      statement <- paste0(statement, ' specimen_date IS NULL')
    } else if (is(specimen_date, 'subQuery')){
      statement <- paste0(statement, ' specimen_date = (', as.character(specimen_date), ')')
    } else {
      statement <- paste0(statement, " specimen_date = '", specimen_date,"'")
    }
  }

  if (!missing(specimen_time)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(specimen_time)) {
      statement <- paste0(statement, ' specimen_time IS NULL')
    } else if (is(specimen_time, 'subQuery')){
      statement <- paste0(statement, ' specimen_time = (', as.character(specimen_time), ')')
    } else {
      statement <- paste0(statement, " specimen_time = '", specimen_time,"'")
    }
  }

  if (!missing(quantity)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(quantity)) {
      statement <- paste0(statement, ' quantity IS NULL')
    } else if (is(quantity, 'subQuery')){
      statement <- paste0(statement, ' quantity = (', as.character(quantity), ')')
    } else {
      statement <- paste0(statement, " quantity = '", quantity,"'")
    }
  }

  if (!missing(unit_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(unit_concept_id)) {
      statement <- paste0(statement, ' unit_concept_id IS NULL')
    } else if (is(unit_concept_id, 'subQuery')){
      statement <- paste0(statement, ' unit_concept_id = (', as.character(unit_concept_id), ')')
    } else {
      statement <- paste0(statement, " unit_concept_id = '", unit_concept_id,"'")
    }
  }

  if (!missing(anatomic_site_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(anatomic_site_concept_id)) {
      statement <- paste0(statement, ' anatomic_site_concept_id IS NULL')
    } else if (is(anatomic_site_concept_id, 'subQuery')){
      statement <- paste0(statement, ' anatomic_site_concept_id = (', as.character(anatomic_site_concept_id), ')')
    } else {
      statement <- paste0(statement, " anatomic_site_concept_id = '", anatomic_site_concept_id,"'")
    }
  }

  if (!missing(disease_status_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(disease_status_concept_id)) {
      statement <- paste0(statement, ' disease_status_concept_id IS NULL')
    } else if (is(disease_status_concept_id, 'subQuery')){
      statement <- paste0(statement, ' disease_status_concept_id = (', as.character(disease_status_concept_id), ')')
    } else {
      statement <- paste0(statement, " disease_status_concept_id = '", disease_status_concept_id,"'")
    }
  }

  if (!missing(specimen_source_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(specimen_source_id)) {
      statement <- paste0(statement, ' specimen_source_id IS NULL')
    } else if (is(specimen_source_id, 'subQuery')){
      statement <- paste0(statement, ' specimen_source_id = (', as.character(specimen_source_id), ')')
    } else {
      statement <- paste0(statement, " specimen_source_id = '", specimen_source_id,"'")
    }
  }

  if (!missing(specimen_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(specimen_source_value)) {
      statement <- paste0(statement, ' specimen_source_value IS NULL')
    } else if (is(specimen_source_value, 'subQuery')){
      statement <- paste0(statement, ' specimen_source_value = (', as.character(specimen_source_value), ')')
    } else {
      statement <- paste0(statement, " specimen_source_value = '", specimen_source_value,"'")
    }
  }

  if (!missing(unit_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(unit_source_value)) {
      statement <- paste0(statement, ' unit_source_value IS NULL')
    } else if (is(unit_source_value, 'subQuery')){
      statement <- paste0(statement, ' unit_source_value = (', as.character(unit_source_value), ')')
    } else {
      statement <- paste0(statement, " unit_source_value = '", unit_source_value,"'")
    }
  }

  if (!missing(anatomic_site_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(anatomic_site_source_value)) {
      statement <- paste0(statement, ' anatomic_site_source_value IS NULL')
    } else if (is(anatomic_site_source_value, 'subQuery')){
      statement <- paste0(statement, ' anatomic_site_source_value = (', as.character(anatomic_site_source_value), ')')
    } else {
      statement <- paste0(statement, " anatomic_site_source_value = '", anatomic_site_source_value,"'")
    }
  }

  if (!missing(disease_status_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(disease_status_source_value)) {
      statement <- paste0(statement, ' disease_status_source_value IS NULL')
    } else if (is(disease_status_source_value, 'subQuery')){
      statement <- paste0(statement, ' disease_status_source_value = (', as.character(disease_status_source_value), ')')
    } else {
      statement <- paste0(statement, " disease_status_source_value = '", disease_status_source_value,"'")
    }
  }

  statement <- paste0(statement, ") != 0 THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_no_fact_relationship <- function(domain_concept_id_1, fact_id_1, domain_concept_id_2, fact_id_2, relationship_concept_id) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect fact_relationship' AS test, CASE WHEN(SELECT COUNT(*) FROM fact_relationship WHERE")
  first <- TRUE
  if (!missing(domain_concept_id_1)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(domain_concept_id_1)) {
      statement <- paste0(statement, ' domain_concept_id_1 IS NULL')
    } else if (is(domain_concept_id_1, 'subQuery')){
      statement <- paste0(statement, ' domain_concept_id_1 = (', as.character(domain_concept_id_1), ')')
    } else {
      statement <- paste0(statement, " domain_concept_id_1 = '", domain_concept_id_1,"'")
    }
  }

  if (!missing(fact_id_1)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(fact_id_1)) {
      statement <- paste0(statement, ' fact_id_1 IS NULL')
    } else if (is(fact_id_1, 'subQuery')){
      statement <- paste0(statement, ' fact_id_1 = (', as.character(fact_id_1), ')')
    } else {
      statement <- paste0(statement, " fact_id_1 = '", fact_id_1,"'")
    }
  }

  if (!missing(domain_concept_id_2)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(domain_concept_id_2)) {
      statement <- paste0(statement, ' domain_concept_id_2 IS NULL')
    } else if (is(domain_concept_id_2, 'subQuery')){
      statement <- paste0(statement, ' domain_concept_id_2 = (', as.character(domain_concept_id_2), ')')
    } else {
      statement <- paste0(statement, " domain_concept_id_2 = '", domain_concept_id_2,"'")
    }
  }

  if (!missing(fact_id_2)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(fact_id_2)) {
      statement <- paste0(statement, ' fact_id_2 IS NULL')
    } else if (is(fact_id_2, 'subQuery')){
      statement <- paste0(statement, ' fact_id_2 = (', as.character(fact_id_2), ')')
    } else {
      statement <- paste0(statement, " fact_id_2 = '", fact_id_2,"'")
    }
  }

  if (!missing(relationship_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(relationship_concept_id)) {
      statement <- paste0(statement, ' relationship_concept_id IS NULL')
    } else if (is(relationship_concept_id, 'subQuery')){
      statement <- paste0(statement, ' relationship_concept_id = (', as.character(relationship_concept_id), ')')
    } else {
      statement <- paste0(statement, " relationship_concept_id = '", relationship_concept_id,"'")
    }
  }

  statement <- paste0(statement, ") != 0 THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_no_procedure_cost <- function(procedure_cost_id, procedure_occurrence_id, currency_concept_id, paid_copay, paid_coinsurance, paid_toward_deductible, paid_by_payer, paid_by_coordination_benefits, total_out_of_pocket, total_paid, revenue_code_concept_id, payer_plan_period_id, revenue_code_source_value) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect procedure_cost' AS test, CASE WHEN(SELECT COUNT(*) FROM procedure_cost WHERE")
  first <- TRUE
  if (!missing(procedure_cost_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(procedure_cost_id)) {
      statement <- paste0(statement, ' procedure_cost_id IS NULL')
    } else if (is(procedure_cost_id, 'subQuery')){
      statement <- paste0(statement, ' procedure_cost_id = (', as.character(procedure_cost_id), ')')
    } else {
      statement <- paste0(statement, " procedure_cost_id = '", procedure_cost_id,"'")
    }
  }

  if (!missing(procedure_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(procedure_occurrence_id)) {
      statement <- paste0(statement, ' procedure_occurrence_id IS NULL')
    } else if (is(procedure_occurrence_id, 'subQuery')){
      statement <- paste0(statement, ' procedure_occurrence_id = (', as.character(procedure_occurrence_id), ')')
    } else {
      statement <- paste0(statement, " procedure_occurrence_id = '", procedure_occurrence_id,"'")
    }
  }

  if (!missing(currency_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(currency_concept_id)) {
      statement <- paste0(statement, ' currency_concept_id IS NULL')
    } else if (is(currency_concept_id, 'subQuery')){
      statement <- paste0(statement, ' currency_concept_id = (', as.character(currency_concept_id), ')')
    } else {
      statement <- paste0(statement, " currency_concept_id = '", currency_concept_id,"'")
    }
  }

  if (!missing(paid_copay)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_copay)) {
      statement <- paste0(statement, ' paid_copay IS NULL')
    } else if (is(paid_copay, 'subQuery')){
      statement <- paste0(statement, ' paid_copay = (', as.character(paid_copay), ')')
    } else {
      statement <- paste0(statement, " paid_copay = '", paid_copay,"'")
    }
  }

  if (!missing(paid_coinsurance)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_coinsurance)) {
      statement <- paste0(statement, ' paid_coinsurance IS NULL')
    } else if (is(paid_coinsurance, 'subQuery')){
      statement <- paste0(statement, ' paid_coinsurance = (', as.character(paid_coinsurance), ')')
    } else {
      statement <- paste0(statement, " paid_coinsurance = '", paid_coinsurance,"'")
    }
  }

  if (!missing(paid_toward_deductible)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_toward_deductible)) {
      statement <- paste0(statement, ' paid_toward_deductible IS NULL')
    } else if (is(paid_toward_deductible, 'subQuery')){
      statement <- paste0(statement, ' paid_toward_deductible = (', as.character(paid_toward_deductible), ')')
    } else {
      statement <- paste0(statement, " paid_toward_deductible = '", paid_toward_deductible,"'")
    }
  }

  if (!missing(paid_by_payer)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_by_payer)) {
      statement <- paste0(statement, ' paid_by_payer IS NULL')
    } else if (is(paid_by_payer, 'subQuery')){
      statement <- paste0(statement, ' paid_by_payer = (', as.character(paid_by_payer), ')')
    } else {
      statement <- paste0(statement, " paid_by_payer = '", paid_by_payer,"'")
    }
  }

  if (!missing(paid_by_coordination_benefits)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_by_coordination_benefits)) {
      statement <- paste0(statement, ' paid_by_coordination_benefits IS NULL')
    } else if (is(paid_by_coordination_benefits, 'subQuery')){
      statement <- paste0(statement, ' paid_by_coordination_benefits = (', as.character(paid_by_coordination_benefits), ')')
    } else {
      statement <- paste0(statement, " paid_by_coordination_benefits = '", paid_by_coordination_benefits,"'")
    }
  }

  if (!missing(total_out_of_pocket)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(total_out_of_pocket)) {
      statement <- paste0(statement, ' total_out_of_pocket IS NULL')
    } else if (is(total_out_of_pocket, 'subQuery')){
      statement <- paste0(statement, ' total_out_of_pocket = (', as.character(total_out_of_pocket), ')')
    } else {
      statement <- paste0(statement, " total_out_of_pocket = '", total_out_of_pocket,"'")
    }
  }

  if (!missing(total_paid)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(total_paid)) {
      statement <- paste0(statement, ' total_paid IS NULL')
    } else if (is(total_paid, 'subQuery')){
      statement <- paste0(statement, ' total_paid = (', as.character(total_paid), ')')
    } else {
      statement <- paste0(statement, " total_paid = '", total_paid,"'")
    }
  }

  if (!missing(revenue_code_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(revenue_code_concept_id)) {
      statement <- paste0(statement, ' revenue_code_concept_id IS NULL')
    } else if (is(revenue_code_concept_id, 'subQuery')){
      statement <- paste0(statement, ' revenue_code_concept_id = (', as.character(revenue_code_concept_id), ')')
    } else {
      statement <- paste0(statement, " revenue_code_concept_id = '", revenue_code_concept_id,"'")
    }
  }

  if (!missing(payer_plan_period_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(payer_plan_period_id)) {
      statement <- paste0(statement, ' payer_plan_period_id IS NULL')
    } else if (is(payer_plan_period_id, 'subQuery')){
      statement <- paste0(statement, ' payer_plan_period_id = (', as.character(payer_plan_period_id), ')')
    } else {
      statement <- paste0(statement, " payer_plan_period_id = '", payer_plan_period_id,"'")
    }
  }

  if (!missing(revenue_code_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(revenue_code_source_value)) {
      statement <- paste0(statement, ' revenue_code_source_value IS NULL')
    } else if (is(revenue_code_source_value, 'subQuery')){
      statement <- paste0(statement, ' revenue_code_source_value = (', as.character(revenue_code_source_value), ')')
    } else {
      statement <- paste0(statement, " revenue_code_source_value = '", revenue_code_source_value,"'")
    }
  }

  statement <- paste0(statement, ") != 0 THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_no_visit_cost <- function(visit_cost_id, visit_occurrence_id, currency_concept_id, paid_copay, paid_coinsurance, paid_toward_deductible, paid_by_payer, paid_by_coordination_benefits, total_out_of_pocket, total_paid, payer_plan_period_id) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect visit_cost' AS test, CASE WHEN(SELECT COUNT(*) FROM visit_cost WHERE")
  first <- TRUE
  if (!missing(visit_cost_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(visit_cost_id)) {
      statement <- paste0(statement, ' visit_cost_id IS NULL')
    } else if (is(visit_cost_id, 'subQuery')){
      statement <- paste0(statement, ' visit_cost_id = (', as.character(visit_cost_id), ')')
    } else {
      statement <- paste0(statement, " visit_cost_id = '", visit_cost_id,"'")
    }
  }

  if (!missing(visit_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(visit_occurrence_id)) {
      statement <- paste0(statement, ' visit_occurrence_id IS NULL')
    } else if (is(visit_occurrence_id, 'subQuery')){
      statement <- paste0(statement, ' visit_occurrence_id = (', as.character(visit_occurrence_id), ')')
    } else {
      statement <- paste0(statement, " visit_occurrence_id = '", visit_occurrence_id,"'")
    }
  }

  if (!missing(currency_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(currency_concept_id)) {
      statement <- paste0(statement, ' currency_concept_id IS NULL')
    } else if (is(currency_concept_id, 'subQuery')){
      statement <- paste0(statement, ' currency_concept_id = (', as.character(currency_concept_id), ')')
    } else {
      statement <- paste0(statement, " currency_concept_id = '", currency_concept_id,"'")
    }
  }

  if (!missing(paid_copay)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_copay)) {
      statement <- paste0(statement, ' paid_copay IS NULL')
    } else if (is(paid_copay, 'subQuery')){
      statement <- paste0(statement, ' paid_copay = (', as.character(paid_copay), ')')
    } else {
      statement <- paste0(statement, " paid_copay = '", paid_copay,"'")
    }
  }

  if (!missing(paid_coinsurance)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_coinsurance)) {
      statement <- paste0(statement, ' paid_coinsurance IS NULL')
    } else if (is(paid_coinsurance, 'subQuery')){
      statement <- paste0(statement, ' paid_coinsurance = (', as.character(paid_coinsurance), ')')
    } else {
      statement <- paste0(statement, " paid_coinsurance = '", paid_coinsurance,"'")
    }
  }

  if (!missing(paid_toward_deductible)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_toward_deductible)) {
      statement <- paste0(statement, ' paid_toward_deductible IS NULL')
    } else if (is(paid_toward_deductible, 'subQuery')){
      statement <- paste0(statement, ' paid_toward_deductible = (', as.character(paid_toward_deductible), ')')
    } else {
      statement <- paste0(statement, " paid_toward_deductible = '", paid_toward_deductible,"'")
    }
  }

  if (!missing(paid_by_payer)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_by_payer)) {
      statement <- paste0(statement, ' paid_by_payer IS NULL')
    } else if (is(paid_by_payer, 'subQuery')){
      statement <- paste0(statement, ' paid_by_payer = (', as.character(paid_by_payer), ')')
    } else {
      statement <- paste0(statement, " paid_by_payer = '", paid_by_payer,"'")
    }
  }

  if (!missing(paid_by_coordination_benefits)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_by_coordination_benefits)) {
      statement <- paste0(statement, ' paid_by_coordination_benefits IS NULL')
    } else if (is(paid_by_coordination_benefits, 'subQuery')){
      statement <- paste0(statement, ' paid_by_coordination_benefits = (', as.character(paid_by_coordination_benefits), ')')
    } else {
      statement <- paste0(statement, " paid_by_coordination_benefits = '", paid_by_coordination_benefits,"'")
    }
  }

  if (!missing(total_out_of_pocket)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(total_out_of_pocket)) {
      statement <- paste0(statement, ' total_out_of_pocket IS NULL')
    } else if (is(total_out_of_pocket, 'subQuery')){
      statement <- paste0(statement, ' total_out_of_pocket = (', as.character(total_out_of_pocket), ')')
    } else {
      statement <- paste0(statement, " total_out_of_pocket = '", total_out_of_pocket,"'")
    }
  }

  if (!missing(total_paid)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(total_paid)) {
      statement <- paste0(statement, ' total_paid IS NULL')
    } else if (is(total_paid, 'subQuery')){
      statement <- paste0(statement, ' total_paid = (', as.character(total_paid), ')')
    } else {
      statement <- paste0(statement, " total_paid = '", total_paid,"'")
    }
  }

  if (!missing(payer_plan_period_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(payer_plan_period_id)) {
      statement <- paste0(statement, ' payer_plan_period_id IS NULL')
    } else if (is(payer_plan_period_id, 'subQuery')){
      statement <- paste0(statement, ' payer_plan_period_id = (', as.character(payer_plan_period_id), ')')
    } else {
      statement <- paste0(statement, " payer_plan_period_id = '", payer_plan_period_id,"'")
    }
  }

  statement <- paste0(statement, ") != 0 THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_no_drug_cost <- function(drug_cost_id, drug_exposure_id, currency_concept_id, paid_copay, paid_coinsurance, paid_toward_deductible, paid_by_payer, paid_by_coordination_benefits, total_out_of_pocket, total_paid, ingredient_cost, dispensing_fee, average_wholesale_price, payer_plan_period_id) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect drug_cost' AS test, CASE WHEN(SELECT COUNT(*) FROM drug_cost WHERE")
  first <- TRUE
  if (!missing(drug_cost_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(drug_cost_id)) {
      statement <- paste0(statement, ' drug_cost_id IS NULL')
    } else if (is(drug_cost_id, 'subQuery')){
      statement <- paste0(statement, ' drug_cost_id = (', as.character(drug_cost_id), ')')
    } else {
      statement <- paste0(statement, " drug_cost_id = '", drug_cost_id,"'")
    }
  }

  if (!missing(drug_exposure_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(drug_exposure_id)) {
      statement <- paste0(statement, ' drug_exposure_id IS NULL')
    } else if (is(drug_exposure_id, 'subQuery')){
      statement <- paste0(statement, ' drug_exposure_id = (', as.character(drug_exposure_id), ')')
    } else {
      statement <- paste0(statement, " drug_exposure_id = '", drug_exposure_id,"'")
    }
  }

  if (!missing(currency_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(currency_concept_id)) {
      statement <- paste0(statement, ' currency_concept_id IS NULL')
    } else if (is(currency_concept_id, 'subQuery')){
      statement <- paste0(statement, ' currency_concept_id = (', as.character(currency_concept_id), ')')
    } else {
      statement <- paste0(statement, " currency_concept_id = '", currency_concept_id,"'")
    }
  }

  if (!missing(paid_copay)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_copay)) {
      statement <- paste0(statement, ' paid_copay IS NULL')
    } else if (is(paid_copay, 'subQuery')){
      statement <- paste0(statement, ' paid_copay = (', as.character(paid_copay), ')')
    } else {
      statement <- paste0(statement, " paid_copay = '", paid_copay,"'")
    }
  }

  if (!missing(paid_coinsurance)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_coinsurance)) {
      statement <- paste0(statement, ' paid_coinsurance IS NULL')
    } else if (is(paid_coinsurance, 'subQuery')){
      statement <- paste0(statement, ' paid_coinsurance = (', as.character(paid_coinsurance), ')')
    } else {
      statement <- paste0(statement, " paid_coinsurance = '", paid_coinsurance,"'")
    }
  }

  if (!missing(paid_toward_deductible)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_toward_deductible)) {
      statement <- paste0(statement, ' paid_toward_deductible IS NULL')
    } else if (is(paid_toward_deductible, 'subQuery')){
      statement <- paste0(statement, ' paid_toward_deductible = (', as.character(paid_toward_deductible), ')')
    } else {
      statement <- paste0(statement, " paid_toward_deductible = '", paid_toward_deductible,"'")
    }
  }

  if (!missing(paid_by_payer)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_by_payer)) {
      statement <- paste0(statement, ' paid_by_payer IS NULL')
    } else if (is(paid_by_payer, 'subQuery')){
      statement <- paste0(statement, ' paid_by_payer = (', as.character(paid_by_payer), ')')
    } else {
      statement <- paste0(statement, " paid_by_payer = '", paid_by_payer,"'")
    }
  }

  if (!missing(paid_by_coordination_benefits)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_by_coordination_benefits)) {
      statement <- paste0(statement, ' paid_by_coordination_benefits IS NULL')
    } else if (is(paid_by_coordination_benefits, 'subQuery')){
      statement <- paste0(statement, ' paid_by_coordination_benefits = (', as.character(paid_by_coordination_benefits), ')')
    } else {
      statement <- paste0(statement, " paid_by_coordination_benefits = '", paid_by_coordination_benefits,"'")
    }
  }

  if (!missing(total_out_of_pocket)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(total_out_of_pocket)) {
      statement <- paste0(statement, ' total_out_of_pocket IS NULL')
    } else if (is(total_out_of_pocket, 'subQuery')){
      statement <- paste0(statement, ' total_out_of_pocket = (', as.character(total_out_of_pocket), ')')
    } else {
      statement <- paste0(statement, " total_out_of_pocket = '", total_out_of_pocket,"'")
    }
  }

  if (!missing(total_paid)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(total_paid)) {
      statement <- paste0(statement, ' total_paid IS NULL')
    } else if (is(total_paid, 'subQuery')){
      statement <- paste0(statement, ' total_paid = (', as.character(total_paid), ')')
    } else {
      statement <- paste0(statement, " total_paid = '", total_paid,"'")
    }
  }

  if (!missing(ingredient_cost)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(ingredient_cost)) {
      statement <- paste0(statement, ' ingredient_cost IS NULL')
    } else if (is(ingredient_cost, 'subQuery')){
      statement <- paste0(statement, ' ingredient_cost = (', as.character(ingredient_cost), ')')
    } else {
      statement <- paste0(statement, " ingredient_cost = '", ingredient_cost,"'")
    }
  }

  if (!missing(dispensing_fee)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(dispensing_fee)) {
      statement <- paste0(statement, ' dispensing_fee IS NULL')
    } else if (is(dispensing_fee, 'subQuery')){
      statement <- paste0(statement, ' dispensing_fee = (', as.character(dispensing_fee), ')')
    } else {
      statement <- paste0(statement, " dispensing_fee = '", dispensing_fee,"'")
    }
  }

  if (!missing(average_wholesale_price)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(average_wholesale_price)) {
      statement <- paste0(statement, ' average_wholesale_price IS NULL')
    } else if (is(average_wholesale_price, 'subQuery')){
      statement <- paste0(statement, ' average_wholesale_price = (', as.character(average_wholesale_price), ')')
    } else {
      statement <- paste0(statement, " average_wholesale_price = '", average_wholesale_price,"'")
    }
  }

  if (!missing(payer_plan_period_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(payer_plan_period_id)) {
      statement <- paste0(statement, ' payer_plan_period_id IS NULL')
    } else if (is(payer_plan_period_id, 'subQuery')){
      statement <- paste0(statement, ' payer_plan_period_id = (', as.character(payer_plan_period_id), ')')
    } else {
      statement <- paste0(statement, " payer_plan_period_id = '", payer_plan_period_id,"'")
    }
  }

  statement <- paste0(statement, ") != 0 THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_no_payer_plan_period <- function(payer_plan_period_id, person_id, payer_plan_period_start_date, payer_plan_period_end_date, payer_source_value, plan_source_value, family_source_value) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect payer_plan_period' AS test, CASE WHEN(SELECT COUNT(*) FROM payer_plan_period WHERE")
  first <- TRUE
  if (!missing(payer_plan_period_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(payer_plan_period_id)) {
      statement <- paste0(statement, ' payer_plan_period_id IS NULL')
    } else if (is(payer_plan_period_id, 'subQuery')){
      statement <- paste0(statement, ' payer_plan_period_id = (', as.character(payer_plan_period_id), ')')
    } else {
      statement <- paste0(statement, " payer_plan_period_id = '", payer_plan_period_id,"'")
    }
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(person_id)) {
      statement <- paste0(statement, ' person_id IS NULL')
    } else if (is(person_id, 'subQuery')){
      statement <- paste0(statement, ' person_id = (', as.character(person_id), ')')
    } else {
      statement <- paste0(statement, " person_id = '", person_id,"'")
    }
  }

  if (!missing(payer_plan_period_start_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(payer_plan_period_start_date)) {
      statement <- paste0(statement, ' payer_plan_period_start_date IS NULL')
    } else if (is(payer_plan_period_start_date, 'subQuery')){
      statement <- paste0(statement, ' payer_plan_period_start_date = (', as.character(payer_plan_period_start_date), ')')
    } else {
      statement <- paste0(statement, " payer_plan_period_start_date = '", payer_plan_period_start_date,"'")
    }
  }

  if (!missing(payer_plan_period_end_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(payer_plan_period_end_date)) {
      statement <- paste0(statement, ' payer_plan_period_end_date IS NULL')
    } else if (is(payer_plan_period_end_date, 'subQuery')){
      statement <- paste0(statement, ' payer_plan_period_end_date = (', as.character(payer_plan_period_end_date), ')')
    } else {
      statement <- paste0(statement, " payer_plan_period_end_date = '", payer_plan_period_end_date,"'")
    }
  }

  if (!missing(payer_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(payer_source_value)) {
      statement <- paste0(statement, ' payer_source_value IS NULL')
    } else if (is(payer_source_value, 'subQuery')){
      statement <- paste0(statement, ' payer_source_value = (', as.character(payer_source_value), ')')
    } else {
      statement <- paste0(statement, " payer_source_value = '", payer_source_value,"'")
    }
  }

  if (!missing(plan_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(plan_source_value)) {
      statement <- paste0(statement, ' plan_source_value IS NULL')
    } else if (is(plan_source_value, 'subQuery')){
      statement <- paste0(statement, ' plan_source_value = (', as.character(plan_source_value), ')')
    } else {
      statement <- paste0(statement, " plan_source_value = '", plan_source_value,"'")
    }
  }

  if (!missing(family_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(family_source_value)) {
      statement <- paste0(statement, ' family_source_value IS NULL')
    } else if (is(family_source_value, 'subQuery')){
      statement <- paste0(statement, ' family_source_value = (', as.character(family_source_value), ')')
    } else {
      statement <- paste0(statement, " family_source_value = '", family_source_value,"'")
    }
  }

  statement <- paste0(statement, ") != 0 THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_no_device_cost <- function(device_cost_id, device_exposure_id, currency_concept_id, paid_copay, paid_coinsurance, paid_toward_deductible, paid_by_payer, paid_by_coordination_benefits, total_out_of_pocket, total_paid, payer_plan_period_id) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect device_cost' AS test, CASE WHEN(SELECT COUNT(*) FROM device_cost WHERE")
  first <- TRUE
  if (!missing(device_cost_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(device_cost_id)) {
      statement <- paste0(statement, ' device_cost_id IS NULL')
    } else if (is(device_cost_id, 'subQuery')){
      statement <- paste0(statement, ' device_cost_id = (', as.character(device_cost_id), ')')
    } else {
      statement <- paste0(statement, " device_cost_id = '", device_cost_id,"'")
    }
  }

  if (!missing(device_exposure_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(device_exposure_id)) {
      statement <- paste0(statement, ' device_exposure_id IS NULL')
    } else if (is(device_exposure_id, 'subQuery')){
      statement <- paste0(statement, ' device_exposure_id = (', as.character(device_exposure_id), ')')
    } else {
      statement <- paste0(statement, " device_exposure_id = '", device_exposure_id,"'")
    }
  }

  if (!missing(currency_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(currency_concept_id)) {
      statement <- paste0(statement, ' currency_concept_id IS NULL')
    } else if (is(currency_concept_id, 'subQuery')){
      statement <- paste0(statement, ' currency_concept_id = (', as.character(currency_concept_id), ')')
    } else {
      statement <- paste0(statement, " currency_concept_id = '", currency_concept_id,"'")
    }
  }

  if (!missing(paid_copay)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_copay)) {
      statement <- paste0(statement, ' paid_copay IS NULL')
    } else if (is(paid_copay, 'subQuery')){
      statement <- paste0(statement, ' paid_copay = (', as.character(paid_copay), ')')
    } else {
      statement <- paste0(statement, " paid_copay = '", paid_copay,"'")
    }
  }

  if (!missing(paid_coinsurance)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_coinsurance)) {
      statement <- paste0(statement, ' paid_coinsurance IS NULL')
    } else if (is(paid_coinsurance, 'subQuery')){
      statement <- paste0(statement, ' paid_coinsurance = (', as.character(paid_coinsurance), ')')
    } else {
      statement <- paste0(statement, " paid_coinsurance = '", paid_coinsurance,"'")
    }
  }

  if (!missing(paid_toward_deductible)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_toward_deductible)) {
      statement <- paste0(statement, ' paid_toward_deductible IS NULL')
    } else if (is(paid_toward_deductible, 'subQuery')){
      statement <- paste0(statement, ' paid_toward_deductible = (', as.character(paid_toward_deductible), ')')
    } else {
      statement <- paste0(statement, " paid_toward_deductible = '", paid_toward_deductible,"'")
    }
  }

  if (!missing(paid_by_payer)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_by_payer)) {
      statement <- paste0(statement, ' paid_by_payer IS NULL')
    } else if (is(paid_by_payer, 'subQuery')){
      statement <- paste0(statement, ' paid_by_payer = (', as.character(paid_by_payer), ')')
    } else {
      statement <- paste0(statement, " paid_by_payer = '", paid_by_payer,"'")
    }
  }

  if (!missing(paid_by_coordination_benefits)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_by_coordination_benefits)) {
      statement <- paste0(statement, ' paid_by_coordination_benefits IS NULL')
    } else if (is(paid_by_coordination_benefits, 'subQuery')){
      statement <- paste0(statement, ' paid_by_coordination_benefits = (', as.character(paid_by_coordination_benefits), ')')
    } else {
      statement <- paste0(statement, " paid_by_coordination_benefits = '", paid_by_coordination_benefits,"'")
    }
  }

  if (!missing(total_out_of_pocket)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(total_out_of_pocket)) {
      statement <- paste0(statement, ' total_out_of_pocket IS NULL')
    } else if (is(total_out_of_pocket, 'subQuery')){
      statement <- paste0(statement, ' total_out_of_pocket = (', as.character(total_out_of_pocket), ')')
    } else {
      statement <- paste0(statement, " total_out_of_pocket = '", total_out_of_pocket,"'")
    }
  }

  if (!missing(total_paid)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(total_paid)) {
      statement <- paste0(statement, ' total_paid IS NULL')
    } else if (is(total_paid, 'subQuery')){
      statement <- paste0(statement, ' total_paid = (', as.character(total_paid), ')')
    } else {
      statement <- paste0(statement, " total_paid = '", total_paid,"'")
    }
  }

  if (!missing(payer_plan_period_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(payer_plan_period_id)) {
      statement <- paste0(statement, ' payer_plan_period_id IS NULL')
    } else if (is(payer_plan_period_id, 'subQuery')){
      statement <- paste0(statement, ' payer_plan_period_id = (', as.character(payer_plan_period_id), ')')
    } else {
      statement <- paste0(statement, " payer_plan_period_id = '", payer_plan_period_id,"'")
    }
  }

  statement <- paste0(statement, ") != 0 THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_no_dose_era <- function(dose_era_id, person_id, drug_concept_id, unit_concept_id, dose_value, dose_era_start_date, dose_era_end_date) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect dose_era' AS test, CASE WHEN(SELECT COUNT(*) FROM dose_era WHERE")
  first <- TRUE
  if (!missing(dose_era_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(dose_era_id)) {
      statement <- paste0(statement, ' dose_era_id IS NULL')
    } else if (is(dose_era_id, 'subQuery')){
      statement <- paste0(statement, ' dose_era_id = (', as.character(dose_era_id), ')')
    } else {
      statement <- paste0(statement, " dose_era_id = '", dose_era_id,"'")
    }
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(person_id)) {
      statement <- paste0(statement, ' person_id IS NULL')
    } else if (is(person_id, 'subQuery')){
      statement <- paste0(statement, ' person_id = (', as.character(person_id), ')')
    } else {
      statement <- paste0(statement, " person_id = '", person_id,"'")
    }
  }

  if (!missing(drug_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(drug_concept_id)) {
      statement <- paste0(statement, ' drug_concept_id IS NULL')
    } else if (is(drug_concept_id, 'subQuery')){
      statement <- paste0(statement, ' drug_concept_id = (', as.character(drug_concept_id), ')')
    } else {
      statement <- paste0(statement, " drug_concept_id = '", drug_concept_id,"'")
    }
  }

  if (!missing(unit_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(unit_concept_id)) {
      statement <- paste0(statement, ' unit_concept_id IS NULL')
    } else if (is(unit_concept_id, 'subQuery')){
      statement <- paste0(statement, ' unit_concept_id = (', as.character(unit_concept_id), ')')
    } else {
      statement <- paste0(statement, " unit_concept_id = '", unit_concept_id,"'")
    }
  }

  if (!missing(dose_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(dose_value)) {
      statement <- paste0(statement, ' dose_value IS NULL')
    } else if (is(dose_value, 'subQuery')){
      statement <- paste0(statement, ' dose_value = (', as.character(dose_value), ')')
    } else {
      statement <- paste0(statement, " dose_value = '", dose_value,"'")
    }
  }

  if (!missing(dose_era_start_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(dose_era_start_date)) {
      statement <- paste0(statement, ' dose_era_start_date IS NULL')
    } else if (is(dose_era_start_date, 'subQuery')){
      statement <- paste0(statement, ' dose_era_start_date = (', as.character(dose_era_start_date), ')')
    } else {
      statement <- paste0(statement, " dose_era_start_date = '", dose_era_start_date,"'")
    }
  }

  if (!missing(dose_era_end_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(dose_era_end_date)) {
      statement <- paste0(statement, ' dose_era_end_date IS NULL')
    } else if (is(dose_era_end_date, 'subQuery')){
      statement <- paste0(statement, ' dose_era_end_date = (', as.character(dose_era_end_date), ')')
    } else {
      statement <- paste0(statement, " dose_era_end_date = '", dose_era_end_date,"'")
    }
  }

  statement <- paste0(statement, ") != 0 THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_no_condition_era <- function(condition_era_id, person_id, condition_concept_id, condition_era_start_date, condition_era_end_date, condition_occurrence_count) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect condition_era' AS test, CASE WHEN(SELECT COUNT(*) FROM condition_era WHERE")
  first <- TRUE
  if (!missing(condition_era_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(condition_era_id)) {
      statement <- paste0(statement, ' condition_era_id IS NULL')
    } else if (is(condition_era_id, 'subQuery')){
      statement <- paste0(statement, ' condition_era_id = (', as.character(condition_era_id), ')')
    } else {
      statement <- paste0(statement, " condition_era_id = '", condition_era_id,"'")
    }
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(person_id)) {
      statement <- paste0(statement, ' person_id IS NULL')
    } else if (is(person_id, 'subQuery')){
      statement <- paste0(statement, ' person_id = (', as.character(person_id), ')')
    } else {
      statement <- paste0(statement, " person_id = '", person_id,"'")
    }
  }

  if (!missing(condition_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(condition_concept_id)) {
      statement <- paste0(statement, ' condition_concept_id IS NULL')
    } else if (is(condition_concept_id, 'subQuery')){
      statement <- paste0(statement, ' condition_concept_id = (', as.character(condition_concept_id), ')')
    } else {
      statement <- paste0(statement, " condition_concept_id = '", condition_concept_id,"'")
    }
  }

  if (!missing(condition_era_start_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(condition_era_start_date)) {
      statement <- paste0(statement, ' condition_era_start_date IS NULL')
    } else if (is(condition_era_start_date, 'subQuery')){
      statement <- paste0(statement, ' condition_era_start_date = (', as.character(condition_era_start_date), ')')
    } else {
      statement <- paste0(statement, " condition_era_start_date = '", condition_era_start_date,"'")
    }
  }

  if (!missing(condition_era_end_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(condition_era_end_date)) {
      statement <- paste0(statement, ' condition_era_end_date IS NULL')
    } else if (is(condition_era_end_date, 'subQuery')){
      statement <- paste0(statement, ' condition_era_end_date = (', as.character(condition_era_end_date), ')')
    } else {
      statement <- paste0(statement, " condition_era_end_date = '", condition_era_end_date,"'")
    }
  }

  if (!missing(condition_occurrence_count)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(condition_occurrence_count)) {
      statement <- paste0(statement, ' condition_occurrence_count IS NULL')
    } else if (is(condition_occurrence_count, 'subQuery')){
      statement <- paste0(statement, ' condition_occurrence_count = (', as.character(condition_occurrence_count), ')')
    } else {
      statement <- paste0(statement, " condition_occurrence_count = '", condition_occurrence_count,"'")
    }
  }

  statement <- paste0(statement, ") != 0 THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_no_cdm_source <- function(cdm_source_name, cdm_source_abbreviation, cdm_holder, source_description, source_documentation_reference, cdm_etl_reference, source_release_date, cdm_release_date, cdm_version, vocabulary_version) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect cdm_source' AS test, CASE WHEN(SELECT COUNT(*) FROM cdm_source WHERE")
  first <- TRUE
  if (!missing(cdm_source_name)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cdm_source_name)) {
      statement <- paste0(statement, ' cdm_source_name IS NULL')
    } else if (is(cdm_source_name, 'subQuery')){
      statement <- paste0(statement, ' cdm_source_name = (', as.character(cdm_source_name), ')')
    } else {
      statement <- paste0(statement, " cdm_source_name = '", cdm_source_name,"'")
    }
  }

  if (!missing(cdm_source_abbreviation)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cdm_source_abbreviation)) {
      statement <- paste0(statement, ' cdm_source_abbreviation IS NULL')
    } else if (is(cdm_source_abbreviation, 'subQuery')){
      statement <- paste0(statement, ' cdm_source_abbreviation = (', as.character(cdm_source_abbreviation), ')')
    } else {
      statement <- paste0(statement, " cdm_source_abbreviation = '", cdm_source_abbreviation,"'")
    }
  }

  if (!missing(cdm_holder)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cdm_holder)) {
      statement <- paste0(statement, ' cdm_holder IS NULL')
    } else if (is(cdm_holder, 'subQuery')){
      statement <- paste0(statement, ' cdm_holder = (', as.character(cdm_holder), ')')
    } else {
      statement <- paste0(statement, " cdm_holder = '", cdm_holder,"'")
    }
  }

  if (!missing(source_description)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(source_description)) {
      statement <- paste0(statement, ' source_description IS NULL')
    } else if (is(source_description, 'subQuery')){
      statement <- paste0(statement, ' source_description = (', as.character(source_description), ')')
    } else {
      statement <- paste0(statement, " source_description = '", source_description,"'")
    }
  }

  if (!missing(source_documentation_reference)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(source_documentation_reference)) {
      statement <- paste0(statement, ' source_documentation_reference IS NULL')
    } else if (is(source_documentation_reference, 'subQuery')){
      statement <- paste0(statement, ' source_documentation_reference = (', as.character(source_documentation_reference), ')')
    } else {
      statement <- paste0(statement, " source_documentation_reference = '", source_documentation_reference,"'")
    }
  }

  if (!missing(cdm_etl_reference)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cdm_etl_reference)) {
      statement <- paste0(statement, ' cdm_etl_reference IS NULL')
    } else if (is(cdm_etl_reference, 'subQuery')){
      statement <- paste0(statement, ' cdm_etl_reference = (', as.character(cdm_etl_reference), ')')
    } else {
      statement <- paste0(statement, " cdm_etl_reference = '", cdm_etl_reference,"'")
    }
  }

  if (!missing(source_release_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(source_release_date)) {
      statement <- paste0(statement, ' source_release_date IS NULL')
    } else if (is(source_release_date, 'subQuery')){
      statement <- paste0(statement, ' source_release_date = (', as.character(source_release_date), ')')
    } else {
      statement <- paste0(statement, " source_release_date = '", source_release_date,"'")
    }
  }

  if (!missing(cdm_release_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cdm_release_date)) {
      statement <- paste0(statement, ' cdm_release_date IS NULL')
    } else if (is(cdm_release_date, 'subQuery')){
      statement <- paste0(statement, ' cdm_release_date = (', as.character(cdm_release_date), ')')
    } else {
      statement <- paste0(statement, " cdm_release_date = '", cdm_release_date,"'")
    }
  }

  if (!missing(cdm_version)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cdm_version)) {
      statement <- paste0(statement, ' cdm_version IS NULL')
    } else if (is(cdm_version, 'subQuery')){
      statement <- paste0(statement, ' cdm_version = (', as.character(cdm_version), ')')
    } else {
      statement <- paste0(statement, " cdm_version = '", cdm_version,"'")
    }
  }

  if (!missing(vocabulary_version)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(vocabulary_version)) {
      statement <- paste0(statement, ' vocabulary_version IS NULL')
    } else if (is(vocabulary_version, 'subQuery')){
      statement <- paste0(statement, ' vocabulary_version = (', as.character(vocabulary_version), ')')
    } else {
      statement <- paste0(statement, " vocabulary_version = '", vocabulary_version,"'")
    }
  }

  statement <- paste0(statement, ") != 0 THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_no_cohort <- function(cohort_definition_id, subject_id, cohort_start_date, cohort_end_date) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect cohort' AS test, CASE WHEN(SELECT COUNT(*) FROM cohort WHERE")
  first <- TRUE
  if (!missing(cohort_definition_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cohort_definition_id)) {
      statement <- paste0(statement, ' cohort_definition_id IS NULL')
    } else if (is(cohort_definition_id, 'subQuery')){
      statement <- paste0(statement, ' cohort_definition_id = (', as.character(cohort_definition_id), ')')
    } else {
      statement <- paste0(statement, " cohort_definition_id = '", cohort_definition_id,"'")
    }
  }

  if (!missing(subject_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(subject_id)) {
      statement <- paste0(statement, ' subject_id IS NULL')
    } else if (is(subject_id, 'subQuery')){
      statement <- paste0(statement, ' subject_id = (', as.character(subject_id), ')')
    } else {
      statement <- paste0(statement, " subject_id = '", subject_id,"'")
    }
  }

  if (!missing(cohort_start_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cohort_start_date)) {
      statement <- paste0(statement, ' cohort_start_date IS NULL')
    } else if (is(cohort_start_date, 'subQuery')){
      statement <- paste0(statement, ' cohort_start_date = (', as.character(cohort_start_date), ')')
    } else {
      statement <- paste0(statement, " cohort_start_date = '", cohort_start_date,"'")
    }
  }

  if (!missing(cohort_end_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cohort_end_date)) {
      statement <- paste0(statement, ' cohort_end_date IS NULL')
    } else if (is(cohort_end_date, 'subQuery')){
      statement <- paste0(statement, ' cohort_end_date = (', as.character(cohort_end_date), ')')
    } else {
      statement <- paste0(statement, " cohort_end_date = '", cohort_end_date,"'")
    }
  }

  statement <- paste0(statement, ") != 0 THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_no_cohort_definition <- function(cohort_definition_id, cohort_definition_name, cohort_definition_description, definition_type_concept_id, cohort_definition_syntax, subject_concept_id, cohort_instantiation_date) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect cohort_definition' AS test, CASE WHEN(SELECT COUNT(*) FROM cohort_definition WHERE")
  first <- TRUE
  if (!missing(cohort_definition_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cohort_definition_id)) {
      statement <- paste0(statement, ' cohort_definition_id IS NULL')
    } else if (is(cohort_definition_id, 'subQuery')){
      statement <- paste0(statement, ' cohort_definition_id = (', as.character(cohort_definition_id), ')')
    } else {
      statement <- paste0(statement, " cohort_definition_id = '", cohort_definition_id,"'")
    }
  }

  if (!missing(cohort_definition_name)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cohort_definition_name)) {
      statement <- paste0(statement, ' cohort_definition_name IS NULL')
    } else if (is(cohort_definition_name, 'subQuery')){
      statement <- paste0(statement, ' cohort_definition_name = (', as.character(cohort_definition_name), ')')
    } else {
      statement <- paste0(statement, " cohort_definition_name = '", cohort_definition_name,"'")
    }
  }

  if (!missing(cohort_definition_description)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cohort_definition_description)) {
      statement <- paste0(statement, ' cohort_definition_description IS NULL')
    } else if (is(cohort_definition_description, 'subQuery')){
      statement <- paste0(statement, ' cohort_definition_description = (', as.character(cohort_definition_description), ')')
    } else {
      statement <- paste0(statement, " cohort_definition_description = '", cohort_definition_description,"'")
    }
  }

  if (!missing(definition_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(definition_type_concept_id)) {
      statement <- paste0(statement, ' definition_type_concept_id IS NULL')
    } else if (is(definition_type_concept_id, 'subQuery')){
      statement <- paste0(statement, ' definition_type_concept_id = (', as.character(definition_type_concept_id), ')')
    } else {
      statement <- paste0(statement, " definition_type_concept_id = '", definition_type_concept_id,"'")
    }
  }

  if (!missing(cohort_definition_syntax)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cohort_definition_syntax)) {
      statement <- paste0(statement, ' cohort_definition_syntax IS NULL')
    } else if (is(cohort_definition_syntax, 'subQuery')){
      statement <- paste0(statement, ' cohort_definition_syntax = (', as.character(cohort_definition_syntax), ')')
    } else {
      statement <- paste0(statement, " cohort_definition_syntax = '", cohort_definition_syntax,"'")
    }
  }

  if (!missing(subject_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(subject_concept_id)) {
      statement <- paste0(statement, ' subject_concept_id IS NULL')
    } else if (is(subject_concept_id, 'subQuery')){
      statement <- paste0(statement, ' subject_concept_id = (', as.character(subject_concept_id), ')')
    } else {
      statement <- paste0(statement, " subject_concept_id = '", subject_concept_id,"'")
    }
  }

  if (!missing(cohort_instantiation_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cohort_instantiation_date)) {
      statement <- paste0(statement, ' cohort_instantiation_date IS NULL')
    } else if (is(cohort_instantiation_date, 'subQuery')){
      statement <- paste0(statement, ' cohort_instantiation_date = (', as.character(cohort_instantiation_date), ')')
    } else {
      statement <- paste0(statement, " cohort_instantiation_date = '", cohort_instantiation_date,"'")
    }
  }

  statement <- paste0(statement, ") != 0 THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_no_cohort_attribute <- function(cohort_definition_id, cohort_start_date, cohort_end_date, subject_id, attribute_definition_id, value_as_number, value_as_concept_id) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect cohort_attribute' AS test, CASE WHEN(SELECT COUNT(*) FROM cohort_attribute WHERE")
  first <- TRUE
  if (!missing(cohort_definition_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cohort_definition_id)) {
      statement <- paste0(statement, ' cohort_definition_id IS NULL')
    } else if (is(cohort_definition_id, 'subQuery')){
      statement <- paste0(statement, ' cohort_definition_id = (', as.character(cohort_definition_id), ')')
    } else {
      statement <- paste0(statement, " cohort_definition_id = '", cohort_definition_id,"'")
    }
  }

  if (!missing(cohort_start_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cohort_start_date)) {
      statement <- paste0(statement, ' cohort_start_date IS NULL')
    } else if (is(cohort_start_date, 'subQuery')){
      statement <- paste0(statement, ' cohort_start_date = (', as.character(cohort_start_date), ')')
    } else {
      statement <- paste0(statement, " cohort_start_date = '", cohort_start_date,"'")
    }
  }

  if (!missing(cohort_end_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cohort_end_date)) {
      statement <- paste0(statement, ' cohort_end_date IS NULL')
    } else if (is(cohort_end_date, 'subQuery')){
      statement <- paste0(statement, ' cohort_end_date = (', as.character(cohort_end_date), ')')
    } else {
      statement <- paste0(statement, " cohort_end_date = '", cohort_end_date,"'")
    }
  }

  if (!missing(subject_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(subject_id)) {
      statement <- paste0(statement, ' subject_id IS NULL')
    } else if (is(subject_id, 'subQuery')){
      statement <- paste0(statement, ' subject_id = (', as.character(subject_id), ')')
    } else {
      statement <- paste0(statement, " subject_id = '", subject_id,"'")
    }
  }

  if (!missing(attribute_definition_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(attribute_definition_id)) {
      statement <- paste0(statement, ' attribute_definition_id IS NULL')
    } else if (is(attribute_definition_id, 'subQuery')){
      statement <- paste0(statement, ' attribute_definition_id = (', as.character(attribute_definition_id), ')')
    } else {
      statement <- paste0(statement, " attribute_definition_id = '", attribute_definition_id,"'")
    }
  }

  if (!missing(value_as_number)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(value_as_number)) {
      statement <- paste0(statement, ' value_as_number IS NULL')
    } else if (is(value_as_number, 'subQuery')){
      statement <- paste0(statement, ' value_as_number = (', as.character(value_as_number), ')')
    } else {
      statement <- paste0(statement, " value_as_number = '", value_as_number,"'")
    }
  }

  if (!missing(value_as_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(value_as_concept_id)) {
      statement <- paste0(statement, ' value_as_concept_id IS NULL')
    } else if (is(value_as_concept_id, 'subQuery')){
      statement <- paste0(statement, ' value_as_concept_id = (', as.character(value_as_concept_id), ')')
    } else {
      statement <- paste0(statement, " value_as_concept_id = '", value_as_concept_id,"'")
    }
  }

  statement <- paste0(statement, ") != 0 THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_no_attribute_definition <- function(attribute_definition_id, attribute_name, attribute_description, attribute_type_concept_id, attribute_syntax) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect attribute_definition' AS test, CASE WHEN(SELECT COUNT(*) FROM attribute_definition WHERE")
  first <- TRUE
  if (!missing(attribute_definition_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(attribute_definition_id)) {
      statement <- paste0(statement, ' attribute_definition_id IS NULL')
    } else if (is(attribute_definition_id, 'subQuery')){
      statement <- paste0(statement, ' attribute_definition_id = (', as.character(attribute_definition_id), ')')
    } else {
      statement <- paste0(statement, " attribute_definition_id = '", attribute_definition_id,"'")
    }
  }

  if (!missing(attribute_name)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(attribute_name)) {
      statement <- paste0(statement, ' attribute_name IS NULL')
    } else if (is(attribute_name, 'subQuery')){
      statement <- paste0(statement, ' attribute_name = (', as.character(attribute_name), ')')
    } else {
      statement <- paste0(statement, " attribute_name = '", attribute_name,"'")
    }
  }

  if (!missing(attribute_description)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(attribute_description)) {
      statement <- paste0(statement, ' attribute_description IS NULL')
    } else if (is(attribute_description, 'subQuery')){
      statement <- paste0(statement, ' attribute_description = (', as.character(attribute_description), ')')
    } else {
      statement <- paste0(statement, " attribute_description = '", attribute_description,"'")
    }
  }

  if (!missing(attribute_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(attribute_type_concept_id)) {
      statement <- paste0(statement, ' attribute_type_concept_id IS NULL')
    } else if (is(attribute_type_concept_id, 'subQuery')){
      statement <- paste0(statement, ' attribute_type_concept_id = (', as.character(attribute_type_concept_id), ')')
    } else {
      statement <- paste0(statement, " attribute_type_concept_id = '", attribute_type_concept_id,"'")
    }
  }

  if (!missing(attribute_syntax)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(attribute_syntax)) {
      statement <- paste0(statement, ' attribute_syntax IS NULL')
    } else if (is(attribute_syntax, 'subQuery')){
      statement <- paste0(statement, ' attribute_syntax = (', as.character(attribute_syntax), ')')
    } else {
      statement <- paste0(statement, " attribute_syntax = '", attribute_syntax,"'")
    }
  }

  statement <- paste0(statement, ") != 0 THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_count_person <- function(rowCount, person_id, person_source_value, gender_concept_id, gender_source_value, year_of_birth, month_of_birth, day_of_birth, time_of_birth, race_concept_id, ethnicity_concept_id, location_id, provider_id, care_site_id, gender_source_concept_id, race_source_value, race_source_concept_id, ethnicity_source_value, ethnicity_source_concept_id) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect person' AS test, CASE WHEN(SELECT COUNT(*) FROM person WHERE")
  first <- TRUE
  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(person_id)) {
      statement <- paste0(statement, ' person_id IS NULL')
    } else if (is(person_id, 'subQuery')){
      statement <- paste0(statement, ' person_id = (', as.character(person_id), ')')
    } else {
      statement <- paste0(statement, " person_id = '", person_id,"'")
    }
  }

  if (!missing(person_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(person_source_value)) {
      statement <- paste0(statement, ' person_source_value IS NULL')
    } else if (is(person_source_value, 'subQuery')){
      statement <- paste0(statement, ' person_source_value = (', as.character(person_source_value), ')')
    } else {
      statement <- paste0(statement, " person_source_value = '", person_source_value,"'")
    }
  }

  if (!missing(gender_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(gender_concept_id)) {
      statement <- paste0(statement, ' gender_concept_id IS NULL')
    } else if (is(gender_concept_id, 'subQuery')){
      statement <- paste0(statement, ' gender_concept_id = (', as.character(gender_concept_id), ')')
    } else {
      statement <- paste0(statement, " gender_concept_id = '", gender_concept_id,"'")
    }
  }

  if (!missing(gender_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(gender_source_value)) {
      statement <- paste0(statement, ' gender_source_value IS NULL')
    } else if (is(gender_source_value, 'subQuery')){
      statement <- paste0(statement, ' gender_source_value = (', as.character(gender_source_value), ')')
    } else {
      statement <- paste0(statement, " gender_source_value = '", gender_source_value,"'")
    }
  }

  if (!missing(year_of_birth)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(year_of_birth)) {
      statement <- paste0(statement, ' year_of_birth IS NULL')
    } else if (is(year_of_birth, 'subQuery')){
      statement <- paste0(statement, ' year_of_birth = (', as.character(year_of_birth), ')')
    } else {
      statement <- paste0(statement, " year_of_birth = '", year_of_birth,"'")
    }
  }

  if (!missing(month_of_birth)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(month_of_birth)) {
      statement <- paste0(statement, ' month_of_birth IS NULL')
    } else if (is(month_of_birth, 'subQuery')){
      statement <- paste0(statement, ' month_of_birth = (', as.character(month_of_birth), ')')
    } else {
      statement <- paste0(statement, " month_of_birth = '", month_of_birth,"'")
    }
  }

  if (!missing(day_of_birth)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(day_of_birth)) {
      statement <- paste0(statement, ' day_of_birth IS NULL')
    } else if (is(day_of_birth, 'subQuery')){
      statement <- paste0(statement, ' day_of_birth = (', as.character(day_of_birth), ')')
    } else {
      statement <- paste0(statement, " day_of_birth = '", day_of_birth,"'")
    }
  }

  if (!missing(time_of_birth)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(time_of_birth)) {
      statement <- paste0(statement, ' time_of_birth IS NULL')
    } else if (is(time_of_birth, 'subQuery')){
      statement <- paste0(statement, ' time_of_birth = (', as.character(time_of_birth), ')')
    } else {
      statement <- paste0(statement, " time_of_birth = '", time_of_birth,"'")
    }
  }

  if (!missing(race_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(race_concept_id)) {
      statement <- paste0(statement, ' race_concept_id IS NULL')
    } else if (is(race_concept_id, 'subQuery')){
      statement <- paste0(statement, ' race_concept_id = (', as.character(race_concept_id), ')')
    } else {
      statement <- paste0(statement, " race_concept_id = '", race_concept_id,"'")
    }
  }

  if (!missing(ethnicity_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(ethnicity_concept_id)) {
      statement <- paste0(statement, ' ethnicity_concept_id IS NULL')
    } else if (is(ethnicity_concept_id, 'subQuery')){
      statement <- paste0(statement, ' ethnicity_concept_id = (', as.character(ethnicity_concept_id), ')')
    } else {
      statement <- paste0(statement, " ethnicity_concept_id = '", ethnicity_concept_id,"'")
    }
  }

  if (!missing(location_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(location_id)) {
      statement <- paste0(statement, ' location_id IS NULL')
    } else if (is(location_id, 'subQuery')){
      statement <- paste0(statement, ' location_id = (', as.character(location_id), ')')
    } else {
      statement <- paste0(statement, " location_id = '", location_id,"'")
    }
  }

  if (!missing(provider_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(provider_id)) {
      statement <- paste0(statement, ' provider_id IS NULL')
    } else if (is(provider_id, 'subQuery')){
      statement <- paste0(statement, ' provider_id = (', as.character(provider_id), ')')
    } else {
      statement <- paste0(statement, " provider_id = '", provider_id,"'")
    }
  }

  if (!missing(care_site_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(care_site_id)) {
      statement <- paste0(statement, ' care_site_id IS NULL')
    } else if (is(care_site_id, 'subQuery')){
      statement <- paste0(statement, ' care_site_id = (', as.character(care_site_id), ')')
    } else {
      statement <- paste0(statement, " care_site_id = '", care_site_id,"'")
    }
  }

  if (!missing(gender_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(gender_source_concept_id)) {
      statement <- paste0(statement, ' gender_source_concept_id IS NULL')
    } else if (is(gender_source_concept_id, 'subQuery')){
      statement <- paste0(statement, ' gender_source_concept_id = (', as.character(gender_source_concept_id), ')')
    } else {
      statement <- paste0(statement, " gender_source_concept_id = '", gender_source_concept_id,"'")
    }
  }

  if (!missing(race_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(race_source_value)) {
      statement <- paste0(statement, ' race_source_value IS NULL')
    } else if (is(race_source_value, 'subQuery')){
      statement <- paste0(statement, ' race_source_value = (', as.character(race_source_value), ')')
    } else {
      statement <- paste0(statement, " race_source_value = '", race_source_value,"'")
    }
  }

  if (!missing(race_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(race_source_concept_id)) {
      statement <- paste0(statement, ' race_source_concept_id IS NULL')
    } else if (is(race_source_concept_id, 'subQuery')){
      statement <- paste0(statement, ' race_source_concept_id = (', as.character(race_source_concept_id), ')')
    } else {
      statement <- paste0(statement, " race_source_concept_id = '", race_source_concept_id,"'")
    }
  }

  if (!missing(ethnicity_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(ethnicity_source_value)) {
      statement <- paste0(statement, ' ethnicity_source_value IS NULL')
    } else if (is(ethnicity_source_value, 'subQuery')){
      statement <- paste0(statement, ' ethnicity_source_value = (', as.character(ethnicity_source_value), ')')
    } else {
      statement <- paste0(statement, " ethnicity_source_value = '", ethnicity_source_value,"'")
    }
  }

  if (!missing(ethnicity_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(ethnicity_source_concept_id)) {
      statement <- paste0(statement, ' ethnicity_source_concept_id IS NULL')
    } else if (is(ethnicity_source_concept_id, 'subQuery')){
      statement <- paste0(statement, ' ethnicity_source_concept_id = (', as.character(ethnicity_source_concept_id), ')')
    } else {
      statement <- paste0(statement, " ethnicity_source_concept_id = '", ethnicity_source_concept_id,"'")
    }
  }

  statement <- paste0(statement, ') != ', rowCount , " THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_count_observation_period <- function(rowCount, observation_period_id, person_id, observation_period_start_date, observation_period_end_date, period_type_concept_id) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect observation_period' AS test, CASE WHEN(SELECT COUNT(*) FROM observation_period WHERE")
  first <- TRUE
  if (!missing(observation_period_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(observation_period_id)) {
      statement <- paste0(statement, ' observation_period_id IS NULL')
    } else if (is(observation_period_id, 'subQuery')){
      statement <- paste0(statement, ' observation_period_id = (', as.character(observation_period_id), ')')
    } else {
      statement <- paste0(statement, " observation_period_id = '", observation_period_id,"'")
    }
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(person_id)) {
      statement <- paste0(statement, ' person_id IS NULL')
    } else if (is(person_id, 'subQuery')){
      statement <- paste0(statement, ' person_id = (', as.character(person_id), ')')
    } else {
      statement <- paste0(statement, " person_id = '", person_id,"'")
    }
  }

  if (!missing(observation_period_start_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(observation_period_start_date)) {
      statement <- paste0(statement, ' observation_period_start_date IS NULL')
    } else if (is(observation_period_start_date, 'subQuery')){
      statement <- paste0(statement, ' observation_period_start_date = (', as.character(observation_period_start_date), ')')
    } else {
      statement <- paste0(statement, " observation_period_start_date = '", observation_period_start_date,"'")
    }
  }

  if (!missing(observation_period_end_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(observation_period_end_date)) {
      statement <- paste0(statement, ' observation_period_end_date IS NULL')
    } else if (is(observation_period_end_date, 'subQuery')){
      statement <- paste0(statement, ' observation_period_end_date = (', as.character(observation_period_end_date), ')')
    } else {
      statement <- paste0(statement, " observation_period_end_date = '", observation_period_end_date,"'")
    }
  }

  if (!missing(period_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(period_type_concept_id)) {
      statement <- paste0(statement, ' period_type_concept_id IS NULL')
    } else if (is(period_type_concept_id, 'subQuery')){
      statement <- paste0(statement, ' period_type_concept_id = (', as.character(period_type_concept_id), ')')
    } else {
      statement <- paste0(statement, " period_type_concept_id = '", period_type_concept_id,"'")
    }
  }

  statement <- paste0(statement, ') != ', rowCount , " THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_count_visit_occurrence <- function(rowCount, visit_occurrence_id, person_id, visit_concept_id, visit_start_date, visit_start_time, visit_end_date, visit_end_time, visit_type_concept_id, provider_id, care_site_id, visit_source_value, visit_source_concept_id) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect visit_occurrence' AS test, CASE WHEN(SELECT COUNT(*) FROM visit_occurrence WHERE")
  first <- TRUE
  if (!missing(visit_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(visit_occurrence_id)) {
      statement <- paste0(statement, ' visit_occurrence_id IS NULL')
    } else if (is(visit_occurrence_id, 'subQuery')){
      statement <- paste0(statement, ' visit_occurrence_id = (', as.character(visit_occurrence_id), ')')
    } else {
      statement <- paste0(statement, " visit_occurrence_id = '", visit_occurrence_id,"'")
    }
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(person_id)) {
      statement <- paste0(statement, ' person_id IS NULL')
    } else if (is(person_id, 'subQuery')){
      statement <- paste0(statement, ' person_id = (', as.character(person_id), ')')
    } else {
      statement <- paste0(statement, " person_id = '", person_id,"'")
    }
  }

  if (!missing(visit_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(visit_concept_id)) {
      statement <- paste0(statement, ' visit_concept_id IS NULL')
    } else if (is(visit_concept_id, 'subQuery')){
      statement <- paste0(statement, ' visit_concept_id = (', as.character(visit_concept_id), ')')
    } else {
      statement <- paste0(statement, " visit_concept_id = '", visit_concept_id,"'")
    }
  }

  if (!missing(visit_start_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(visit_start_date)) {
      statement <- paste0(statement, ' visit_start_date IS NULL')
    } else if (is(visit_start_date, 'subQuery')){
      statement <- paste0(statement, ' visit_start_date = (', as.character(visit_start_date), ')')
    } else {
      statement <- paste0(statement, " visit_start_date = '", visit_start_date,"'")
    }
  }

  if (!missing(visit_start_time)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(visit_start_time)) {
      statement <- paste0(statement, ' visit_start_time IS NULL')
    } else if (is(visit_start_time, 'subQuery')){
      statement <- paste0(statement, ' visit_start_time = (', as.character(visit_start_time), ')')
    } else {
      statement <- paste0(statement, " visit_start_time = '", visit_start_time,"'")
    }
  }

  if (!missing(visit_end_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(visit_end_date)) {
      statement <- paste0(statement, ' visit_end_date IS NULL')
    } else if (is(visit_end_date, 'subQuery')){
      statement <- paste0(statement, ' visit_end_date = (', as.character(visit_end_date), ')')
    } else {
      statement <- paste0(statement, " visit_end_date = '", visit_end_date,"'")
    }
  }

  if (!missing(visit_end_time)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(visit_end_time)) {
      statement <- paste0(statement, ' visit_end_time IS NULL')
    } else if (is(visit_end_time, 'subQuery')){
      statement <- paste0(statement, ' visit_end_time = (', as.character(visit_end_time), ')')
    } else {
      statement <- paste0(statement, " visit_end_time = '", visit_end_time,"'")
    }
  }

  if (!missing(visit_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(visit_type_concept_id)) {
      statement <- paste0(statement, ' visit_type_concept_id IS NULL')
    } else if (is(visit_type_concept_id, 'subQuery')){
      statement <- paste0(statement, ' visit_type_concept_id = (', as.character(visit_type_concept_id), ')')
    } else {
      statement <- paste0(statement, " visit_type_concept_id = '", visit_type_concept_id,"'")
    }
  }

  if (!missing(provider_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(provider_id)) {
      statement <- paste0(statement, ' provider_id IS NULL')
    } else if (is(provider_id, 'subQuery')){
      statement <- paste0(statement, ' provider_id = (', as.character(provider_id), ')')
    } else {
      statement <- paste0(statement, " provider_id = '", provider_id,"'")
    }
  }

  if (!missing(care_site_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(care_site_id)) {
      statement <- paste0(statement, ' care_site_id IS NULL')
    } else if (is(care_site_id, 'subQuery')){
      statement <- paste0(statement, ' care_site_id = (', as.character(care_site_id), ')')
    } else {
      statement <- paste0(statement, " care_site_id = '", care_site_id,"'")
    }
  }

  if (!missing(visit_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(visit_source_value)) {
      statement <- paste0(statement, ' visit_source_value IS NULL')
    } else if (is(visit_source_value, 'subQuery')){
      statement <- paste0(statement, ' visit_source_value = (', as.character(visit_source_value), ')')
    } else {
      statement <- paste0(statement, " visit_source_value = '", visit_source_value,"'")
    }
  }

  if (!missing(visit_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(visit_source_concept_id)) {
      statement <- paste0(statement, ' visit_source_concept_id IS NULL')
    } else if (is(visit_source_concept_id, 'subQuery')){
      statement <- paste0(statement, ' visit_source_concept_id = (', as.character(visit_source_concept_id), ')')
    } else {
      statement <- paste0(statement, " visit_source_concept_id = '", visit_source_concept_id,"'")
    }
  }

  statement <- paste0(statement, ') != ', rowCount , " THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_count_death <- function(rowCount, person_id, death_date, death_type_concept_id, cause_concept_id, cause_source_value, cause_source_concept_id) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect death' AS test, CASE WHEN(SELECT COUNT(*) FROM death WHERE")
  first <- TRUE
  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(person_id)) {
      statement <- paste0(statement, ' person_id IS NULL')
    } else if (is(person_id, 'subQuery')){
      statement <- paste0(statement, ' person_id = (', as.character(person_id), ')')
    } else {
      statement <- paste0(statement, " person_id = '", person_id,"'")
    }
  }

  if (!missing(death_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(death_date)) {
      statement <- paste0(statement, ' death_date IS NULL')
    } else if (is(death_date, 'subQuery')){
      statement <- paste0(statement, ' death_date = (', as.character(death_date), ')')
    } else {
      statement <- paste0(statement, " death_date = '", death_date,"'")
    }
  }

  if (!missing(death_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(death_type_concept_id)) {
      statement <- paste0(statement, ' death_type_concept_id IS NULL')
    } else if (is(death_type_concept_id, 'subQuery')){
      statement <- paste0(statement, ' death_type_concept_id = (', as.character(death_type_concept_id), ')')
    } else {
      statement <- paste0(statement, " death_type_concept_id = '", death_type_concept_id,"'")
    }
  }

  if (!missing(cause_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cause_concept_id)) {
      statement <- paste0(statement, ' cause_concept_id IS NULL')
    } else if (is(cause_concept_id, 'subQuery')){
      statement <- paste0(statement, ' cause_concept_id = (', as.character(cause_concept_id), ')')
    } else {
      statement <- paste0(statement, " cause_concept_id = '", cause_concept_id,"'")
    }
  }

  if (!missing(cause_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cause_source_value)) {
      statement <- paste0(statement, ' cause_source_value IS NULL')
    } else if (is(cause_source_value, 'subQuery')){
      statement <- paste0(statement, ' cause_source_value = (', as.character(cause_source_value), ')')
    } else {
      statement <- paste0(statement, " cause_source_value = '", cause_source_value,"'")
    }
  }

  if (!missing(cause_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cause_source_concept_id)) {
      statement <- paste0(statement, ' cause_source_concept_id IS NULL')
    } else if (is(cause_source_concept_id, 'subQuery')){
      statement <- paste0(statement, ' cause_source_concept_id = (', as.character(cause_source_concept_id), ')')
    } else {
      statement <- paste0(statement, " cause_source_concept_id = '", cause_source_concept_id,"'")
    }
  }

  statement <- paste0(statement, ') != ', rowCount , " THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_count_condition_occurrence <- function(rowCount, condition_occurrence_id, person_id, condition_start_date, condition_end_date, condition_concept_id, condition_source_value, condition_type_concept_id, stop_reason, provider_id, visit_occurrence_id, condition_source_concept_id) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect condition_occurrence' AS test, CASE WHEN(SELECT COUNT(*) FROM condition_occurrence WHERE")
  first <- TRUE
  if (!missing(condition_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(condition_occurrence_id)) {
      statement <- paste0(statement, ' condition_occurrence_id IS NULL')
    } else if (is(condition_occurrence_id, 'subQuery')){
      statement <- paste0(statement, ' condition_occurrence_id = (', as.character(condition_occurrence_id), ')')
    } else {
      statement <- paste0(statement, " condition_occurrence_id = '", condition_occurrence_id,"'")
    }
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(person_id)) {
      statement <- paste0(statement, ' person_id IS NULL')
    } else if (is(person_id, 'subQuery')){
      statement <- paste0(statement, ' person_id = (', as.character(person_id), ')')
    } else {
      statement <- paste0(statement, " person_id = '", person_id,"'")
    }
  }

  if (!missing(condition_start_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(condition_start_date)) {
      statement <- paste0(statement, ' condition_start_date IS NULL')
    } else if (is(condition_start_date, 'subQuery')){
      statement <- paste0(statement, ' condition_start_date = (', as.character(condition_start_date), ')')
    } else {
      statement <- paste0(statement, " condition_start_date = '", condition_start_date,"'")
    }
  }

  if (!missing(condition_end_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(condition_end_date)) {
      statement <- paste0(statement, ' condition_end_date IS NULL')
    } else if (is(condition_end_date, 'subQuery')){
      statement <- paste0(statement, ' condition_end_date = (', as.character(condition_end_date), ')')
    } else {
      statement <- paste0(statement, " condition_end_date = '", condition_end_date,"'")
    }
  }

  if (!missing(condition_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(condition_concept_id)) {
      statement <- paste0(statement, ' condition_concept_id IS NULL')
    } else if (is(condition_concept_id, 'subQuery')){
      statement <- paste0(statement, ' condition_concept_id = (', as.character(condition_concept_id), ')')
    } else {
      statement <- paste0(statement, " condition_concept_id = '", condition_concept_id,"'")
    }
  }

  if (!missing(condition_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(condition_source_value)) {
      statement <- paste0(statement, ' condition_source_value IS NULL')
    } else if (is(condition_source_value, 'subQuery')){
      statement <- paste0(statement, ' condition_source_value = (', as.character(condition_source_value), ')')
    } else {
      statement <- paste0(statement, " condition_source_value = '", condition_source_value,"'")
    }
  }

  if (!missing(condition_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(condition_type_concept_id)) {
      statement <- paste0(statement, ' condition_type_concept_id IS NULL')
    } else if (is(condition_type_concept_id, 'subQuery')){
      statement <- paste0(statement, ' condition_type_concept_id = (', as.character(condition_type_concept_id), ')')
    } else {
      statement <- paste0(statement, " condition_type_concept_id = '", condition_type_concept_id,"'")
    }
  }

  if (!missing(stop_reason)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(stop_reason)) {
      statement <- paste0(statement, ' stop_reason IS NULL')
    } else if (is(stop_reason, 'subQuery')){
      statement <- paste0(statement, ' stop_reason = (', as.character(stop_reason), ')')
    } else {
      statement <- paste0(statement, " stop_reason = '", stop_reason,"'")
    }
  }

  if (!missing(provider_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(provider_id)) {
      statement <- paste0(statement, ' provider_id IS NULL')
    } else if (is(provider_id, 'subQuery')){
      statement <- paste0(statement, ' provider_id = (', as.character(provider_id), ')')
    } else {
      statement <- paste0(statement, " provider_id = '", provider_id,"'")
    }
  }

  if (!missing(visit_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(visit_occurrence_id)) {
      statement <- paste0(statement, ' visit_occurrence_id IS NULL')
    } else if (is(visit_occurrence_id, 'subQuery')){
      statement <- paste0(statement, ' visit_occurrence_id = (', as.character(visit_occurrence_id), ')')
    } else {
      statement <- paste0(statement, " visit_occurrence_id = '", visit_occurrence_id,"'")
    }
  }

  if (!missing(condition_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(condition_source_concept_id)) {
      statement <- paste0(statement, ' condition_source_concept_id IS NULL')
    } else if (is(condition_source_concept_id, 'subQuery')){
      statement <- paste0(statement, ' condition_source_concept_id = (', as.character(condition_source_concept_id), ')')
    } else {
      statement <- paste0(statement, " condition_source_concept_id = '", condition_source_concept_id,"'")
    }
  }

  statement <- paste0(statement, ') != ', rowCount , " THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_count_drug_exposure <- function(rowCount, drug_exposure_id, person_id, drug_source_concept_id, drug_concept_id, drug_source_value, quantity, days_supply, drug_exposure_start_date, drug_exposure_end_date, dose_unit_concept_id, dose_unit_source_value, effective_drug_dose, drug_type_concept_id, sig, stop_reason, refills, route_concept_id, lot_number, provider_id, visit_occurrence_id, route_source_value) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect drug_exposure' AS test, CASE WHEN(SELECT COUNT(*) FROM drug_exposure WHERE")
  first <- TRUE
  if (!missing(drug_exposure_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(drug_exposure_id)) {
      statement <- paste0(statement, ' drug_exposure_id IS NULL')
    } else if (is(drug_exposure_id, 'subQuery')){
      statement <- paste0(statement, ' drug_exposure_id = (', as.character(drug_exposure_id), ')')
    } else {
      statement <- paste0(statement, " drug_exposure_id = '", drug_exposure_id,"'")
    }
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(person_id)) {
      statement <- paste0(statement, ' person_id IS NULL')
    } else if (is(person_id, 'subQuery')){
      statement <- paste0(statement, ' person_id = (', as.character(person_id), ')')
    } else {
      statement <- paste0(statement, " person_id = '", person_id,"'")
    }
  }

  if (!missing(drug_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(drug_source_concept_id)) {
      statement <- paste0(statement, ' drug_source_concept_id IS NULL')
    } else if (is(drug_source_concept_id, 'subQuery')){
      statement <- paste0(statement, ' drug_source_concept_id = (', as.character(drug_source_concept_id), ')')
    } else {
      statement <- paste0(statement, " drug_source_concept_id = '", drug_source_concept_id,"'")
    }
  }

  if (!missing(drug_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(drug_concept_id)) {
      statement <- paste0(statement, ' drug_concept_id IS NULL')
    } else if (is(drug_concept_id, 'subQuery')){
      statement <- paste0(statement, ' drug_concept_id = (', as.character(drug_concept_id), ')')
    } else {
      statement <- paste0(statement, " drug_concept_id = '", drug_concept_id,"'")
    }
  }

  if (!missing(drug_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(drug_source_value)) {
      statement <- paste0(statement, ' drug_source_value IS NULL')
    } else if (is(drug_source_value, 'subQuery')){
      statement <- paste0(statement, ' drug_source_value = (', as.character(drug_source_value), ')')
    } else {
      statement <- paste0(statement, " drug_source_value = '", drug_source_value,"'")
    }
  }

  if (!missing(quantity)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(quantity)) {
      statement <- paste0(statement, ' quantity IS NULL')
    } else if (is(quantity, 'subQuery')){
      statement <- paste0(statement, ' quantity = (', as.character(quantity), ')')
    } else {
      statement <- paste0(statement, " quantity = '", quantity,"'")
    }
  }

  if (!missing(days_supply)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(days_supply)) {
      statement <- paste0(statement, ' days_supply IS NULL')
    } else if (is(days_supply, 'subQuery')){
      statement <- paste0(statement, ' days_supply = (', as.character(days_supply), ')')
    } else {
      statement <- paste0(statement, " days_supply = '", days_supply,"'")
    }
  }

  if (!missing(drug_exposure_start_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(drug_exposure_start_date)) {
      statement <- paste0(statement, ' drug_exposure_start_date IS NULL')
    } else if (is(drug_exposure_start_date, 'subQuery')){
      statement <- paste0(statement, ' drug_exposure_start_date = (', as.character(drug_exposure_start_date), ')')
    } else {
      statement <- paste0(statement, " drug_exposure_start_date = '", drug_exposure_start_date,"'")
    }
  }

  if (!missing(drug_exposure_end_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(drug_exposure_end_date)) {
      statement <- paste0(statement, ' drug_exposure_end_date IS NULL')
    } else if (is(drug_exposure_end_date, 'subQuery')){
      statement <- paste0(statement, ' drug_exposure_end_date = (', as.character(drug_exposure_end_date), ')')
    } else {
      statement <- paste0(statement, " drug_exposure_end_date = '", drug_exposure_end_date,"'")
    }
  }

  if (!missing(dose_unit_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(dose_unit_concept_id)) {
      statement <- paste0(statement, ' dose_unit_concept_id IS NULL')
    } else if (is(dose_unit_concept_id, 'subQuery')){
      statement <- paste0(statement, ' dose_unit_concept_id = (', as.character(dose_unit_concept_id), ')')
    } else {
      statement <- paste0(statement, " dose_unit_concept_id = '", dose_unit_concept_id,"'")
    }
  }

  if (!missing(dose_unit_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(dose_unit_source_value)) {
      statement <- paste0(statement, ' dose_unit_source_value IS NULL')
    } else if (is(dose_unit_source_value, 'subQuery')){
      statement <- paste0(statement, ' dose_unit_source_value = (', as.character(dose_unit_source_value), ')')
    } else {
      statement <- paste0(statement, " dose_unit_source_value = '", dose_unit_source_value,"'")
    }
  }

  if (!missing(effective_drug_dose)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(effective_drug_dose)) {
      statement <- paste0(statement, ' effective_drug_dose IS NULL')
    } else if (is(effective_drug_dose, 'subQuery')){
      statement <- paste0(statement, ' effective_drug_dose = (', as.character(effective_drug_dose), ')')
    } else {
      statement <- paste0(statement, " effective_drug_dose = '", effective_drug_dose,"'")
    }
  }

  if (!missing(drug_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(drug_type_concept_id)) {
      statement <- paste0(statement, ' drug_type_concept_id IS NULL')
    } else if (is(drug_type_concept_id, 'subQuery')){
      statement <- paste0(statement, ' drug_type_concept_id = (', as.character(drug_type_concept_id), ')')
    } else {
      statement <- paste0(statement, " drug_type_concept_id = '", drug_type_concept_id,"'")
    }
  }

  if (!missing(sig)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(sig)) {
      statement <- paste0(statement, ' sig IS NULL')
    } else if (is(sig, 'subQuery')){
      statement <- paste0(statement, ' sig = (', as.character(sig), ')')
    } else {
      statement <- paste0(statement, " sig = '", sig,"'")
    }
  }

  if (!missing(stop_reason)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(stop_reason)) {
      statement <- paste0(statement, ' stop_reason IS NULL')
    } else if (is(stop_reason, 'subQuery')){
      statement <- paste0(statement, ' stop_reason = (', as.character(stop_reason), ')')
    } else {
      statement <- paste0(statement, " stop_reason = '", stop_reason,"'")
    }
  }

  if (!missing(refills)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(refills)) {
      statement <- paste0(statement, ' refills IS NULL')
    } else if (is(refills, 'subQuery')){
      statement <- paste0(statement, ' refills = (', as.character(refills), ')')
    } else {
      statement <- paste0(statement, " refills = '", refills,"'")
    }
  }

  if (!missing(route_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(route_concept_id)) {
      statement <- paste0(statement, ' route_concept_id IS NULL')
    } else if (is(route_concept_id, 'subQuery')){
      statement <- paste0(statement, ' route_concept_id = (', as.character(route_concept_id), ')')
    } else {
      statement <- paste0(statement, " route_concept_id = '", route_concept_id,"'")
    }
  }

  if (!missing(lot_number)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(lot_number)) {
      statement <- paste0(statement, ' lot_number IS NULL')
    } else if (is(lot_number, 'subQuery')){
      statement <- paste0(statement, ' lot_number = (', as.character(lot_number), ')')
    } else {
      statement <- paste0(statement, " lot_number = '", lot_number,"'")
    }
  }

  if (!missing(provider_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(provider_id)) {
      statement <- paste0(statement, ' provider_id IS NULL')
    } else if (is(provider_id, 'subQuery')){
      statement <- paste0(statement, ' provider_id = (', as.character(provider_id), ')')
    } else {
      statement <- paste0(statement, " provider_id = '", provider_id,"'")
    }
  }

  if (!missing(visit_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(visit_occurrence_id)) {
      statement <- paste0(statement, ' visit_occurrence_id IS NULL')
    } else if (is(visit_occurrence_id, 'subQuery')){
      statement <- paste0(statement, ' visit_occurrence_id = (', as.character(visit_occurrence_id), ')')
    } else {
      statement <- paste0(statement, " visit_occurrence_id = '", visit_occurrence_id,"'")
    }
  }

  if (!missing(route_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(route_source_value)) {
      statement <- paste0(statement, ' route_source_value IS NULL')
    } else if (is(route_source_value, 'subQuery')){
      statement <- paste0(statement, ' route_source_value = (', as.character(route_source_value), ')')
    } else {
      statement <- paste0(statement, " route_source_value = '", route_source_value,"'")
    }
  }

  statement <- paste0(statement, ') != ', rowCount , " THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_count_drug_era <- function(rowCount, drug_era_id, person_id, drug_concept_id, drug_era_start_date, drug_era_end_date, drug_exposure_count, gap_days) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect drug_era' AS test, CASE WHEN(SELECT COUNT(*) FROM drug_era WHERE")
  first <- TRUE
  if (!missing(drug_era_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(drug_era_id)) {
      statement <- paste0(statement, ' drug_era_id IS NULL')
    } else if (is(drug_era_id, 'subQuery')){
      statement <- paste0(statement, ' drug_era_id = (', as.character(drug_era_id), ')')
    } else {
      statement <- paste0(statement, " drug_era_id = '", drug_era_id,"'")
    }
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(person_id)) {
      statement <- paste0(statement, ' person_id IS NULL')
    } else if (is(person_id, 'subQuery')){
      statement <- paste0(statement, ' person_id = (', as.character(person_id), ')')
    } else {
      statement <- paste0(statement, " person_id = '", person_id,"'")
    }
  }

  if (!missing(drug_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(drug_concept_id)) {
      statement <- paste0(statement, ' drug_concept_id IS NULL')
    } else if (is(drug_concept_id, 'subQuery')){
      statement <- paste0(statement, ' drug_concept_id = (', as.character(drug_concept_id), ')')
    } else {
      statement <- paste0(statement, " drug_concept_id = '", drug_concept_id,"'")
    }
  }

  if (!missing(drug_era_start_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(drug_era_start_date)) {
      statement <- paste0(statement, ' drug_era_start_date IS NULL')
    } else if (is(drug_era_start_date, 'subQuery')){
      statement <- paste0(statement, ' drug_era_start_date = (', as.character(drug_era_start_date), ')')
    } else {
      statement <- paste0(statement, " drug_era_start_date = '", drug_era_start_date,"'")
    }
  }

  if (!missing(drug_era_end_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(drug_era_end_date)) {
      statement <- paste0(statement, ' drug_era_end_date IS NULL')
    } else if (is(drug_era_end_date, 'subQuery')){
      statement <- paste0(statement, ' drug_era_end_date = (', as.character(drug_era_end_date), ')')
    } else {
      statement <- paste0(statement, " drug_era_end_date = '", drug_era_end_date,"'")
    }
  }

  if (!missing(drug_exposure_count)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(drug_exposure_count)) {
      statement <- paste0(statement, ' drug_exposure_count IS NULL')
    } else if (is(drug_exposure_count, 'subQuery')){
      statement <- paste0(statement, ' drug_exposure_count = (', as.character(drug_exposure_count), ')')
    } else {
      statement <- paste0(statement, " drug_exposure_count = '", drug_exposure_count,"'")
    }
  }

  if (!missing(gap_days)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(gap_days)) {
      statement <- paste0(statement, ' gap_days IS NULL')
    } else if (is(gap_days, 'subQuery')){
      statement <- paste0(statement, ' gap_days = (', as.character(gap_days), ')')
    } else {
      statement <- paste0(statement, " gap_days = '", gap_days,"'")
    }
  }

  statement <- paste0(statement, ') != ', rowCount , " THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_count_measurement <- function(rowCount, measurement_id, person_id, value_as_number, measurement_concept_id, measurement_source_value, measurement_date, unit_concept_id, unit_source_value, measurement_time, measurement_type_concept_id, operator_concept_id, value_as_concept_id, range_low, range_high, provider_id, visit_occurrence_id, measurement_source_concept_id, value_source_value) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect measurement' AS test, CASE WHEN(SELECT COUNT(*) FROM measurement WHERE")
  first <- TRUE
  if (!missing(measurement_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(measurement_id)) {
      statement <- paste0(statement, ' measurement_id IS NULL')
    } else if (is(measurement_id, 'subQuery')){
      statement <- paste0(statement, ' measurement_id = (', as.character(measurement_id), ')')
    } else {
      statement <- paste0(statement, " measurement_id = '", measurement_id,"'")
    }
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(person_id)) {
      statement <- paste0(statement, ' person_id IS NULL')
    } else if (is(person_id, 'subQuery')){
      statement <- paste0(statement, ' person_id = (', as.character(person_id), ')')
    } else {
      statement <- paste0(statement, " person_id = '", person_id,"'")
    }
  }

  if (!missing(value_as_number)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(value_as_number)) {
      statement <- paste0(statement, ' value_as_number IS NULL')
    } else if (is(value_as_number, 'subQuery')){
      statement <- paste0(statement, ' value_as_number = (', as.character(value_as_number), ')')
    } else {
      statement <- paste0(statement, " value_as_number = '", value_as_number,"'")
    }
  }

  if (!missing(measurement_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(measurement_concept_id)) {
      statement <- paste0(statement, ' measurement_concept_id IS NULL')
    } else if (is(measurement_concept_id, 'subQuery')){
      statement <- paste0(statement, ' measurement_concept_id = (', as.character(measurement_concept_id), ')')
    } else {
      statement <- paste0(statement, " measurement_concept_id = '", measurement_concept_id,"'")
    }
  }

  if (!missing(measurement_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(measurement_source_value)) {
      statement <- paste0(statement, ' measurement_source_value IS NULL')
    } else if (is(measurement_source_value, 'subQuery')){
      statement <- paste0(statement, ' measurement_source_value = (', as.character(measurement_source_value), ')')
    } else {
      statement <- paste0(statement, " measurement_source_value = '", measurement_source_value,"'")
    }
  }

  if (!missing(measurement_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(measurement_date)) {
      statement <- paste0(statement, ' measurement_date IS NULL')
    } else if (is(measurement_date, 'subQuery')){
      statement <- paste0(statement, ' measurement_date = (', as.character(measurement_date), ')')
    } else {
      statement <- paste0(statement, " measurement_date = '", measurement_date,"'")
    }
  }

  if (!missing(unit_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(unit_concept_id)) {
      statement <- paste0(statement, ' unit_concept_id IS NULL')
    } else if (is(unit_concept_id, 'subQuery')){
      statement <- paste0(statement, ' unit_concept_id = (', as.character(unit_concept_id), ')')
    } else {
      statement <- paste0(statement, " unit_concept_id = '", unit_concept_id,"'")
    }
  }

  if (!missing(unit_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(unit_source_value)) {
      statement <- paste0(statement, ' unit_source_value IS NULL')
    } else if (is(unit_source_value, 'subQuery')){
      statement <- paste0(statement, ' unit_source_value = (', as.character(unit_source_value), ')')
    } else {
      statement <- paste0(statement, " unit_source_value = '", unit_source_value,"'")
    }
  }

  if (!missing(measurement_time)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(measurement_time)) {
      statement <- paste0(statement, ' measurement_time IS NULL')
    } else if (is(measurement_time, 'subQuery')){
      statement <- paste0(statement, ' measurement_time = (', as.character(measurement_time), ')')
    } else {
      statement <- paste0(statement, " measurement_time = '", measurement_time,"'")
    }
  }

  if (!missing(measurement_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(measurement_type_concept_id)) {
      statement <- paste0(statement, ' measurement_type_concept_id IS NULL')
    } else if (is(measurement_type_concept_id, 'subQuery')){
      statement <- paste0(statement, ' measurement_type_concept_id = (', as.character(measurement_type_concept_id), ')')
    } else {
      statement <- paste0(statement, " measurement_type_concept_id = '", measurement_type_concept_id,"'")
    }
  }

  if (!missing(operator_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(operator_concept_id)) {
      statement <- paste0(statement, ' operator_concept_id IS NULL')
    } else if (is(operator_concept_id, 'subQuery')){
      statement <- paste0(statement, ' operator_concept_id = (', as.character(operator_concept_id), ')')
    } else {
      statement <- paste0(statement, " operator_concept_id = '", operator_concept_id,"'")
    }
  }

  if (!missing(value_as_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(value_as_concept_id)) {
      statement <- paste0(statement, ' value_as_concept_id IS NULL')
    } else if (is(value_as_concept_id, 'subQuery')){
      statement <- paste0(statement, ' value_as_concept_id = (', as.character(value_as_concept_id), ')')
    } else {
      statement <- paste0(statement, " value_as_concept_id = '", value_as_concept_id,"'")
    }
  }

  if (!missing(range_low)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(range_low)) {
      statement <- paste0(statement, ' range_low IS NULL')
    } else if (is(range_low, 'subQuery')){
      statement <- paste0(statement, ' range_low = (', as.character(range_low), ')')
    } else {
      statement <- paste0(statement, " range_low = '", range_low,"'")
    }
  }

  if (!missing(range_high)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(range_high)) {
      statement <- paste0(statement, ' range_high IS NULL')
    } else if (is(range_high, 'subQuery')){
      statement <- paste0(statement, ' range_high = (', as.character(range_high), ')')
    } else {
      statement <- paste0(statement, " range_high = '", range_high,"'")
    }
  }

  if (!missing(provider_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(provider_id)) {
      statement <- paste0(statement, ' provider_id IS NULL')
    } else if (is(provider_id, 'subQuery')){
      statement <- paste0(statement, ' provider_id = (', as.character(provider_id), ')')
    } else {
      statement <- paste0(statement, " provider_id = '", provider_id,"'")
    }
  }

  if (!missing(visit_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(visit_occurrence_id)) {
      statement <- paste0(statement, ' visit_occurrence_id IS NULL')
    } else if (is(visit_occurrence_id, 'subQuery')){
      statement <- paste0(statement, ' visit_occurrence_id = (', as.character(visit_occurrence_id), ')')
    } else {
      statement <- paste0(statement, " visit_occurrence_id = '", visit_occurrence_id,"'")
    }
  }

  if (!missing(measurement_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(measurement_source_concept_id)) {
      statement <- paste0(statement, ' measurement_source_concept_id IS NULL')
    } else if (is(measurement_source_concept_id, 'subQuery')){
      statement <- paste0(statement, ' measurement_source_concept_id = (', as.character(measurement_source_concept_id), ')')
    } else {
      statement <- paste0(statement, " measurement_source_concept_id = '", measurement_source_concept_id,"'")
    }
  }

  if (!missing(value_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(value_source_value)) {
      statement <- paste0(statement, ' value_source_value IS NULL')
    } else if (is(value_source_value, 'subQuery')){
      statement <- paste0(statement, ' value_source_value = (', as.character(value_source_value), ')')
    } else {
      statement <- paste0(statement, " value_source_value = '", value_source_value,"'")
    }
  }

  statement <- paste0(statement, ') != ', rowCount , " THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_count_observation <- function(rowCount, observation_id, person_id, observation_concept_id, observation_source_value, observation_source_concept_id, observation_date, observation_time, observation_type_concept_id, value_as_number, value_as_string, value_as_concept_id, qualifier_concept_id, unit_concept_id, provider_id, visit_occurrence_id, unit_source_value, qualifier_source_value) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect observation' AS test, CASE WHEN(SELECT COUNT(*) FROM observation WHERE")
  first <- TRUE
  if (!missing(observation_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(observation_id)) {
      statement <- paste0(statement, ' observation_id IS NULL')
    } else if (is(observation_id, 'subQuery')){
      statement <- paste0(statement, ' observation_id = (', as.character(observation_id), ')')
    } else {
      statement <- paste0(statement, " observation_id = '", observation_id,"'")
    }
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(person_id)) {
      statement <- paste0(statement, ' person_id IS NULL')
    } else if (is(person_id, 'subQuery')){
      statement <- paste0(statement, ' person_id = (', as.character(person_id), ')')
    } else {
      statement <- paste0(statement, " person_id = '", person_id,"'")
    }
  }

  if (!missing(observation_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(observation_concept_id)) {
      statement <- paste0(statement, ' observation_concept_id IS NULL')
    } else if (is(observation_concept_id, 'subQuery')){
      statement <- paste0(statement, ' observation_concept_id = (', as.character(observation_concept_id), ')')
    } else {
      statement <- paste0(statement, " observation_concept_id = '", observation_concept_id,"'")
    }
  }

  if (!missing(observation_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(observation_source_value)) {
      statement <- paste0(statement, ' observation_source_value IS NULL')
    } else if (is(observation_source_value, 'subQuery')){
      statement <- paste0(statement, ' observation_source_value = (', as.character(observation_source_value), ')')
    } else {
      statement <- paste0(statement, " observation_source_value = '", observation_source_value,"'")
    }
  }

  if (!missing(observation_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(observation_source_concept_id)) {
      statement <- paste0(statement, ' observation_source_concept_id IS NULL')
    } else if (is(observation_source_concept_id, 'subQuery')){
      statement <- paste0(statement, ' observation_source_concept_id = (', as.character(observation_source_concept_id), ')')
    } else {
      statement <- paste0(statement, " observation_source_concept_id = '", observation_source_concept_id,"'")
    }
  }

  if (!missing(observation_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(observation_date)) {
      statement <- paste0(statement, ' observation_date IS NULL')
    } else if (is(observation_date, 'subQuery')){
      statement <- paste0(statement, ' observation_date = (', as.character(observation_date), ')')
    } else {
      statement <- paste0(statement, " observation_date = '", observation_date,"'")
    }
  }

  if (!missing(observation_time)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(observation_time)) {
      statement <- paste0(statement, ' observation_time IS NULL')
    } else if (is(observation_time, 'subQuery')){
      statement <- paste0(statement, ' observation_time = (', as.character(observation_time), ')')
    } else {
      statement <- paste0(statement, " observation_time = '", observation_time,"'")
    }
  }

  if (!missing(observation_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(observation_type_concept_id)) {
      statement <- paste0(statement, ' observation_type_concept_id IS NULL')
    } else if (is(observation_type_concept_id, 'subQuery')){
      statement <- paste0(statement, ' observation_type_concept_id = (', as.character(observation_type_concept_id), ')')
    } else {
      statement <- paste0(statement, " observation_type_concept_id = '", observation_type_concept_id,"'")
    }
  }

  if (!missing(value_as_number)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(value_as_number)) {
      statement <- paste0(statement, ' value_as_number IS NULL')
    } else if (is(value_as_number, 'subQuery')){
      statement <- paste0(statement, ' value_as_number = (', as.character(value_as_number), ')')
    } else {
      statement <- paste0(statement, " value_as_number = '", value_as_number,"'")
    }
  }

  if (!missing(value_as_string)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(value_as_string)) {
      statement <- paste0(statement, ' value_as_string IS NULL')
    } else if (is(value_as_string, 'subQuery')){
      statement <- paste0(statement, ' value_as_string = (', as.character(value_as_string), ')')
    } else {
      statement <- paste0(statement, " value_as_string = '", value_as_string,"'")
    }
  }

  if (!missing(value_as_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(value_as_concept_id)) {
      statement <- paste0(statement, ' value_as_concept_id IS NULL')
    } else if (is(value_as_concept_id, 'subQuery')){
      statement <- paste0(statement, ' value_as_concept_id = (', as.character(value_as_concept_id), ')')
    } else {
      statement <- paste0(statement, " value_as_concept_id = '", value_as_concept_id,"'")
    }
  }

  if (!missing(qualifier_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(qualifier_concept_id)) {
      statement <- paste0(statement, ' qualifier_concept_id IS NULL')
    } else if (is(qualifier_concept_id, 'subQuery')){
      statement <- paste0(statement, ' qualifier_concept_id = (', as.character(qualifier_concept_id), ')')
    } else {
      statement <- paste0(statement, " qualifier_concept_id = '", qualifier_concept_id,"'")
    }
  }

  if (!missing(unit_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(unit_concept_id)) {
      statement <- paste0(statement, ' unit_concept_id IS NULL')
    } else if (is(unit_concept_id, 'subQuery')){
      statement <- paste0(statement, ' unit_concept_id = (', as.character(unit_concept_id), ')')
    } else {
      statement <- paste0(statement, " unit_concept_id = '", unit_concept_id,"'")
    }
  }

  if (!missing(provider_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(provider_id)) {
      statement <- paste0(statement, ' provider_id IS NULL')
    } else if (is(provider_id, 'subQuery')){
      statement <- paste0(statement, ' provider_id = (', as.character(provider_id), ')')
    } else {
      statement <- paste0(statement, " provider_id = '", provider_id,"'")
    }
  }

  if (!missing(visit_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(visit_occurrence_id)) {
      statement <- paste0(statement, ' visit_occurrence_id IS NULL')
    } else if (is(visit_occurrence_id, 'subQuery')){
      statement <- paste0(statement, ' visit_occurrence_id = (', as.character(visit_occurrence_id), ')')
    } else {
      statement <- paste0(statement, " visit_occurrence_id = '", visit_occurrence_id,"'")
    }
  }

  if (!missing(unit_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(unit_source_value)) {
      statement <- paste0(statement, ' unit_source_value IS NULL')
    } else if (is(unit_source_value, 'subQuery')){
      statement <- paste0(statement, ' unit_source_value = (', as.character(unit_source_value), ')')
    } else {
      statement <- paste0(statement, " unit_source_value = '", unit_source_value,"'")
    }
  }

  if (!missing(qualifier_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(qualifier_source_value)) {
      statement <- paste0(statement, ' qualifier_source_value IS NULL')
    } else if (is(qualifier_source_value, 'subQuery')){
      statement <- paste0(statement, ' qualifier_source_value = (', as.character(qualifier_source_value), ')')
    } else {
      statement <- paste0(statement, " qualifier_source_value = '", qualifier_source_value,"'")
    }
  }

  statement <- paste0(statement, ') != ', rowCount , " THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_count_procedure_occurrence <- function(rowCount, procedure_occurrence_id, person_id, procedure_concept_id, procedure_date, procedure_type_concept_id, modifier_concept_id, quantity, provider_id, visit_occurrence_id, procedure_source_value, procedure_source_concept_id, qualifier_source_value) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect procedure_occurrence' AS test, CASE WHEN(SELECT COUNT(*) FROM procedure_occurrence WHERE")
  first <- TRUE
  if (!missing(procedure_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(procedure_occurrence_id)) {
      statement <- paste0(statement, ' procedure_occurrence_id IS NULL')
    } else if (is(procedure_occurrence_id, 'subQuery')){
      statement <- paste0(statement, ' procedure_occurrence_id = (', as.character(procedure_occurrence_id), ')')
    } else {
      statement <- paste0(statement, " procedure_occurrence_id = '", procedure_occurrence_id,"'")
    }
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(person_id)) {
      statement <- paste0(statement, ' person_id IS NULL')
    } else if (is(person_id, 'subQuery')){
      statement <- paste0(statement, ' person_id = (', as.character(person_id), ')')
    } else {
      statement <- paste0(statement, " person_id = '", person_id,"'")
    }
  }

  if (!missing(procedure_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(procedure_concept_id)) {
      statement <- paste0(statement, ' procedure_concept_id IS NULL')
    } else if (is(procedure_concept_id, 'subQuery')){
      statement <- paste0(statement, ' procedure_concept_id = (', as.character(procedure_concept_id), ')')
    } else {
      statement <- paste0(statement, " procedure_concept_id = '", procedure_concept_id,"'")
    }
  }

  if (!missing(procedure_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(procedure_date)) {
      statement <- paste0(statement, ' procedure_date IS NULL')
    } else if (is(procedure_date, 'subQuery')){
      statement <- paste0(statement, ' procedure_date = (', as.character(procedure_date), ')')
    } else {
      statement <- paste0(statement, " procedure_date = '", procedure_date,"'")
    }
  }

  if (!missing(procedure_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(procedure_type_concept_id)) {
      statement <- paste0(statement, ' procedure_type_concept_id IS NULL')
    } else if (is(procedure_type_concept_id, 'subQuery')){
      statement <- paste0(statement, ' procedure_type_concept_id = (', as.character(procedure_type_concept_id), ')')
    } else {
      statement <- paste0(statement, " procedure_type_concept_id = '", procedure_type_concept_id,"'")
    }
  }

  if (!missing(modifier_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(modifier_concept_id)) {
      statement <- paste0(statement, ' modifier_concept_id IS NULL')
    } else if (is(modifier_concept_id, 'subQuery')){
      statement <- paste0(statement, ' modifier_concept_id = (', as.character(modifier_concept_id), ')')
    } else {
      statement <- paste0(statement, " modifier_concept_id = '", modifier_concept_id,"'")
    }
  }

  if (!missing(quantity)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(quantity)) {
      statement <- paste0(statement, ' quantity IS NULL')
    } else if (is(quantity, 'subQuery')){
      statement <- paste0(statement, ' quantity = (', as.character(quantity), ')')
    } else {
      statement <- paste0(statement, " quantity = '", quantity,"'")
    }
  }

  if (!missing(provider_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(provider_id)) {
      statement <- paste0(statement, ' provider_id IS NULL')
    } else if (is(provider_id, 'subQuery')){
      statement <- paste0(statement, ' provider_id = (', as.character(provider_id), ')')
    } else {
      statement <- paste0(statement, " provider_id = '", provider_id,"'")
    }
  }

  if (!missing(visit_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(visit_occurrence_id)) {
      statement <- paste0(statement, ' visit_occurrence_id IS NULL')
    } else if (is(visit_occurrence_id, 'subQuery')){
      statement <- paste0(statement, ' visit_occurrence_id = (', as.character(visit_occurrence_id), ')')
    } else {
      statement <- paste0(statement, " visit_occurrence_id = '", visit_occurrence_id,"'")
    }
  }

  if (!missing(procedure_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(procedure_source_value)) {
      statement <- paste0(statement, ' procedure_source_value IS NULL')
    } else if (is(procedure_source_value, 'subQuery')){
      statement <- paste0(statement, ' procedure_source_value = (', as.character(procedure_source_value), ')')
    } else {
      statement <- paste0(statement, " procedure_source_value = '", procedure_source_value,"'")
    }
  }

  if (!missing(procedure_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(procedure_source_concept_id)) {
      statement <- paste0(statement, ' procedure_source_concept_id IS NULL')
    } else if (is(procedure_source_concept_id, 'subQuery')){
      statement <- paste0(statement, ' procedure_source_concept_id = (', as.character(procedure_source_concept_id), ')')
    } else {
      statement <- paste0(statement, " procedure_source_concept_id = '", procedure_source_concept_id,"'")
    }
  }

  if (!missing(qualifier_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(qualifier_source_value)) {
      statement <- paste0(statement, ' qualifier_source_value IS NULL')
    } else if (is(qualifier_source_value, 'subQuery')){
      statement <- paste0(statement, ' qualifier_source_value = (', as.character(qualifier_source_value), ')')
    } else {
      statement <- paste0(statement, " qualifier_source_value = '", qualifier_source_value,"'")
    }
  }

  statement <- paste0(statement, ') != ', rowCount , " THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_count_device_exposure <- function(rowCount, device_exposure_id, person_id, device_concept_id, device_exposure_start_date, device_exposure_end_date, device_type_concept_id, unique_device_id, quantity, provider_id, visit_occurrence_id, device_source_value, device_source_concept_id) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect device_exposure' AS test, CASE WHEN(SELECT COUNT(*) FROM device_exposure WHERE")
  first <- TRUE
  if (!missing(device_exposure_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(device_exposure_id)) {
      statement <- paste0(statement, ' device_exposure_id IS NULL')
    } else if (is(device_exposure_id, 'subQuery')){
      statement <- paste0(statement, ' device_exposure_id = (', as.character(device_exposure_id), ')')
    } else {
      statement <- paste0(statement, " device_exposure_id = '", device_exposure_id,"'")
    }
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(person_id)) {
      statement <- paste0(statement, ' person_id IS NULL')
    } else if (is(person_id, 'subQuery')){
      statement <- paste0(statement, ' person_id = (', as.character(person_id), ')')
    } else {
      statement <- paste0(statement, " person_id = '", person_id,"'")
    }
  }

  if (!missing(device_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(device_concept_id)) {
      statement <- paste0(statement, ' device_concept_id IS NULL')
    } else if (is(device_concept_id, 'subQuery')){
      statement <- paste0(statement, ' device_concept_id = (', as.character(device_concept_id), ')')
    } else {
      statement <- paste0(statement, " device_concept_id = '", device_concept_id,"'")
    }
  }

  if (!missing(device_exposure_start_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(device_exposure_start_date)) {
      statement <- paste0(statement, ' device_exposure_start_date IS NULL')
    } else if (is(device_exposure_start_date, 'subQuery')){
      statement <- paste0(statement, ' device_exposure_start_date = (', as.character(device_exposure_start_date), ')')
    } else {
      statement <- paste0(statement, " device_exposure_start_date = '", device_exposure_start_date,"'")
    }
  }

  if (!missing(device_exposure_end_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(device_exposure_end_date)) {
      statement <- paste0(statement, ' device_exposure_end_date IS NULL')
    } else if (is(device_exposure_end_date, 'subQuery')){
      statement <- paste0(statement, ' device_exposure_end_date = (', as.character(device_exposure_end_date), ')')
    } else {
      statement <- paste0(statement, " device_exposure_end_date = '", device_exposure_end_date,"'")
    }
  }

  if (!missing(device_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(device_type_concept_id)) {
      statement <- paste0(statement, ' device_type_concept_id IS NULL')
    } else if (is(device_type_concept_id, 'subQuery')){
      statement <- paste0(statement, ' device_type_concept_id = (', as.character(device_type_concept_id), ')')
    } else {
      statement <- paste0(statement, " device_type_concept_id = '", device_type_concept_id,"'")
    }
  }

  if (!missing(unique_device_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(unique_device_id)) {
      statement <- paste0(statement, ' unique_device_id IS NULL')
    } else if (is(unique_device_id, 'subQuery')){
      statement <- paste0(statement, ' unique_device_id = (', as.character(unique_device_id), ')')
    } else {
      statement <- paste0(statement, " unique_device_id = '", unique_device_id,"'")
    }
  }

  if (!missing(quantity)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(quantity)) {
      statement <- paste0(statement, ' quantity IS NULL')
    } else if (is(quantity, 'subQuery')){
      statement <- paste0(statement, ' quantity = (', as.character(quantity), ')')
    } else {
      statement <- paste0(statement, " quantity = '", quantity,"'")
    }
  }

  if (!missing(provider_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(provider_id)) {
      statement <- paste0(statement, ' provider_id IS NULL')
    } else if (is(provider_id, 'subQuery')){
      statement <- paste0(statement, ' provider_id = (', as.character(provider_id), ')')
    } else {
      statement <- paste0(statement, " provider_id = '", provider_id,"'")
    }
  }

  if (!missing(visit_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(visit_occurrence_id)) {
      statement <- paste0(statement, ' visit_occurrence_id IS NULL')
    } else if (is(visit_occurrence_id, 'subQuery')){
      statement <- paste0(statement, ' visit_occurrence_id = (', as.character(visit_occurrence_id), ')')
    } else {
      statement <- paste0(statement, " visit_occurrence_id = '", visit_occurrence_id,"'")
    }
  }

  if (!missing(device_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(device_source_value)) {
      statement <- paste0(statement, ' device_source_value IS NULL')
    } else if (is(device_source_value, 'subQuery')){
      statement <- paste0(statement, ' device_source_value = (', as.character(device_source_value), ')')
    } else {
      statement <- paste0(statement, " device_source_value = '", device_source_value,"'")
    }
  }

  if (!missing(device_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(device_source_concept_id)) {
      statement <- paste0(statement, ' device_source_concept_id IS NULL')
    } else if (is(device_source_concept_id, 'subQuery')){
      statement <- paste0(statement, ' device_source_concept_id = (', as.character(device_source_concept_id), ')')
    } else {
      statement <- paste0(statement, " device_source_concept_id = '", device_source_concept_id,"'")
    }
  }

  statement <- paste0(statement, ') != ', rowCount , " THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_count_location <- function(rowCount, location_id, address_1, address_2, city, state, zip, county, location_source_value) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect location' AS test, CASE WHEN(SELECT COUNT(*) FROM location WHERE")
  first <- TRUE
  if (!missing(location_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(location_id)) {
      statement <- paste0(statement, ' location_id IS NULL')
    } else if (is(location_id, 'subQuery')){
      statement <- paste0(statement, ' location_id = (', as.character(location_id), ')')
    } else {
      statement <- paste0(statement, " location_id = '", location_id,"'")
    }
  }

  if (!missing(address_1)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(address_1)) {
      statement <- paste0(statement, ' address_1 IS NULL')
    } else if (is(address_1, 'subQuery')){
      statement <- paste0(statement, ' address_1 = (', as.character(address_1), ')')
    } else {
      statement <- paste0(statement, " address_1 = '", address_1,"'")
    }
  }

  if (!missing(address_2)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(address_2)) {
      statement <- paste0(statement, ' address_2 IS NULL')
    } else if (is(address_2, 'subQuery')){
      statement <- paste0(statement, ' address_2 = (', as.character(address_2), ')')
    } else {
      statement <- paste0(statement, " address_2 = '", address_2,"'")
    }
  }

  if (!missing(city)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(city)) {
      statement <- paste0(statement, ' city IS NULL')
    } else if (is(city, 'subQuery')){
      statement <- paste0(statement, ' city = (', as.character(city), ')')
    } else {
      statement <- paste0(statement, " city = '", city,"'")
    }
  }

  if (!missing(state)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(state)) {
      statement <- paste0(statement, ' state IS NULL')
    } else if (is(state, 'subQuery')){
      statement <- paste0(statement, ' state = (', as.character(state), ')')
    } else {
      statement <- paste0(statement, " state = '", state,"'")
    }
  }

  if (!missing(zip)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(zip)) {
      statement <- paste0(statement, ' zip IS NULL')
    } else if (is(zip, 'subQuery')){
      statement <- paste0(statement, ' zip = (', as.character(zip), ')')
    } else {
      statement <- paste0(statement, " zip = '", zip,"'")
    }
  }

  if (!missing(county)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(county)) {
      statement <- paste0(statement, ' county IS NULL')
    } else if (is(county, 'subQuery')){
      statement <- paste0(statement, ' county = (', as.character(county), ')')
    } else {
      statement <- paste0(statement, " county = '", county,"'")
    }
  }

  if (!missing(location_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(location_source_value)) {
      statement <- paste0(statement, ' location_source_value IS NULL')
    } else if (is(location_source_value, 'subQuery')){
      statement <- paste0(statement, ' location_source_value = (', as.character(location_source_value), ')')
    } else {
      statement <- paste0(statement, " location_source_value = '", location_source_value,"'")
    }
  }

  statement <- paste0(statement, ') != ', rowCount , " THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_count_care_site <- function(rowCount, care_site_id, care_site_name, place_of_service_concept_id, location_id, care_site_source_value, place_of_service_source_value) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect care_site' AS test, CASE WHEN(SELECT COUNT(*) FROM care_site WHERE")
  first <- TRUE
  if (!missing(care_site_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(care_site_id)) {
      statement <- paste0(statement, ' care_site_id IS NULL')
    } else if (is(care_site_id, 'subQuery')){
      statement <- paste0(statement, ' care_site_id = (', as.character(care_site_id), ')')
    } else {
      statement <- paste0(statement, " care_site_id = '", care_site_id,"'")
    }
  }

  if (!missing(care_site_name)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(care_site_name)) {
      statement <- paste0(statement, ' care_site_name IS NULL')
    } else if (is(care_site_name, 'subQuery')){
      statement <- paste0(statement, ' care_site_name = (', as.character(care_site_name), ')')
    } else {
      statement <- paste0(statement, " care_site_name = '", care_site_name,"'")
    }
  }

  if (!missing(place_of_service_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(place_of_service_concept_id)) {
      statement <- paste0(statement, ' place_of_service_concept_id IS NULL')
    } else if (is(place_of_service_concept_id, 'subQuery')){
      statement <- paste0(statement, ' place_of_service_concept_id = (', as.character(place_of_service_concept_id), ')')
    } else {
      statement <- paste0(statement, " place_of_service_concept_id = '", place_of_service_concept_id,"'")
    }
  }

  if (!missing(location_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(location_id)) {
      statement <- paste0(statement, ' location_id IS NULL')
    } else if (is(location_id, 'subQuery')){
      statement <- paste0(statement, ' location_id = (', as.character(location_id), ')')
    } else {
      statement <- paste0(statement, " location_id = '", location_id,"'")
    }
  }

  if (!missing(care_site_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(care_site_source_value)) {
      statement <- paste0(statement, ' care_site_source_value IS NULL')
    } else if (is(care_site_source_value, 'subQuery')){
      statement <- paste0(statement, ' care_site_source_value = (', as.character(care_site_source_value), ')')
    } else {
      statement <- paste0(statement, " care_site_source_value = '", care_site_source_value,"'")
    }
  }

  if (!missing(place_of_service_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(place_of_service_source_value)) {
      statement <- paste0(statement, ' place_of_service_source_value IS NULL')
    } else if (is(place_of_service_source_value, 'subQuery')){
      statement <- paste0(statement, ' place_of_service_source_value = (', as.character(place_of_service_source_value), ')')
    } else {
      statement <- paste0(statement, " place_of_service_source_value = '", place_of_service_source_value,"'")
    }
  }

  statement <- paste0(statement, ') != ', rowCount , " THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_count_provider <- function(rowCount, provider_id, provider_name, npi, dea, specialty_concept_id, care_site_id, year_of_birth, gender_concept_id, provider_source_value, specialty_source_value, specialty_source_concept_id, gender_source_value, gender_source_concept_id) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect provider' AS test, CASE WHEN(SELECT COUNT(*) FROM provider WHERE")
  first <- TRUE
  if (!missing(provider_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(provider_id)) {
      statement <- paste0(statement, ' provider_id IS NULL')
    } else if (is(provider_id, 'subQuery')){
      statement <- paste0(statement, ' provider_id = (', as.character(provider_id), ')')
    } else {
      statement <- paste0(statement, " provider_id = '", provider_id,"'")
    }
  }

  if (!missing(provider_name)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(provider_name)) {
      statement <- paste0(statement, ' provider_name IS NULL')
    } else if (is(provider_name, 'subQuery')){
      statement <- paste0(statement, ' provider_name = (', as.character(provider_name), ')')
    } else {
      statement <- paste0(statement, " provider_name = '", provider_name,"'")
    }
  }

  if (!missing(npi)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(npi)) {
      statement <- paste0(statement, ' npi IS NULL')
    } else if (is(npi, 'subQuery')){
      statement <- paste0(statement, ' npi = (', as.character(npi), ')')
    } else {
      statement <- paste0(statement, " npi = '", npi,"'")
    }
  }

  if (!missing(dea)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(dea)) {
      statement <- paste0(statement, ' dea IS NULL')
    } else if (is(dea, 'subQuery')){
      statement <- paste0(statement, ' dea = (', as.character(dea), ')')
    } else {
      statement <- paste0(statement, " dea = '", dea,"'")
    }
  }

  if (!missing(specialty_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(specialty_concept_id)) {
      statement <- paste0(statement, ' specialty_concept_id IS NULL')
    } else if (is(specialty_concept_id, 'subQuery')){
      statement <- paste0(statement, ' specialty_concept_id = (', as.character(specialty_concept_id), ')')
    } else {
      statement <- paste0(statement, " specialty_concept_id = '", specialty_concept_id,"'")
    }
  }

  if (!missing(care_site_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(care_site_id)) {
      statement <- paste0(statement, ' care_site_id IS NULL')
    } else if (is(care_site_id, 'subQuery')){
      statement <- paste0(statement, ' care_site_id = (', as.character(care_site_id), ')')
    } else {
      statement <- paste0(statement, " care_site_id = '", care_site_id,"'")
    }
  }

  if (!missing(year_of_birth)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(year_of_birth)) {
      statement <- paste0(statement, ' year_of_birth IS NULL')
    } else if (is(year_of_birth, 'subQuery')){
      statement <- paste0(statement, ' year_of_birth = (', as.character(year_of_birth), ')')
    } else {
      statement <- paste0(statement, " year_of_birth = '", year_of_birth,"'")
    }
  }

  if (!missing(gender_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(gender_concept_id)) {
      statement <- paste0(statement, ' gender_concept_id IS NULL')
    } else if (is(gender_concept_id, 'subQuery')){
      statement <- paste0(statement, ' gender_concept_id = (', as.character(gender_concept_id), ')')
    } else {
      statement <- paste0(statement, " gender_concept_id = '", gender_concept_id,"'")
    }
  }

  if (!missing(provider_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(provider_source_value)) {
      statement <- paste0(statement, ' provider_source_value IS NULL')
    } else if (is(provider_source_value, 'subQuery')){
      statement <- paste0(statement, ' provider_source_value = (', as.character(provider_source_value), ')')
    } else {
      statement <- paste0(statement, " provider_source_value = '", provider_source_value,"'")
    }
  }

  if (!missing(specialty_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(specialty_source_value)) {
      statement <- paste0(statement, ' specialty_source_value IS NULL')
    } else if (is(specialty_source_value, 'subQuery')){
      statement <- paste0(statement, ' specialty_source_value = (', as.character(specialty_source_value), ')')
    } else {
      statement <- paste0(statement, " specialty_source_value = '", specialty_source_value,"'")
    }
  }

  if (!missing(specialty_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(specialty_source_concept_id)) {
      statement <- paste0(statement, ' specialty_source_concept_id IS NULL')
    } else if (is(specialty_source_concept_id, 'subQuery')){
      statement <- paste0(statement, ' specialty_source_concept_id = (', as.character(specialty_source_concept_id), ')')
    } else {
      statement <- paste0(statement, " specialty_source_concept_id = '", specialty_source_concept_id,"'")
    }
  }

  if (!missing(gender_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(gender_source_value)) {
      statement <- paste0(statement, ' gender_source_value IS NULL')
    } else if (is(gender_source_value, 'subQuery')){
      statement <- paste0(statement, ' gender_source_value = (', as.character(gender_source_value), ')')
    } else {
      statement <- paste0(statement, " gender_source_value = '", gender_source_value,"'")
    }
  }

  if (!missing(gender_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(gender_source_concept_id)) {
      statement <- paste0(statement, ' gender_source_concept_id IS NULL')
    } else if (is(gender_source_concept_id, 'subQuery')){
      statement <- paste0(statement, ' gender_source_concept_id = (', as.character(gender_source_concept_id), ')')
    } else {
      statement <- paste0(statement, " gender_source_concept_id = '", gender_source_concept_id,"'")
    }
  }

  statement <- paste0(statement, ') != ', rowCount , " THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_count_note <- function(rowCount, note_id, person_id, note_date, note_time, note_type_concept_id, note_text, provider_id, visit_occurrence_id, note_source_value) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect note' AS test, CASE WHEN(SELECT COUNT(*) FROM note WHERE")
  first <- TRUE
  if (!missing(note_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(note_id)) {
      statement <- paste0(statement, ' note_id IS NULL')
    } else if (is(note_id, 'subQuery')){
      statement <- paste0(statement, ' note_id = (', as.character(note_id), ')')
    } else {
      statement <- paste0(statement, " note_id = '", note_id,"'")
    }
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(person_id)) {
      statement <- paste0(statement, ' person_id IS NULL')
    } else if (is(person_id, 'subQuery')){
      statement <- paste0(statement, ' person_id = (', as.character(person_id), ')')
    } else {
      statement <- paste0(statement, " person_id = '", person_id,"'")
    }
  }

  if (!missing(note_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(note_date)) {
      statement <- paste0(statement, ' note_date IS NULL')
    } else if (is(note_date, 'subQuery')){
      statement <- paste0(statement, ' note_date = (', as.character(note_date), ')')
    } else {
      statement <- paste0(statement, " note_date = '", note_date,"'")
    }
  }

  if (!missing(note_time)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(note_time)) {
      statement <- paste0(statement, ' note_time IS NULL')
    } else if (is(note_time, 'subQuery')){
      statement <- paste0(statement, ' note_time = (', as.character(note_time), ')')
    } else {
      statement <- paste0(statement, " note_time = '", note_time,"'")
    }
  }

  if (!missing(note_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(note_type_concept_id)) {
      statement <- paste0(statement, ' note_type_concept_id IS NULL')
    } else if (is(note_type_concept_id, 'subQuery')){
      statement <- paste0(statement, ' note_type_concept_id = (', as.character(note_type_concept_id), ')')
    } else {
      statement <- paste0(statement, " note_type_concept_id = '", note_type_concept_id,"'")
    }
  }

  if (!missing(note_text)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(note_text)) {
      statement <- paste0(statement, ' note_text IS NULL')
    } else if (is(note_text, 'subQuery')){
      statement <- paste0(statement, ' note_text = (', as.character(note_text), ')')
    } else {
      statement <- paste0(statement, " note_text = '", note_text,"'")
    }
  }

  if (!missing(provider_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(provider_id)) {
      statement <- paste0(statement, ' provider_id IS NULL')
    } else if (is(provider_id, 'subQuery')){
      statement <- paste0(statement, ' provider_id = (', as.character(provider_id), ')')
    } else {
      statement <- paste0(statement, " provider_id = '", provider_id,"'")
    }
  }

  if (!missing(visit_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(visit_occurrence_id)) {
      statement <- paste0(statement, ' visit_occurrence_id IS NULL')
    } else if (is(visit_occurrence_id, 'subQuery')){
      statement <- paste0(statement, ' visit_occurrence_id = (', as.character(visit_occurrence_id), ')')
    } else {
      statement <- paste0(statement, " visit_occurrence_id = '", visit_occurrence_id,"'")
    }
  }

  if (!missing(note_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(note_source_value)) {
      statement <- paste0(statement, ' note_source_value IS NULL')
    } else if (is(note_source_value, 'subQuery')){
      statement <- paste0(statement, ' note_source_value = (', as.character(note_source_value), ')')
    } else {
      statement <- paste0(statement, " note_source_value = '", note_source_value,"'")
    }
  }

  statement <- paste0(statement, ') != ', rowCount , " THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_count_specimen <- function(rowCount, specimen_id, person_id, specimen_concept_id, specimen_type_concept_id, specimen_date, specimen_time, quantity, unit_concept_id, anatomic_site_concept_id, disease_status_concept_id, specimen_source_id, specimen_source_value, unit_source_value, anatomic_site_source_value, disease_status_source_value) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect specimen' AS test, CASE WHEN(SELECT COUNT(*) FROM specimen WHERE")
  first <- TRUE
  if (!missing(specimen_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(specimen_id)) {
      statement <- paste0(statement, ' specimen_id IS NULL')
    } else if (is(specimen_id, 'subQuery')){
      statement <- paste0(statement, ' specimen_id = (', as.character(specimen_id), ')')
    } else {
      statement <- paste0(statement, " specimen_id = '", specimen_id,"'")
    }
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(person_id)) {
      statement <- paste0(statement, ' person_id IS NULL')
    } else if (is(person_id, 'subQuery')){
      statement <- paste0(statement, ' person_id = (', as.character(person_id), ')')
    } else {
      statement <- paste0(statement, " person_id = '", person_id,"'")
    }
  }

  if (!missing(specimen_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(specimen_concept_id)) {
      statement <- paste0(statement, ' specimen_concept_id IS NULL')
    } else if (is(specimen_concept_id, 'subQuery')){
      statement <- paste0(statement, ' specimen_concept_id = (', as.character(specimen_concept_id), ')')
    } else {
      statement <- paste0(statement, " specimen_concept_id = '", specimen_concept_id,"'")
    }
  }

  if (!missing(specimen_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(specimen_type_concept_id)) {
      statement <- paste0(statement, ' specimen_type_concept_id IS NULL')
    } else if (is(specimen_type_concept_id, 'subQuery')){
      statement <- paste0(statement, ' specimen_type_concept_id = (', as.character(specimen_type_concept_id), ')')
    } else {
      statement <- paste0(statement, " specimen_type_concept_id = '", specimen_type_concept_id,"'")
    }
  }

  if (!missing(specimen_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(specimen_date)) {
      statement <- paste0(statement, ' specimen_date IS NULL')
    } else if (is(specimen_date, 'subQuery')){
      statement <- paste0(statement, ' specimen_date = (', as.character(specimen_date), ')')
    } else {
      statement <- paste0(statement, " specimen_date = '", specimen_date,"'")
    }
  }

  if (!missing(specimen_time)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(specimen_time)) {
      statement <- paste0(statement, ' specimen_time IS NULL')
    } else if (is(specimen_time, 'subQuery')){
      statement <- paste0(statement, ' specimen_time = (', as.character(specimen_time), ')')
    } else {
      statement <- paste0(statement, " specimen_time = '", specimen_time,"'")
    }
  }

  if (!missing(quantity)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(quantity)) {
      statement <- paste0(statement, ' quantity IS NULL')
    } else if (is(quantity, 'subQuery')){
      statement <- paste0(statement, ' quantity = (', as.character(quantity), ')')
    } else {
      statement <- paste0(statement, " quantity = '", quantity,"'")
    }
  }

  if (!missing(unit_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(unit_concept_id)) {
      statement <- paste0(statement, ' unit_concept_id IS NULL')
    } else if (is(unit_concept_id, 'subQuery')){
      statement <- paste0(statement, ' unit_concept_id = (', as.character(unit_concept_id), ')')
    } else {
      statement <- paste0(statement, " unit_concept_id = '", unit_concept_id,"'")
    }
  }

  if (!missing(anatomic_site_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(anatomic_site_concept_id)) {
      statement <- paste0(statement, ' anatomic_site_concept_id IS NULL')
    } else if (is(anatomic_site_concept_id, 'subQuery')){
      statement <- paste0(statement, ' anatomic_site_concept_id = (', as.character(anatomic_site_concept_id), ')')
    } else {
      statement <- paste0(statement, " anatomic_site_concept_id = '", anatomic_site_concept_id,"'")
    }
  }

  if (!missing(disease_status_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(disease_status_concept_id)) {
      statement <- paste0(statement, ' disease_status_concept_id IS NULL')
    } else if (is(disease_status_concept_id, 'subQuery')){
      statement <- paste0(statement, ' disease_status_concept_id = (', as.character(disease_status_concept_id), ')')
    } else {
      statement <- paste0(statement, " disease_status_concept_id = '", disease_status_concept_id,"'")
    }
  }

  if (!missing(specimen_source_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(specimen_source_id)) {
      statement <- paste0(statement, ' specimen_source_id IS NULL')
    } else if (is(specimen_source_id, 'subQuery')){
      statement <- paste0(statement, ' specimen_source_id = (', as.character(specimen_source_id), ')')
    } else {
      statement <- paste0(statement, " specimen_source_id = '", specimen_source_id,"'")
    }
  }

  if (!missing(specimen_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(specimen_source_value)) {
      statement <- paste0(statement, ' specimen_source_value IS NULL')
    } else if (is(specimen_source_value, 'subQuery')){
      statement <- paste0(statement, ' specimen_source_value = (', as.character(specimen_source_value), ')')
    } else {
      statement <- paste0(statement, " specimen_source_value = '", specimen_source_value,"'")
    }
  }

  if (!missing(unit_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(unit_source_value)) {
      statement <- paste0(statement, ' unit_source_value IS NULL')
    } else if (is(unit_source_value, 'subQuery')){
      statement <- paste0(statement, ' unit_source_value = (', as.character(unit_source_value), ')')
    } else {
      statement <- paste0(statement, " unit_source_value = '", unit_source_value,"'")
    }
  }

  if (!missing(anatomic_site_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(anatomic_site_source_value)) {
      statement <- paste0(statement, ' anatomic_site_source_value IS NULL')
    } else if (is(anatomic_site_source_value, 'subQuery')){
      statement <- paste0(statement, ' anatomic_site_source_value = (', as.character(anatomic_site_source_value), ')')
    } else {
      statement <- paste0(statement, " anatomic_site_source_value = '", anatomic_site_source_value,"'")
    }
  }

  if (!missing(disease_status_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(disease_status_source_value)) {
      statement <- paste0(statement, ' disease_status_source_value IS NULL')
    } else if (is(disease_status_source_value, 'subQuery')){
      statement <- paste0(statement, ' disease_status_source_value = (', as.character(disease_status_source_value), ')')
    } else {
      statement <- paste0(statement, " disease_status_source_value = '", disease_status_source_value,"'")
    }
  }

  statement <- paste0(statement, ') != ', rowCount , " THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_count_fact_relationship <- function(rowCount, domain_concept_id_1, fact_id_1, domain_concept_id_2, fact_id_2, relationship_concept_id) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect fact_relationship' AS test, CASE WHEN(SELECT COUNT(*) FROM fact_relationship WHERE")
  first <- TRUE
  if (!missing(domain_concept_id_1)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(domain_concept_id_1)) {
      statement <- paste0(statement, ' domain_concept_id_1 IS NULL')
    } else if (is(domain_concept_id_1, 'subQuery')){
      statement <- paste0(statement, ' domain_concept_id_1 = (', as.character(domain_concept_id_1), ')')
    } else {
      statement <- paste0(statement, " domain_concept_id_1 = '", domain_concept_id_1,"'")
    }
  }

  if (!missing(fact_id_1)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(fact_id_1)) {
      statement <- paste0(statement, ' fact_id_1 IS NULL')
    } else if (is(fact_id_1, 'subQuery')){
      statement <- paste0(statement, ' fact_id_1 = (', as.character(fact_id_1), ')')
    } else {
      statement <- paste0(statement, " fact_id_1 = '", fact_id_1,"'")
    }
  }

  if (!missing(domain_concept_id_2)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(domain_concept_id_2)) {
      statement <- paste0(statement, ' domain_concept_id_2 IS NULL')
    } else if (is(domain_concept_id_2, 'subQuery')){
      statement <- paste0(statement, ' domain_concept_id_2 = (', as.character(domain_concept_id_2), ')')
    } else {
      statement <- paste0(statement, " domain_concept_id_2 = '", domain_concept_id_2,"'")
    }
  }

  if (!missing(fact_id_2)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(fact_id_2)) {
      statement <- paste0(statement, ' fact_id_2 IS NULL')
    } else if (is(fact_id_2, 'subQuery')){
      statement <- paste0(statement, ' fact_id_2 = (', as.character(fact_id_2), ')')
    } else {
      statement <- paste0(statement, " fact_id_2 = '", fact_id_2,"'")
    }
  }

  if (!missing(relationship_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(relationship_concept_id)) {
      statement <- paste0(statement, ' relationship_concept_id IS NULL')
    } else if (is(relationship_concept_id, 'subQuery')){
      statement <- paste0(statement, ' relationship_concept_id = (', as.character(relationship_concept_id), ')')
    } else {
      statement <- paste0(statement, " relationship_concept_id = '", relationship_concept_id,"'")
    }
  }

  statement <- paste0(statement, ') != ', rowCount , " THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_count_procedure_cost <- function(rowCount, procedure_cost_id, procedure_occurrence_id, currency_concept_id, paid_copay, paid_coinsurance, paid_toward_deductible, paid_by_payer, paid_by_coordination_benefits, total_out_of_pocket, total_paid, revenue_code_concept_id, payer_plan_period_id, revenue_code_source_value) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect procedure_cost' AS test, CASE WHEN(SELECT COUNT(*) FROM procedure_cost WHERE")
  first <- TRUE
  if (!missing(procedure_cost_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(procedure_cost_id)) {
      statement <- paste0(statement, ' procedure_cost_id IS NULL')
    } else if (is(procedure_cost_id, 'subQuery')){
      statement <- paste0(statement, ' procedure_cost_id = (', as.character(procedure_cost_id), ')')
    } else {
      statement <- paste0(statement, " procedure_cost_id = '", procedure_cost_id,"'")
    }
  }

  if (!missing(procedure_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(procedure_occurrence_id)) {
      statement <- paste0(statement, ' procedure_occurrence_id IS NULL')
    } else if (is(procedure_occurrence_id, 'subQuery')){
      statement <- paste0(statement, ' procedure_occurrence_id = (', as.character(procedure_occurrence_id), ')')
    } else {
      statement <- paste0(statement, " procedure_occurrence_id = '", procedure_occurrence_id,"'")
    }
  }

  if (!missing(currency_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(currency_concept_id)) {
      statement <- paste0(statement, ' currency_concept_id IS NULL')
    } else if (is(currency_concept_id, 'subQuery')){
      statement <- paste0(statement, ' currency_concept_id = (', as.character(currency_concept_id), ')')
    } else {
      statement <- paste0(statement, " currency_concept_id = '", currency_concept_id,"'")
    }
  }

  if (!missing(paid_copay)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_copay)) {
      statement <- paste0(statement, ' paid_copay IS NULL')
    } else if (is(paid_copay, 'subQuery')){
      statement <- paste0(statement, ' paid_copay = (', as.character(paid_copay), ')')
    } else {
      statement <- paste0(statement, " paid_copay = '", paid_copay,"'")
    }
  }

  if (!missing(paid_coinsurance)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_coinsurance)) {
      statement <- paste0(statement, ' paid_coinsurance IS NULL')
    } else if (is(paid_coinsurance, 'subQuery')){
      statement <- paste0(statement, ' paid_coinsurance = (', as.character(paid_coinsurance), ')')
    } else {
      statement <- paste0(statement, " paid_coinsurance = '", paid_coinsurance,"'")
    }
  }

  if (!missing(paid_toward_deductible)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_toward_deductible)) {
      statement <- paste0(statement, ' paid_toward_deductible IS NULL')
    } else if (is(paid_toward_deductible, 'subQuery')){
      statement <- paste0(statement, ' paid_toward_deductible = (', as.character(paid_toward_deductible), ')')
    } else {
      statement <- paste0(statement, " paid_toward_deductible = '", paid_toward_deductible,"'")
    }
  }

  if (!missing(paid_by_payer)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_by_payer)) {
      statement <- paste0(statement, ' paid_by_payer IS NULL')
    } else if (is(paid_by_payer, 'subQuery')){
      statement <- paste0(statement, ' paid_by_payer = (', as.character(paid_by_payer), ')')
    } else {
      statement <- paste0(statement, " paid_by_payer = '", paid_by_payer,"'")
    }
  }

  if (!missing(paid_by_coordination_benefits)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_by_coordination_benefits)) {
      statement <- paste0(statement, ' paid_by_coordination_benefits IS NULL')
    } else if (is(paid_by_coordination_benefits, 'subQuery')){
      statement <- paste0(statement, ' paid_by_coordination_benefits = (', as.character(paid_by_coordination_benefits), ')')
    } else {
      statement <- paste0(statement, " paid_by_coordination_benefits = '", paid_by_coordination_benefits,"'")
    }
  }

  if (!missing(total_out_of_pocket)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(total_out_of_pocket)) {
      statement <- paste0(statement, ' total_out_of_pocket IS NULL')
    } else if (is(total_out_of_pocket, 'subQuery')){
      statement <- paste0(statement, ' total_out_of_pocket = (', as.character(total_out_of_pocket), ')')
    } else {
      statement <- paste0(statement, " total_out_of_pocket = '", total_out_of_pocket,"'")
    }
  }

  if (!missing(total_paid)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(total_paid)) {
      statement <- paste0(statement, ' total_paid IS NULL')
    } else if (is(total_paid, 'subQuery')){
      statement <- paste0(statement, ' total_paid = (', as.character(total_paid), ')')
    } else {
      statement <- paste0(statement, " total_paid = '", total_paid,"'")
    }
  }

  if (!missing(revenue_code_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(revenue_code_concept_id)) {
      statement <- paste0(statement, ' revenue_code_concept_id IS NULL')
    } else if (is(revenue_code_concept_id, 'subQuery')){
      statement <- paste0(statement, ' revenue_code_concept_id = (', as.character(revenue_code_concept_id), ')')
    } else {
      statement <- paste0(statement, " revenue_code_concept_id = '", revenue_code_concept_id,"'")
    }
  }

  if (!missing(payer_plan_period_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(payer_plan_period_id)) {
      statement <- paste0(statement, ' payer_plan_period_id IS NULL')
    } else if (is(payer_plan_period_id, 'subQuery')){
      statement <- paste0(statement, ' payer_plan_period_id = (', as.character(payer_plan_period_id), ')')
    } else {
      statement <- paste0(statement, " payer_plan_period_id = '", payer_plan_period_id,"'")
    }
  }

  if (!missing(revenue_code_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(revenue_code_source_value)) {
      statement <- paste0(statement, ' revenue_code_source_value IS NULL')
    } else if (is(revenue_code_source_value, 'subQuery')){
      statement <- paste0(statement, ' revenue_code_source_value = (', as.character(revenue_code_source_value), ')')
    } else {
      statement <- paste0(statement, " revenue_code_source_value = '", revenue_code_source_value,"'")
    }
  }

  statement <- paste0(statement, ') != ', rowCount , " THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_count_visit_cost <- function(rowCount, visit_cost_id, visit_occurrence_id, currency_concept_id, paid_copay, paid_coinsurance, paid_toward_deductible, paid_by_payer, paid_by_coordination_benefits, total_out_of_pocket, total_paid, payer_plan_period_id) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect visit_cost' AS test, CASE WHEN(SELECT COUNT(*) FROM visit_cost WHERE")
  first <- TRUE
  if (!missing(visit_cost_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(visit_cost_id)) {
      statement <- paste0(statement, ' visit_cost_id IS NULL')
    } else if (is(visit_cost_id, 'subQuery')){
      statement <- paste0(statement, ' visit_cost_id = (', as.character(visit_cost_id), ')')
    } else {
      statement <- paste0(statement, " visit_cost_id = '", visit_cost_id,"'")
    }
  }

  if (!missing(visit_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(visit_occurrence_id)) {
      statement <- paste0(statement, ' visit_occurrence_id IS NULL')
    } else if (is(visit_occurrence_id, 'subQuery')){
      statement <- paste0(statement, ' visit_occurrence_id = (', as.character(visit_occurrence_id), ')')
    } else {
      statement <- paste0(statement, " visit_occurrence_id = '", visit_occurrence_id,"'")
    }
  }

  if (!missing(currency_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(currency_concept_id)) {
      statement <- paste0(statement, ' currency_concept_id IS NULL')
    } else if (is(currency_concept_id, 'subQuery')){
      statement <- paste0(statement, ' currency_concept_id = (', as.character(currency_concept_id), ')')
    } else {
      statement <- paste0(statement, " currency_concept_id = '", currency_concept_id,"'")
    }
  }

  if (!missing(paid_copay)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_copay)) {
      statement <- paste0(statement, ' paid_copay IS NULL')
    } else if (is(paid_copay, 'subQuery')){
      statement <- paste0(statement, ' paid_copay = (', as.character(paid_copay), ')')
    } else {
      statement <- paste0(statement, " paid_copay = '", paid_copay,"'")
    }
  }

  if (!missing(paid_coinsurance)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_coinsurance)) {
      statement <- paste0(statement, ' paid_coinsurance IS NULL')
    } else if (is(paid_coinsurance, 'subQuery')){
      statement <- paste0(statement, ' paid_coinsurance = (', as.character(paid_coinsurance), ')')
    } else {
      statement <- paste0(statement, " paid_coinsurance = '", paid_coinsurance,"'")
    }
  }

  if (!missing(paid_toward_deductible)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_toward_deductible)) {
      statement <- paste0(statement, ' paid_toward_deductible IS NULL')
    } else if (is(paid_toward_deductible, 'subQuery')){
      statement <- paste0(statement, ' paid_toward_deductible = (', as.character(paid_toward_deductible), ')')
    } else {
      statement <- paste0(statement, " paid_toward_deductible = '", paid_toward_deductible,"'")
    }
  }

  if (!missing(paid_by_payer)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_by_payer)) {
      statement <- paste0(statement, ' paid_by_payer IS NULL')
    } else if (is(paid_by_payer, 'subQuery')){
      statement <- paste0(statement, ' paid_by_payer = (', as.character(paid_by_payer), ')')
    } else {
      statement <- paste0(statement, " paid_by_payer = '", paid_by_payer,"'")
    }
  }

  if (!missing(paid_by_coordination_benefits)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_by_coordination_benefits)) {
      statement <- paste0(statement, ' paid_by_coordination_benefits IS NULL')
    } else if (is(paid_by_coordination_benefits, 'subQuery')){
      statement <- paste0(statement, ' paid_by_coordination_benefits = (', as.character(paid_by_coordination_benefits), ')')
    } else {
      statement <- paste0(statement, " paid_by_coordination_benefits = '", paid_by_coordination_benefits,"'")
    }
  }

  if (!missing(total_out_of_pocket)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(total_out_of_pocket)) {
      statement <- paste0(statement, ' total_out_of_pocket IS NULL')
    } else if (is(total_out_of_pocket, 'subQuery')){
      statement <- paste0(statement, ' total_out_of_pocket = (', as.character(total_out_of_pocket), ')')
    } else {
      statement <- paste0(statement, " total_out_of_pocket = '", total_out_of_pocket,"'")
    }
  }

  if (!missing(total_paid)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(total_paid)) {
      statement <- paste0(statement, ' total_paid IS NULL')
    } else if (is(total_paid, 'subQuery')){
      statement <- paste0(statement, ' total_paid = (', as.character(total_paid), ')')
    } else {
      statement <- paste0(statement, " total_paid = '", total_paid,"'")
    }
  }

  if (!missing(payer_plan_period_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(payer_plan_period_id)) {
      statement <- paste0(statement, ' payer_plan_period_id IS NULL')
    } else if (is(payer_plan_period_id, 'subQuery')){
      statement <- paste0(statement, ' payer_plan_period_id = (', as.character(payer_plan_period_id), ')')
    } else {
      statement <- paste0(statement, " payer_plan_period_id = '", payer_plan_period_id,"'")
    }
  }

  statement <- paste0(statement, ') != ', rowCount , " THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_count_drug_cost <- function(rowCount, drug_cost_id, drug_exposure_id, currency_concept_id, paid_copay, paid_coinsurance, paid_toward_deductible, paid_by_payer, paid_by_coordination_benefits, total_out_of_pocket, total_paid, ingredient_cost, dispensing_fee, average_wholesale_price, payer_plan_period_id) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect drug_cost' AS test, CASE WHEN(SELECT COUNT(*) FROM drug_cost WHERE")
  first <- TRUE
  if (!missing(drug_cost_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(drug_cost_id)) {
      statement <- paste0(statement, ' drug_cost_id IS NULL')
    } else if (is(drug_cost_id, 'subQuery')){
      statement <- paste0(statement, ' drug_cost_id = (', as.character(drug_cost_id), ')')
    } else {
      statement <- paste0(statement, " drug_cost_id = '", drug_cost_id,"'")
    }
  }

  if (!missing(drug_exposure_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(drug_exposure_id)) {
      statement <- paste0(statement, ' drug_exposure_id IS NULL')
    } else if (is(drug_exposure_id, 'subQuery')){
      statement <- paste0(statement, ' drug_exposure_id = (', as.character(drug_exposure_id), ')')
    } else {
      statement <- paste0(statement, " drug_exposure_id = '", drug_exposure_id,"'")
    }
  }

  if (!missing(currency_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(currency_concept_id)) {
      statement <- paste0(statement, ' currency_concept_id IS NULL')
    } else if (is(currency_concept_id, 'subQuery')){
      statement <- paste0(statement, ' currency_concept_id = (', as.character(currency_concept_id), ')')
    } else {
      statement <- paste0(statement, " currency_concept_id = '", currency_concept_id,"'")
    }
  }

  if (!missing(paid_copay)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_copay)) {
      statement <- paste0(statement, ' paid_copay IS NULL')
    } else if (is(paid_copay, 'subQuery')){
      statement <- paste0(statement, ' paid_copay = (', as.character(paid_copay), ')')
    } else {
      statement <- paste0(statement, " paid_copay = '", paid_copay,"'")
    }
  }

  if (!missing(paid_coinsurance)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_coinsurance)) {
      statement <- paste0(statement, ' paid_coinsurance IS NULL')
    } else if (is(paid_coinsurance, 'subQuery')){
      statement <- paste0(statement, ' paid_coinsurance = (', as.character(paid_coinsurance), ')')
    } else {
      statement <- paste0(statement, " paid_coinsurance = '", paid_coinsurance,"'")
    }
  }

  if (!missing(paid_toward_deductible)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_toward_deductible)) {
      statement <- paste0(statement, ' paid_toward_deductible IS NULL')
    } else if (is(paid_toward_deductible, 'subQuery')){
      statement <- paste0(statement, ' paid_toward_deductible = (', as.character(paid_toward_deductible), ')')
    } else {
      statement <- paste0(statement, " paid_toward_deductible = '", paid_toward_deductible,"'")
    }
  }

  if (!missing(paid_by_payer)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_by_payer)) {
      statement <- paste0(statement, ' paid_by_payer IS NULL')
    } else if (is(paid_by_payer, 'subQuery')){
      statement <- paste0(statement, ' paid_by_payer = (', as.character(paid_by_payer), ')')
    } else {
      statement <- paste0(statement, " paid_by_payer = '", paid_by_payer,"'")
    }
  }

  if (!missing(paid_by_coordination_benefits)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_by_coordination_benefits)) {
      statement <- paste0(statement, ' paid_by_coordination_benefits IS NULL')
    } else if (is(paid_by_coordination_benefits, 'subQuery')){
      statement <- paste0(statement, ' paid_by_coordination_benefits = (', as.character(paid_by_coordination_benefits), ')')
    } else {
      statement <- paste0(statement, " paid_by_coordination_benefits = '", paid_by_coordination_benefits,"'")
    }
  }

  if (!missing(total_out_of_pocket)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(total_out_of_pocket)) {
      statement <- paste0(statement, ' total_out_of_pocket IS NULL')
    } else if (is(total_out_of_pocket, 'subQuery')){
      statement <- paste0(statement, ' total_out_of_pocket = (', as.character(total_out_of_pocket), ')')
    } else {
      statement <- paste0(statement, " total_out_of_pocket = '", total_out_of_pocket,"'")
    }
  }

  if (!missing(total_paid)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(total_paid)) {
      statement <- paste0(statement, ' total_paid IS NULL')
    } else if (is(total_paid, 'subQuery')){
      statement <- paste0(statement, ' total_paid = (', as.character(total_paid), ')')
    } else {
      statement <- paste0(statement, " total_paid = '", total_paid,"'")
    }
  }

  if (!missing(ingredient_cost)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(ingredient_cost)) {
      statement <- paste0(statement, ' ingredient_cost IS NULL')
    } else if (is(ingredient_cost, 'subQuery')){
      statement <- paste0(statement, ' ingredient_cost = (', as.character(ingredient_cost), ')')
    } else {
      statement <- paste0(statement, " ingredient_cost = '", ingredient_cost,"'")
    }
  }

  if (!missing(dispensing_fee)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(dispensing_fee)) {
      statement <- paste0(statement, ' dispensing_fee IS NULL')
    } else if (is(dispensing_fee, 'subQuery')){
      statement <- paste0(statement, ' dispensing_fee = (', as.character(dispensing_fee), ')')
    } else {
      statement <- paste0(statement, " dispensing_fee = '", dispensing_fee,"'")
    }
  }

  if (!missing(average_wholesale_price)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(average_wholesale_price)) {
      statement <- paste0(statement, ' average_wholesale_price IS NULL')
    } else if (is(average_wholesale_price, 'subQuery')){
      statement <- paste0(statement, ' average_wholesale_price = (', as.character(average_wholesale_price), ')')
    } else {
      statement <- paste0(statement, " average_wholesale_price = '", average_wholesale_price,"'")
    }
  }

  if (!missing(payer_plan_period_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(payer_plan_period_id)) {
      statement <- paste0(statement, ' payer_plan_period_id IS NULL')
    } else if (is(payer_plan_period_id, 'subQuery')){
      statement <- paste0(statement, ' payer_plan_period_id = (', as.character(payer_plan_period_id), ')')
    } else {
      statement <- paste0(statement, " payer_plan_period_id = '", payer_plan_period_id,"'")
    }
  }

  statement <- paste0(statement, ') != ', rowCount , " THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_count_payer_plan_period <- function(rowCount, payer_plan_period_id, person_id, payer_plan_period_start_date, payer_plan_period_end_date, payer_source_value, plan_source_value, family_source_value) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect payer_plan_period' AS test, CASE WHEN(SELECT COUNT(*) FROM payer_plan_period WHERE")
  first <- TRUE
  if (!missing(payer_plan_period_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(payer_plan_period_id)) {
      statement <- paste0(statement, ' payer_plan_period_id IS NULL')
    } else if (is(payer_plan_period_id, 'subQuery')){
      statement <- paste0(statement, ' payer_plan_period_id = (', as.character(payer_plan_period_id), ')')
    } else {
      statement <- paste0(statement, " payer_plan_period_id = '", payer_plan_period_id,"'")
    }
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(person_id)) {
      statement <- paste0(statement, ' person_id IS NULL')
    } else if (is(person_id, 'subQuery')){
      statement <- paste0(statement, ' person_id = (', as.character(person_id), ')')
    } else {
      statement <- paste0(statement, " person_id = '", person_id,"'")
    }
  }

  if (!missing(payer_plan_period_start_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(payer_plan_period_start_date)) {
      statement <- paste0(statement, ' payer_plan_period_start_date IS NULL')
    } else if (is(payer_plan_period_start_date, 'subQuery')){
      statement <- paste0(statement, ' payer_plan_period_start_date = (', as.character(payer_plan_period_start_date), ')')
    } else {
      statement <- paste0(statement, " payer_plan_period_start_date = '", payer_plan_period_start_date,"'")
    }
  }

  if (!missing(payer_plan_period_end_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(payer_plan_period_end_date)) {
      statement <- paste0(statement, ' payer_plan_period_end_date IS NULL')
    } else if (is(payer_plan_period_end_date, 'subQuery')){
      statement <- paste0(statement, ' payer_plan_period_end_date = (', as.character(payer_plan_period_end_date), ')')
    } else {
      statement <- paste0(statement, " payer_plan_period_end_date = '", payer_plan_period_end_date,"'")
    }
  }

  if (!missing(payer_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(payer_source_value)) {
      statement <- paste0(statement, ' payer_source_value IS NULL')
    } else if (is(payer_source_value, 'subQuery')){
      statement <- paste0(statement, ' payer_source_value = (', as.character(payer_source_value), ')')
    } else {
      statement <- paste0(statement, " payer_source_value = '", payer_source_value,"'")
    }
  }

  if (!missing(plan_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(plan_source_value)) {
      statement <- paste0(statement, ' plan_source_value IS NULL')
    } else if (is(plan_source_value, 'subQuery')){
      statement <- paste0(statement, ' plan_source_value = (', as.character(plan_source_value), ')')
    } else {
      statement <- paste0(statement, " plan_source_value = '", plan_source_value,"'")
    }
  }

  if (!missing(family_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(family_source_value)) {
      statement <- paste0(statement, ' family_source_value IS NULL')
    } else if (is(family_source_value, 'subQuery')){
      statement <- paste0(statement, ' family_source_value = (', as.character(family_source_value), ')')
    } else {
      statement <- paste0(statement, " family_source_value = '", family_source_value,"'")
    }
  }

  statement <- paste0(statement, ') != ', rowCount , " THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_count_device_cost <- function(rowCount, device_cost_id, device_exposure_id, currency_concept_id, paid_copay, paid_coinsurance, paid_toward_deductible, paid_by_payer, paid_by_coordination_benefits, total_out_of_pocket, total_paid, payer_plan_period_id) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect device_cost' AS test, CASE WHEN(SELECT COUNT(*) FROM device_cost WHERE")
  first <- TRUE
  if (!missing(device_cost_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(device_cost_id)) {
      statement <- paste0(statement, ' device_cost_id IS NULL')
    } else if (is(device_cost_id, 'subQuery')){
      statement <- paste0(statement, ' device_cost_id = (', as.character(device_cost_id), ')')
    } else {
      statement <- paste0(statement, " device_cost_id = '", device_cost_id,"'")
    }
  }

  if (!missing(device_exposure_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(device_exposure_id)) {
      statement <- paste0(statement, ' device_exposure_id IS NULL')
    } else if (is(device_exposure_id, 'subQuery')){
      statement <- paste0(statement, ' device_exposure_id = (', as.character(device_exposure_id), ')')
    } else {
      statement <- paste0(statement, " device_exposure_id = '", device_exposure_id,"'")
    }
  }

  if (!missing(currency_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(currency_concept_id)) {
      statement <- paste0(statement, ' currency_concept_id IS NULL')
    } else if (is(currency_concept_id, 'subQuery')){
      statement <- paste0(statement, ' currency_concept_id = (', as.character(currency_concept_id), ')')
    } else {
      statement <- paste0(statement, " currency_concept_id = '", currency_concept_id,"'")
    }
  }

  if (!missing(paid_copay)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_copay)) {
      statement <- paste0(statement, ' paid_copay IS NULL')
    } else if (is(paid_copay, 'subQuery')){
      statement <- paste0(statement, ' paid_copay = (', as.character(paid_copay), ')')
    } else {
      statement <- paste0(statement, " paid_copay = '", paid_copay,"'")
    }
  }

  if (!missing(paid_coinsurance)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_coinsurance)) {
      statement <- paste0(statement, ' paid_coinsurance IS NULL')
    } else if (is(paid_coinsurance, 'subQuery')){
      statement <- paste0(statement, ' paid_coinsurance = (', as.character(paid_coinsurance), ')')
    } else {
      statement <- paste0(statement, " paid_coinsurance = '", paid_coinsurance,"'")
    }
  }

  if (!missing(paid_toward_deductible)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_toward_deductible)) {
      statement <- paste0(statement, ' paid_toward_deductible IS NULL')
    } else if (is(paid_toward_deductible, 'subQuery')){
      statement <- paste0(statement, ' paid_toward_deductible = (', as.character(paid_toward_deductible), ')')
    } else {
      statement <- paste0(statement, " paid_toward_deductible = '", paid_toward_deductible,"'")
    }
  }

  if (!missing(paid_by_payer)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_by_payer)) {
      statement <- paste0(statement, ' paid_by_payer IS NULL')
    } else if (is(paid_by_payer, 'subQuery')){
      statement <- paste0(statement, ' paid_by_payer = (', as.character(paid_by_payer), ')')
    } else {
      statement <- paste0(statement, " paid_by_payer = '", paid_by_payer,"'")
    }
  }

  if (!missing(paid_by_coordination_benefits)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_by_coordination_benefits)) {
      statement <- paste0(statement, ' paid_by_coordination_benefits IS NULL')
    } else if (is(paid_by_coordination_benefits, 'subQuery')){
      statement <- paste0(statement, ' paid_by_coordination_benefits = (', as.character(paid_by_coordination_benefits), ')')
    } else {
      statement <- paste0(statement, " paid_by_coordination_benefits = '", paid_by_coordination_benefits,"'")
    }
  }

  if (!missing(total_out_of_pocket)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(total_out_of_pocket)) {
      statement <- paste0(statement, ' total_out_of_pocket IS NULL')
    } else if (is(total_out_of_pocket, 'subQuery')){
      statement <- paste0(statement, ' total_out_of_pocket = (', as.character(total_out_of_pocket), ')')
    } else {
      statement <- paste0(statement, " total_out_of_pocket = '", total_out_of_pocket,"'")
    }
  }

  if (!missing(total_paid)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(total_paid)) {
      statement <- paste0(statement, ' total_paid IS NULL')
    } else if (is(total_paid, 'subQuery')){
      statement <- paste0(statement, ' total_paid = (', as.character(total_paid), ')')
    } else {
      statement <- paste0(statement, " total_paid = '", total_paid,"'")
    }
  }

  if (!missing(payer_plan_period_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(payer_plan_period_id)) {
      statement <- paste0(statement, ' payer_plan_period_id IS NULL')
    } else if (is(payer_plan_period_id, 'subQuery')){
      statement <- paste0(statement, ' payer_plan_period_id = (', as.character(payer_plan_period_id), ')')
    } else {
      statement <- paste0(statement, " payer_plan_period_id = '", payer_plan_period_id,"'")
    }
  }

  statement <- paste0(statement, ') != ', rowCount , " THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_count_dose_era <- function(rowCount, dose_era_id, person_id, drug_concept_id, unit_concept_id, dose_value, dose_era_start_date, dose_era_end_date) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect dose_era' AS test, CASE WHEN(SELECT COUNT(*) FROM dose_era WHERE")
  first <- TRUE
  if (!missing(dose_era_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(dose_era_id)) {
      statement <- paste0(statement, ' dose_era_id IS NULL')
    } else if (is(dose_era_id, 'subQuery')){
      statement <- paste0(statement, ' dose_era_id = (', as.character(dose_era_id), ')')
    } else {
      statement <- paste0(statement, " dose_era_id = '", dose_era_id,"'")
    }
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(person_id)) {
      statement <- paste0(statement, ' person_id IS NULL')
    } else if (is(person_id, 'subQuery')){
      statement <- paste0(statement, ' person_id = (', as.character(person_id), ')')
    } else {
      statement <- paste0(statement, " person_id = '", person_id,"'")
    }
  }

  if (!missing(drug_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(drug_concept_id)) {
      statement <- paste0(statement, ' drug_concept_id IS NULL')
    } else if (is(drug_concept_id, 'subQuery')){
      statement <- paste0(statement, ' drug_concept_id = (', as.character(drug_concept_id), ')')
    } else {
      statement <- paste0(statement, " drug_concept_id = '", drug_concept_id,"'")
    }
  }

  if (!missing(unit_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(unit_concept_id)) {
      statement <- paste0(statement, ' unit_concept_id IS NULL')
    } else if (is(unit_concept_id, 'subQuery')){
      statement <- paste0(statement, ' unit_concept_id = (', as.character(unit_concept_id), ')')
    } else {
      statement <- paste0(statement, " unit_concept_id = '", unit_concept_id,"'")
    }
  }

  if (!missing(dose_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(dose_value)) {
      statement <- paste0(statement, ' dose_value IS NULL')
    } else if (is(dose_value, 'subQuery')){
      statement <- paste0(statement, ' dose_value = (', as.character(dose_value), ')')
    } else {
      statement <- paste0(statement, " dose_value = '", dose_value,"'")
    }
  }

  if (!missing(dose_era_start_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(dose_era_start_date)) {
      statement <- paste0(statement, ' dose_era_start_date IS NULL')
    } else if (is(dose_era_start_date, 'subQuery')){
      statement <- paste0(statement, ' dose_era_start_date = (', as.character(dose_era_start_date), ')')
    } else {
      statement <- paste0(statement, " dose_era_start_date = '", dose_era_start_date,"'")
    }
  }

  if (!missing(dose_era_end_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(dose_era_end_date)) {
      statement <- paste0(statement, ' dose_era_end_date IS NULL')
    } else if (is(dose_era_end_date, 'subQuery')){
      statement <- paste0(statement, ' dose_era_end_date = (', as.character(dose_era_end_date), ')')
    } else {
      statement <- paste0(statement, " dose_era_end_date = '", dose_era_end_date,"'")
    }
  }

  statement <- paste0(statement, ') != ', rowCount , " THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_count_condition_era <- function(rowCount, condition_era_id, person_id, condition_concept_id, condition_era_start_date, condition_era_end_date, condition_occurrence_count) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect condition_era' AS test, CASE WHEN(SELECT COUNT(*) FROM condition_era WHERE")
  first <- TRUE
  if (!missing(condition_era_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(condition_era_id)) {
      statement <- paste0(statement, ' condition_era_id IS NULL')
    } else if (is(condition_era_id, 'subQuery')){
      statement <- paste0(statement, ' condition_era_id = (', as.character(condition_era_id), ')')
    } else {
      statement <- paste0(statement, " condition_era_id = '", condition_era_id,"'")
    }
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(person_id)) {
      statement <- paste0(statement, ' person_id IS NULL')
    } else if (is(person_id, 'subQuery')){
      statement <- paste0(statement, ' person_id = (', as.character(person_id), ')')
    } else {
      statement <- paste0(statement, " person_id = '", person_id,"'")
    }
  }

  if (!missing(condition_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(condition_concept_id)) {
      statement <- paste0(statement, ' condition_concept_id IS NULL')
    } else if (is(condition_concept_id, 'subQuery')){
      statement <- paste0(statement, ' condition_concept_id = (', as.character(condition_concept_id), ')')
    } else {
      statement <- paste0(statement, " condition_concept_id = '", condition_concept_id,"'")
    }
  }

  if (!missing(condition_era_start_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(condition_era_start_date)) {
      statement <- paste0(statement, ' condition_era_start_date IS NULL')
    } else if (is(condition_era_start_date, 'subQuery')){
      statement <- paste0(statement, ' condition_era_start_date = (', as.character(condition_era_start_date), ')')
    } else {
      statement <- paste0(statement, " condition_era_start_date = '", condition_era_start_date,"'")
    }
  }

  if (!missing(condition_era_end_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(condition_era_end_date)) {
      statement <- paste0(statement, ' condition_era_end_date IS NULL')
    } else if (is(condition_era_end_date, 'subQuery')){
      statement <- paste0(statement, ' condition_era_end_date = (', as.character(condition_era_end_date), ')')
    } else {
      statement <- paste0(statement, " condition_era_end_date = '", condition_era_end_date,"'")
    }
  }

  if (!missing(condition_occurrence_count)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(condition_occurrence_count)) {
      statement <- paste0(statement, ' condition_occurrence_count IS NULL')
    } else if (is(condition_occurrence_count, 'subQuery')){
      statement <- paste0(statement, ' condition_occurrence_count = (', as.character(condition_occurrence_count), ')')
    } else {
      statement <- paste0(statement, " condition_occurrence_count = '", condition_occurrence_count,"'")
    }
  }

  statement <- paste0(statement, ') != ', rowCount , " THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_count_cdm_source <- function(rowCount, cdm_source_name, cdm_source_abbreviation, cdm_holder, source_description, source_documentation_reference, cdm_etl_reference, source_release_date, cdm_release_date, cdm_version, vocabulary_version) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect cdm_source' AS test, CASE WHEN(SELECT COUNT(*) FROM cdm_source WHERE")
  first <- TRUE
  if (!missing(cdm_source_name)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cdm_source_name)) {
      statement <- paste0(statement, ' cdm_source_name IS NULL')
    } else if (is(cdm_source_name, 'subQuery')){
      statement <- paste0(statement, ' cdm_source_name = (', as.character(cdm_source_name), ')')
    } else {
      statement <- paste0(statement, " cdm_source_name = '", cdm_source_name,"'")
    }
  }

  if (!missing(cdm_source_abbreviation)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cdm_source_abbreviation)) {
      statement <- paste0(statement, ' cdm_source_abbreviation IS NULL')
    } else if (is(cdm_source_abbreviation, 'subQuery')){
      statement <- paste0(statement, ' cdm_source_abbreviation = (', as.character(cdm_source_abbreviation), ')')
    } else {
      statement <- paste0(statement, " cdm_source_abbreviation = '", cdm_source_abbreviation,"'")
    }
  }

  if (!missing(cdm_holder)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cdm_holder)) {
      statement <- paste0(statement, ' cdm_holder IS NULL')
    } else if (is(cdm_holder, 'subQuery')){
      statement <- paste0(statement, ' cdm_holder = (', as.character(cdm_holder), ')')
    } else {
      statement <- paste0(statement, " cdm_holder = '", cdm_holder,"'")
    }
  }

  if (!missing(source_description)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(source_description)) {
      statement <- paste0(statement, ' source_description IS NULL')
    } else if (is(source_description, 'subQuery')){
      statement <- paste0(statement, ' source_description = (', as.character(source_description), ')')
    } else {
      statement <- paste0(statement, " source_description = '", source_description,"'")
    }
  }

  if (!missing(source_documentation_reference)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(source_documentation_reference)) {
      statement <- paste0(statement, ' source_documentation_reference IS NULL')
    } else if (is(source_documentation_reference, 'subQuery')){
      statement <- paste0(statement, ' source_documentation_reference = (', as.character(source_documentation_reference), ')')
    } else {
      statement <- paste0(statement, " source_documentation_reference = '", source_documentation_reference,"'")
    }
  }

  if (!missing(cdm_etl_reference)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cdm_etl_reference)) {
      statement <- paste0(statement, ' cdm_etl_reference IS NULL')
    } else if (is(cdm_etl_reference, 'subQuery')){
      statement <- paste0(statement, ' cdm_etl_reference = (', as.character(cdm_etl_reference), ')')
    } else {
      statement <- paste0(statement, " cdm_etl_reference = '", cdm_etl_reference,"'")
    }
  }

  if (!missing(source_release_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(source_release_date)) {
      statement <- paste0(statement, ' source_release_date IS NULL')
    } else if (is(source_release_date, 'subQuery')){
      statement <- paste0(statement, ' source_release_date = (', as.character(source_release_date), ')')
    } else {
      statement <- paste0(statement, " source_release_date = '", source_release_date,"'")
    }
  }

  if (!missing(cdm_release_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cdm_release_date)) {
      statement <- paste0(statement, ' cdm_release_date IS NULL')
    } else if (is(cdm_release_date, 'subQuery')){
      statement <- paste0(statement, ' cdm_release_date = (', as.character(cdm_release_date), ')')
    } else {
      statement <- paste0(statement, " cdm_release_date = '", cdm_release_date,"'")
    }
  }

  if (!missing(cdm_version)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cdm_version)) {
      statement <- paste0(statement, ' cdm_version IS NULL')
    } else if (is(cdm_version, 'subQuery')){
      statement <- paste0(statement, ' cdm_version = (', as.character(cdm_version), ')')
    } else {
      statement <- paste0(statement, " cdm_version = '", cdm_version,"'")
    }
  }

  if (!missing(vocabulary_version)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(vocabulary_version)) {
      statement <- paste0(statement, ' vocabulary_version IS NULL')
    } else if (is(vocabulary_version, 'subQuery')){
      statement <- paste0(statement, ' vocabulary_version = (', as.character(vocabulary_version), ')')
    } else {
      statement <- paste0(statement, " vocabulary_version = '", vocabulary_version,"'")
    }
  }

  statement <- paste0(statement, ') != ', rowCount , " THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_count_cohort <- function(rowCount, cohort_definition_id, subject_id, cohort_start_date, cohort_end_date) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect cohort' AS test, CASE WHEN(SELECT COUNT(*) FROM cohort WHERE")
  first <- TRUE
  if (!missing(cohort_definition_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cohort_definition_id)) {
      statement <- paste0(statement, ' cohort_definition_id IS NULL')
    } else if (is(cohort_definition_id, 'subQuery')){
      statement <- paste0(statement, ' cohort_definition_id = (', as.character(cohort_definition_id), ')')
    } else {
      statement <- paste0(statement, " cohort_definition_id = '", cohort_definition_id,"'")
    }
  }

  if (!missing(subject_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(subject_id)) {
      statement <- paste0(statement, ' subject_id IS NULL')
    } else if (is(subject_id, 'subQuery')){
      statement <- paste0(statement, ' subject_id = (', as.character(subject_id), ')')
    } else {
      statement <- paste0(statement, " subject_id = '", subject_id,"'")
    }
  }

  if (!missing(cohort_start_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cohort_start_date)) {
      statement <- paste0(statement, ' cohort_start_date IS NULL')
    } else if (is(cohort_start_date, 'subQuery')){
      statement <- paste0(statement, ' cohort_start_date = (', as.character(cohort_start_date), ')')
    } else {
      statement <- paste0(statement, " cohort_start_date = '", cohort_start_date,"'")
    }
  }

  if (!missing(cohort_end_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cohort_end_date)) {
      statement <- paste0(statement, ' cohort_end_date IS NULL')
    } else if (is(cohort_end_date, 'subQuery')){
      statement <- paste0(statement, ' cohort_end_date = (', as.character(cohort_end_date), ')')
    } else {
      statement <- paste0(statement, " cohort_end_date = '", cohort_end_date,"'")
    }
  }

  statement <- paste0(statement, ') != ', rowCount , " THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_count_cohort_definition <- function(rowCount, cohort_definition_id, cohort_definition_name, cohort_definition_description, definition_type_concept_id, cohort_definition_syntax, subject_concept_id, cohort_instantiation_date) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect cohort_definition' AS test, CASE WHEN(SELECT COUNT(*) FROM cohort_definition WHERE")
  first <- TRUE
  if (!missing(cohort_definition_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cohort_definition_id)) {
      statement <- paste0(statement, ' cohort_definition_id IS NULL')
    } else if (is(cohort_definition_id, 'subQuery')){
      statement <- paste0(statement, ' cohort_definition_id = (', as.character(cohort_definition_id), ')')
    } else {
      statement <- paste0(statement, " cohort_definition_id = '", cohort_definition_id,"'")
    }
  }

  if (!missing(cohort_definition_name)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cohort_definition_name)) {
      statement <- paste0(statement, ' cohort_definition_name IS NULL')
    } else if (is(cohort_definition_name, 'subQuery')){
      statement <- paste0(statement, ' cohort_definition_name = (', as.character(cohort_definition_name), ')')
    } else {
      statement <- paste0(statement, " cohort_definition_name = '", cohort_definition_name,"'")
    }
  }

  if (!missing(cohort_definition_description)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cohort_definition_description)) {
      statement <- paste0(statement, ' cohort_definition_description IS NULL')
    } else if (is(cohort_definition_description, 'subQuery')){
      statement <- paste0(statement, ' cohort_definition_description = (', as.character(cohort_definition_description), ')')
    } else {
      statement <- paste0(statement, " cohort_definition_description = '", cohort_definition_description,"'")
    }
  }

  if (!missing(definition_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(definition_type_concept_id)) {
      statement <- paste0(statement, ' definition_type_concept_id IS NULL')
    } else if (is(definition_type_concept_id, 'subQuery')){
      statement <- paste0(statement, ' definition_type_concept_id = (', as.character(definition_type_concept_id), ')')
    } else {
      statement <- paste0(statement, " definition_type_concept_id = '", definition_type_concept_id,"'")
    }
  }

  if (!missing(cohort_definition_syntax)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cohort_definition_syntax)) {
      statement <- paste0(statement, ' cohort_definition_syntax IS NULL')
    } else if (is(cohort_definition_syntax, 'subQuery')){
      statement <- paste0(statement, ' cohort_definition_syntax = (', as.character(cohort_definition_syntax), ')')
    } else {
      statement <- paste0(statement, " cohort_definition_syntax = '", cohort_definition_syntax,"'")
    }
  }

  if (!missing(subject_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(subject_concept_id)) {
      statement <- paste0(statement, ' subject_concept_id IS NULL')
    } else if (is(subject_concept_id, 'subQuery')){
      statement <- paste0(statement, ' subject_concept_id = (', as.character(subject_concept_id), ')')
    } else {
      statement <- paste0(statement, " subject_concept_id = '", subject_concept_id,"'")
    }
  }

  if (!missing(cohort_instantiation_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cohort_instantiation_date)) {
      statement <- paste0(statement, ' cohort_instantiation_date IS NULL')
    } else if (is(cohort_instantiation_date, 'subQuery')){
      statement <- paste0(statement, ' cohort_instantiation_date = (', as.character(cohort_instantiation_date), ')')
    } else {
      statement <- paste0(statement, " cohort_instantiation_date = '", cohort_instantiation_date,"'")
    }
  }

  statement <- paste0(statement, ') != ', rowCount , " THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_count_cohort_attribute <- function(rowCount, cohort_definition_id, cohort_start_date, cohort_end_date, subject_id, attribute_definition_id, value_as_number, value_as_concept_id) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect cohort_attribute' AS test, CASE WHEN(SELECT COUNT(*) FROM cohort_attribute WHERE")
  first <- TRUE
  if (!missing(cohort_definition_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cohort_definition_id)) {
      statement <- paste0(statement, ' cohort_definition_id IS NULL')
    } else if (is(cohort_definition_id, 'subQuery')){
      statement <- paste0(statement, ' cohort_definition_id = (', as.character(cohort_definition_id), ')')
    } else {
      statement <- paste0(statement, " cohort_definition_id = '", cohort_definition_id,"'")
    }
  }

  if (!missing(cohort_start_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cohort_start_date)) {
      statement <- paste0(statement, ' cohort_start_date IS NULL')
    } else if (is(cohort_start_date, 'subQuery')){
      statement <- paste0(statement, ' cohort_start_date = (', as.character(cohort_start_date), ')')
    } else {
      statement <- paste0(statement, " cohort_start_date = '", cohort_start_date,"'")
    }
  }

  if (!missing(cohort_end_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cohort_end_date)) {
      statement <- paste0(statement, ' cohort_end_date IS NULL')
    } else if (is(cohort_end_date, 'subQuery')){
      statement <- paste0(statement, ' cohort_end_date = (', as.character(cohort_end_date), ')')
    } else {
      statement <- paste0(statement, " cohort_end_date = '", cohort_end_date,"'")
    }
  }

  if (!missing(subject_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(subject_id)) {
      statement <- paste0(statement, ' subject_id IS NULL')
    } else if (is(subject_id, 'subQuery')){
      statement <- paste0(statement, ' subject_id = (', as.character(subject_id), ')')
    } else {
      statement <- paste0(statement, " subject_id = '", subject_id,"'")
    }
  }

  if (!missing(attribute_definition_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(attribute_definition_id)) {
      statement <- paste0(statement, ' attribute_definition_id IS NULL')
    } else if (is(attribute_definition_id, 'subQuery')){
      statement <- paste0(statement, ' attribute_definition_id = (', as.character(attribute_definition_id), ')')
    } else {
      statement <- paste0(statement, " attribute_definition_id = '", attribute_definition_id,"'")
    }
  }

  if (!missing(value_as_number)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(value_as_number)) {
      statement <- paste0(statement, ' value_as_number IS NULL')
    } else if (is(value_as_number, 'subQuery')){
      statement <- paste0(statement, ' value_as_number = (', as.character(value_as_number), ')')
    } else {
      statement <- paste0(statement, " value_as_number = '", value_as_number,"'")
    }
  }

  if (!missing(value_as_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(value_as_concept_id)) {
      statement <- paste0(statement, ' value_as_concept_id IS NULL')
    } else if (is(value_as_concept_id, 'subQuery')){
      statement <- paste0(statement, ' value_as_concept_id = (', as.character(value_as_concept_id), ')')
    } else {
      statement <- paste0(statement, " value_as_concept_id = '", value_as_concept_id,"'")
    }
  }

  statement <- paste0(statement, ') != ', rowCount , " THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

expect_count_attribute_definition <- function(rowCount, attribute_definition_id, attribute_name, attribute_description, attribute_type_concept_id, attribute_syntax) {
  statement <- paste0("INSERT INTO test_results SELECT ", get("testId", envir = globalenv()), " AS id, '", get("testDescription", envir = globalenv()), "' AS description, 'Expect attribute_definition' AS test, CASE WHEN(SELECT COUNT(*) FROM attribute_definition WHERE")
  first <- TRUE
  if (!missing(attribute_definition_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(attribute_definition_id)) {
      statement <- paste0(statement, ' attribute_definition_id IS NULL')
    } else if (is(attribute_definition_id, 'subQuery')){
      statement <- paste0(statement, ' attribute_definition_id = (', as.character(attribute_definition_id), ')')
    } else {
      statement <- paste0(statement, " attribute_definition_id = '", attribute_definition_id,"'")
    }
  }

  if (!missing(attribute_name)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(attribute_name)) {
      statement <- paste0(statement, ' attribute_name IS NULL')
    } else if (is(attribute_name, 'subQuery')){
      statement <- paste0(statement, ' attribute_name = (', as.character(attribute_name), ')')
    } else {
      statement <- paste0(statement, " attribute_name = '", attribute_name,"'")
    }
  }

  if (!missing(attribute_description)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(attribute_description)) {
      statement <- paste0(statement, ' attribute_description IS NULL')
    } else if (is(attribute_description, 'subQuery')){
      statement <- paste0(statement, ' attribute_description = (', as.character(attribute_description), ')')
    } else {
      statement <- paste0(statement, " attribute_description = '", attribute_description,"'")
    }
  }

  if (!missing(attribute_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(attribute_type_concept_id)) {
      statement <- paste0(statement, ' attribute_type_concept_id IS NULL')
    } else if (is(attribute_type_concept_id, 'subQuery')){
      statement <- paste0(statement, ' attribute_type_concept_id = (', as.character(attribute_type_concept_id), ')')
    } else {
      statement <- paste0(statement, " attribute_type_concept_id = '", attribute_type_concept_id,"'")
    }
  }

  if (!missing(attribute_syntax)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(attribute_syntax)) {
      statement <- paste0(statement, ' attribute_syntax IS NULL')
    } else if (is(attribute_syntax, 'subQuery')){
      statement <- paste0(statement, ' attribute_syntax = (', as.character(attribute_syntax), ')')
    } else {
      statement <- paste0(statement, " attribute_syntax = '", attribute_syntax,"'")
    }
  }

  statement <- paste0(statement, ') != ', rowCount , " THEN 'FAIL' ELSE 'PASS' END AS status")
  if (exists('testNewExpected', where = globalenv()) && get('testNewExpected'))
  {
    assign('testNewExpected', FALSE, envir = globalenv())
    id <- get('testId', envir = globalenv())
    description <- get('testDescription', envir = globalenv())
    comment <- paste0('-- ', id, ': ', description)
    testSql <<- c(testSql, comment)
  }
  testSql <<- c(testSql, statement)
  invisible(statement)
}

lookup_person <- function(fetchField, person_id, person_source_value, gender_concept_id, gender_source_value, year_of_birth, month_of_birth, day_of_birth, time_of_birth, race_concept_id, ethnicity_concept_id, location_id, provider_id, care_site_id, gender_source_concept_id, race_source_value, race_source_concept_id, ethnicity_source_value, ethnicity_source_concept_id) {
  statement <- paste0('SELECT ', fetchField , ' FROM person WHERE')
  first <- TRUE
  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(person_id)) {
      statement <- paste0(statement, ' person_id IS NULL')
    } else if (is(person_id, 'subQuery')){
      statement <- paste0(statement, ' person_id = (', as.character(person_id), ')')
    } else {
      statement <- paste0(statement, " person_id = '", person_id,"'")
    }
  }

  if (!missing(person_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(person_source_value)) {
      statement <- paste0(statement, ' person_source_value IS NULL')
    } else if (is(person_source_value, 'subQuery')){
      statement <- paste0(statement, ' person_source_value = (', as.character(person_source_value), ')')
    } else {
      statement <- paste0(statement, " person_source_value = '", person_source_value,"'")
    }
  }

  if (!missing(gender_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(gender_concept_id)) {
      statement <- paste0(statement, ' gender_concept_id IS NULL')
    } else if (is(gender_concept_id, 'subQuery')){
      statement <- paste0(statement, ' gender_concept_id = (', as.character(gender_concept_id), ')')
    } else {
      statement <- paste0(statement, " gender_concept_id = '", gender_concept_id,"'")
    }
  }

  if (!missing(gender_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(gender_source_value)) {
      statement <- paste0(statement, ' gender_source_value IS NULL')
    } else if (is(gender_source_value, 'subQuery')){
      statement <- paste0(statement, ' gender_source_value = (', as.character(gender_source_value), ')')
    } else {
      statement <- paste0(statement, " gender_source_value = '", gender_source_value,"'")
    }
  }

  if (!missing(year_of_birth)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(year_of_birth)) {
      statement <- paste0(statement, ' year_of_birth IS NULL')
    } else if (is(year_of_birth, 'subQuery')){
      statement <- paste0(statement, ' year_of_birth = (', as.character(year_of_birth), ')')
    } else {
      statement <- paste0(statement, " year_of_birth = '", year_of_birth,"'")
    }
  }

  if (!missing(month_of_birth)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(month_of_birth)) {
      statement <- paste0(statement, ' month_of_birth IS NULL')
    } else if (is(month_of_birth, 'subQuery')){
      statement <- paste0(statement, ' month_of_birth = (', as.character(month_of_birth), ')')
    } else {
      statement <- paste0(statement, " month_of_birth = '", month_of_birth,"'")
    }
  }

  if (!missing(day_of_birth)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(day_of_birth)) {
      statement <- paste0(statement, ' day_of_birth IS NULL')
    } else if (is(day_of_birth, 'subQuery')){
      statement <- paste0(statement, ' day_of_birth = (', as.character(day_of_birth), ')')
    } else {
      statement <- paste0(statement, " day_of_birth = '", day_of_birth,"'")
    }
  }

  if (!missing(time_of_birth)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(time_of_birth)) {
      statement <- paste0(statement, ' time_of_birth IS NULL')
    } else if (is(time_of_birth, 'subQuery')){
      statement <- paste0(statement, ' time_of_birth = (', as.character(time_of_birth), ')')
    } else {
      statement <- paste0(statement, " time_of_birth = '", time_of_birth,"'")
    }
  }

  if (!missing(race_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(race_concept_id)) {
      statement <- paste0(statement, ' race_concept_id IS NULL')
    } else if (is(race_concept_id, 'subQuery')){
      statement <- paste0(statement, ' race_concept_id = (', as.character(race_concept_id), ')')
    } else {
      statement <- paste0(statement, " race_concept_id = '", race_concept_id,"'")
    }
  }

  if (!missing(ethnicity_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(ethnicity_concept_id)) {
      statement <- paste0(statement, ' ethnicity_concept_id IS NULL')
    } else if (is(ethnicity_concept_id, 'subQuery')){
      statement <- paste0(statement, ' ethnicity_concept_id = (', as.character(ethnicity_concept_id), ')')
    } else {
      statement <- paste0(statement, " ethnicity_concept_id = '", ethnicity_concept_id,"'")
    }
  }

  if (!missing(location_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(location_id)) {
      statement <- paste0(statement, ' location_id IS NULL')
    } else if (is(location_id, 'subQuery')){
      statement <- paste0(statement, ' location_id = (', as.character(location_id), ')')
    } else {
      statement <- paste0(statement, " location_id = '", location_id,"'")
    }
  }

  if (!missing(provider_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(provider_id)) {
      statement <- paste0(statement, ' provider_id IS NULL')
    } else if (is(provider_id, 'subQuery')){
      statement <- paste0(statement, ' provider_id = (', as.character(provider_id), ')')
    } else {
      statement <- paste0(statement, " provider_id = '", provider_id,"'")
    }
  }

  if (!missing(care_site_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(care_site_id)) {
      statement <- paste0(statement, ' care_site_id IS NULL')
    } else if (is(care_site_id, 'subQuery')){
      statement <- paste0(statement, ' care_site_id = (', as.character(care_site_id), ')')
    } else {
      statement <- paste0(statement, " care_site_id = '", care_site_id,"'")
    }
  }

  if (!missing(gender_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(gender_source_concept_id)) {
      statement <- paste0(statement, ' gender_source_concept_id IS NULL')
    } else if (is(gender_source_concept_id, 'subQuery')){
      statement <- paste0(statement, ' gender_source_concept_id = (', as.character(gender_source_concept_id), ')')
    } else {
      statement <- paste0(statement, " gender_source_concept_id = '", gender_source_concept_id,"'")
    }
  }

  if (!missing(race_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(race_source_value)) {
      statement <- paste0(statement, ' race_source_value IS NULL')
    } else if (is(race_source_value, 'subQuery')){
      statement <- paste0(statement, ' race_source_value = (', as.character(race_source_value), ')')
    } else {
      statement <- paste0(statement, " race_source_value = '", race_source_value,"'")
    }
  }

  if (!missing(race_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(race_source_concept_id)) {
      statement <- paste0(statement, ' race_source_concept_id IS NULL')
    } else if (is(race_source_concept_id, 'subQuery')){
      statement <- paste0(statement, ' race_source_concept_id = (', as.character(race_source_concept_id), ')')
    } else {
      statement <- paste0(statement, " race_source_concept_id = '", race_source_concept_id,"'")
    }
  }

  if (!missing(ethnicity_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(ethnicity_source_value)) {
      statement <- paste0(statement, ' ethnicity_source_value IS NULL')
    } else if (is(ethnicity_source_value, 'subQuery')){
      statement <- paste0(statement, ' ethnicity_source_value = (', as.character(ethnicity_source_value), ')')
    } else {
      statement <- paste0(statement, " ethnicity_source_value = '", ethnicity_source_value,"'")
    }
  }

  if (!missing(ethnicity_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(ethnicity_source_concept_id)) {
      statement <- paste0(statement, ' ethnicity_source_concept_id IS NULL')
    } else if (is(ethnicity_source_concept_id, 'subQuery')){
      statement <- paste0(statement, ' ethnicity_source_concept_id = (', as.character(ethnicity_source_concept_id), ')')
    } else {
      statement <- paste0(statement, " ethnicity_source_concept_id = '", ethnicity_source_concept_id,"'")
    }
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_observation_period <- function(fetchField, observation_period_id, person_id, observation_period_start_date, observation_period_end_date, period_type_concept_id) {
  statement <- paste0('SELECT ', fetchField , ' FROM observation_period WHERE')
  first <- TRUE
  if (!missing(observation_period_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(observation_period_id)) {
      statement <- paste0(statement, ' observation_period_id IS NULL')
    } else if (is(observation_period_id, 'subQuery')){
      statement <- paste0(statement, ' observation_period_id = (', as.character(observation_period_id), ')')
    } else {
      statement <- paste0(statement, " observation_period_id = '", observation_period_id,"'")
    }
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(person_id)) {
      statement <- paste0(statement, ' person_id IS NULL')
    } else if (is(person_id, 'subQuery')){
      statement <- paste0(statement, ' person_id = (', as.character(person_id), ')')
    } else {
      statement <- paste0(statement, " person_id = '", person_id,"'")
    }
  }

  if (!missing(observation_period_start_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(observation_period_start_date)) {
      statement <- paste0(statement, ' observation_period_start_date IS NULL')
    } else if (is(observation_period_start_date, 'subQuery')){
      statement <- paste0(statement, ' observation_period_start_date = (', as.character(observation_period_start_date), ')')
    } else {
      statement <- paste0(statement, " observation_period_start_date = '", observation_period_start_date,"'")
    }
  }

  if (!missing(observation_period_end_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(observation_period_end_date)) {
      statement <- paste0(statement, ' observation_period_end_date IS NULL')
    } else if (is(observation_period_end_date, 'subQuery')){
      statement <- paste0(statement, ' observation_period_end_date = (', as.character(observation_period_end_date), ')')
    } else {
      statement <- paste0(statement, " observation_period_end_date = '", observation_period_end_date,"'")
    }
  }

  if (!missing(period_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(period_type_concept_id)) {
      statement <- paste0(statement, ' period_type_concept_id IS NULL')
    } else if (is(period_type_concept_id, 'subQuery')){
      statement <- paste0(statement, ' period_type_concept_id = (', as.character(period_type_concept_id), ')')
    } else {
      statement <- paste0(statement, " period_type_concept_id = '", period_type_concept_id,"'")
    }
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_visit_occurrence <- function(fetchField, visit_occurrence_id, person_id, visit_concept_id, visit_start_date, visit_start_time, visit_end_date, visit_end_time, visit_type_concept_id, provider_id, care_site_id, visit_source_value, visit_source_concept_id) {
  statement <- paste0('SELECT ', fetchField , ' FROM visit_occurrence WHERE')
  first <- TRUE
  if (!missing(visit_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(visit_occurrence_id)) {
      statement <- paste0(statement, ' visit_occurrence_id IS NULL')
    } else if (is(visit_occurrence_id, 'subQuery')){
      statement <- paste0(statement, ' visit_occurrence_id = (', as.character(visit_occurrence_id), ')')
    } else {
      statement <- paste0(statement, " visit_occurrence_id = '", visit_occurrence_id,"'")
    }
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(person_id)) {
      statement <- paste0(statement, ' person_id IS NULL')
    } else if (is(person_id, 'subQuery')){
      statement <- paste0(statement, ' person_id = (', as.character(person_id), ')')
    } else {
      statement <- paste0(statement, " person_id = '", person_id,"'")
    }
  }

  if (!missing(visit_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(visit_concept_id)) {
      statement <- paste0(statement, ' visit_concept_id IS NULL')
    } else if (is(visit_concept_id, 'subQuery')){
      statement <- paste0(statement, ' visit_concept_id = (', as.character(visit_concept_id), ')')
    } else {
      statement <- paste0(statement, " visit_concept_id = '", visit_concept_id,"'")
    }
  }

  if (!missing(visit_start_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(visit_start_date)) {
      statement <- paste0(statement, ' visit_start_date IS NULL')
    } else if (is(visit_start_date, 'subQuery')){
      statement <- paste0(statement, ' visit_start_date = (', as.character(visit_start_date), ')')
    } else {
      statement <- paste0(statement, " visit_start_date = '", visit_start_date,"'")
    }
  }

  if (!missing(visit_start_time)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(visit_start_time)) {
      statement <- paste0(statement, ' visit_start_time IS NULL')
    } else if (is(visit_start_time, 'subQuery')){
      statement <- paste0(statement, ' visit_start_time = (', as.character(visit_start_time), ')')
    } else {
      statement <- paste0(statement, " visit_start_time = '", visit_start_time,"'")
    }
  }

  if (!missing(visit_end_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(visit_end_date)) {
      statement <- paste0(statement, ' visit_end_date IS NULL')
    } else if (is(visit_end_date, 'subQuery')){
      statement <- paste0(statement, ' visit_end_date = (', as.character(visit_end_date), ')')
    } else {
      statement <- paste0(statement, " visit_end_date = '", visit_end_date,"'")
    }
  }

  if (!missing(visit_end_time)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(visit_end_time)) {
      statement <- paste0(statement, ' visit_end_time IS NULL')
    } else if (is(visit_end_time, 'subQuery')){
      statement <- paste0(statement, ' visit_end_time = (', as.character(visit_end_time), ')')
    } else {
      statement <- paste0(statement, " visit_end_time = '", visit_end_time,"'")
    }
  }

  if (!missing(visit_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(visit_type_concept_id)) {
      statement <- paste0(statement, ' visit_type_concept_id IS NULL')
    } else if (is(visit_type_concept_id, 'subQuery')){
      statement <- paste0(statement, ' visit_type_concept_id = (', as.character(visit_type_concept_id), ')')
    } else {
      statement <- paste0(statement, " visit_type_concept_id = '", visit_type_concept_id,"'")
    }
  }

  if (!missing(provider_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(provider_id)) {
      statement <- paste0(statement, ' provider_id IS NULL')
    } else if (is(provider_id, 'subQuery')){
      statement <- paste0(statement, ' provider_id = (', as.character(provider_id), ')')
    } else {
      statement <- paste0(statement, " provider_id = '", provider_id,"'")
    }
  }

  if (!missing(care_site_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(care_site_id)) {
      statement <- paste0(statement, ' care_site_id IS NULL')
    } else if (is(care_site_id, 'subQuery')){
      statement <- paste0(statement, ' care_site_id = (', as.character(care_site_id), ')')
    } else {
      statement <- paste0(statement, " care_site_id = '", care_site_id,"'")
    }
  }

  if (!missing(visit_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(visit_source_value)) {
      statement <- paste0(statement, ' visit_source_value IS NULL')
    } else if (is(visit_source_value, 'subQuery')){
      statement <- paste0(statement, ' visit_source_value = (', as.character(visit_source_value), ')')
    } else {
      statement <- paste0(statement, " visit_source_value = '", visit_source_value,"'")
    }
  }

  if (!missing(visit_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(visit_source_concept_id)) {
      statement <- paste0(statement, ' visit_source_concept_id IS NULL')
    } else if (is(visit_source_concept_id, 'subQuery')){
      statement <- paste0(statement, ' visit_source_concept_id = (', as.character(visit_source_concept_id), ')')
    } else {
      statement <- paste0(statement, " visit_source_concept_id = '", visit_source_concept_id,"'")
    }
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_death <- function(fetchField, person_id, death_date, death_type_concept_id, cause_concept_id, cause_source_value, cause_source_concept_id) {
  statement <- paste0('SELECT ', fetchField , ' FROM death WHERE')
  first <- TRUE
  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(person_id)) {
      statement <- paste0(statement, ' person_id IS NULL')
    } else if (is(person_id, 'subQuery')){
      statement <- paste0(statement, ' person_id = (', as.character(person_id), ')')
    } else {
      statement <- paste0(statement, " person_id = '", person_id,"'")
    }
  }

  if (!missing(death_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(death_date)) {
      statement <- paste0(statement, ' death_date IS NULL')
    } else if (is(death_date, 'subQuery')){
      statement <- paste0(statement, ' death_date = (', as.character(death_date), ')')
    } else {
      statement <- paste0(statement, " death_date = '", death_date,"'")
    }
  }

  if (!missing(death_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(death_type_concept_id)) {
      statement <- paste0(statement, ' death_type_concept_id IS NULL')
    } else if (is(death_type_concept_id, 'subQuery')){
      statement <- paste0(statement, ' death_type_concept_id = (', as.character(death_type_concept_id), ')')
    } else {
      statement <- paste0(statement, " death_type_concept_id = '", death_type_concept_id,"'")
    }
  }

  if (!missing(cause_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cause_concept_id)) {
      statement <- paste0(statement, ' cause_concept_id IS NULL')
    } else if (is(cause_concept_id, 'subQuery')){
      statement <- paste0(statement, ' cause_concept_id = (', as.character(cause_concept_id), ')')
    } else {
      statement <- paste0(statement, " cause_concept_id = '", cause_concept_id,"'")
    }
  }

  if (!missing(cause_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cause_source_value)) {
      statement <- paste0(statement, ' cause_source_value IS NULL')
    } else if (is(cause_source_value, 'subQuery')){
      statement <- paste0(statement, ' cause_source_value = (', as.character(cause_source_value), ')')
    } else {
      statement <- paste0(statement, " cause_source_value = '", cause_source_value,"'")
    }
  }

  if (!missing(cause_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cause_source_concept_id)) {
      statement <- paste0(statement, ' cause_source_concept_id IS NULL')
    } else if (is(cause_source_concept_id, 'subQuery')){
      statement <- paste0(statement, ' cause_source_concept_id = (', as.character(cause_source_concept_id), ')')
    } else {
      statement <- paste0(statement, " cause_source_concept_id = '", cause_source_concept_id,"'")
    }
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_condition_occurrence <- function(fetchField, condition_occurrence_id, person_id, condition_start_date, condition_end_date, condition_concept_id, condition_source_value, condition_type_concept_id, stop_reason, provider_id, visit_occurrence_id, condition_source_concept_id) {
  statement <- paste0('SELECT ', fetchField , ' FROM condition_occurrence WHERE')
  first <- TRUE
  if (!missing(condition_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(condition_occurrence_id)) {
      statement <- paste0(statement, ' condition_occurrence_id IS NULL')
    } else if (is(condition_occurrence_id, 'subQuery')){
      statement <- paste0(statement, ' condition_occurrence_id = (', as.character(condition_occurrence_id), ')')
    } else {
      statement <- paste0(statement, " condition_occurrence_id = '", condition_occurrence_id,"'")
    }
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(person_id)) {
      statement <- paste0(statement, ' person_id IS NULL')
    } else if (is(person_id, 'subQuery')){
      statement <- paste0(statement, ' person_id = (', as.character(person_id), ')')
    } else {
      statement <- paste0(statement, " person_id = '", person_id,"'")
    }
  }

  if (!missing(condition_start_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(condition_start_date)) {
      statement <- paste0(statement, ' condition_start_date IS NULL')
    } else if (is(condition_start_date, 'subQuery')){
      statement <- paste0(statement, ' condition_start_date = (', as.character(condition_start_date), ')')
    } else {
      statement <- paste0(statement, " condition_start_date = '", condition_start_date,"'")
    }
  }

  if (!missing(condition_end_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(condition_end_date)) {
      statement <- paste0(statement, ' condition_end_date IS NULL')
    } else if (is(condition_end_date, 'subQuery')){
      statement <- paste0(statement, ' condition_end_date = (', as.character(condition_end_date), ')')
    } else {
      statement <- paste0(statement, " condition_end_date = '", condition_end_date,"'")
    }
  }

  if (!missing(condition_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(condition_concept_id)) {
      statement <- paste0(statement, ' condition_concept_id IS NULL')
    } else if (is(condition_concept_id, 'subQuery')){
      statement <- paste0(statement, ' condition_concept_id = (', as.character(condition_concept_id), ')')
    } else {
      statement <- paste0(statement, " condition_concept_id = '", condition_concept_id,"'")
    }
  }

  if (!missing(condition_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(condition_source_value)) {
      statement <- paste0(statement, ' condition_source_value IS NULL')
    } else if (is(condition_source_value, 'subQuery')){
      statement <- paste0(statement, ' condition_source_value = (', as.character(condition_source_value), ')')
    } else {
      statement <- paste0(statement, " condition_source_value = '", condition_source_value,"'")
    }
  }

  if (!missing(condition_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(condition_type_concept_id)) {
      statement <- paste0(statement, ' condition_type_concept_id IS NULL')
    } else if (is(condition_type_concept_id, 'subQuery')){
      statement <- paste0(statement, ' condition_type_concept_id = (', as.character(condition_type_concept_id), ')')
    } else {
      statement <- paste0(statement, " condition_type_concept_id = '", condition_type_concept_id,"'")
    }
  }

  if (!missing(stop_reason)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(stop_reason)) {
      statement <- paste0(statement, ' stop_reason IS NULL')
    } else if (is(stop_reason, 'subQuery')){
      statement <- paste0(statement, ' stop_reason = (', as.character(stop_reason), ')')
    } else {
      statement <- paste0(statement, " stop_reason = '", stop_reason,"'")
    }
  }

  if (!missing(provider_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(provider_id)) {
      statement <- paste0(statement, ' provider_id IS NULL')
    } else if (is(provider_id, 'subQuery')){
      statement <- paste0(statement, ' provider_id = (', as.character(provider_id), ')')
    } else {
      statement <- paste0(statement, " provider_id = '", provider_id,"'")
    }
  }

  if (!missing(visit_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(visit_occurrence_id)) {
      statement <- paste0(statement, ' visit_occurrence_id IS NULL')
    } else if (is(visit_occurrence_id, 'subQuery')){
      statement <- paste0(statement, ' visit_occurrence_id = (', as.character(visit_occurrence_id), ')')
    } else {
      statement <- paste0(statement, " visit_occurrence_id = '", visit_occurrence_id,"'")
    }
  }

  if (!missing(condition_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(condition_source_concept_id)) {
      statement <- paste0(statement, ' condition_source_concept_id IS NULL')
    } else if (is(condition_source_concept_id, 'subQuery')){
      statement <- paste0(statement, ' condition_source_concept_id = (', as.character(condition_source_concept_id), ')')
    } else {
      statement <- paste0(statement, " condition_source_concept_id = '", condition_source_concept_id,"'")
    }
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_drug_exposure <- function(fetchField, drug_exposure_id, person_id, drug_source_concept_id, drug_concept_id, drug_source_value, quantity, days_supply, drug_exposure_start_date, drug_exposure_end_date, dose_unit_concept_id, dose_unit_source_value, effective_drug_dose, drug_type_concept_id, sig, stop_reason, refills, route_concept_id, lot_number, provider_id, visit_occurrence_id, route_source_value) {
  statement <- paste0('SELECT ', fetchField , ' FROM drug_exposure WHERE')
  first <- TRUE
  if (!missing(drug_exposure_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(drug_exposure_id)) {
      statement <- paste0(statement, ' drug_exposure_id IS NULL')
    } else if (is(drug_exposure_id, 'subQuery')){
      statement <- paste0(statement, ' drug_exposure_id = (', as.character(drug_exposure_id), ')')
    } else {
      statement <- paste0(statement, " drug_exposure_id = '", drug_exposure_id,"'")
    }
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(person_id)) {
      statement <- paste0(statement, ' person_id IS NULL')
    } else if (is(person_id, 'subQuery')){
      statement <- paste0(statement, ' person_id = (', as.character(person_id), ')')
    } else {
      statement <- paste0(statement, " person_id = '", person_id,"'")
    }
  }

  if (!missing(drug_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(drug_source_concept_id)) {
      statement <- paste0(statement, ' drug_source_concept_id IS NULL')
    } else if (is(drug_source_concept_id, 'subQuery')){
      statement <- paste0(statement, ' drug_source_concept_id = (', as.character(drug_source_concept_id), ')')
    } else {
      statement <- paste0(statement, " drug_source_concept_id = '", drug_source_concept_id,"'")
    }
  }

  if (!missing(drug_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(drug_concept_id)) {
      statement <- paste0(statement, ' drug_concept_id IS NULL')
    } else if (is(drug_concept_id, 'subQuery')){
      statement <- paste0(statement, ' drug_concept_id = (', as.character(drug_concept_id), ')')
    } else {
      statement <- paste0(statement, " drug_concept_id = '", drug_concept_id,"'")
    }
  }

  if (!missing(drug_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(drug_source_value)) {
      statement <- paste0(statement, ' drug_source_value IS NULL')
    } else if (is(drug_source_value, 'subQuery')){
      statement <- paste0(statement, ' drug_source_value = (', as.character(drug_source_value), ')')
    } else {
      statement <- paste0(statement, " drug_source_value = '", drug_source_value,"'")
    }
  }

  if (!missing(quantity)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(quantity)) {
      statement <- paste0(statement, ' quantity IS NULL')
    } else if (is(quantity, 'subQuery')){
      statement <- paste0(statement, ' quantity = (', as.character(quantity), ')')
    } else {
      statement <- paste0(statement, " quantity = '", quantity,"'")
    }
  }

  if (!missing(days_supply)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(days_supply)) {
      statement <- paste0(statement, ' days_supply IS NULL')
    } else if (is(days_supply, 'subQuery')){
      statement <- paste0(statement, ' days_supply = (', as.character(days_supply), ')')
    } else {
      statement <- paste0(statement, " days_supply = '", days_supply,"'")
    }
  }

  if (!missing(drug_exposure_start_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(drug_exposure_start_date)) {
      statement <- paste0(statement, ' drug_exposure_start_date IS NULL')
    } else if (is(drug_exposure_start_date, 'subQuery')){
      statement <- paste0(statement, ' drug_exposure_start_date = (', as.character(drug_exposure_start_date), ')')
    } else {
      statement <- paste0(statement, " drug_exposure_start_date = '", drug_exposure_start_date,"'")
    }
  }

  if (!missing(drug_exposure_end_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(drug_exposure_end_date)) {
      statement <- paste0(statement, ' drug_exposure_end_date IS NULL')
    } else if (is(drug_exposure_end_date, 'subQuery')){
      statement <- paste0(statement, ' drug_exposure_end_date = (', as.character(drug_exposure_end_date), ')')
    } else {
      statement <- paste0(statement, " drug_exposure_end_date = '", drug_exposure_end_date,"'")
    }
  }

  if (!missing(dose_unit_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(dose_unit_concept_id)) {
      statement <- paste0(statement, ' dose_unit_concept_id IS NULL')
    } else if (is(dose_unit_concept_id, 'subQuery')){
      statement <- paste0(statement, ' dose_unit_concept_id = (', as.character(dose_unit_concept_id), ')')
    } else {
      statement <- paste0(statement, " dose_unit_concept_id = '", dose_unit_concept_id,"'")
    }
  }

  if (!missing(dose_unit_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(dose_unit_source_value)) {
      statement <- paste0(statement, ' dose_unit_source_value IS NULL')
    } else if (is(dose_unit_source_value, 'subQuery')){
      statement <- paste0(statement, ' dose_unit_source_value = (', as.character(dose_unit_source_value), ')')
    } else {
      statement <- paste0(statement, " dose_unit_source_value = '", dose_unit_source_value,"'")
    }
  }

  if (!missing(effective_drug_dose)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(effective_drug_dose)) {
      statement <- paste0(statement, ' effective_drug_dose IS NULL')
    } else if (is(effective_drug_dose, 'subQuery')){
      statement <- paste0(statement, ' effective_drug_dose = (', as.character(effective_drug_dose), ')')
    } else {
      statement <- paste0(statement, " effective_drug_dose = '", effective_drug_dose,"'")
    }
  }

  if (!missing(drug_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(drug_type_concept_id)) {
      statement <- paste0(statement, ' drug_type_concept_id IS NULL')
    } else if (is(drug_type_concept_id, 'subQuery')){
      statement <- paste0(statement, ' drug_type_concept_id = (', as.character(drug_type_concept_id), ')')
    } else {
      statement <- paste0(statement, " drug_type_concept_id = '", drug_type_concept_id,"'")
    }
  }

  if (!missing(sig)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(sig)) {
      statement <- paste0(statement, ' sig IS NULL')
    } else if (is(sig, 'subQuery')){
      statement <- paste0(statement, ' sig = (', as.character(sig), ')')
    } else {
      statement <- paste0(statement, " sig = '", sig,"'")
    }
  }

  if (!missing(stop_reason)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(stop_reason)) {
      statement <- paste0(statement, ' stop_reason IS NULL')
    } else if (is(stop_reason, 'subQuery')){
      statement <- paste0(statement, ' stop_reason = (', as.character(stop_reason), ')')
    } else {
      statement <- paste0(statement, " stop_reason = '", stop_reason,"'")
    }
  }

  if (!missing(refills)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(refills)) {
      statement <- paste0(statement, ' refills IS NULL')
    } else if (is(refills, 'subQuery')){
      statement <- paste0(statement, ' refills = (', as.character(refills), ')')
    } else {
      statement <- paste0(statement, " refills = '", refills,"'")
    }
  }

  if (!missing(route_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(route_concept_id)) {
      statement <- paste0(statement, ' route_concept_id IS NULL')
    } else if (is(route_concept_id, 'subQuery')){
      statement <- paste0(statement, ' route_concept_id = (', as.character(route_concept_id), ')')
    } else {
      statement <- paste0(statement, " route_concept_id = '", route_concept_id,"'")
    }
  }

  if (!missing(lot_number)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(lot_number)) {
      statement <- paste0(statement, ' lot_number IS NULL')
    } else if (is(lot_number, 'subQuery')){
      statement <- paste0(statement, ' lot_number = (', as.character(lot_number), ')')
    } else {
      statement <- paste0(statement, " lot_number = '", lot_number,"'")
    }
  }

  if (!missing(provider_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(provider_id)) {
      statement <- paste0(statement, ' provider_id IS NULL')
    } else if (is(provider_id, 'subQuery')){
      statement <- paste0(statement, ' provider_id = (', as.character(provider_id), ')')
    } else {
      statement <- paste0(statement, " provider_id = '", provider_id,"'")
    }
  }

  if (!missing(visit_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(visit_occurrence_id)) {
      statement <- paste0(statement, ' visit_occurrence_id IS NULL')
    } else if (is(visit_occurrence_id, 'subQuery')){
      statement <- paste0(statement, ' visit_occurrence_id = (', as.character(visit_occurrence_id), ')')
    } else {
      statement <- paste0(statement, " visit_occurrence_id = '", visit_occurrence_id,"'")
    }
  }

  if (!missing(route_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(route_source_value)) {
      statement <- paste0(statement, ' route_source_value IS NULL')
    } else if (is(route_source_value, 'subQuery')){
      statement <- paste0(statement, ' route_source_value = (', as.character(route_source_value), ')')
    } else {
      statement <- paste0(statement, " route_source_value = '", route_source_value,"'")
    }
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_drug_era <- function(fetchField, drug_era_id, person_id, drug_concept_id, drug_era_start_date, drug_era_end_date, drug_exposure_count, gap_days) {
  statement <- paste0('SELECT ', fetchField , ' FROM drug_era WHERE')
  first <- TRUE
  if (!missing(drug_era_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(drug_era_id)) {
      statement <- paste0(statement, ' drug_era_id IS NULL')
    } else if (is(drug_era_id, 'subQuery')){
      statement <- paste0(statement, ' drug_era_id = (', as.character(drug_era_id), ')')
    } else {
      statement <- paste0(statement, " drug_era_id = '", drug_era_id,"'")
    }
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(person_id)) {
      statement <- paste0(statement, ' person_id IS NULL')
    } else if (is(person_id, 'subQuery')){
      statement <- paste0(statement, ' person_id = (', as.character(person_id), ')')
    } else {
      statement <- paste0(statement, " person_id = '", person_id,"'")
    }
  }

  if (!missing(drug_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(drug_concept_id)) {
      statement <- paste0(statement, ' drug_concept_id IS NULL')
    } else if (is(drug_concept_id, 'subQuery')){
      statement <- paste0(statement, ' drug_concept_id = (', as.character(drug_concept_id), ')')
    } else {
      statement <- paste0(statement, " drug_concept_id = '", drug_concept_id,"'")
    }
  }

  if (!missing(drug_era_start_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(drug_era_start_date)) {
      statement <- paste0(statement, ' drug_era_start_date IS NULL')
    } else if (is(drug_era_start_date, 'subQuery')){
      statement <- paste0(statement, ' drug_era_start_date = (', as.character(drug_era_start_date), ')')
    } else {
      statement <- paste0(statement, " drug_era_start_date = '", drug_era_start_date,"'")
    }
  }

  if (!missing(drug_era_end_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(drug_era_end_date)) {
      statement <- paste0(statement, ' drug_era_end_date IS NULL')
    } else if (is(drug_era_end_date, 'subQuery')){
      statement <- paste0(statement, ' drug_era_end_date = (', as.character(drug_era_end_date), ')')
    } else {
      statement <- paste0(statement, " drug_era_end_date = '", drug_era_end_date,"'")
    }
  }

  if (!missing(drug_exposure_count)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(drug_exposure_count)) {
      statement <- paste0(statement, ' drug_exposure_count IS NULL')
    } else if (is(drug_exposure_count, 'subQuery')){
      statement <- paste0(statement, ' drug_exposure_count = (', as.character(drug_exposure_count), ')')
    } else {
      statement <- paste0(statement, " drug_exposure_count = '", drug_exposure_count,"'")
    }
  }

  if (!missing(gap_days)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(gap_days)) {
      statement <- paste0(statement, ' gap_days IS NULL')
    } else if (is(gap_days, 'subQuery')){
      statement <- paste0(statement, ' gap_days = (', as.character(gap_days), ')')
    } else {
      statement <- paste0(statement, " gap_days = '", gap_days,"'")
    }
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_measurement <- function(fetchField, measurement_id, person_id, value_as_number, measurement_concept_id, measurement_source_value, measurement_date, unit_concept_id, unit_source_value, measurement_time, measurement_type_concept_id, operator_concept_id, value_as_concept_id, range_low, range_high, provider_id, visit_occurrence_id, measurement_source_concept_id, value_source_value) {
  statement <- paste0('SELECT ', fetchField , ' FROM measurement WHERE')
  first <- TRUE
  if (!missing(measurement_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(measurement_id)) {
      statement <- paste0(statement, ' measurement_id IS NULL')
    } else if (is(measurement_id, 'subQuery')){
      statement <- paste0(statement, ' measurement_id = (', as.character(measurement_id), ')')
    } else {
      statement <- paste0(statement, " measurement_id = '", measurement_id,"'")
    }
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(person_id)) {
      statement <- paste0(statement, ' person_id IS NULL')
    } else if (is(person_id, 'subQuery')){
      statement <- paste0(statement, ' person_id = (', as.character(person_id), ')')
    } else {
      statement <- paste0(statement, " person_id = '", person_id,"'")
    }
  }

  if (!missing(value_as_number)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(value_as_number)) {
      statement <- paste0(statement, ' value_as_number IS NULL')
    } else if (is(value_as_number, 'subQuery')){
      statement <- paste0(statement, ' value_as_number = (', as.character(value_as_number), ')')
    } else {
      statement <- paste0(statement, " value_as_number = '", value_as_number,"'")
    }
  }

  if (!missing(measurement_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(measurement_concept_id)) {
      statement <- paste0(statement, ' measurement_concept_id IS NULL')
    } else if (is(measurement_concept_id, 'subQuery')){
      statement <- paste0(statement, ' measurement_concept_id = (', as.character(measurement_concept_id), ')')
    } else {
      statement <- paste0(statement, " measurement_concept_id = '", measurement_concept_id,"'")
    }
  }

  if (!missing(measurement_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(measurement_source_value)) {
      statement <- paste0(statement, ' measurement_source_value IS NULL')
    } else if (is(measurement_source_value, 'subQuery')){
      statement <- paste0(statement, ' measurement_source_value = (', as.character(measurement_source_value), ')')
    } else {
      statement <- paste0(statement, " measurement_source_value = '", measurement_source_value,"'")
    }
  }

  if (!missing(measurement_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(measurement_date)) {
      statement <- paste0(statement, ' measurement_date IS NULL')
    } else if (is(measurement_date, 'subQuery')){
      statement <- paste0(statement, ' measurement_date = (', as.character(measurement_date), ')')
    } else {
      statement <- paste0(statement, " measurement_date = '", measurement_date,"'")
    }
  }

  if (!missing(unit_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(unit_concept_id)) {
      statement <- paste0(statement, ' unit_concept_id IS NULL')
    } else if (is(unit_concept_id, 'subQuery')){
      statement <- paste0(statement, ' unit_concept_id = (', as.character(unit_concept_id), ')')
    } else {
      statement <- paste0(statement, " unit_concept_id = '", unit_concept_id,"'")
    }
  }

  if (!missing(unit_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(unit_source_value)) {
      statement <- paste0(statement, ' unit_source_value IS NULL')
    } else if (is(unit_source_value, 'subQuery')){
      statement <- paste0(statement, ' unit_source_value = (', as.character(unit_source_value), ')')
    } else {
      statement <- paste0(statement, " unit_source_value = '", unit_source_value,"'")
    }
  }

  if (!missing(measurement_time)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(measurement_time)) {
      statement <- paste0(statement, ' measurement_time IS NULL')
    } else if (is(measurement_time, 'subQuery')){
      statement <- paste0(statement, ' measurement_time = (', as.character(measurement_time), ')')
    } else {
      statement <- paste0(statement, " measurement_time = '", measurement_time,"'")
    }
  }

  if (!missing(measurement_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(measurement_type_concept_id)) {
      statement <- paste0(statement, ' measurement_type_concept_id IS NULL')
    } else if (is(measurement_type_concept_id, 'subQuery')){
      statement <- paste0(statement, ' measurement_type_concept_id = (', as.character(measurement_type_concept_id), ')')
    } else {
      statement <- paste0(statement, " measurement_type_concept_id = '", measurement_type_concept_id,"'")
    }
  }

  if (!missing(operator_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(operator_concept_id)) {
      statement <- paste0(statement, ' operator_concept_id IS NULL')
    } else if (is(operator_concept_id, 'subQuery')){
      statement <- paste0(statement, ' operator_concept_id = (', as.character(operator_concept_id), ')')
    } else {
      statement <- paste0(statement, " operator_concept_id = '", operator_concept_id,"'")
    }
  }

  if (!missing(value_as_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(value_as_concept_id)) {
      statement <- paste0(statement, ' value_as_concept_id IS NULL')
    } else if (is(value_as_concept_id, 'subQuery')){
      statement <- paste0(statement, ' value_as_concept_id = (', as.character(value_as_concept_id), ')')
    } else {
      statement <- paste0(statement, " value_as_concept_id = '", value_as_concept_id,"'")
    }
  }

  if (!missing(range_low)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(range_low)) {
      statement <- paste0(statement, ' range_low IS NULL')
    } else if (is(range_low, 'subQuery')){
      statement <- paste0(statement, ' range_low = (', as.character(range_low), ')')
    } else {
      statement <- paste0(statement, " range_low = '", range_low,"'")
    }
  }

  if (!missing(range_high)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(range_high)) {
      statement <- paste0(statement, ' range_high IS NULL')
    } else if (is(range_high, 'subQuery')){
      statement <- paste0(statement, ' range_high = (', as.character(range_high), ')')
    } else {
      statement <- paste0(statement, " range_high = '", range_high,"'")
    }
  }

  if (!missing(provider_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(provider_id)) {
      statement <- paste0(statement, ' provider_id IS NULL')
    } else if (is(provider_id, 'subQuery')){
      statement <- paste0(statement, ' provider_id = (', as.character(provider_id), ')')
    } else {
      statement <- paste0(statement, " provider_id = '", provider_id,"'")
    }
  }

  if (!missing(visit_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(visit_occurrence_id)) {
      statement <- paste0(statement, ' visit_occurrence_id IS NULL')
    } else if (is(visit_occurrence_id, 'subQuery')){
      statement <- paste0(statement, ' visit_occurrence_id = (', as.character(visit_occurrence_id), ')')
    } else {
      statement <- paste0(statement, " visit_occurrence_id = '", visit_occurrence_id,"'")
    }
  }

  if (!missing(measurement_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(measurement_source_concept_id)) {
      statement <- paste0(statement, ' measurement_source_concept_id IS NULL')
    } else if (is(measurement_source_concept_id, 'subQuery')){
      statement <- paste0(statement, ' measurement_source_concept_id = (', as.character(measurement_source_concept_id), ')')
    } else {
      statement <- paste0(statement, " measurement_source_concept_id = '", measurement_source_concept_id,"'")
    }
  }

  if (!missing(value_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(value_source_value)) {
      statement <- paste0(statement, ' value_source_value IS NULL')
    } else if (is(value_source_value, 'subQuery')){
      statement <- paste0(statement, ' value_source_value = (', as.character(value_source_value), ')')
    } else {
      statement <- paste0(statement, " value_source_value = '", value_source_value,"'")
    }
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_observation <- function(fetchField, observation_id, person_id, observation_concept_id, observation_source_value, observation_source_concept_id, observation_date, observation_time, observation_type_concept_id, value_as_number, value_as_string, value_as_concept_id, qualifier_concept_id, unit_concept_id, provider_id, visit_occurrence_id, unit_source_value, qualifier_source_value) {
  statement <- paste0('SELECT ', fetchField , ' FROM observation WHERE')
  first <- TRUE
  if (!missing(observation_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(observation_id)) {
      statement <- paste0(statement, ' observation_id IS NULL')
    } else if (is(observation_id, 'subQuery')){
      statement <- paste0(statement, ' observation_id = (', as.character(observation_id), ')')
    } else {
      statement <- paste0(statement, " observation_id = '", observation_id,"'")
    }
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(person_id)) {
      statement <- paste0(statement, ' person_id IS NULL')
    } else if (is(person_id, 'subQuery')){
      statement <- paste0(statement, ' person_id = (', as.character(person_id), ')')
    } else {
      statement <- paste0(statement, " person_id = '", person_id,"'")
    }
  }

  if (!missing(observation_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(observation_concept_id)) {
      statement <- paste0(statement, ' observation_concept_id IS NULL')
    } else if (is(observation_concept_id, 'subQuery')){
      statement <- paste0(statement, ' observation_concept_id = (', as.character(observation_concept_id), ')')
    } else {
      statement <- paste0(statement, " observation_concept_id = '", observation_concept_id,"'")
    }
  }

  if (!missing(observation_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(observation_source_value)) {
      statement <- paste0(statement, ' observation_source_value IS NULL')
    } else if (is(observation_source_value, 'subQuery')){
      statement <- paste0(statement, ' observation_source_value = (', as.character(observation_source_value), ')')
    } else {
      statement <- paste0(statement, " observation_source_value = '", observation_source_value,"'")
    }
  }

  if (!missing(observation_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(observation_source_concept_id)) {
      statement <- paste0(statement, ' observation_source_concept_id IS NULL')
    } else if (is(observation_source_concept_id, 'subQuery')){
      statement <- paste0(statement, ' observation_source_concept_id = (', as.character(observation_source_concept_id), ')')
    } else {
      statement <- paste0(statement, " observation_source_concept_id = '", observation_source_concept_id,"'")
    }
  }

  if (!missing(observation_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(observation_date)) {
      statement <- paste0(statement, ' observation_date IS NULL')
    } else if (is(observation_date, 'subQuery')){
      statement <- paste0(statement, ' observation_date = (', as.character(observation_date), ')')
    } else {
      statement <- paste0(statement, " observation_date = '", observation_date,"'")
    }
  }

  if (!missing(observation_time)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(observation_time)) {
      statement <- paste0(statement, ' observation_time IS NULL')
    } else if (is(observation_time, 'subQuery')){
      statement <- paste0(statement, ' observation_time = (', as.character(observation_time), ')')
    } else {
      statement <- paste0(statement, " observation_time = '", observation_time,"'")
    }
  }

  if (!missing(observation_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(observation_type_concept_id)) {
      statement <- paste0(statement, ' observation_type_concept_id IS NULL')
    } else if (is(observation_type_concept_id, 'subQuery')){
      statement <- paste0(statement, ' observation_type_concept_id = (', as.character(observation_type_concept_id), ')')
    } else {
      statement <- paste0(statement, " observation_type_concept_id = '", observation_type_concept_id,"'")
    }
  }

  if (!missing(value_as_number)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(value_as_number)) {
      statement <- paste0(statement, ' value_as_number IS NULL')
    } else if (is(value_as_number, 'subQuery')){
      statement <- paste0(statement, ' value_as_number = (', as.character(value_as_number), ')')
    } else {
      statement <- paste0(statement, " value_as_number = '", value_as_number,"'")
    }
  }

  if (!missing(value_as_string)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(value_as_string)) {
      statement <- paste0(statement, ' value_as_string IS NULL')
    } else if (is(value_as_string, 'subQuery')){
      statement <- paste0(statement, ' value_as_string = (', as.character(value_as_string), ')')
    } else {
      statement <- paste0(statement, " value_as_string = '", value_as_string,"'")
    }
  }

  if (!missing(value_as_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(value_as_concept_id)) {
      statement <- paste0(statement, ' value_as_concept_id IS NULL')
    } else if (is(value_as_concept_id, 'subQuery')){
      statement <- paste0(statement, ' value_as_concept_id = (', as.character(value_as_concept_id), ')')
    } else {
      statement <- paste0(statement, " value_as_concept_id = '", value_as_concept_id,"'")
    }
  }

  if (!missing(qualifier_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(qualifier_concept_id)) {
      statement <- paste0(statement, ' qualifier_concept_id IS NULL')
    } else if (is(qualifier_concept_id, 'subQuery')){
      statement <- paste0(statement, ' qualifier_concept_id = (', as.character(qualifier_concept_id), ')')
    } else {
      statement <- paste0(statement, " qualifier_concept_id = '", qualifier_concept_id,"'")
    }
  }

  if (!missing(unit_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(unit_concept_id)) {
      statement <- paste0(statement, ' unit_concept_id IS NULL')
    } else if (is(unit_concept_id, 'subQuery')){
      statement <- paste0(statement, ' unit_concept_id = (', as.character(unit_concept_id), ')')
    } else {
      statement <- paste0(statement, " unit_concept_id = '", unit_concept_id,"'")
    }
  }

  if (!missing(provider_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(provider_id)) {
      statement <- paste0(statement, ' provider_id IS NULL')
    } else if (is(provider_id, 'subQuery')){
      statement <- paste0(statement, ' provider_id = (', as.character(provider_id), ')')
    } else {
      statement <- paste0(statement, " provider_id = '", provider_id,"'")
    }
  }

  if (!missing(visit_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(visit_occurrence_id)) {
      statement <- paste0(statement, ' visit_occurrence_id IS NULL')
    } else if (is(visit_occurrence_id, 'subQuery')){
      statement <- paste0(statement, ' visit_occurrence_id = (', as.character(visit_occurrence_id), ')')
    } else {
      statement <- paste0(statement, " visit_occurrence_id = '", visit_occurrence_id,"'")
    }
  }

  if (!missing(unit_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(unit_source_value)) {
      statement <- paste0(statement, ' unit_source_value IS NULL')
    } else if (is(unit_source_value, 'subQuery')){
      statement <- paste0(statement, ' unit_source_value = (', as.character(unit_source_value), ')')
    } else {
      statement <- paste0(statement, " unit_source_value = '", unit_source_value,"'")
    }
  }

  if (!missing(qualifier_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(qualifier_source_value)) {
      statement <- paste0(statement, ' qualifier_source_value IS NULL')
    } else if (is(qualifier_source_value, 'subQuery')){
      statement <- paste0(statement, ' qualifier_source_value = (', as.character(qualifier_source_value), ')')
    } else {
      statement <- paste0(statement, " qualifier_source_value = '", qualifier_source_value,"'")
    }
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_procedure_occurrence <- function(fetchField, procedure_occurrence_id, person_id, procedure_concept_id, procedure_date, procedure_type_concept_id, modifier_concept_id, quantity, provider_id, visit_occurrence_id, procedure_source_value, procedure_source_concept_id, qualifier_source_value) {
  statement <- paste0('SELECT ', fetchField , ' FROM procedure_occurrence WHERE')
  first <- TRUE
  if (!missing(procedure_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(procedure_occurrence_id)) {
      statement <- paste0(statement, ' procedure_occurrence_id IS NULL')
    } else if (is(procedure_occurrence_id, 'subQuery')){
      statement <- paste0(statement, ' procedure_occurrence_id = (', as.character(procedure_occurrence_id), ')')
    } else {
      statement <- paste0(statement, " procedure_occurrence_id = '", procedure_occurrence_id,"'")
    }
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(person_id)) {
      statement <- paste0(statement, ' person_id IS NULL')
    } else if (is(person_id, 'subQuery')){
      statement <- paste0(statement, ' person_id = (', as.character(person_id), ')')
    } else {
      statement <- paste0(statement, " person_id = '", person_id,"'")
    }
  }

  if (!missing(procedure_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(procedure_concept_id)) {
      statement <- paste0(statement, ' procedure_concept_id IS NULL')
    } else if (is(procedure_concept_id, 'subQuery')){
      statement <- paste0(statement, ' procedure_concept_id = (', as.character(procedure_concept_id), ')')
    } else {
      statement <- paste0(statement, " procedure_concept_id = '", procedure_concept_id,"'")
    }
  }

  if (!missing(procedure_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(procedure_date)) {
      statement <- paste0(statement, ' procedure_date IS NULL')
    } else if (is(procedure_date, 'subQuery')){
      statement <- paste0(statement, ' procedure_date = (', as.character(procedure_date), ')')
    } else {
      statement <- paste0(statement, " procedure_date = '", procedure_date,"'")
    }
  }

  if (!missing(procedure_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(procedure_type_concept_id)) {
      statement <- paste0(statement, ' procedure_type_concept_id IS NULL')
    } else if (is(procedure_type_concept_id, 'subQuery')){
      statement <- paste0(statement, ' procedure_type_concept_id = (', as.character(procedure_type_concept_id), ')')
    } else {
      statement <- paste0(statement, " procedure_type_concept_id = '", procedure_type_concept_id,"'")
    }
  }

  if (!missing(modifier_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(modifier_concept_id)) {
      statement <- paste0(statement, ' modifier_concept_id IS NULL')
    } else if (is(modifier_concept_id, 'subQuery')){
      statement <- paste0(statement, ' modifier_concept_id = (', as.character(modifier_concept_id), ')')
    } else {
      statement <- paste0(statement, " modifier_concept_id = '", modifier_concept_id,"'")
    }
  }

  if (!missing(quantity)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(quantity)) {
      statement <- paste0(statement, ' quantity IS NULL')
    } else if (is(quantity, 'subQuery')){
      statement <- paste0(statement, ' quantity = (', as.character(quantity), ')')
    } else {
      statement <- paste0(statement, " quantity = '", quantity,"'")
    }
  }

  if (!missing(provider_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(provider_id)) {
      statement <- paste0(statement, ' provider_id IS NULL')
    } else if (is(provider_id, 'subQuery')){
      statement <- paste0(statement, ' provider_id = (', as.character(provider_id), ')')
    } else {
      statement <- paste0(statement, " provider_id = '", provider_id,"'")
    }
  }

  if (!missing(visit_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(visit_occurrence_id)) {
      statement <- paste0(statement, ' visit_occurrence_id IS NULL')
    } else if (is(visit_occurrence_id, 'subQuery')){
      statement <- paste0(statement, ' visit_occurrence_id = (', as.character(visit_occurrence_id), ')')
    } else {
      statement <- paste0(statement, " visit_occurrence_id = '", visit_occurrence_id,"'")
    }
  }

  if (!missing(procedure_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(procedure_source_value)) {
      statement <- paste0(statement, ' procedure_source_value IS NULL')
    } else if (is(procedure_source_value, 'subQuery')){
      statement <- paste0(statement, ' procedure_source_value = (', as.character(procedure_source_value), ')')
    } else {
      statement <- paste0(statement, " procedure_source_value = '", procedure_source_value,"'")
    }
  }

  if (!missing(procedure_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(procedure_source_concept_id)) {
      statement <- paste0(statement, ' procedure_source_concept_id IS NULL')
    } else if (is(procedure_source_concept_id, 'subQuery')){
      statement <- paste0(statement, ' procedure_source_concept_id = (', as.character(procedure_source_concept_id), ')')
    } else {
      statement <- paste0(statement, " procedure_source_concept_id = '", procedure_source_concept_id,"'")
    }
  }

  if (!missing(qualifier_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(qualifier_source_value)) {
      statement <- paste0(statement, ' qualifier_source_value IS NULL')
    } else if (is(qualifier_source_value, 'subQuery')){
      statement <- paste0(statement, ' qualifier_source_value = (', as.character(qualifier_source_value), ')')
    } else {
      statement <- paste0(statement, " qualifier_source_value = '", qualifier_source_value,"'")
    }
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_device_exposure <- function(fetchField, device_exposure_id, person_id, device_concept_id, device_exposure_start_date, device_exposure_end_date, device_type_concept_id, unique_device_id, quantity, provider_id, visit_occurrence_id, device_source_value, device_source_concept_id) {
  statement <- paste0('SELECT ', fetchField , ' FROM device_exposure WHERE')
  first <- TRUE
  if (!missing(device_exposure_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(device_exposure_id)) {
      statement <- paste0(statement, ' device_exposure_id IS NULL')
    } else if (is(device_exposure_id, 'subQuery')){
      statement <- paste0(statement, ' device_exposure_id = (', as.character(device_exposure_id), ')')
    } else {
      statement <- paste0(statement, " device_exposure_id = '", device_exposure_id,"'")
    }
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(person_id)) {
      statement <- paste0(statement, ' person_id IS NULL')
    } else if (is(person_id, 'subQuery')){
      statement <- paste0(statement, ' person_id = (', as.character(person_id), ')')
    } else {
      statement <- paste0(statement, " person_id = '", person_id,"'")
    }
  }

  if (!missing(device_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(device_concept_id)) {
      statement <- paste0(statement, ' device_concept_id IS NULL')
    } else if (is(device_concept_id, 'subQuery')){
      statement <- paste0(statement, ' device_concept_id = (', as.character(device_concept_id), ')')
    } else {
      statement <- paste0(statement, " device_concept_id = '", device_concept_id,"'")
    }
  }

  if (!missing(device_exposure_start_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(device_exposure_start_date)) {
      statement <- paste0(statement, ' device_exposure_start_date IS NULL')
    } else if (is(device_exposure_start_date, 'subQuery')){
      statement <- paste0(statement, ' device_exposure_start_date = (', as.character(device_exposure_start_date), ')')
    } else {
      statement <- paste0(statement, " device_exposure_start_date = '", device_exposure_start_date,"'")
    }
  }

  if (!missing(device_exposure_end_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(device_exposure_end_date)) {
      statement <- paste0(statement, ' device_exposure_end_date IS NULL')
    } else if (is(device_exposure_end_date, 'subQuery')){
      statement <- paste0(statement, ' device_exposure_end_date = (', as.character(device_exposure_end_date), ')')
    } else {
      statement <- paste0(statement, " device_exposure_end_date = '", device_exposure_end_date,"'")
    }
  }

  if (!missing(device_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(device_type_concept_id)) {
      statement <- paste0(statement, ' device_type_concept_id IS NULL')
    } else if (is(device_type_concept_id, 'subQuery')){
      statement <- paste0(statement, ' device_type_concept_id = (', as.character(device_type_concept_id), ')')
    } else {
      statement <- paste0(statement, " device_type_concept_id = '", device_type_concept_id,"'")
    }
  }

  if (!missing(unique_device_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(unique_device_id)) {
      statement <- paste0(statement, ' unique_device_id IS NULL')
    } else if (is(unique_device_id, 'subQuery')){
      statement <- paste0(statement, ' unique_device_id = (', as.character(unique_device_id), ')')
    } else {
      statement <- paste0(statement, " unique_device_id = '", unique_device_id,"'")
    }
  }

  if (!missing(quantity)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(quantity)) {
      statement <- paste0(statement, ' quantity IS NULL')
    } else if (is(quantity, 'subQuery')){
      statement <- paste0(statement, ' quantity = (', as.character(quantity), ')')
    } else {
      statement <- paste0(statement, " quantity = '", quantity,"'")
    }
  }

  if (!missing(provider_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(provider_id)) {
      statement <- paste0(statement, ' provider_id IS NULL')
    } else if (is(provider_id, 'subQuery')){
      statement <- paste0(statement, ' provider_id = (', as.character(provider_id), ')')
    } else {
      statement <- paste0(statement, " provider_id = '", provider_id,"'")
    }
  }

  if (!missing(visit_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(visit_occurrence_id)) {
      statement <- paste0(statement, ' visit_occurrence_id IS NULL')
    } else if (is(visit_occurrence_id, 'subQuery')){
      statement <- paste0(statement, ' visit_occurrence_id = (', as.character(visit_occurrence_id), ')')
    } else {
      statement <- paste0(statement, " visit_occurrence_id = '", visit_occurrence_id,"'")
    }
  }

  if (!missing(device_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(device_source_value)) {
      statement <- paste0(statement, ' device_source_value IS NULL')
    } else if (is(device_source_value, 'subQuery')){
      statement <- paste0(statement, ' device_source_value = (', as.character(device_source_value), ')')
    } else {
      statement <- paste0(statement, " device_source_value = '", device_source_value,"'")
    }
  }

  if (!missing(device_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(device_source_concept_id)) {
      statement <- paste0(statement, ' device_source_concept_id IS NULL')
    } else if (is(device_source_concept_id, 'subQuery')){
      statement <- paste0(statement, ' device_source_concept_id = (', as.character(device_source_concept_id), ')')
    } else {
      statement <- paste0(statement, " device_source_concept_id = '", device_source_concept_id,"'")
    }
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_location <- function(fetchField, location_id, address_1, address_2, city, state, zip, county, location_source_value) {
  statement <- paste0('SELECT ', fetchField , ' FROM location WHERE')
  first <- TRUE
  if (!missing(location_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(location_id)) {
      statement <- paste0(statement, ' location_id IS NULL')
    } else if (is(location_id, 'subQuery')){
      statement <- paste0(statement, ' location_id = (', as.character(location_id), ')')
    } else {
      statement <- paste0(statement, " location_id = '", location_id,"'")
    }
  }

  if (!missing(address_1)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(address_1)) {
      statement <- paste0(statement, ' address_1 IS NULL')
    } else if (is(address_1, 'subQuery')){
      statement <- paste0(statement, ' address_1 = (', as.character(address_1), ')')
    } else {
      statement <- paste0(statement, " address_1 = '", address_1,"'")
    }
  }

  if (!missing(address_2)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(address_2)) {
      statement <- paste0(statement, ' address_2 IS NULL')
    } else if (is(address_2, 'subQuery')){
      statement <- paste0(statement, ' address_2 = (', as.character(address_2), ')')
    } else {
      statement <- paste0(statement, " address_2 = '", address_2,"'")
    }
  }

  if (!missing(city)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(city)) {
      statement <- paste0(statement, ' city IS NULL')
    } else if (is(city, 'subQuery')){
      statement <- paste0(statement, ' city = (', as.character(city), ')')
    } else {
      statement <- paste0(statement, " city = '", city,"'")
    }
  }

  if (!missing(state)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(state)) {
      statement <- paste0(statement, ' state IS NULL')
    } else if (is(state, 'subQuery')){
      statement <- paste0(statement, ' state = (', as.character(state), ')')
    } else {
      statement <- paste0(statement, " state = '", state,"'")
    }
  }

  if (!missing(zip)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(zip)) {
      statement <- paste0(statement, ' zip IS NULL')
    } else if (is(zip, 'subQuery')){
      statement <- paste0(statement, ' zip = (', as.character(zip), ')')
    } else {
      statement <- paste0(statement, " zip = '", zip,"'")
    }
  }

  if (!missing(county)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(county)) {
      statement <- paste0(statement, ' county IS NULL')
    } else if (is(county, 'subQuery')){
      statement <- paste0(statement, ' county = (', as.character(county), ')')
    } else {
      statement <- paste0(statement, " county = '", county,"'")
    }
  }

  if (!missing(location_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(location_source_value)) {
      statement <- paste0(statement, ' location_source_value IS NULL')
    } else if (is(location_source_value, 'subQuery')){
      statement <- paste0(statement, ' location_source_value = (', as.character(location_source_value), ')')
    } else {
      statement <- paste0(statement, " location_source_value = '", location_source_value,"'")
    }
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_care_site <- function(fetchField, care_site_id, care_site_name, place_of_service_concept_id, location_id, care_site_source_value, place_of_service_source_value) {
  statement <- paste0('SELECT ', fetchField , ' FROM care_site WHERE')
  first <- TRUE
  if (!missing(care_site_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(care_site_id)) {
      statement <- paste0(statement, ' care_site_id IS NULL')
    } else if (is(care_site_id, 'subQuery')){
      statement <- paste0(statement, ' care_site_id = (', as.character(care_site_id), ')')
    } else {
      statement <- paste0(statement, " care_site_id = '", care_site_id,"'")
    }
  }

  if (!missing(care_site_name)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(care_site_name)) {
      statement <- paste0(statement, ' care_site_name IS NULL')
    } else if (is(care_site_name, 'subQuery')){
      statement <- paste0(statement, ' care_site_name = (', as.character(care_site_name), ')')
    } else {
      statement <- paste0(statement, " care_site_name = '", care_site_name,"'")
    }
  }

  if (!missing(place_of_service_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(place_of_service_concept_id)) {
      statement <- paste0(statement, ' place_of_service_concept_id IS NULL')
    } else if (is(place_of_service_concept_id, 'subQuery')){
      statement <- paste0(statement, ' place_of_service_concept_id = (', as.character(place_of_service_concept_id), ')')
    } else {
      statement <- paste0(statement, " place_of_service_concept_id = '", place_of_service_concept_id,"'")
    }
  }

  if (!missing(location_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(location_id)) {
      statement <- paste0(statement, ' location_id IS NULL')
    } else if (is(location_id, 'subQuery')){
      statement <- paste0(statement, ' location_id = (', as.character(location_id), ')')
    } else {
      statement <- paste0(statement, " location_id = '", location_id,"'")
    }
  }

  if (!missing(care_site_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(care_site_source_value)) {
      statement <- paste0(statement, ' care_site_source_value IS NULL')
    } else if (is(care_site_source_value, 'subQuery')){
      statement <- paste0(statement, ' care_site_source_value = (', as.character(care_site_source_value), ')')
    } else {
      statement <- paste0(statement, " care_site_source_value = '", care_site_source_value,"'")
    }
  }

  if (!missing(place_of_service_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(place_of_service_source_value)) {
      statement <- paste0(statement, ' place_of_service_source_value IS NULL')
    } else if (is(place_of_service_source_value, 'subQuery')){
      statement <- paste0(statement, ' place_of_service_source_value = (', as.character(place_of_service_source_value), ')')
    } else {
      statement <- paste0(statement, " place_of_service_source_value = '", place_of_service_source_value,"'")
    }
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_provider <- function(fetchField, provider_id, provider_name, npi, dea, specialty_concept_id, care_site_id, year_of_birth, gender_concept_id, provider_source_value, specialty_source_value, specialty_source_concept_id, gender_source_value, gender_source_concept_id) {
  statement <- paste0('SELECT ', fetchField , ' FROM provider WHERE')
  first <- TRUE
  if (!missing(provider_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(provider_id)) {
      statement <- paste0(statement, ' provider_id IS NULL')
    } else if (is(provider_id, 'subQuery')){
      statement <- paste0(statement, ' provider_id = (', as.character(provider_id), ')')
    } else {
      statement <- paste0(statement, " provider_id = '", provider_id,"'")
    }
  }

  if (!missing(provider_name)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(provider_name)) {
      statement <- paste0(statement, ' provider_name IS NULL')
    } else if (is(provider_name, 'subQuery')){
      statement <- paste0(statement, ' provider_name = (', as.character(provider_name), ')')
    } else {
      statement <- paste0(statement, " provider_name = '", provider_name,"'")
    }
  }

  if (!missing(npi)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(npi)) {
      statement <- paste0(statement, ' npi IS NULL')
    } else if (is(npi, 'subQuery')){
      statement <- paste0(statement, ' npi = (', as.character(npi), ')')
    } else {
      statement <- paste0(statement, " npi = '", npi,"'")
    }
  }

  if (!missing(dea)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(dea)) {
      statement <- paste0(statement, ' dea IS NULL')
    } else if (is(dea, 'subQuery')){
      statement <- paste0(statement, ' dea = (', as.character(dea), ')')
    } else {
      statement <- paste0(statement, " dea = '", dea,"'")
    }
  }

  if (!missing(specialty_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(specialty_concept_id)) {
      statement <- paste0(statement, ' specialty_concept_id IS NULL')
    } else if (is(specialty_concept_id, 'subQuery')){
      statement <- paste0(statement, ' specialty_concept_id = (', as.character(specialty_concept_id), ')')
    } else {
      statement <- paste0(statement, " specialty_concept_id = '", specialty_concept_id,"'")
    }
  }

  if (!missing(care_site_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(care_site_id)) {
      statement <- paste0(statement, ' care_site_id IS NULL')
    } else if (is(care_site_id, 'subQuery')){
      statement <- paste0(statement, ' care_site_id = (', as.character(care_site_id), ')')
    } else {
      statement <- paste0(statement, " care_site_id = '", care_site_id,"'")
    }
  }

  if (!missing(year_of_birth)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(year_of_birth)) {
      statement <- paste0(statement, ' year_of_birth IS NULL')
    } else if (is(year_of_birth, 'subQuery')){
      statement <- paste0(statement, ' year_of_birth = (', as.character(year_of_birth), ')')
    } else {
      statement <- paste0(statement, " year_of_birth = '", year_of_birth,"'")
    }
  }

  if (!missing(gender_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(gender_concept_id)) {
      statement <- paste0(statement, ' gender_concept_id IS NULL')
    } else if (is(gender_concept_id, 'subQuery')){
      statement <- paste0(statement, ' gender_concept_id = (', as.character(gender_concept_id), ')')
    } else {
      statement <- paste0(statement, " gender_concept_id = '", gender_concept_id,"'")
    }
  }

  if (!missing(provider_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(provider_source_value)) {
      statement <- paste0(statement, ' provider_source_value IS NULL')
    } else if (is(provider_source_value, 'subQuery')){
      statement <- paste0(statement, ' provider_source_value = (', as.character(provider_source_value), ')')
    } else {
      statement <- paste0(statement, " provider_source_value = '", provider_source_value,"'")
    }
  }

  if (!missing(specialty_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(specialty_source_value)) {
      statement <- paste0(statement, ' specialty_source_value IS NULL')
    } else if (is(specialty_source_value, 'subQuery')){
      statement <- paste0(statement, ' specialty_source_value = (', as.character(specialty_source_value), ')')
    } else {
      statement <- paste0(statement, " specialty_source_value = '", specialty_source_value,"'")
    }
  }

  if (!missing(specialty_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(specialty_source_concept_id)) {
      statement <- paste0(statement, ' specialty_source_concept_id IS NULL')
    } else if (is(specialty_source_concept_id, 'subQuery')){
      statement <- paste0(statement, ' specialty_source_concept_id = (', as.character(specialty_source_concept_id), ')')
    } else {
      statement <- paste0(statement, " specialty_source_concept_id = '", specialty_source_concept_id,"'")
    }
  }

  if (!missing(gender_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(gender_source_value)) {
      statement <- paste0(statement, ' gender_source_value IS NULL')
    } else if (is(gender_source_value, 'subQuery')){
      statement <- paste0(statement, ' gender_source_value = (', as.character(gender_source_value), ')')
    } else {
      statement <- paste0(statement, " gender_source_value = '", gender_source_value,"'")
    }
  }

  if (!missing(gender_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(gender_source_concept_id)) {
      statement <- paste0(statement, ' gender_source_concept_id IS NULL')
    } else if (is(gender_source_concept_id, 'subQuery')){
      statement <- paste0(statement, ' gender_source_concept_id = (', as.character(gender_source_concept_id), ')')
    } else {
      statement <- paste0(statement, " gender_source_concept_id = '", gender_source_concept_id,"'")
    }
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_note <- function(fetchField, note_id, person_id, note_date, note_time, note_type_concept_id, note_text, provider_id, visit_occurrence_id, note_source_value) {
  statement <- paste0('SELECT ', fetchField , ' FROM note WHERE')
  first <- TRUE
  if (!missing(note_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(note_id)) {
      statement <- paste0(statement, ' note_id IS NULL')
    } else if (is(note_id, 'subQuery')){
      statement <- paste0(statement, ' note_id = (', as.character(note_id), ')')
    } else {
      statement <- paste0(statement, " note_id = '", note_id,"'")
    }
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(person_id)) {
      statement <- paste0(statement, ' person_id IS NULL')
    } else if (is(person_id, 'subQuery')){
      statement <- paste0(statement, ' person_id = (', as.character(person_id), ')')
    } else {
      statement <- paste0(statement, " person_id = '", person_id,"'")
    }
  }

  if (!missing(note_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(note_date)) {
      statement <- paste0(statement, ' note_date IS NULL')
    } else if (is(note_date, 'subQuery')){
      statement <- paste0(statement, ' note_date = (', as.character(note_date), ')')
    } else {
      statement <- paste0(statement, " note_date = '", note_date,"'")
    }
  }

  if (!missing(note_time)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(note_time)) {
      statement <- paste0(statement, ' note_time IS NULL')
    } else if (is(note_time, 'subQuery')){
      statement <- paste0(statement, ' note_time = (', as.character(note_time), ')')
    } else {
      statement <- paste0(statement, " note_time = '", note_time,"'")
    }
  }

  if (!missing(note_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(note_type_concept_id)) {
      statement <- paste0(statement, ' note_type_concept_id IS NULL')
    } else if (is(note_type_concept_id, 'subQuery')){
      statement <- paste0(statement, ' note_type_concept_id = (', as.character(note_type_concept_id), ')')
    } else {
      statement <- paste0(statement, " note_type_concept_id = '", note_type_concept_id,"'")
    }
  }

  if (!missing(note_text)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(note_text)) {
      statement <- paste0(statement, ' note_text IS NULL')
    } else if (is(note_text, 'subQuery')){
      statement <- paste0(statement, ' note_text = (', as.character(note_text), ')')
    } else {
      statement <- paste0(statement, " note_text = '", note_text,"'")
    }
  }

  if (!missing(provider_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(provider_id)) {
      statement <- paste0(statement, ' provider_id IS NULL')
    } else if (is(provider_id, 'subQuery')){
      statement <- paste0(statement, ' provider_id = (', as.character(provider_id), ')')
    } else {
      statement <- paste0(statement, " provider_id = '", provider_id,"'")
    }
  }

  if (!missing(visit_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(visit_occurrence_id)) {
      statement <- paste0(statement, ' visit_occurrence_id IS NULL')
    } else if (is(visit_occurrence_id, 'subQuery')){
      statement <- paste0(statement, ' visit_occurrence_id = (', as.character(visit_occurrence_id), ')')
    } else {
      statement <- paste0(statement, " visit_occurrence_id = '", visit_occurrence_id,"'")
    }
  }

  if (!missing(note_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(note_source_value)) {
      statement <- paste0(statement, ' note_source_value IS NULL')
    } else if (is(note_source_value, 'subQuery')){
      statement <- paste0(statement, ' note_source_value = (', as.character(note_source_value), ')')
    } else {
      statement <- paste0(statement, " note_source_value = '", note_source_value,"'")
    }
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_specimen <- function(fetchField, specimen_id, person_id, specimen_concept_id, specimen_type_concept_id, specimen_date, specimen_time, quantity, unit_concept_id, anatomic_site_concept_id, disease_status_concept_id, specimen_source_id, specimen_source_value, unit_source_value, anatomic_site_source_value, disease_status_source_value) {
  statement <- paste0('SELECT ', fetchField , ' FROM specimen WHERE')
  first <- TRUE
  if (!missing(specimen_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(specimen_id)) {
      statement <- paste0(statement, ' specimen_id IS NULL')
    } else if (is(specimen_id, 'subQuery')){
      statement <- paste0(statement, ' specimen_id = (', as.character(specimen_id), ')')
    } else {
      statement <- paste0(statement, " specimen_id = '", specimen_id,"'")
    }
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(person_id)) {
      statement <- paste0(statement, ' person_id IS NULL')
    } else if (is(person_id, 'subQuery')){
      statement <- paste0(statement, ' person_id = (', as.character(person_id), ')')
    } else {
      statement <- paste0(statement, " person_id = '", person_id,"'")
    }
  }

  if (!missing(specimen_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(specimen_concept_id)) {
      statement <- paste0(statement, ' specimen_concept_id IS NULL')
    } else if (is(specimen_concept_id, 'subQuery')){
      statement <- paste0(statement, ' specimen_concept_id = (', as.character(specimen_concept_id), ')')
    } else {
      statement <- paste0(statement, " specimen_concept_id = '", specimen_concept_id,"'")
    }
  }

  if (!missing(specimen_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(specimen_type_concept_id)) {
      statement <- paste0(statement, ' specimen_type_concept_id IS NULL')
    } else if (is(specimen_type_concept_id, 'subQuery')){
      statement <- paste0(statement, ' specimen_type_concept_id = (', as.character(specimen_type_concept_id), ')')
    } else {
      statement <- paste0(statement, " specimen_type_concept_id = '", specimen_type_concept_id,"'")
    }
  }

  if (!missing(specimen_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(specimen_date)) {
      statement <- paste0(statement, ' specimen_date IS NULL')
    } else if (is(specimen_date, 'subQuery')){
      statement <- paste0(statement, ' specimen_date = (', as.character(specimen_date), ')')
    } else {
      statement <- paste0(statement, " specimen_date = '", specimen_date,"'")
    }
  }

  if (!missing(specimen_time)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(specimen_time)) {
      statement <- paste0(statement, ' specimen_time IS NULL')
    } else if (is(specimen_time, 'subQuery')){
      statement <- paste0(statement, ' specimen_time = (', as.character(specimen_time), ')')
    } else {
      statement <- paste0(statement, " specimen_time = '", specimen_time,"'")
    }
  }

  if (!missing(quantity)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(quantity)) {
      statement <- paste0(statement, ' quantity IS NULL')
    } else if (is(quantity, 'subQuery')){
      statement <- paste0(statement, ' quantity = (', as.character(quantity), ')')
    } else {
      statement <- paste0(statement, " quantity = '", quantity,"'")
    }
  }

  if (!missing(unit_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(unit_concept_id)) {
      statement <- paste0(statement, ' unit_concept_id IS NULL')
    } else if (is(unit_concept_id, 'subQuery')){
      statement <- paste0(statement, ' unit_concept_id = (', as.character(unit_concept_id), ')')
    } else {
      statement <- paste0(statement, " unit_concept_id = '", unit_concept_id,"'")
    }
  }

  if (!missing(anatomic_site_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(anatomic_site_concept_id)) {
      statement <- paste0(statement, ' anatomic_site_concept_id IS NULL')
    } else if (is(anatomic_site_concept_id, 'subQuery')){
      statement <- paste0(statement, ' anatomic_site_concept_id = (', as.character(anatomic_site_concept_id), ')')
    } else {
      statement <- paste0(statement, " anatomic_site_concept_id = '", anatomic_site_concept_id,"'")
    }
  }

  if (!missing(disease_status_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(disease_status_concept_id)) {
      statement <- paste0(statement, ' disease_status_concept_id IS NULL')
    } else if (is(disease_status_concept_id, 'subQuery')){
      statement <- paste0(statement, ' disease_status_concept_id = (', as.character(disease_status_concept_id), ')')
    } else {
      statement <- paste0(statement, " disease_status_concept_id = '", disease_status_concept_id,"'")
    }
  }

  if (!missing(specimen_source_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(specimen_source_id)) {
      statement <- paste0(statement, ' specimen_source_id IS NULL')
    } else if (is(specimen_source_id, 'subQuery')){
      statement <- paste0(statement, ' specimen_source_id = (', as.character(specimen_source_id), ')')
    } else {
      statement <- paste0(statement, " specimen_source_id = '", specimen_source_id,"'")
    }
  }

  if (!missing(specimen_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(specimen_source_value)) {
      statement <- paste0(statement, ' specimen_source_value IS NULL')
    } else if (is(specimen_source_value, 'subQuery')){
      statement <- paste0(statement, ' specimen_source_value = (', as.character(specimen_source_value), ')')
    } else {
      statement <- paste0(statement, " specimen_source_value = '", specimen_source_value,"'")
    }
  }

  if (!missing(unit_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(unit_source_value)) {
      statement <- paste0(statement, ' unit_source_value IS NULL')
    } else if (is(unit_source_value, 'subQuery')){
      statement <- paste0(statement, ' unit_source_value = (', as.character(unit_source_value), ')')
    } else {
      statement <- paste0(statement, " unit_source_value = '", unit_source_value,"'")
    }
  }

  if (!missing(anatomic_site_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(anatomic_site_source_value)) {
      statement <- paste0(statement, ' anatomic_site_source_value IS NULL')
    } else if (is(anatomic_site_source_value, 'subQuery')){
      statement <- paste0(statement, ' anatomic_site_source_value = (', as.character(anatomic_site_source_value), ')')
    } else {
      statement <- paste0(statement, " anatomic_site_source_value = '", anatomic_site_source_value,"'")
    }
  }

  if (!missing(disease_status_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(disease_status_source_value)) {
      statement <- paste0(statement, ' disease_status_source_value IS NULL')
    } else if (is(disease_status_source_value, 'subQuery')){
      statement <- paste0(statement, ' disease_status_source_value = (', as.character(disease_status_source_value), ')')
    } else {
      statement <- paste0(statement, " disease_status_source_value = '", disease_status_source_value,"'")
    }
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_fact_relationship <- function(fetchField, domain_concept_id_1, fact_id_1, domain_concept_id_2, fact_id_2, relationship_concept_id) {
  statement <- paste0('SELECT ', fetchField , ' FROM fact_relationship WHERE')
  first <- TRUE
  if (!missing(domain_concept_id_1)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(domain_concept_id_1)) {
      statement <- paste0(statement, ' domain_concept_id_1 IS NULL')
    } else if (is(domain_concept_id_1, 'subQuery')){
      statement <- paste0(statement, ' domain_concept_id_1 = (', as.character(domain_concept_id_1), ')')
    } else {
      statement <- paste0(statement, " domain_concept_id_1 = '", domain_concept_id_1,"'")
    }
  }

  if (!missing(fact_id_1)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(fact_id_1)) {
      statement <- paste0(statement, ' fact_id_1 IS NULL')
    } else if (is(fact_id_1, 'subQuery')){
      statement <- paste0(statement, ' fact_id_1 = (', as.character(fact_id_1), ')')
    } else {
      statement <- paste0(statement, " fact_id_1 = '", fact_id_1,"'")
    }
  }

  if (!missing(domain_concept_id_2)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(domain_concept_id_2)) {
      statement <- paste0(statement, ' domain_concept_id_2 IS NULL')
    } else if (is(domain_concept_id_2, 'subQuery')){
      statement <- paste0(statement, ' domain_concept_id_2 = (', as.character(domain_concept_id_2), ')')
    } else {
      statement <- paste0(statement, " domain_concept_id_2 = '", domain_concept_id_2,"'")
    }
  }

  if (!missing(fact_id_2)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(fact_id_2)) {
      statement <- paste0(statement, ' fact_id_2 IS NULL')
    } else if (is(fact_id_2, 'subQuery')){
      statement <- paste0(statement, ' fact_id_2 = (', as.character(fact_id_2), ')')
    } else {
      statement <- paste0(statement, " fact_id_2 = '", fact_id_2,"'")
    }
  }

  if (!missing(relationship_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(relationship_concept_id)) {
      statement <- paste0(statement, ' relationship_concept_id IS NULL')
    } else if (is(relationship_concept_id, 'subQuery')){
      statement <- paste0(statement, ' relationship_concept_id = (', as.character(relationship_concept_id), ')')
    } else {
      statement <- paste0(statement, " relationship_concept_id = '", relationship_concept_id,"'")
    }
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_procedure_cost <- function(fetchField, procedure_cost_id, procedure_occurrence_id, currency_concept_id, paid_copay, paid_coinsurance, paid_toward_deductible, paid_by_payer, paid_by_coordination_benefits, total_out_of_pocket, total_paid, revenue_code_concept_id, payer_plan_period_id, revenue_code_source_value) {
  statement <- paste0('SELECT ', fetchField , ' FROM procedure_cost WHERE')
  first <- TRUE
  if (!missing(procedure_cost_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(procedure_cost_id)) {
      statement <- paste0(statement, ' procedure_cost_id IS NULL')
    } else if (is(procedure_cost_id, 'subQuery')){
      statement <- paste0(statement, ' procedure_cost_id = (', as.character(procedure_cost_id), ')')
    } else {
      statement <- paste0(statement, " procedure_cost_id = '", procedure_cost_id,"'")
    }
  }

  if (!missing(procedure_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(procedure_occurrence_id)) {
      statement <- paste0(statement, ' procedure_occurrence_id IS NULL')
    } else if (is(procedure_occurrence_id, 'subQuery')){
      statement <- paste0(statement, ' procedure_occurrence_id = (', as.character(procedure_occurrence_id), ')')
    } else {
      statement <- paste0(statement, " procedure_occurrence_id = '", procedure_occurrence_id,"'")
    }
  }

  if (!missing(currency_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(currency_concept_id)) {
      statement <- paste0(statement, ' currency_concept_id IS NULL')
    } else if (is(currency_concept_id, 'subQuery')){
      statement <- paste0(statement, ' currency_concept_id = (', as.character(currency_concept_id), ')')
    } else {
      statement <- paste0(statement, " currency_concept_id = '", currency_concept_id,"'")
    }
  }

  if (!missing(paid_copay)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_copay)) {
      statement <- paste0(statement, ' paid_copay IS NULL')
    } else if (is(paid_copay, 'subQuery')){
      statement <- paste0(statement, ' paid_copay = (', as.character(paid_copay), ')')
    } else {
      statement <- paste0(statement, " paid_copay = '", paid_copay,"'")
    }
  }

  if (!missing(paid_coinsurance)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_coinsurance)) {
      statement <- paste0(statement, ' paid_coinsurance IS NULL')
    } else if (is(paid_coinsurance, 'subQuery')){
      statement <- paste0(statement, ' paid_coinsurance = (', as.character(paid_coinsurance), ')')
    } else {
      statement <- paste0(statement, " paid_coinsurance = '", paid_coinsurance,"'")
    }
  }

  if (!missing(paid_toward_deductible)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_toward_deductible)) {
      statement <- paste0(statement, ' paid_toward_deductible IS NULL')
    } else if (is(paid_toward_deductible, 'subQuery')){
      statement <- paste0(statement, ' paid_toward_deductible = (', as.character(paid_toward_deductible), ')')
    } else {
      statement <- paste0(statement, " paid_toward_deductible = '", paid_toward_deductible,"'")
    }
  }

  if (!missing(paid_by_payer)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_by_payer)) {
      statement <- paste0(statement, ' paid_by_payer IS NULL')
    } else if (is(paid_by_payer, 'subQuery')){
      statement <- paste0(statement, ' paid_by_payer = (', as.character(paid_by_payer), ')')
    } else {
      statement <- paste0(statement, " paid_by_payer = '", paid_by_payer,"'")
    }
  }

  if (!missing(paid_by_coordination_benefits)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_by_coordination_benefits)) {
      statement <- paste0(statement, ' paid_by_coordination_benefits IS NULL')
    } else if (is(paid_by_coordination_benefits, 'subQuery')){
      statement <- paste0(statement, ' paid_by_coordination_benefits = (', as.character(paid_by_coordination_benefits), ')')
    } else {
      statement <- paste0(statement, " paid_by_coordination_benefits = '", paid_by_coordination_benefits,"'")
    }
  }

  if (!missing(total_out_of_pocket)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(total_out_of_pocket)) {
      statement <- paste0(statement, ' total_out_of_pocket IS NULL')
    } else if (is(total_out_of_pocket, 'subQuery')){
      statement <- paste0(statement, ' total_out_of_pocket = (', as.character(total_out_of_pocket), ')')
    } else {
      statement <- paste0(statement, " total_out_of_pocket = '", total_out_of_pocket,"'")
    }
  }

  if (!missing(total_paid)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(total_paid)) {
      statement <- paste0(statement, ' total_paid IS NULL')
    } else if (is(total_paid, 'subQuery')){
      statement <- paste0(statement, ' total_paid = (', as.character(total_paid), ')')
    } else {
      statement <- paste0(statement, " total_paid = '", total_paid,"'")
    }
  }

  if (!missing(revenue_code_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(revenue_code_concept_id)) {
      statement <- paste0(statement, ' revenue_code_concept_id IS NULL')
    } else if (is(revenue_code_concept_id, 'subQuery')){
      statement <- paste0(statement, ' revenue_code_concept_id = (', as.character(revenue_code_concept_id), ')')
    } else {
      statement <- paste0(statement, " revenue_code_concept_id = '", revenue_code_concept_id,"'")
    }
  }

  if (!missing(payer_plan_period_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(payer_plan_period_id)) {
      statement <- paste0(statement, ' payer_plan_period_id IS NULL')
    } else if (is(payer_plan_period_id, 'subQuery')){
      statement <- paste0(statement, ' payer_plan_period_id = (', as.character(payer_plan_period_id), ')')
    } else {
      statement <- paste0(statement, " payer_plan_period_id = '", payer_plan_period_id,"'")
    }
  }

  if (!missing(revenue_code_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(revenue_code_source_value)) {
      statement <- paste0(statement, ' revenue_code_source_value IS NULL')
    } else if (is(revenue_code_source_value, 'subQuery')){
      statement <- paste0(statement, ' revenue_code_source_value = (', as.character(revenue_code_source_value), ')')
    } else {
      statement <- paste0(statement, " revenue_code_source_value = '", revenue_code_source_value,"'")
    }
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_visit_cost <- function(fetchField, visit_cost_id, visit_occurrence_id, currency_concept_id, paid_copay, paid_coinsurance, paid_toward_deductible, paid_by_payer, paid_by_coordination_benefits, total_out_of_pocket, total_paid, payer_plan_period_id) {
  statement <- paste0('SELECT ', fetchField , ' FROM visit_cost WHERE')
  first <- TRUE
  if (!missing(visit_cost_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(visit_cost_id)) {
      statement <- paste0(statement, ' visit_cost_id IS NULL')
    } else if (is(visit_cost_id, 'subQuery')){
      statement <- paste0(statement, ' visit_cost_id = (', as.character(visit_cost_id), ')')
    } else {
      statement <- paste0(statement, " visit_cost_id = '", visit_cost_id,"'")
    }
  }

  if (!missing(visit_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(visit_occurrence_id)) {
      statement <- paste0(statement, ' visit_occurrence_id IS NULL')
    } else if (is(visit_occurrence_id, 'subQuery')){
      statement <- paste0(statement, ' visit_occurrence_id = (', as.character(visit_occurrence_id), ')')
    } else {
      statement <- paste0(statement, " visit_occurrence_id = '", visit_occurrence_id,"'")
    }
  }

  if (!missing(currency_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(currency_concept_id)) {
      statement <- paste0(statement, ' currency_concept_id IS NULL')
    } else if (is(currency_concept_id, 'subQuery')){
      statement <- paste0(statement, ' currency_concept_id = (', as.character(currency_concept_id), ')')
    } else {
      statement <- paste0(statement, " currency_concept_id = '", currency_concept_id,"'")
    }
  }

  if (!missing(paid_copay)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_copay)) {
      statement <- paste0(statement, ' paid_copay IS NULL')
    } else if (is(paid_copay, 'subQuery')){
      statement <- paste0(statement, ' paid_copay = (', as.character(paid_copay), ')')
    } else {
      statement <- paste0(statement, " paid_copay = '", paid_copay,"'")
    }
  }

  if (!missing(paid_coinsurance)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_coinsurance)) {
      statement <- paste0(statement, ' paid_coinsurance IS NULL')
    } else if (is(paid_coinsurance, 'subQuery')){
      statement <- paste0(statement, ' paid_coinsurance = (', as.character(paid_coinsurance), ')')
    } else {
      statement <- paste0(statement, " paid_coinsurance = '", paid_coinsurance,"'")
    }
  }

  if (!missing(paid_toward_deductible)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_toward_deductible)) {
      statement <- paste0(statement, ' paid_toward_deductible IS NULL')
    } else if (is(paid_toward_deductible, 'subQuery')){
      statement <- paste0(statement, ' paid_toward_deductible = (', as.character(paid_toward_deductible), ')')
    } else {
      statement <- paste0(statement, " paid_toward_deductible = '", paid_toward_deductible,"'")
    }
  }

  if (!missing(paid_by_payer)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_by_payer)) {
      statement <- paste0(statement, ' paid_by_payer IS NULL')
    } else if (is(paid_by_payer, 'subQuery')){
      statement <- paste0(statement, ' paid_by_payer = (', as.character(paid_by_payer), ')')
    } else {
      statement <- paste0(statement, " paid_by_payer = '", paid_by_payer,"'")
    }
  }

  if (!missing(paid_by_coordination_benefits)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_by_coordination_benefits)) {
      statement <- paste0(statement, ' paid_by_coordination_benefits IS NULL')
    } else if (is(paid_by_coordination_benefits, 'subQuery')){
      statement <- paste0(statement, ' paid_by_coordination_benefits = (', as.character(paid_by_coordination_benefits), ')')
    } else {
      statement <- paste0(statement, " paid_by_coordination_benefits = '", paid_by_coordination_benefits,"'")
    }
  }

  if (!missing(total_out_of_pocket)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(total_out_of_pocket)) {
      statement <- paste0(statement, ' total_out_of_pocket IS NULL')
    } else if (is(total_out_of_pocket, 'subQuery')){
      statement <- paste0(statement, ' total_out_of_pocket = (', as.character(total_out_of_pocket), ')')
    } else {
      statement <- paste0(statement, " total_out_of_pocket = '", total_out_of_pocket,"'")
    }
  }

  if (!missing(total_paid)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(total_paid)) {
      statement <- paste0(statement, ' total_paid IS NULL')
    } else if (is(total_paid, 'subQuery')){
      statement <- paste0(statement, ' total_paid = (', as.character(total_paid), ')')
    } else {
      statement <- paste0(statement, " total_paid = '", total_paid,"'")
    }
  }

  if (!missing(payer_plan_period_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(payer_plan_period_id)) {
      statement <- paste0(statement, ' payer_plan_period_id IS NULL')
    } else if (is(payer_plan_period_id, 'subQuery')){
      statement <- paste0(statement, ' payer_plan_period_id = (', as.character(payer_plan_period_id), ')')
    } else {
      statement <- paste0(statement, " payer_plan_period_id = '", payer_plan_period_id,"'")
    }
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_drug_cost <- function(fetchField, drug_cost_id, drug_exposure_id, currency_concept_id, paid_copay, paid_coinsurance, paid_toward_deductible, paid_by_payer, paid_by_coordination_benefits, total_out_of_pocket, total_paid, ingredient_cost, dispensing_fee, average_wholesale_price, payer_plan_period_id) {
  statement <- paste0('SELECT ', fetchField , ' FROM drug_cost WHERE')
  first <- TRUE
  if (!missing(drug_cost_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(drug_cost_id)) {
      statement <- paste0(statement, ' drug_cost_id IS NULL')
    } else if (is(drug_cost_id, 'subQuery')){
      statement <- paste0(statement, ' drug_cost_id = (', as.character(drug_cost_id), ')')
    } else {
      statement <- paste0(statement, " drug_cost_id = '", drug_cost_id,"'")
    }
  }

  if (!missing(drug_exposure_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(drug_exposure_id)) {
      statement <- paste0(statement, ' drug_exposure_id IS NULL')
    } else if (is(drug_exposure_id, 'subQuery')){
      statement <- paste0(statement, ' drug_exposure_id = (', as.character(drug_exposure_id), ')')
    } else {
      statement <- paste0(statement, " drug_exposure_id = '", drug_exposure_id,"'")
    }
  }

  if (!missing(currency_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(currency_concept_id)) {
      statement <- paste0(statement, ' currency_concept_id IS NULL')
    } else if (is(currency_concept_id, 'subQuery')){
      statement <- paste0(statement, ' currency_concept_id = (', as.character(currency_concept_id), ')')
    } else {
      statement <- paste0(statement, " currency_concept_id = '", currency_concept_id,"'")
    }
  }

  if (!missing(paid_copay)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_copay)) {
      statement <- paste0(statement, ' paid_copay IS NULL')
    } else if (is(paid_copay, 'subQuery')){
      statement <- paste0(statement, ' paid_copay = (', as.character(paid_copay), ')')
    } else {
      statement <- paste0(statement, " paid_copay = '", paid_copay,"'")
    }
  }

  if (!missing(paid_coinsurance)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_coinsurance)) {
      statement <- paste0(statement, ' paid_coinsurance IS NULL')
    } else if (is(paid_coinsurance, 'subQuery')){
      statement <- paste0(statement, ' paid_coinsurance = (', as.character(paid_coinsurance), ')')
    } else {
      statement <- paste0(statement, " paid_coinsurance = '", paid_coinsurance,"'")
    }
  }

  if (!missing(paid_toward_deductible)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_toward_deductible)) {
      statement <- paste0(statement, ' paid_toward_deductible IS NULL')
    } else if (is(paid_toward_deductible, 'subQuery')){
      statement <- paste0(statement, ' paid_toward_deductible = (', as.character(paid_toward_deductible), ')')
    } else {
      statement <- paste0(statement, " paid_toward_deductible = '", paid_toward_deductible,"'")
    }
  }

  if (!missing(paid_by_payer)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_by_payer)) {
      statement <- paste0(statement, ' paid_by_payer IS NULL')
    } else if (is(paid_by_payer, 'subQuery')){
      statement <- paste0(statement, ' paid_by_payer = (', as.character(paid_by_payer), ')')
    } else {
      statement <- paste0(statement, " paid_by_payer = '", paid_by_payer,"'")
    }
  }

  if (!missing(paid_by_coordination_benefits)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_by_coordination_benefits)) {
      statement <- paste0(statement, ' paid_by_coordination_benefits IS NULL')
    } else if (is(paid_by_coordination_benefits, 'subQuery')){
      statement <- paste0(statement, ' paid_by_coordination_benefits = (', as.character(paid_by_coordination_benefits), ')')
    } else {
      statement <- paste0(statement, " paid_by_coordination_benefits = '", paid_by_coordination_benefits,"'")
    }
  }

  if (!missing(total_out_of_pocket)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(total_out_of_pocket)) {
      statement <- paste0(statement, ' total_out_of_pocket IS NULL')
    } else if (is(total_out_of_pocket, 'subQuery')){
      statement <- paste0(statement, ' total_out_of_pocket = (', as.character(total_out_of_pocket), ')')
    } else {
      statement <- paste0(statement, " total_out_of_pocket = '", total_out_of_pocket,"'")
    }
  }

  if (!missing(total_paid)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(total_paid)) {
      statement <- paste0(statement, ' total_paid IS NULL')
    } else if (is(total_paid, 'subQuery')){
      statement <- paste0(statement, ' total_paid = (', as.character(total_paid), ')')
    } else {
      statement <- paste0(statement, " total_paid = '", total_paid,"'")
    }
  }

  if (!missing(ingredient_cost)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(ingredient_cost)) {
      statement <- paste0(statement, ' ingredient_cost IS NULL')
    } else if (is(ingredient_cost, 'subQuery')){
      statement <- paste0(statement, ' ingredient_cost = (', as.character(ingredient_cost), ')')
    } else {
      statement <- paste0(statement, " ingredient_cost = '", ingredient_cost,"'")
    }
  }

  if (!missing(dispensing_fee)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(dispensing_fee)) {
      statement <- paste0(statement, ' dispensing_fee IS NULL')
    } else if (is(dispensing_fee, 'subQuery')){
      statement <- paste0(statement, ' dispensing_fee = (', as.character(dispensing_fee), ')')
    } else {
      statement <- paste0(statement, " dispensing_fee = '", dispensing_fee,"'")
    }
  }

  if (!missing(average_wholesale_price)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(average_wholesale_price)) {
      statement <- paste0(statement, ' average_wholesale_price IS NULL')
    } else if (is(average_wholesale_price, 'subQuery')){
      statement <- paste0(statement, ' average_wholesale_price = (', as.character(average_wholesale_price), ')')
    } else {
      statement <- paste0(statement, " average_wholesale_price = '", average_wholesale_price,"'")
    }
  }

  if (!missing(payer_plan_period_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(payer_plan_period_id)) {
      statement <- paste0(statement, ' payer_plan_period_id IS NULL')
    } else if (is(payer_plan_period_id, 'subQuery')){
      statement <- paste0(statement, ' payer_plan_period_id = (', as.character(payer_plan_period_id), ')')
    } else {
      statement <- paste0(statement, " payer_plan_period_id = '", payer_plan_period_id,"'")
    }
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_payer_plan_period <- function(fetchField, payer_plan_period_id, person_id, payer_plan_period_start_date, payer_plan_period_end_date, payer_source_value, plan_source_value, family_source_value) {
  statement <- paste0('SELECT ', fetchField , ' FROM payer_plan_period WHERE')
  first <- TRUE
  if (!missing(payer_plan_period_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(payer_plan_period_id)) {
      statement <- paste0(statement, ' payer_plan_period_id IS NULL')
    } else if (is(payer_plan_period_id, 'subQuery')){
      statement <- paste0(statement, ' payer_plan_period_id = (', as.character(payer_plan_period_id), ')')
    } else {
      statement <- paste0(statement, " payer_plan_period_id = '", payer_plan_period_id,"'")
    }
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(person_id)) {
      statement <- paste0(statement, ' person_id IS NULL')
    } else if (is(person_id, 'subQuery')){
      statement <- paste0(statement, ' person_id = (', as.character(person_id), ')')
    } else {
      statement <- paste0(statement, " person_id = '", person_id,"'")
    }
  }

  if (!missing(payer_plan_period_start_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(payer_plan_period_start_date)) {
      statement <- paste0(statement, ' payer_plan_period_start_date IS NULL')
    } else if (is(payer_plan_period_start_date, 'subQuery')){
      statement <- paste0(statement, ' payer_plan_period_start_date = (', as.character(payer_plan_period_start_date), ')')
    } else {
      statement <- paste0(statement, " payer_plan_period_start_date = '", payer_plan_period_start_date,"'")
    }
  }

  if (!missing(payer_plan_period_end_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(payer_plan_period_end_date)) {
      statement <- paste0(statement, ' payer_plan_period_end_date IS NULL')
    } else if (is(payer_plan_period_end_date, 'subQuery')){
      statement <- paste0(statement, ' payer_plan_period_end_date = (', as.character(payer_plan_period_end_date), ')')
    } else {
      statement <- paste0(statement, " payer_plan_period_end_date = '", payer_plan_period_end_date,"'")
    }
  }

  if (!missing(payer_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(payer_source_value)) {
      statement <- paste0(statement, ' payer_source_value IS NULL')
    } else if (is(payer_source_value, 'subQuery')){
      statement <- paste0(statement, ' payer_source_value = (', as.character(payer_source_value), ')')
    } else {
      statement <- paste0(statement, " payer_source_value = '", payer_source_value,"'")
    }
  }

  if (!missing(plan_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(plan_source_value)) {
      statement <- paste0(statement, ' plan_source_value IS NULL')
    } else if (is(plan_source_value, 'subQuery')){
      statement <- paste0(statement, ' plan_source_value = (', as.character(plan_source_value), ')')
    } else {
      statement <- paste0(statement, " plan_source_value = '", plan_source_value,"'")
    }
  }

  if (!missing(family_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(family_source_value)) {
      statement <- paste0(statement, ' family_source_value IS NULL')
    } else if (is(family_source_value, 'subQuery')){
      statement <- paste0(statement, ' family_source_value = (', as.character(family_source_value), ')')
    } else {
      statement <- paste0(statement, " family_source_value = '", family_source_value,"'")
    }
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_device_cost <- function(fetchField, device_cost_id, device_exposure_id, currency_concept_id, paid_copay, paid_coinsurance, paid_toward_deductible, paid_by_payer, paid_by_coordination_benefits, total_out_of_pocket, total_paid, payer_plan_period_id) {
  statement <- paste0('SELECT ', fetchField , ' FROM device_cost WHERE')
  first <- TRUE
  if (!missing(device_cost_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(device_cost_id)) {
      statement <- paste0(statement, ' device_cost_id IS NULL')
    } else if (is(device_cost_id, 'subQuery')){
      statement <- paste0(statement, ' device_cost_id = (', as.character(device_cost_id), ')')
    } else {
      statement <- paste0(statement, " device_cost_id = '", device_cost_id,"'")
    }
  }

  if (!missing(device_exposure_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(device_exposure_id)) {
      statement <- paste0(statement, ' device_exposure_id IS NULL')
    } else if (is(device_exposure_id, 'subQuery')){
      statement <- paste0(statement, ' device_exposure_id = (', as.character(device_exposure_id), ')')
    } else {
      statement <- paste0(statement, " device_exposure_id = '", device_exposure_id,"'")
    }
  }

  if (!missing(currency_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(currency_concept_id)) {
      statement <- paste0(statement, ' currency_concept_id IS NULL')
    } else if (is(currency_concept_id, 'subQuery')){
      statement <- paste0(statement, ' currency_concept_id = (', as.character(currency_concept_id), ')')
    } else {
      statement <- paste0(statement, " currency_concept_id = '", currency_concept_id,"'")
    }
  }

  if (!missing(paid_copay)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_copay)) {
      statement <- paste0(statement, ' paid_copay IS NULL')
    } else if (is(paid_copay, 'subQuery')){
      statement <- paste0(statement, ' paid_copay = (', as.character(paid_copay), ')')
    } else {
      statement <- paste0(statement, " paid_copay = '", paid_copay,"'")
    }
  }

  if (!missing(paid_coinsurance)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_coinsurance)) {
      statement <- paste0(statement, ' paid_coinsurance IS NULL')
    } else if (is(paid_coinsurance, 'subQuery')){
      statement <- paste0(statement, ' paid_coinsurance = (', as.character(paid_coinsurance), ')')
    } else {
      statement <- paste0(statement, " paid_coinsurance = '", paid_coinsurance,"'")
    }
  }

  if (!missing(paid_toward_deductible)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_toward_deductible)) {
      statement <- paste0(statement, ' paid_toward_deductible IS NULL')
    } else if (is(paid_toward_deductible, 'subQuery')){
      statement <- paste0(statement, ' paid_toward_deductible = (', as.character(paid_toward_deductible), ')')
    } else {
      statement <- paste0(statement, " paid_toward_deductible = '", paid_toward_deductible,"'")
    }
  }

  if (!missing(paid_by_payer)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_by_payer)) {
      statement <- paste0(statement, ' paid_by_payer IS NULL')
    } else if (is(paid_by_payer, 'subQuery')){
      statement <- paste0(statement, ' paid_by_payer = (', as.character(paid_by_payer), ')')
    } else {
      statement <- paste0(statement, " paid_by_payer = '", paid_by_payer,"'")
    }
  }

  if (!missing(paid_by_coordination_benefits)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(paid_by_coordination_benefits)) {
      statement <- paste0(statement, ' paid_by_coordination_benefits IS NULL')
    } else if (is(paid_by_coordination_benefits, 'subQuery')){
      statement <- paste0(statement, ' paid_by_coordination_benefits = (', as.character(paid_by_coordination_benefits), ')')
    } else {
      statement <- paste0(statement, " paid_by_coordination_benefits = '", paid_by_coordination_benefits,"'")
    }
  }

  if (!missing(total_out_of_pocket)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(total_out_of_pocket)) {
      statement <- paste0(statement, ' total_out_of_pocket IS NULL')
    } else if (is(total_out_of_pocket, 'subQuery')){
      statement <- paste0(statement, ' total_out_of_pocket = (', as.character(total_out_of_pocket), ')')
    } else {
      statement <- paste0(statement, " total_out_of_pocket = '", total_out_of_pocket,"'")
    }
  }

  if (!missing(total_paid)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(total_paid)) {
      statement <- paste0(statement, ' total_paid IS NULL')
    } else if (is(total_paid, 'subQuery')){
      statement <- paste0(statement, ' total_paid = (', as.character(total_paid), ')')
    } else {
      statement <- paste0(statement, " total_paid = '", total_paid,"'")
    }
  }

  if (!missing(payer_plan_period_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(payer_plan_period_id)) {
      statement <- paste0(statement, ' payer_plan_period_id IS NULL')
    } else if (is(payer_plan_period_id, 'subQuery')){
      statement <- paste0(statement, ' payer_plan_period_id = (', as.character(payer_plan_period_id), ')')
    } else {
      statement <- paste0(statement, " payer_plan_period_id = '", payer_plan_period_id,"'")
    }
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_dose_era <- function(fetchField, dose_era_id, person_id, drug_concept_id, unit_concept_id, dose_value, dose_era_start_date, dose_era_end_date) {
  statement <- paste0('SELECT ', fetchField , ' FROM dose_era WHERE')
  first <- TRUE
  if (!missing(dose_era_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(dose_era_id)) {
      statement <- paste0(statement, ' dose_era_id IS NULL')
    } else if (is(dose_era_id, 'subQuery')){
      statement <- paste0(statement, ' dose_era_id = (', as.character(dose_era_id), ')')
    } else {
      statement <- paste0(statement, " dose_era_id = '", dose_era_id,"'")
    }
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(person_id)) {
      statement <- paste0(statement, ' person_id IS NULL')
    } else if (is(person_id, 'subQuery')){
      statement <- paste0(statement, ' person_id = (', as.character(person_id), ')')
    } else {
      statement <- paste0(statement, " person_id = '", person_id,"'")
    }
  }

  if (!missing(drug_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(drug_concept_id)) {
      statement <- paste0(statement, ' drug_concept_id IS NULL')
    } else if (is(drug_concept_id, 'subQuery')){
      statement <- paste0(statement, ' drug_concept_id = (', as.character(drug_concept_id), ')')
    } else {
      statement <- paste0(statement, " drug_concept_id = '", drug_concept_id,"'")
    }
  }

  if (!missing(unit_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(unit_concept_id)) {
      statement <- paste0(statement, ' unit_concept_id IS NULL')
    } else if (is(unit_concept_id, 'subQuery')){
      statement <- paste0(statement, ' unit_concept_id = (', as.character(unit_concept_id), ')')
    } else {
      statement <- paste0(statement, " unit_concept_id = '", unit_concept_id,"'")
    }
  }

  if (!missing(dose_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(dose_value)) {
      statement <- paste0(statement, ' dose_value IS NULL')
    } else if (is(dose_value, 'subQuery')){
      statement <- paste0(statement, ' dose_value = (', as.character(dose_value), ')')
    } else {
      statement <- paste0(statement, " dose_value = '", dose_value,"'")
    }
  }

  if (!missing(dose_era_start_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(dose_era_start_date)) {
      statement <- paste0(statement, ' dose_era_start_date IS NULL')
    } else if (is(dose_era_start_date, 'subQuery')){
      statement <- paste0(statement, ' dose_era_start_date = (', as.character(dose_era_start_date), ')')
    } else {
      statement <- paste0(statement, " dose_era_start_date = '", dose_era_start_date,"'")
    }
  }

  if (!missing(dose_era_end_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(dose_era_end_date)) {
      statement <- paste0(statement, ' dose_era_end_date IS NULL')
    } else if (is(dose_era_end_date, 'subQuery')){
      statement <- paste0(statement, ' dose_era_end_date = (', as.character(dose_era_end_date), ')')
    } else {
      statement <- paste0(statement, " dose_era_end_date = '", dose_era_end_date,"'")
    }
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_condition_era <- function(fetchField, condition_era_id, person_id, condition_concept_id, condition_era_start_date, condition_era_end_date, condition_occurrence_count) {
  statement <- paste0('SELECT ', fetchField , ' FROM condition_era WHERE')
  first <- TRUE
  if (!missing(condition_era_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(condition_era_id)) {
      statement <- paste0(statement, ' condition_era_id IS NULL')
    } else if (is(condition_era_id, 'subQuery')){
      statement <- paste0(statement, ' condition_era_id = (', as.character(condition_era_id), ')')
    } else {
      statement <- paste0(statement, " condition_era_id = '", condition_era_id,"'")
    }
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(person_id)) {
      statement <- paste0(statement, ' person_id IS NULL')
    } else if (is(person_id, 'subQuery')){
      statement <- paste0(statement, ' person_id = (', as.character(person_id), ')')
    } else {
      statement <- paste0(statement, " person_id = '", person_id,"'")
    }
  }

  if (!missing(condition_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(condition_concept_id)) {
      statement <- paste0(statement, ' condition_concept_id IS NULL')
    } else if (is(condition_concept_id, 'subQuery')){
      statement <- paste0(statement, ' condition_concept_id = (', as.character(condition_concept_id), ')')
    } else {
      statement <- paste0(statement, " condition_concept_id = '", condition_concept_id,"'")
    }
  }

  if (!missing(condition_era_start_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(condition_era_start_date)) {
      statement <- paste0(statement, ' condition_era_start_date IS NULL')
    } else if (is(condition_era_start_date, 'subQuery')){
      statement <- paste0(statement, ' condition_era_start_date = (', as.character(condition_era_start_date), ')')
    } else {
      statement <- paste0(statement, " condition_era_start_date = '", condition_era_start_date,"'")
    }
  }

  if (!missing(condition_era_end_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(condition_era_end_date)) {
      statement <- paste0(statement, ' condition_era_end_date IS NULL')
    } else if (is(condition_era_end_date, 'subQuery')){
      statement <- paste0(statement, ' condition_era_end_date = (', as.character(condition_era_end_date), ')')
    } else {
      statement <- paste0(statement, " condition_era_end_date = '", condition_era_end_date,"'")
    }
  }

  if (!missing(condition_occurrence_count)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(condition_occurrence_count)) {
      statement <- paste0(statement, ' condition_occurrence_count IS NULL')
    } else if (is(condition_occurrence_count, 'subQuery')){
      statement <- paste0(statement, ' condition_occurrence_count = (', as.character(condition_occurrence_count), ')')
    } else {
      statement <- paste0(statement, " condition_occurrence_count = '", condition_occurrence_count,"'")
    }
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_cdm_source <- function(fetchField, cdm_source_name, cdm_source_abbreviation, cdm_holder, source_description, source_documentation_reference, cdm_etl_reference, source_release_date, cdm_release_date, cdm_version, vocabulary_version) {
  statement <- paste0('SELECT ', fetchField , ' FROM cdm_source WHERE')
  first <- TRUE
  if (!missing(cdm_source_name)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cdm_source_name)) {
      statement <- paste0(statement, ' cdm_source_name IS NULL')
    } else if (is(cdm_source_name, 'subQuery')){
      statement <- paste0(statement, ' cdm_source_name = (', as.character(cdm_source_name), ')')
    } else {
      statement <- paste0(statement, " cdm_source_name = '", cdm_source_name,"'")
    }
  }

  if (!missing(cdm_source_abbreviation)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cdm_source_abbreviation)) {
      statement <- paste0(statement, ' cdm_source_abbreviation IS NULL')
    } else if (is(cdm_source_abbreviation, 'subQuery')){
      statement <- paste0(statement, ' cdm_source_abbreviation = (', as.character(cdm_source_abbreviation), ')')
    } else {
      statement <- paste0(statement, " cdm_source_abbreviation = '", cdm_source_abbreviation,"'")
    }
  }

  if (!missing(cdm_holder)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cdm_holder)) {
      statement <- paste0(statement, ' cdm_holder IS NULL')
    } else if (is(cdm_holder, 'subQuery')){
      statement <- paste0(statement, ' cdm_holder = (', as.character(cdm_holder), ')')
    } else {
      statement <- paste0(statement, " cdm_holder = '", cdm_holder,"'")
    }
  }

  if (!missing(source_description)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(source_description)) {
      statement <- paste0(statement, ' source_description IS NULL')
    } else if (is(source_description, 'subQuery')){
      statement <- paste0(statement, ' source_description = (', as.character(source_description), ')')
    } else {
      statement <- paste0(statement, " source_description = '", source_description,"'")
    }
  }

  if (!missing(source_documentation_reference)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(source_documentation_reference)) {
      statement <- paste0(statement, ' source_documentation_reference IS NULL')
    } else if (is(source_documentation_reference, 'subQuery')){
      statement <- paste0(statement, ' source_documentation_reference = (', as.character(source_documentation_reference), ')')
    } else {
      statement <- paste0(statement, " source_documentation_reference = '", source_documentation_reference,"'")
    }
  }

  if (!missing(cdm_etl_reference)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cdm_etl_reference)) {
      statement <- paste0(statement, ' cdm_etl_reference IS NULL')
    } else if (is(cdm_etl_reference, 'subQuery')){
      statement <- paste0(statement, ' cdm_etl_reference = (', as.character(cdm_etl_reference), ')')
    } else {
      statement <- paste0(statement, " cdm_etl_reference = '", cdm_etl_reference,"'")
    }
  }

  if (!missing(source_release_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(source_release_date)) {
      statement <- paste0(statement, ' source_release_date IS NULL')
    } else if (is(source_release_date, 'subQuery')){
      statement <- paste0(statement, ' source_release_date = (', as.character(source_release_date), ')')
    } else {
      statement <- paste0(statement, " source_release_date = '", source_release_date,"'")
    }
  }

  if (!missing(cdm_release_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cdm_release_date)) {
      statement <- paste0(statement, ' cdm_release_date IS NULL')
    } else if (is(cdm_release_date, 'subQuery')){
      statement <- paste0(statement, ' cdm_release_date = (', as.character(cdm_release_date), ')')
    } else {
      statement <- paste0(statement, " cdm_release_date = '", cdm_release_date,"'")
    }
  }

  if (!missing(cdm_version)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cdm_version)) {
      statement <- paste0(statement, ' cdm_version IS NULL')
    } else if (is(cdm_version, 'subQuery')){
      statement <- paste0(statement, ' cdm_version = (', as.character(cdm_version), ')')
    } else {
      statement <- paste0(statement, " cdm_version = '", cdm_version,"'")
    }
  }

  if (!missing(vocabulary_version)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(vocabulary_version)) {
      statement <- paste0(statement, ' vocabulary_version IS NULL')
    } else if (is(vocabulary_version, 'subQuery')){
      statement <- paste0(statement, ' vocabulary_version = (', as.character(vocabulary_version), ')')
    } else {
      statement <- paste0(statement, " vocabulary_version = '", vocabulary_version,"'")
    }
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_cohort <- function(fetchField, cohort_definition_id, subject_id, cohort_start_date, cohort_end_date) {
  statement <- paste0('SELECT ', fetchField , ' FROM cohort WHERE')
  first <- TRUE
  if (!missing(cohort_definition_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cohort_definition_id)) {
      statement <- paste0(statement, ' cohort_definition_id IS NULL')
    } else if (is(cohort_definition_id, 'subQuery')){
      statement <- paste0(statement, ' cohort_definition_id = (', as.character(cohort_definition_id), ')')
    } else {
      statement <- paste0(statement, " cohort_definition_id = '", cohort_definition_id,"'")
    }
  }

  if (!missing(subject_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(subject_id)) {
      statement <- paste0(statement, ' subject_id IS NULL')
    } else if (is(subject_id, 'subQuery')){
      statement <- paste0(statement, ' subject_id = (', as.character(subject_id), ')')
    } else {
      statement <- paste0(statement, " subject_id = '", subject_id,"'")
    }
  }

  if (!missing(cohort_start_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cohort_start_date)) {
      statement <- paste0(statement, ' cohort_start_date IS NULL')
    } else if (is(cohort_start_date, 'subQuery')){
      statement <- paste0(statement, ' cohort_start_date = (', as.character(cohort_start_date), ')')
    } else {
      statement <- paste0(statement, " cohort_start_date = '", cohort_start_date,"'")
    }
  }

  if (!missing(cohort_end_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cohort_end_date)) {
      statement <- paste0(statement, ' cohort_end_date IS NULL')
    } else if (is(cohort_end_date, 'subQuery')){
      statement <- paste0(statement, ' cohort_end_date = (', as.character(cohort_end_date), ')')
    } else {
      statement <- paste0(statement, " cohort_end_date = '", cohort_end_date,"'")
    }
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_cohort_definition <- function(fetchField, cohort_definition_id, cohort_definition_name, cohort_definition_description, definition_type_concept_id, cohort_definition_syntax, subject_concept_id, cohort_instantiation_date) {
  statement <- paste0('SELECT ', fetchField , ' FROM cohort_definition WHERE')
  first <- TRUE
  if (!missing(cohort_definition_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cohort_definition_id)) {
      statement <- paste0(statement, ' cohort_definition_id IS NULL')
    } else if (is(cohort_definition_id, 'subQuery')){
      statement <- paste0(statement, ' cohort_definition_id = (', as.character(cohort_definition_id), ')')
    } else {
      statement <- paste0(statement, " cohort_definition_id = '", cohort_definition_id,"'")
    }
  }

  if (!missing(cohort_definition_name)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cohort_definition_name)) {
      statement <- paste0(statement, ' cohort_definition_name IS NULL')
    } else if (is(cohort_definition_name, 'subQuery')){
      statement <- paste0(statement, ' cohort_definition_name = (', as.character(cohort_definition_name), ')')
    } else {
      statement <- paste0(statement, " cohort_definition_name = '", cohort_definition_name,"'")
    }
  }

  if (!missing(cohort_definition_description)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cohort_definition_description)) {
      statement <- paste0(statement, ' cohort_definition_description IS NULL')
    } else if (is(cohort_definition_description, 'subQuery')){
      statement <- paste0(statement, ' cohort_definition_description = (', as.character(cohort_definition_description), ')')
    } else {
      statement <- paste0(statement, " cohort_definition_description = '", cohort_definition_description,"'")
    }
  }

  if (!missing(definition_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(definition_type_concept_id)) {
      statement <- paste0(statement, ' definition_type_concept_id IS NULL')
    } else if (is(definition_type_concept_id, 'subQuery')){
      statement <- paste0(statement, ' definition_type_concept_id = (', as.character(definition_type_concept_id), ')')
    } else {
      statement <- paste0(statement, " definition_type_concept_id = '", definition_type_concept_id,"'")
    }
  }

  if (!missing(cohort_definition_syntax)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cohort_definition_syntax)) {
      statement <- paste0(statement, ' cohort_definition_syntax IS NULL')
    } else if (is(cohort_definition_syntax, 'subQuery')){
      statement <- paste0(statement, ' cohort_definition_syntax = (', as.character(cohort_definition_syntax), ')')
    } else {
      statement <- paste0(statement, " cohort_definition_syntax = '", cohort_definition_syntax,"'")
    }
  }

  if (!missing(subject_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(subject_concept_id)) {
      statement <- paste0(statement, ' subject_concept_id IS NULL')
    } else if (is(subject_concept_id, 'subQuery')){
      statement <- paste0(statement, ' subject_concept_id = (', as.character(subject_concept_id), ')')
    } else {
      statement <- paste0(statement, " subject_concept_id = '", subject_concept_id,"'")
    }
  }

  if (!missing(cohort_instantiation_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cohort_instantiation_date)) {
      statement <- paste0(statement, ' cohort_instantiation_date IS NULL')
    } else if (is(cohort_instantiation_date, 'subQuery')){
      statement <- paste0(statement, ' cohort_instantiation_date = (', as.character(cohort_instantiation_date), ')')
    } else {
      statement <- paste0(statement, " cohort_instantiation_date = '", cohort_instantiation_date,"'")
    }
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_cohort_attribute <- function(fetchField, cohort_definition_id, cohort_start_date, cohort_end_date, subject_id, attribute_definition_id, value_as_number, value_as_concept_id) {
  statement <- paste0('SELECT ', fetchField , ' FROM cohort_attribute WHERE')
  first <- TRUE
  if (!missing(cohort_definition_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cohort_definition_id)) {
      statement <- paste0(statement, ' cohort_definition_id IS NULL')
    } else if (is(cohort_definition_id, 'subQuery')){
      statement <- paste0(statement, ' cohort_definition_id = (', as.character(cohort_definition_id), ')')
    } else {
      statement <- paste0(statement, " cohort_definition_id = '", cohort_definition_id,"'")
    }
  }

  if (!missing(cohort_start_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cohort_start_date)) {
      statement <- paste0(statement, ' cohort_start_date IS NULL')
    } else if (is(cohort_start_date, 'subQuery')){
      statement <- paste0(statement, ' cohort_start_date = (', as.character(cohort_start_date), ')')
    } else {
      statement <- paste0(statement, " cohort_start_date = '", cohort_start_date,"'")
    }
  }

  if (!missing(cohort_end_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(cohort_end_date)) {
      statement <- paste0(statement, ' cohort_end_date IS NULL')
    } else if (is(cohort_end_date, 'subQuery')){
      statement <- paste0(statement, ' cohort_end_date = (', as.character(cohort_end_date), ')')
    } else {
      statement <- paste0(statement, " cohort_end_date = '", cohort_end_date,"'")
    }
  }

  if (!missing(subject_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(subject_id)) {
      statement <- paste0(statement, ' subject_id IS NULL')
    } else if (is(subject_id, 'subQuery')){
      statement <- paste0(statement, ' subject_id = (', as.character(subject_id), ')')
    } else {
      statement <- paste0(statement, " subject_id = '", subject_id,"'")
    }
  }

  if (!missing(attribute_definition_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(attribute_definition_id)) {
      statement <- paste0(statement, ' attribute_definition_id IS NULL')
    } else if (is(attribute_definition_id, 'subQuery')){
      statement <- paste0(statement, ' attribute_definition_id = (', as.character(attribute_definition_id), ')')
    } else {
      statement <- paste0(statement, " attribute_definition_id = '", attribute_definition_id,"'")
    }
  }

  if (!missing(value_as_number)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(value_as_number)) {
      statement <- paste0(statement, ' value_as_number IS NULL')
    } else if (is(value_as_number, 'subQuery')){
      statement <- paste0(statement, ' value_as_number = (', as.character(value_as_number), ')')
    } else {
      statement <- paste0(statement, " value_as_number = '", value_as_number,"'")
    }
  }

  if (!missing(value_as_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(value_as_concept_id)) {
      statement <- paste0(statement, ' value_as_concept_id IS NULL')
    } else if (is(value_as_concept_id, 'subQuery')){
      statement <- paste0(statement, ' value_as_concept_id = (', as.character(value_as_concept_id), ')')
    } else {
      statement <- paste0(statement, " value_as_concept_id = '", value_as_concept_id,"'")
    }
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_attribute_definition <- function(fetchField, attribute_definition_id, attribute_name, attribute_description, attribute_type_concept_id, attribute_syntax) {
  statement <- paste0('SELECT ', fetchField , ' FROM attribute_definition WHERE')
  first <- TRUE
  if (!missing(attribute_definition_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(attribute_definition_id)) {
      statement <- paste0(statement, ' attribute_definition_id IS NULL')
    } else if (is(attribute_definition_id, 'subQuery')){
      statement <- paste0(statement, ' attribute_definition_id = (', as.character(attribute_definition_id), ')')
    } else {
      statement <- paste0(statement, " attribute_definition_id = '", attribute_definition_id,"'")
    }
  }

  if (!missing(attribute_name)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(attribute_name)) {
      statement <- paste0(statement, ' attribute_name IS NULL')
    } else if (is(attribute_name, 'subQuery')){
      statement <- paste0(statement, ' attribute_name = (', as.character(attribute_name), ')')
    } else {
      statement <- paste0(statement, " attribute_name = '", attribute_name,"'")
    }
  }

  if (!missing(attribute_description)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(attribute_description)) {
      statement <- paste0(statement, ' attribute_description IS NULL')
    } else if (is(attribute_description, 'subQuery')){
      statement <- paste0(statement, ' attribute_description = (', as.character(attribute_description), ')')
    } else {
      statement <- paste0(statement, " attribute_description = '", attribute_description,"'")
    }
  }

  if (!missing(attribute_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(attribute_type_concept_id)) {
      statement <- paste0(statement, ' attribute_type_concept_id IS NULL')
    } else if (is(attribute_type_concept_id, 'subQuery')){
      statement <- paste0(statement, ' attribute_type_concept_id = (', as.character(attribute_type_concept_id), ')')
    } else {
      statement <- paste0(statement, " attribute_type_concept_id = '", attribute_type_concept_id,"'")
    }
  }

  if (!missing(attribute_syntax)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, ' AND')
    }
    if (is.null(attribute_syntax)) {
      statement <- paste0(statement, ' attribute_syntax IS NULL')
    } else if (is(attribute_syntax, 'subQuery')){
      statement <- paste0(statement, ' attribute_syntax = (', as.character(attribute_syntax), ')')
    } else {
      statement <- paste0(statement, " attribute_syntax = '", attribute_syntax,"'")
    }
  }

  class(statement) <- 'subQuery'
  return(statement)
}

