initFramework <- function() {
  frameworkContext <- new.env(parent = globalenv())
  class(frameworkContext) <- 'frameworkContext'
  assign('frameworkContext', frameworkContext, envir = globalenv())
  frameworkContext$inserts <- list()
  frameworkContext$expects <- list()
  frameworkContext$testId <- -1
  frameworkContext$testDescription <- ""
  frameworkContext$defaultValues <- new.env(parent = frameworkContext)

  defaults <- list()
  defaults$id <- ''
  defaults$num_ac_adversos <- '1'
  defaults$numsipcod <- ''
  defaults$ano_mes <- '201507'
  defaults$cod_crg <- '6'
  defaults$cod_est_salud <- '62702'
  assign('tb_aconadve', defaults, envir = frameworkContext$defaultValues)

  defaults <- list()
  defaults$id <- ''
  defaults$num_alergias <- '1'
  defaults$numsipcod <- ''
  defaults$ano_mes <- '201501'
  defaults$cod_crg <- '6'
  defaults$cod_est_salud <- '40001'
  assign('tb_alergias', defaults, envir = frameworkContext$defaultValues)

  defaults <- list()
  defaults$id <- ''
  defaults$tipo_actividad <- 'HOS'
  defaults$numsipcod <- ''
  defaults$d1 <- '366.9'
  defaults$d2 <- ''
  defaults$d3 <- ''
  defaults$d4 <- ''
  defaults$d5 <- ''
  defaults$d6 <- ''
  defaults$d7 <- ''
  defaults$d8 <- ''
  defaults$d9 <- ''
  defaults$d10 <- ''
  defaults$d11 <- ''
  defaults$d12 <- ''
  defaults$d13 <- ''
  defaults$d14 <- ''
  defaults$d15 <- ''
  defaults$d16 <- ''
  defaults$d17 <- ''
  defaults$d18 <- ''
  defaults$d19 <- ''
  defaults$d20 <- ''
  defaults$d21 <- ''
  defaults$d22 <- ''
  defaults$d23 <- ''
  defaults$d24 <- ''
  defaults$d25 <- ''
  defaults$d26 <- ''
  defaults$d27 <- ''
  defaults$d28 <- ''
  defaults$d29 <- ''
  defaults$d30 <- ''
  defaults$p1 <- ''
  defaults$p2 <- ''
  defaults$p3 <- ''
  defaults$p4 <- ''
  defaults$p5 <- ''
  defaults$p6 <- ''
  defaults$p7 <- ''
  defaults$p8 <- ''
  defaults$p9 <- ''
  defaults$p10 <- ''
  defaults$p11 <- ''
  defaults$p12 <- ''
  defaults$p13 <- ''
  defaults$p14 <- ''
  defaults$p15 <- ''
  defaults$p16 <- ''
  defaults$p17 <- ''
  defaults$p18 <- ''
  defaults$p19 <- ''
  defaults$p20 <- ''
  defaults$p21 <- ''
  defaults$p22 <- ''
  defaults$p23 <- ''
  defaults$p24 <- ''
  defaults$p25 <- ''
  defaults$p26 <- ''
  defaults$p27 <- ''
  defaults$p28 <- ''
  defaults$p29 <- ''
  defaults$p30 <- ''
  defaults$cir_ingreso <- '1'
  defaults$fecha_ingreso <- '2014-03-10'
  defaults$fecha_alta <- '2016-02-05'
  defaults$cir_alta <- '1'
  defaults$grd <- '039'
  defaults$peso_grd <- '1.04'
  assign('tb_ante_cmbd', defaults, envir = frameworkContext$defaultValues)

  defaults <- list()
  defaults$id <- ''
  defaults$numsipcod <- ''
  defaults$fecha_inicio <- '2008-01-03'
  defaults$fecha_fin <- '2008-10-13'
  defaults$cod_diagnostico <- '460'
  defaults$estado_morbilidad <- 'Inactivo Resolucion'
  assign('tb_antepers', defaults, envir = frameworkContext$defaultValues)

  defaults <- list()
  defaults$id <- ''
  defaults$num_consultas <- '1'
  defaults$numsipcod <- ''
  defaults$fecha_consulta <- '2015-12-15'
  defaults$cod_serv_homologado <- 'OFT'
  defaults$cod_serv_propio <- 'EAE'
  assign('tb_cex', defaults, envir = frameworkContext$defaultValues)

  defaults <- list()
  defaults$id <- ''
  defaults$num_cieatc <- '1'
  defaults$numsipcod <- ''
  defaults$ano_mes <- '201501'
  defaults$cod_crg <- '6'
  defaults$cod_est_salud <- '10000'
  assign('tb_cie_atc', defaults, envir = frameworkContext$defaultValues)

  defaults <- list()
  defaults$id <- ''
  defaults$num_consultas <- '1'
  defaults$numsipcod <- ''
  defaults$fecha_registro <- '2014-10-23'
  defaults$cod_serv_homologado <- 'MFC'
  defaults$cod_serv_propio <- 'MFC'
  assign('tb_consultas_atp', defaults, envir = frameworkContext$defaultValues)

  defaults <- list()
  defaults$id <- ''
  defaults$num_contraindicaciones <- '1'
  defaults$numsipcod <- ''
  defaults$ano_mes <- '201506'
  defaults$cod_crg <- '6'
  defaults$cod_est_salud <- '62702'
  defaults$tipo_contraindicacion <- 'R'
  assign('tb_contraind', defaults, envir = frameworkContext$defaultValues)

  defaults <- list()
  defaults$id <- ''
  defaults$num_ctdh <- '1'
  defaults$numsipcod <- ''
  defaults$ano_mes <- '201409'
  defaults$cod_crg <- '6'
  defaults$cod_est_salud <- '40001'
  assign('tb_ctdh', defaults, envir = frameworkContext$defaultValues)

  defaults <- list()
  defaults$id <- ''
  defaults$tipo_actividad <- 'HOS'
  defaults$numsipcod <- ''
  defaults$cie9 <- '401.9'
  defaults$cir_ingreso <- '1'
  defaults$fecha_ingreso <- '2015-12-01'
  defaults$fecha_alta <- '2012-12-21'
  defaults$cir_alta <- '1'
  defaults$grd <- '541'
  defaults$peso_grd <- '2.22'
  defaults$orden <- '1'
  assign('tb_diag_cmbd', defaults, envir = frameworkContext$defaultValues)

  defaults <- list()
  defaults$id <- ''
  defaults$numsipcod <- ''
  defaults$fecha_inicio <- '2015-10-27'
  defaults$fecha_fin <- ''
  defaults$cod_diagnostico <- '00084'
  defaults$estado_morbilidad <- 'Activo'
  defaults$tipo_actividad <- ''
  defaults$cir_ingreso <- ''
  defaults$cir_alta <- ''
  defaults$grd <- ''
  defaults$peso_grd <- ''
  defaults$orden <- ''
  defaults$origen <- 'M'
  assign('tb_diag_juntos', defaults, envir = frameworkContext$defaultValues)

  defaults <- list()
  defaults$id <- ''
  defaults$num_duplicidades <- '1'
  defaults$numsipcod <- ''
  defaults$ano_mes <- '201409'
  defaults$cod_crg <- '6'
  defaults$cod_est_salud <- '40001'
  assign('tb_duplicid', defaults, envir = frameworkContext$defaultValues)

  defaults <- list()
  defaults$id <- ''
  defaults$numsipcod <- ''
  defaults$fecha <- '2016-03-23'
  defaults$num_estancia_uci <- '0'
  assign('tb_estancia_uci', defaults, envir = frameworkContext$defaultValues)

  defaults <- list()
  defaults$id <- ''
  defaults$numsipcod <- ''
  defaults$fecha_registro <- '2013-02-11'
  defaults$fecha_baja <- '2013-02-11'
  defaults$fecha_alta <- ''
  defaults$dias_baja <- '1'
  defaults$cod_causa_alta <- 'MEJ'
  defaults$cod_diagnostico <- '724.2'
  defaults$cod_motivo_cierre <- '-1'
  defaults$cod_procedimiento <- '-1'
  defaults$cod_tipo_baja <- 'EFC'
  assign('tb_incatemp', defaults, envir = frameworkContext$defaultValues)

  defaults <- list()
  defaults$id <- ''
  defaults$num_interacciones <- '1'
  defaults$numsipcod <- ''
  defaults$ano_mes <- '201506'
  defaults$cod_crg <- '6'
  defaults$cod_est_salud <- '51921'
  defaults$gravedad_interaccion <- 'MODERADA'
  assign('tb_interacc', defaults, envir = frameworkContext$defaultValues)

  defaults <- list()
  defaults$numsipcod <- ''
  defaults$fecha_inicio <- '2014-03-12'
  defaults$fecha_fin <- ''
  defaults$cod_diagnostico <- '460'
  defaults$estado_morbilidad <- 'Activo'
  assign('tb_morbilid', defaults, envir = frameworkContext$defaultValues)

  defaults <- list()
  defaults$id <- ''
  defaults$num_posologias <- '1'
  defaults$tipo_posologia <- 'I'
  defaults$numsipcod <- ''
  defaults$ano_mes <- '201501'
  defaults$cod_crg <- '6'
  defaults$cod_est_salud <- '40001'
  assign('tb_posologia', defaults, envir = frameworkContext$defaultValues)

  defaults <- list()
  defaults$id <- ''
  defaults$numsipcod <- ''
  defaults$numreceta <- ''
  defaults$id_tratamiento <- '-1                   '
  defaults$fecha_prescripcion <- '2015-01-14'
  defaults$cod_atc2 <- 'N02'
  defaults$cod_atc4 <- 'A02BC'
  defaults$cod_presfarma <- '713'
  defaults$cod_prinactivo <- '2141A'
  assign('tb_prescrip', defaults, envir = frameworkContext$defaultValues)

  defaults <- list()
  defaults$id <- ''
  defaults$valor_registrado <- ''
  defaults$numsipcod <- ''
  defaults$fecha_registro <- '2016-04-13'
  defaults$cod_prestacion <- '-1'
  defaults$cod_ud_medida <- '-2'
  assign('tb_prestaci', defaults, envir = frameworkContext$defaultValues)

  defaults <- list()
  defaults$id <- ''
  defaults$tipo_actividad <- 'HOS'
  defaults$numsipcod <- ''
  defaults$cie9p <- '13.41          '
  defaults$cir_ingreso <- '1'
  defaults$fecha_ingreso <- '2014-02-24'
  defaults$fecha_alta <- '2015-03-13'
  defaults$cir_alta <- '1'
  defaults$grd <- '039'
  defaults$peso_grd <- '1.04'
  defaults$orden <- '1'
  assign('tb_proc_cmbd', defaults, envir = frameworkContext$defaultValues)

  defaults <- list()
  defaults$id <- ''
  defaults$numsipcod <- ''
  defaults$numreceta <- ''
  defaults$anomes_facturacion <- '201501'
  defaults$fecha_dispensacion <- '2015-12-09'
  defaults$cod_atc2 <- 'N02'
  defaults$cod_atc4 <- 'A02BC'
  defaults$cod_presfarma <- '713'
  defaults$cod_prinactivo <- '2141A'
  assign('tb_rele', defaults, envir = frameworkContext$defaultValues)

  defaults <- list()
  defaults$id <- ''
  defaults$numsipcod <- ''
  defaults$ano_mes <- '201203'
  defaults$cod_crg <- '10000'
  defaults$cod_est_salud <- '1'
  assign('tb_scp_2012', defaults, envir = frameworkContext$defaultValues)

  defaults <- list()
  defaults$id <- ''
  defaults$numsipcod <- ''
  defaults$ano_mes <- '201308'
  defaults$cod_crg <- '-1'
  defaults$cod_est_salud <- '1'
  assign('tb_scp_2013', defaults, envir = frameworkContext$defaultValues)

  defaults <- list()
  defaults$id <- ''
  defaults$numsipcod <- ''
  defaults$ano_mes <- '201403'
  defaults$cod_crg <- '10000'
  defaults$cod_est_salud <- '1'
  assign('tb_scp_2014', defaults, envir = frameworkContext$defaultValues)

  defaults <- list()
  defaults$id <- ''
  defaults$numsipcod <- ''
  defaults$ano_mes <- '201508'
  defaults$cod_crg <- '10000'
  defaults$cod_est_salud <- '1'
  assign('tb_scp_2015', defaults, envir = frameworkContext$defaultValues)

  defaults <- list()
  defaults$id <- ''
  defaults$numsipcod <- ''
  defaults$sexo <- 'M'
  defaults$fecha_nac <- '1976-01-01'
  defaults$fecha_def <- ''
  defaults$fecha_baja_sip <- ''
  defaults$cod_causa_baja <- ''
  assign('tb_sip_spo', defaults, envir = frameworkContext$defaultValues)

  defaults <- list()
  defaults$id <- ''
  defaults$numsipcod <- ''
  defaults$cod_centro_asignacion <- '163'
  defaults$cod_departamento_asignacion <- '10'
  defaults$cod_zona_asignacion <- '3'
  defaults$clave_medica <- ''
  defaults$codigo_apsig <- ''
  defaults$fecha_corte <- '2012-01-01'
  defaults$sit_empadronamiento <- '1'
  defaults$nacionalidad_espanola <- 'S'
  defaults$cod_modalidad <- 'F-SS-1'
  defaults$derecho_medico <- 'S'
  defaults$cod_pais_procedencia_acred <- '108'
  defaults$cod_comunidad_procedencia_acred <- '909'
  defaults$cod_pais_nacimiento <- '108'
  defaults$titular_beneficiario <- 'T'
  defaults$cod_raf <- ''
  assign('tb_sip_spo_resto_2012', defaults, envir = frameworkContext$defaultValues)

  defaults <- list()
  defaults$id <- ''
  defaults$numsipcod <- ''
  defaults$cod_centro_asignacion <- '163'
  defaults$cod_departamento_asignacion <- '9'
  defaults$cod_zona_asignacion <- '3'
  defaults$clave_medica <- ''
  defaults$codigo_apsig <- ''
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
  assign('tb_sip_spo_resto_2015', defaults, envir = frameworkContext$defaultValues)

  defaults <- list()
  defaults$id <- ''
  defaults$unidades <- '1.00'
  defaults$numsipcod <- ''
  defaults$dias_tratamiento <- '365'
  defaults$id_tratamiento <- ''
  defaults$cadencia <- '24.00'
  defaults$fecha_fin_tratamiento <- '2015-01-16'
  defaults$fecha_inicio_tratamiento <- '2014-12-30'
  defaults$cod_atc2 <- 'N02'
  defaults$cod_atc4 <- 'M01AE'
  defaults$cod_presfarma <- '713'
  defaults$cod_prinactivo <- '12A'
  defaults$tipo_posologia <- 'Horaria'
  defaults$unidad_posologia <- 'COMPRIMIDO'
  assign('tb_tratamientos', defaults, envir = frameworkContext$defaultValues)

  defaults <- list()
  defaults$id <- ''
  defaults$num_urgencias <- '1'
  defaults$numsipcod <- ''
  defaults$fecha_urgencia <- '2015-08-17'
  defaults$cod_motivo_urg <- '1'
  assign('tb_urgencias', defaults, envir = frameworkContext$defaultValues)

  defaults <- list()
  defaults$id <- ''
  defaults$valor_registrado <- ''
  defaults$numsipcod <- ''
  defaults$fecha_registro <- '2015-04-23'
  defaults$cod_variable_clinic <- '-1'
  defaults$cod_ud_medida <- '-2'
  assign('tb_variables', defaults, envir = frameworkContext$defaultValues)

  defaults <- list()
  defaults$id <- ''
  defaults$cod_atc2 <- ''
  defaults$des_atc2 <- ''
  assign('tba_atc2', defaults, envir = frameworkContext$defaultValues)

  defaults <- list()
  defaults$id <- ''
  defaults$cod_atc4 <- ''
  defaults$des_atc4 <- ''
  assign('tba_atc4', defaults, envir = frameworkContext$defaultValues)

  defaults <- list()
  defaults$id <- ''
  defaults$cod_causa_alta <- ''
  defaults$des_causa_alta <- ''
  assign('tba_cau_alta', defaults, envir = frameworkContext$defaultValues)

  defaults <- list()
  defaults$id <- ''
  defaults$cod_causa_baja <- ''
  defaults$des_causa_baja <- ''
  assign('tba_cau_baja', defaults, envir = frameworkContext$defaultValues)

  defaults <- list()
  defaults$id <- ''
  defaults$cod_centro <- ''
  defaults$des_centro <- ''
  assign('tba_centros', defaults, envir = frameworkContext$defaultValues)

  defaults <- list()
  defaults$id <- ''
  defaults$cod_centro <- ''
  defaults$cod_departamento <- '14'
  defaults$cod_zona <- '4-9'
  assign('tba_centros_asignacion', defaults, envir = frameworkContext$defaultValues)

  defaults <- list()
  defaults$id <- ''
  defaults$cod_diagnostico <- ''
  defaults$des_diagnostico <- 'CEGUERA Y BAJA VISION-NIVEL DE DETERIORO SIN MAS ESPECIFICACION'
  assign('tba_cie9', defaults, envir = frameworkContext$defaultValues)

  defaults <- list()
  defaults$id <- ''
  defaults$cod_procedimiento <- ''
  defaults$des_procedimiento <- ''
  assign('tba_cie9p', defaults, envir = frameworkContext$defaultValues)

  defaults <- list()
  defaults$id <- ''
  defaults$cod_comunidad <- ''
  defaults$des_comunidad <- ''
  assign('tba_comunidad_acred', defaults, envir = frameworkContext$defaultValues)

  defaults <- list()
  defaults$id <- ''
  defaults$cod_crg <- ''
  defaults$des_crg <- 'EPOC y otra enfermedad moderada crónica'
  assign('tba_crg', defaults, envir = frameworkContext$defaultValues)

  defaults <- list()
  defaults$id <- ''
  defaults$cod_departamento <- ''
  defaults$des_departamento <- ''
  assign('tba_departamentos', defaults, envir = frameworkContext$defaultValues)

  defaults <- list()
  defaults$id <- ''
  defaults$cod_est_salud <- ''
  defaults$des_est_salud <- ''
  assign('tba_est_salud', defaults, envir = frameworkContext$defaultValues)

  defaults <- list()
  defaults$id <- ''
  defaults$cod_presfarma <- ''
  defaults$des_presfarma <- ''
  defaults$cod_prinactivo <- '300127A'
  defaults$des_prinactivo <- 'BOLSAS RESINA SINTETICA MICROPORO Y FILTRO'
  defaults$cod_atc2 <- 'J01'
  defaults$des_atc2 <- 'ANTIBACTERIANOS DE USO SISTEMICO'
  defaults$cod_atc4 <- 'V01AA'
  defaults$des_atc4 <- 'EXTRACTOS DE ALERGENOS'
  assign('tba_farmacia', defaults, envir = frameworkContext$defaultValues)

  defaults <- list()
  defaults$id <- ''
  defaults$cod_modalidad <- ''
  defaults$des_modalidad <- ''
  assign('tba_modalidad', defaults, envir = frameworkContext$defaultValues)

  defaults <- list()
  defaults$id <- ''
  defaults$cod_motivo_cierre <- ''
  defaults$des_motivo_cierre <- ''
  assign('tba_mot_cierre', defaults, envir = frameworkContext$defaultValues)

  defaults <- list()
  defaults$id <- ''
  defaults$cod_motivo_urg <- ''
  defaults$des_motivo_urg <- ''
  assign('tba_mot_urgencia', defaults, envir = frameworkContext$defaultValues)

  defaults <- list()
  defaults$id <- ''
  defaults$cod_pais <- ''
  defaults$des_pais <- ''
  assign('tba_pais_acred', defaults, envir = frameworkContext$defaultValues)

  defaults <- list()
  defaults$id <- ''
  defaults$cod_presfarma <- ''
  defaults$des_presfarma <- ''
  assign('tba_presfarma', defaults, envir = frameworkContext$defaultValues)

  defaults <- list()
  defaults$id <- ''
  defaults$cod_prinactivo <- ''
  defaults$des_prinactivo <- ''
  assign('tba_prinactivo', defaults, envir = frameworkContext$defaultValues)

  defaults <- list()
  defaults$id <- ''
  defaults$cod_raf <- ''
  defaults$des_raf <- ''
  assign('tba_raf', defaults, envir = frameworkContext$defaultValues)

  defaults <- list()
  defaults$id <- ''
  defaults$cod_serv_homologado <- ''
  defaults$des_serv_homologado <- ''
  assign('tba_serv_homologado', defaults, envir = frameworkContext$defaultValues)

  defaults <- list()
  defaults$id <- ''
  defaults$cod_serv_propio <- ''
  defaults$des_serv_propio <- 'MEDICINA INTERNA'
  assign('tba_serv_propio', defaults, envir = frameworkContext$defaultValues)

  defaults <- list()
  defaults$id <- ''
  defaults$cod_tipo_baja <- ''
  defaults$des_tipo_baja <- ''
  assign('tba_tip_baja', defaults, envir = frameworkContext$defaultValues)

  defaults <- list()
  defaults$id <- ''
  defaults$cod_prestacion <- ''
  defaults$des_prestacion <- ''
  assign('tba_tip_prest', defaults, envir = frameworkContext$defaultValues)

  defaults <- list()
  defaults$id <- ''
  defaults$cod_variable_clinic <- ''
  defaults$des_variable_clinic <- 'Problema detectado'
  assign('tba_tip_variables', defaults, envir = frameworkContext$defaultValues)

  defaults <- list()
  defaults$id <- ''
  defaults$cod_ud_medida <- ''
  defaults$des_ud_medida <- ''
  assign('tba_ud_medidas', defaults, envir = frameworkContext$defaultValues)

  defaults <- list()
  defaults$id <- ''
  defaults$cod_zona <- ''
  defaults$des_zona <- 'DESCONOCIDA'
  assign('tba_zonas', defaults, envir = frameworkContext$defaultValues)

  frameworkContext$sourceFieldsMapped <- c(
  )

  frameworkContext$targetFieldsMapped <- c(
  )

  frameworkContext$sourceFieldsTested <- c()
  frameworkContext$targetFieldsTested <- c()
}

initFramework()

set_defaults_tb_aconadve <- function(id, num_ac_adversos, numsipcod, ano_mes, cod_crg, cod_est_salud) {
  defaults <- get('tb_aconadve', envir = frameworkContext$defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(num_ac_adversos)) {
    defaults$num_ac_adversos <- num_ac_adversos
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
  assign('tb_aconadve', defaults, envir = frameworkContext$defaultValues)
  invisible(defaults)
}

set_defaults_tb_alergias <- function(id, num_alergias, numsipcod, ano_mes, cod_crg, cod_est_salud) {
  defaults <- get('tb_alergias', envir = frameworkContext$defaultValues)
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
  assign('tb_alergias', defaults, envir = frameworkContext$defaultValues)
  invisible(defaults)
}

set_defaults_tb_ante_cmbd <- function(id, tipo_actividad, numsipcod, d1, d2, d3, d4, d5, d6, d7, d8, d9, d10, d11, d12, d13, d14, d15, d16, d17, d18, d19, d20, d21, d22, d23, d24, d25, d26, d27, d28, d29, d30, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16, p17, p18, p19, p20, p21, p22, p23, p24, p25, p26, p27, p28, p29, p30, cir_ingreso, fecha_ingreso, fecha_alta, cir_alta, grd, peso_grd) {
  defaults <- get('tb_ante_cmbd', envir = frameworkContext$defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(tipo_actividad)) {
    defaults$tipo_actividad <- tipo_actividad
  }
  if (!missing(numsipcod)) {
    defaults$numsipcod <- numsipcod
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
  assign('tb_ante_cmbd', defaults, envir = frameworkContext$defaultValues)
  invisible(defaults)
}

set_defaults_tb_antepers <- function(id, numsipcod, fecha_inicio, fecha_fin, cod_diagnostico, estado_morbilidad) {
  defaults <- get('tb_antepers', envir = frameworkContext$defaultValues)
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
  assign('tb_antepers', defaults, envir = frameworkContext$defaultValues)
  invisible(defaults)
}

set_defaults_tb_cex <- function(id, num_consultas, numsipcod, fecha_consulta, cod_serv_homologado, cod_serv_propio) {
  defaults <- get('tb_cex', envir = frameworkContext$defaultValues)
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
  assign('tb_cex', defaults, envir = frameworkContext$defaultValues)
  invisible(defaults)
}

set_defaults_tb_cie_atc <- function(id, num_cieatc, numsipcod, ano_mes, cod_crg, cod_est_salud) {
  defaults <- get('tb_cie_atc', envir = frameworkContext$defaultValues)
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
  assign('tb_cie_atc', defaults, envir = frameworkContext$defaultValues)
  invisible(defaults)
}

set_defaults_tb_consultas_atp <- function(id, num_consultas, numsipcod, fecha_registro, cod_serv_homologado, cod_serv_propio) {
  defaults <- get('tb_consultas_atp', envir = frameworkContext$defaultValues)
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
  assign('tb_consultas_atp', defaults, envir = frameworkContext$defaultValues)
  invisible(defaults)
}

set_defaults_tb_contraind <- function(id, num_contraindicaciones, numsipcod, ano_mes, cod_crg, cod_est_salud, tipo_contraindicacion) {
  defaults <- get('tb_contraind', envir = frameworkContext$defaultValues)
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
  assign('tb_contraind', defaults, envir = frameworkContext$defaultValues)
  invisible(defaults)
}

set_defaults_tb_ctdh <- function(id, num_ctdh, numsipcod, ano_mes, cod_crg, cod_est_salud) {
  defaults <- get('tb_ctdh', envir = frameworkContext$defaultValues)
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
  assign('tb_ctdh', defaults, envir = frameworkContext$defaultValues)
  invisible(defaults)
}

set_defaults_tb_diag_cmbd <- function(id, tipo_actividad, numsipcod, cie9, cir_ingreso, fecha_ingreso, fecha_alta, cir_alta, grd, peso_grd, orden) {
  defaults <- get('tb_diag_cmbd', envir = frameworkContext$defaultValues)
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
  assign('tb_diag_cmbd', defaults, envir = frameworkContext$defaultValues)
  invisible(defaults)
}

set_defaults_tb_diag_juntos <- function(id, numsipcod, fecha_inicio, fecha_fin, cod_diagnostico, estado_morbilidad, tipo_actividad, cir_ingreso, cir_alta, grd, peso_grd, orden, origen) {
  defaults <- get('tb_diag_juntos', envir = frameworkContext$defaultValues)
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
  assign('tb_diag_juntos', defaults, envir = frameworkContext$defaultValues)
  invisible(defaults)
}

set_defaults_tb_duplicid <- function(id, num_duplicidades, numsipcod, ano_mes, cod_crg, cod_est_salud) {
  defaults <- get('tb_duplicid', envir = frameworkContext$defaultValues)
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
  assign('tb_duplicid', defaults, envir = frameworkContext$defaultValues)
  invisible(defaults)
}

set_defaults_tb_estancia_uci <- function(id, numsipcod, fecha, num_estancia_uci) {
  defaults <- get('tb_estancia_uci', envir = frameworkContext$defaultValues)
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
  assign('tb_estancia_uci', defaults, envir = frameworkContext$defaultValues)
  invisible(defaults)
}

set_defaults_tb_incatemp <- function(id, numsipcod, fecha_registro, fecha_baja, fecha_alta, dias_baja, cod_causa_alta, cod_diagnostico, cod_motivo_cierre, cod_procedimiento, cod_tipo_baja) {
  defaults <- get('tb_incatemp', envir = frameworkContext$defaultValues)
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
  assign('tb_incatemp', defaults, envir = frameworkContext$defaultValues)
  invisible(defaults)
}

set_defaults_tb_interacc <- function(id, num_interacciones, numsipcod, ano_mes, cod_crg, cod_est_salud, gravedad_interaccion) {
  defaults <- get('tb_interacc', envir = frameworkContext$defaultValues)
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
  assign('tb_interacc', defaults, envir = frameworkContext$defaultValues)
  invisible(defaults)
}


set_defaults_tb_morbilid <- function(numsipcod, fecha_inicio, fecha_fin, cod_diagnostico, estado_morbilidad) {
  defaults <- get('tb_morbilid', envir = frameworkContext$defaultValues)
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
  assign('tb_morbilid', defaults, envir = frameworkContext$defaultValues)
  invisible(defaults)
}

set_defaults_tb_posologia <- function(id, num_posologias, tipo_posologia, numsipcod, ano_mes, cod_crg, cod_est_salud) {
  defaults <- get('tb_posologia', envir = frameworkContext$defaultValues)
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
  assign('tb_posologia', defaults, envir = frameworkContext$defaultValues)
  invisible(defaults)
}

set_defaults_tb_prescrip <- function(id, numsipcod, numreceta, id_tratamiento, fecha_prescripcion, cod_atc2, cod_atc4, cod_presfarma, cod_prinactivo) {
  defaults <- get('tb_prescrip', envir = frameworkContext$defaultValues)
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
  assign('tb_prescrip', defaults, envir = frameworkContext$defaultValues)
  invisible(defaults)
}

set_defaults_tb_prestaci <- function(id, valor_registrado, numsipcod, fecha_registro, cod_prestacion, cod_ud_medida) {
  defaults <- get('tb_prestaci', envir = frameworkContext$defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(valor_registrado)) {
    defaults$valor_registrado <- valor_registrado
  }
  if (!missing(numsipcod)) {
    defaults$numsipcod <- numsipcod
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
  assign('tb_prestaci', defaults, envir = frameworkContext$defaultValues)
  invisible(defaults)
}

set_defaults_tb_proc_cmbd <- function(id, tipo_actividad, numsipcod, cie9p, cir_ingreso, fecha_ingreso, fecha_alta, cir_alta, grd, peso_grd, orden) {
  defaults <- get('tb_proc_cmbd', envir = frameworkContext$defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(tipo_actividad)) {
    defaults$tipo_actividad <- tipo_actividad
  }
  if (!missing(numsipcod)) {
    defaults$numsipcod <- numsipcod
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
  assign('tb_proc_cmbd', defaults, envir = frameworkContext$defaultValues)
  invisible(defaults)
}

set_defaults_tb_rele <- function(id, numsipcod, numreceta, anomes_facturacion, fecha_dispensacion, cod_atc2, cod_atc4, cod_presfarma, cod_prinactivo) {
  defaults <- get('tb_rele', envir = frameworkContext$defaultValues)
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
  assign('tb_rele', defaults, envir = frameworkContext$defaultValues)
  invisible(defaults)
}

set_defaults_tb_scp_2012 <- function(id, numsipcod, ano_mes, cod_crg, cod_est_salud) {
  defaults <- get('tb_scp_2012', envir = frameworkContext$defaultValues)
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
  assign('tb_scp_2012', defaults, envir = frameworkContext$defaultValues)
  invisible(defaults)
}

set_defaults_tb_scp_2013 <- function(id, numsipcod, ano_mes, cod_crg, cod_est_salud) {
  defaults <- get('tb_scp_2013', envir = frameworkContext$defaultValues)
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
  assign('tb_scp_2013', defaults, envir = frameworkContext$defaultValues)
  invisible(defaults)
}

set_defaults_tb_scp_2014 <- function(id, numsipcod, ano_mes, cod_crg, cod_est_salud) {
  defaults <- get('tb_scp_2014', envir = frameworkContext$defaultValues)
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
  assign('tb_scp_2014', defaults, envir = frameworkContext$defaultValues)
  invisible(defaults)
}

set_defaults_tb_scp_2015 <- function(id, numsipcod, ano_mes, cod_crg, cod_est_salud) {
  defaults <- get('tb_scp_2015', envir = frameworkContext$defaultValues)
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
  assign('tb_scp_2015', defaults, envir = frameworkContext$defaultValues)
  invisible(defaults)
}

set_defaults_tb_sip_spo <- function(id, numsipcod, sexo, fecha_nac, fecha_def, fecha_baja_sip, cod_causa_baja) {
  defaults <- get('tb_sip_spo', envir = frameworkContext$defaultValues)
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
  assign('tb_sip_spo', defaults, envir = frameworkContext$defaultValues)
  invisible(defaults)
}

set_defaults_tb_sip_spo_resto_2012 <- function(id, numsipcod, cod_centro_asignacion, cod_departamento_asignacion, cod_zona_asignacion, clave_medica, codigo_apsig, fecha_corte, sit_empadronamiento, nacionalidad_espanola, cod_modalidad, derecho_medico, cod_pais_procedencia_acred, cod_comunidad_procedencia_acred, cod_pais_nacimiento, titular_beneficiario, cod_raf) {
  defaults <- get('tb_sip_spo_resto_2012', envir = frameworkContext$defaultValues)
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
  assign('tb_sip_spo_resto_2012', defaults, envir = frameworkContext$defaultValues)
  invisible(defaults)
}

set_defaults_tb_sip_spo_resto_2015 <- function(id, numsipcod, cod_centro_asignacion, cod_departamento_asignacion, cod_zona_asignacion, clave_medica, codigo_apsig, fecha_corte, sit_empadronamiento, nacionalidad_espanola, cod_modalidad, derecho_medico, cod_pais_procedencia_acred, cod_comunidad_procedencia_acred, cod_pais_nacimiento, titular_beneficiario, cod_raf) {
  defaults <- get('tb_sip_spo_resto_2015', envir = frameworkContext$defaultValues)
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
  assign('tb_sip_spo_resto_2015', defaults, envir = frameworkContext$defaultValues)
  invisible(defaults)
}

set_defaults_tb_tratamientos <- function(id, unidades, numsipcod, dias_tratamiento, id_tratamiento, cadencia, fecha_fin_tratamiento, fecha_inicio_tratamiento, cod_atc2, cod_atc4, cod_presfarma, cod_prinactivo, tipo_posologia, unidad_posologia) {
  defaults <- get('tb_tratamientos', envir = frameworkContext$defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(unidades)) {
    defaults$unidades <- unidades
  }
  if (!missing(numsipcod)) {
    defaults$numsipcod <- numsipcod
  }
  if (!missing(dias_tratamiento)) {
    defaults$dias_tratamiento <- dias_tratamiento
  }
  if (!missing(id_tratamiento)) {
    defaults$id_tratamiento <- id_tratamiento
  }
  if (!missing(cadencia)) {
    defaults$cadencia <- cadencia
  }
  if (!missing(fecha_fin_tratamiento)) {
    defaults$fecha_fin_tratamiento <- fecha_fin_tratamiento
  }
  if (!missing(fecha_inicio_tratamiento)) {
    defaults$fecha_inicio_tratamiento <- fecha_inicio_tratamiento
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
  if (!missing(tipo_posologia)) {
    defaults$tipo_posologia <- tipo_posologia
  }
  if (!missing(unidad_posologia)) {
    defaults$unidad_posologia <- unidad_posologia
  }
  assign('tb_tratamientos', defaults, envir = frameworkContext$defaultValues)
  invisible(defaults)
}

set_defaults_tb_urgencias <- function(id, num_urgencias, numsipcod, fecha_urgencia, cod_motivo_urg) {
  defaults <- get('tb_urgencias', envir = frameworkContext$defaultValues)
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
  assign('tb_urgencias', defaults, envir = frameworkContext$defaultValues)
  invisible(defaults)
}

set_defaults_tb_variables <- function(id, valor_registrado, numsipcod, fecha_registro, cod_variable_clinic, cod_ud_medida) {
  defaults <- get('tb_variables', envir = frameworkContext$defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(valor_registrado)) {
    defaults$valor_registrado <- valor_registrado
  }
  if (!missing(numsipcod)) {
    defaults$numsipcod <- numsipcod
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
  assign('tb_variables', defaults, envir = frameworkContext$defaultValues)
  invisible(defaults)
}

set_defaults_tba_atc2 <- function(id, cod_atc2, des_atc2) {
  defaults <- get('tba_atc2', envir = frameworkContext$defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(cod_atc2)) {
    defaults$cod_atc2 <- cod_atc2
  }
  if (!missing(des_atc2)) {
    defaults$des_atc2 <- des_atc2
  }
  assign('tba_atc2', defaults, envir = frameworkContext$defaultValues)
  invisible(defaults)
}

set_defaults_tba_atc4 <- function(id, cod_atc4, des_atc4) {
  defaults <- get('tba_atc4', envir = frameworkContext$defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(cod_atc4)) {
    defaults$cod_atc4 <- cod_atc4
  }
  if (!missing(des_atc4)) {
    defaults$des_atc4 <- des_atc4
  }
  assign('tba_atc4', defaults, envir = frameworkContext$defaultValues)
  invisible(defaults)
}

set_defaults_tba_cau_alta <- function(id, cod_causa_alta, des_causa_alta) {
  defaults <- get('tba_cau_alta', envir = frameworkContext$defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(cod_causa_alta)) {
    defaults$cod_causa_alta <- cod_causa_alta
  }
  if (!missing(des_causa_alta)) {
    defaults$des_causa_alta <- des_causa_alta
  }
  assign('tba_cau_alta', defaults, envir = frameworkContext$defaultValues)
  invisible(defaults)
}

set_defaults_tba_cau_baja <- function(id, cod_causa_baja, des_causa_baja) {
  defaults <- get('tba_cau_baja', envir = frameworkContext$defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(cod_causa_baja)) {
    defaults$cod_causa_baja <- cod_causa_baja
  }
  if (!missing(des_causa_baja)) {
    defaults$des_causa_baja <- des_causa_baja
  }
  assign('tba_cau_baja', defaults, envir = frameworkContext$defaultValues)
  invisible(defaults)
}

set_defaults_tba_centros <- function(id, cod_centro, des_centro) {
  defaults <- get('tba_centros', envir = frameworkContext$defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(cod_centro)) {
    defaults$cod_centro <- cod_centro
  }
  if (!missing(des_centro)) {
    defaults$des_centro <- des_centro
  }
  assign('tba_centros', defaults, envir = frameworkContext$defaultValues)
  invisible(defaults)
}

set_defaults_tba_centros_asignacion <- function(id, cod_centro, cod_departamento, cod_zona) {
  defaults <- get('tba_centros_asignacion', envir = frameworkContext$defaultValues)
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
  assign('tba_centros_asignacion', defaults, envir = frameworkContext$defaultValues)
  invisible(defaults)
}

set_defaults_tba_cie9 <- function(id, cod_diagnostico, des_diagnostico) {
  defaults <- get('tba_cie9', envir = frameworkContext$defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(cod_diagnostico)) {
    defaults$cod_diagnostico <- cod_diagnostico
  }
  if (!missing(des_diagnostico)) {
    defaults$des_diagnostico <- des_diagnostico
  }
  assign('tba_cie9', defaults, envir = frameworkContext$defaultValues)
  invisible(defaults)
}

set_defaults_tba_cie9p <- function(id, cod_procedimiento, des_procedimiento) {
  defaults <- get('tba_cie9p', envir = frameworkContext$defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(cod_procedimiento)) {
    defaults$cod_procedimiento <- cod_procedimiento
  }
  if (!missing(des_procedimiento)) {
    defaults$des_procedimiento <- des_procedimiento
  }
  assign('tba_cie9p', defaults, envir = frameworkContext$defaultValues)
  invisible(defaults)
}

set_defaults_tba_comunidad_acred <- function(id, cod_comunidad, des_comunidad) {
  defaults <- get('tba_comunidad_acred', envir = frameworkContext$defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(cod_comunidad)) {
    defaults$cod_comunidad <- cod_comunidad
  }
  if (!missing(des_comunidad)) {
    defaults$des_comunidad <- des_comunidad
  }
  assign('tba_comunidad_acred', defaults, envir = frameworkContext$defaultValues)
  invisible(defaults)
}

set_defaults_tba_crg <- function(id, cod_crg, des_crg) {
  defaults <- get('tba_crg', envir = frameworkContext$defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(cod_crg)) {
    defaults$cod_crg <- cod_crg
  }
  if (!missing(des_crg)) {
    defaults$des_crg <- des_crg
  }
  assign('tba_crg', defaults, envir = frameworkContext$defaultValues)
  invisible(defaults)
}

set_defaults_tba_departamentos <- function(id, cod_departamento, des_departamento) {
  defaults <- get('tba_departamentos', envir = frameworkContext$defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(cod_departamento)) {
    defaults$cod_departamento <- cod_departamento
  }
  if (!missing(des_departamento)) {
    defaults$des_departamento <- des_departamento
  }
  assign('tba_departamentos', defaults, envir = frameworkContext$defaultValues)
  invisible(defaults)
}

set_defaults_tba_est_salud <- function(id, cod_est_salud, des_est_salud) {
  defaults <- get('tba_est_salud', envir = frameworkContext$defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(cod_est_salud)) {
    defaults$cod_est_salud <- cod_est_salud
  }
  if (!missing(des_est_salud)) {
    defaults$des_est_salud <- des_est_salud
  }
  assign('tba_est_salud', defaults, envir = frameworkContext$defaultValues)
  invisible(defaults)
}

set_defaults_tba_farmacia <- function(id, cod_presfarma, des_presfarma, cod_prinactivo, des_prinactivo, cod_atc2, des_atc2, cod_atc4, des_atc4) {
  defaults <- get('tba_farmacia', envir = frameworkContext$defaultValues)
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
  assign('tba_farmacia', defaults, envir = frameworkContext$defaultValues)
  invisible(defaults)
}

set_defaults_tba_modalidad <- function(id, cod_modalidad, des_modalidad) {
  defaults <- get('tba_modalidad', envir = frameworkContext$defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(cod_modalidad)) {
    defaults$cod_modalidad <- cod_modalidad
  }
  if (!missing(des_modalidad)) {
    defaults$des_modalidad <- des_modalidad
  }
  assign('tba_modalidad', defaults, envir = frameworkContext$defaultValues)
  invisible(defaults)
}

set_defaults_tba_mot_cierre <- function(id, cod_motivo_cierre, des_motivo_cierre) {
  defaults <- get('tba_mot_cierre', envir = frameworkContext$defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(cod_motivo_cierre)) {
    defaults$cod_motivo_cierre <- cod_motivo_cierre
  }
  if (!missing(des_motivo_cierre)) {
    defaults$des_motivo_cierre <- des_motivo_cierre
  }
  assign('tba_mot_cierre', defaults, envir = frameworkContext$defaultValues)
  invisible(defaults)
}

set_defaults_tba_mot_urgencia <- function(id, cod_motivo_urg, des_motivo_urg) {
  defaults <- get('tba_mot_urgencia', envir = frameworkContext$defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(cod_motivo_urg)) {
    defaults$cod_motivo_urg <- cod_motivo_urg
  }
  if (!missing(des_motivo_urg)) {
    defaults$des_motivo_urg <- des_motivo_urg
  }
  assign('tba_mot_urgencia', defaults, envir = frameworkContext$defaultValues)
  invisible(defaults)
}

set_defaults_tba_pais_acred <- function(id, cod_pais, des_pais) {
  defaults <- get('tba_pais_acred', envir = frameworkContext$defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(cod_pais)) {
    defaults$cod_pais <- cod_pais
  }
  if (!missing(des_pais)) {
    defaults$des_pais <- des_pais
  }
  assign('tba_pais_acred', defaults, envir = frameworkContext$defaultValues)
  invisible(defaults)
}

set_defaults_tba_presfarma <- function(id, cod_presfarma, des_presfarma) {
  defaults <- get('tba_presfarma', envir = frameworkContext$defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(cod_presfarma)) {
    defaults$cod_presfarma <- cod_presfarma
  }
  if (!missing(des_presfarma)) {
    defaults$des_presfarma <- des_presfarma
  }
  assign('tba_presfarma', defaults, envir = frameworkContext$defaultValues)
  invisible(defaults)
}

set_defaults_tba_prinactivo <- function(id, cod_prinactivo, des_prinactivo) {
  defaults <- get('tba_prinactivo', envir = frameworkContext$defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(cod_prinactivo)) {
    defaults$cod_prinactivo <- cod_prinactivo
  }
  if (!missing(des_prinactivo)) {
    defaults$des_prinactivo <- des_prinactivo
  }
  assign('tba_prinactivo', defaults, envir = frameworkContext$defaultValues)
  invisible(defaults)
}

set_defaults_tba_raf <- function(id, cod_raf, des_raf) {
  defaults <- get('tba_raf', envir = frameworkContext$defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(cod_raf)) {
    defaults$cod_raf <- cod_raf
  }
  if (!missing(des_raf)) {
    defaults$des_raf <- des_raf
  }
  assign('tba_raf', defaults, envir = frameworkContext$defaultValues)
  invisible(defaults)
}

set_defaults_tba_serv_homologado <- function(id, cod_serv_homologado, des_serv_homologado) {
  defaults <- get('tba_serv_homologado', envir = frameworkContext$defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(cod_serv_homologado)) {
    defaults$cod_serv_homologado <- cod_serv_homologado
  }
  if (!missing(des_serv_homologado)) {
    defaults$des_serv_homologado <- des_serv_homologado
  }
  assign('tba_serv_homologado', defaults, envir = frameworkContext$defaultValues)
  invisible(defaults)
}

set_defaults_tba_serv_propio <- function(id, cod_serv_propio, des_serv_propio) {
  defaults <- get('tba_serv_propio', envir = frameworkContext$defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(cod_serv_propio)) {
    defaults$cod_serv_propio <- cod_serv_propio
  }
  if (!missing(des_serv_propio)) {
    defaults$des_serv_propio <- des_serv_propio
  }
  assign('tba_serv_propio', defaults, envir = frameworkContext$defaultValues)
  invisible(defaults)
}

set_defaults_tba_tip_baja <- function(id, cod_tipo_baja, des_tipo_baja) {
  defaults <- get('tba_tip_baja', envir = frameworkContext$defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(cod_tipo_baja)) {
    defaults$cod_tipo_baja <- cod_tipo_baja
  }
  if (!missing(des_tipo_baja)) {
    defaults$des_tipo_baja <- des_tipo_baja
  }
  assign('tba_tip_baja', defaults, envir = frameworkContext$defaultValues)
  invisible(defaults)
}

set_defaults_tba_tip_prest <- function(id, cod_prestacion, des_prestacion) {
  defaults <- get('tba_tip_prest', envir = frameworkContext$defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(cod_prestacion)) {
    defaults$cod_prestacion <- cod_prestacion
  }
  if (!missing(des_prestacion)) {
    defaults$des_prestacion <- des_prestacion
  }
  assign('tba_tip_prest', defaults, envir = frameworkContext$defaultValues)
  invisible(defaults)
}

set_defaults_tba_tip_variables <- function(id, cod_variable_clinic, des_variable_clinic) {
  defaults <- get('tba_tip_variables', envir = frameworkContext$defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(cod_variable_clinic)) {
    defaults$cod_variable_clinic <- cod_variable_clinic
  }
  if (!missing(des_variable_clinic)) {
    defaults$des_variable_clinic <- des_variable_clinic
  }
  assign('tba_tip_variables', defaults, envir = frameworkContext$defaultValues)
  invisible(defaults)
}

set_defaults_tba_ud_medidas <- function(id, cod_ud_medida, des_ud_medida) {
  defaults <- get('tba_ud_medidas', envir = frameworkContext$defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(cod_ud_medida)) {
    defaults$cod_ud_medida <- cod_ud_medida
  }
  if (!missing(des_ud_medida)) {
    defaults$des_ud_medida <- des_ud_medida
  }
  assign('tba_ud_medidas', defaults, envir = frameworkContext$defaultValues)
  invisible(defaults)
}

set_defaults_tba_zonas <- function(id, cod_zona, des_zona) {
  defaults <- get('tba_zonas', envir = frameworkContext$defaultValues)
  if (!missing(id)) {
    defaults$id <- id
  }
  if (!missing(cod_zona)) {
    defaults$cod_zona <- cod_zona
  }
  if (!missing(des_zona)) {
    defaults$des_zona <- des_zona
  }
  assign('tba_zonas', defaults, envir = frameworkContext$defaultValues)
  invisible(defaults)
}

get_defaults_tb_aconadve <- function() {
  defaults <- get('tb_aconadve', envir = frameworkContext$defaultValues)
  return(defaults)
}

get_defaults_tb_alergias <- function() {
  defaults <- get('tb_alergias', envir = frameworkContext$defaultValues)
  return(defaults)
}

get_defaults_tb_ante_cmbd <- function() {
  defaults <- get('tb_ante_cmbd', envir = frameworkContext$defaultValues)
  return(defaults)
}

get_defaults_tb_antepers <- function() {
  defaults <- get('tb_antepers', envir = frameworkContext$defaultValues)
  return(defaults)
}

get_defaults_tb_cex <- function() {
  defaults <- get('tb_cex', envir = frameworkContext$defaultValues)
  return(defaults)
}

get_defaults_tb_cie_atc <- function() {
  defaults <- get('tb_cie_atc', envir = frameworkContext$defaultValues)
  return(defaults)
}

get_defaults_tb_consultas_atp <- function() {
  defaults <- get('tb_consultas_atp', envir = frameworkContext$defaultValues)
  return(defaults)
}

get_defaults_tb_contraind <- function() {
  defaults <- get('tb_contraind', envir = frameworkContext$defaultValues)
  return(defaults)
}

get_defaults_tb_ctdh <- function() {
  defaults <- get('tb_ctdh', envir = frameworkContext$defaultValues)
  return(defaults)
}

get_defaults_tb_diag_cmbd <- function() {
  defaults <- get('tb_diag_cmbd', envir = frameworkContext$defaultValues)
  return(defaults)
}

get_defaults_tb_diag_juntos <- function() {
  defaults <- get('tb_diag_juntos', envir = frameworkContext$defaultValues)
  return(defaults)
}

get_defaults_tb_duplicid <- function() {
  defaults <- get('tb_duplicid', envir = frameworkContext$defaultValues)
  return(defaults)
}

get_defaults_tb_estancia_uci <- function() {
  defaults <- get('tb_estancia_uci', envir = frameworkContext$defaultValues)
  return(defaults)
}

get_defaults_tb_incatemp <- function() {
  defaults <- get('tb_incatemp', envir = frameworkContext$defaultValues)
  return(defaults)
}

get_defaults_tb_interacc <- function() {
  defaults <- get('tb_interacc', envir = frameworkContext$defaultValues)
  return(defaults)
}


get_defaults_tb_morbilid <- function() {
  defaults <- get('tb_morbilid', envir = frameworkContext$defaultValues)
  return(defaults)
}

get_defaults_tb_posologia <- function() {
  defaults <- get('tb_posologia', envir = frameworkContext$defaultValues)
  return(defaults)
}

get_defaults_tb_prescrip <- function() {
  defaults <- get('tb_prescrip', envir = frameworkContext$defaultValues)
  return(defaults)
}

get_defaults_tb_prestaci <- function() {
  defaults <- get('tb_prestaci', envir = frameworkContext$defaultValues)
  return(defaults)
}

get_defaults_tb_proc_cmbd <- function() {
  defaults <- get('tb_proc_cmbd', envir = frameworkContext$defaultValues)
  return(defaults)
}

get_defaults_tb_rele <- function() {
  defaults <- get('tb_rele', envir = frameworkContext$defaultValues)
  return(defaults)
}

get_defaults_tb_scp_2012 <- function() {
  defaults <- get('tb_scp_2012', envir = frameworkContext$defaultValues)
  return(defaults)
}

get_defaults_tb_scp_2013 <- function() {
  defaults <- get('tb_scp_2013', envir = frameworkContext$defaultValues)
  return(defaults)
}

get_defaults_tb_scp_2014 <- function() {
  defaults <- get('tb_scp_2014', envir = frameworkContext$defaultValues)
  return(defaults)
}

get_defaults_tb_scp_2015 <- function() {
  defaults <- get('tb_scp_2015', envir = frameworkContext$defaultValues)
  return(defaults)
}

get_defaults_tb_sip_spo <- function() {
  defaults <- get('tb_sip_spo', envir = frameworkContext$defaultValues)
  return(defaults)
}

get_defaults_tb_sip_spo_resto_2012 <- function() {
  defaults <- get('tb_sip_spo_resto_2012', envir = frameworkContext$defaultValues)
  return(defaults)
}

get_defaults_tb_sip_spo_resto_2015 <- function() {
  defaults <- get('tb_sip_spo_resto_2015', envir = frameworkContext$defaultValues)
  return(defaults)
}

get_defaults_tb_tratamientos <- function() {
  defaults <- get('tb_tratamientos', envir = frameworkContext$defaultValues)
  return(defaults)
}

get_defaults_tb_urgencias <- function() {
  defaults <- get('tb_urgencias', envir = frameworkContext$defaultValues)
  return(defaults)
}

get_defaults_tb_variables <- function() {
  defaults <- get('tb_variables', envir = frameworkContext$defaultValues)
  return(defaults)
}

get_defaults_tba_atc2 <- function() {
  defaults <- get('tba_atc2', envir = frameworkContext$defaultValues)
  return(defaults)
}

get_defaults_tba_atc4 <- function() {
  defaults <- get('tba_atc4', envir = frameworkContext$defaultValues)
  return(defaults)
}

get_defaults_tba_cau_alta <- function() {
  defaults <- get('tba_cau_alta', envir = frameworkContext$defaultValues)
  return(defaults)
}

get_defaults_tba_cau_baja <- function() {
  defaults <- get('tba_cau_baja', envir = frameworkContext$defaultValues)
  return(defaults)
}

get_defaults_tba_centros <- function() {
  defaults <- get('tba_centros', envir = frameworkContext$defaultValues)
  return(defaults)
}

get_defaults_tba_centros_asignacion <- function() {
  defaults <- get('tba_centros_asignacion', envir = frameworkContext$defaultValues)
  return(defaults)
}

get_defaults_tba_cie9 <- function() {
  defaults <- get('tba_cie9', envir = frameworkContext$defaultValues)
  return(defaults)
}

get_defaults_tba_cie9p <- function() {
  defaults <- get('tba_cie9p', envir = frameworkContext$defaultValues)
  return(defaults)
}

get_defaults_tba_comunidad_acred <- function() {
  defaults <- get('tba_comunidad_acred', envir = frameworkContext$defaultValues)
  return(defaults)
}

get_defaults_tba_crg <- function() {
  defaults <- get('tba_crg', envir = frameworkContext$defaultValues)
  return(defaults)
}

get_defaults_tba_departamentos <- function() {
  defaults <- get('tba_departamentos', envir = frameworkContext$defaultValues)
  return(defaults)
}

get_defaults_tba_est_salud <- function() {
  defaults <- get('tba_est_salud', envir = frameworkContext$defaultValues)
  return(defaults)
}

get_defaults_tba_farmacia <- function() {
  defaults <- get('tba_farmacia', envir = frameworkContext$defaultValues)
  return(defaults)
}

get_defaults_tba_modalidad <- function() {
  defaults <- get('tba_modalidad', envir = frameworkContext$defaultValues)
  return(defaults)
}

get_defaults_tba_mot_cierre <- function() {
  defaults <- get('tba_mot_cierre', envir = frameworkContext$defaultValues)
  return(defaults)
}

get_defaults_tba_mot_urgencia <- function() {
  defaults <- get('tba_mot_urgencia', envir = frameworkContext$defaultValues)
  return(defaults)
}

get_defaults_tba_pais_acred <- function() {
  defaults <- get('tba_pais_acred', envir = frameworkContext$defaultValues)
  return(defaults)
}

get_defaults_tba_presfarma <- function() {
  defaults <- get('tba_presfarma', envir = frameworkContext$defaultValues)
  return(defaults)
}

get_defaults_tba_prinactivo <- function() {
  defaults <- get('tba_prinactivo', envir = frameworkContext$defaultValues)
  return(defaults)
}

get_defaults_tba_raf <- function() {
  defaults <- get('tba_raf', envir = frameworkContext$defaultValues)
  return(defaults)
}

get_defaults_tba_serv_homologado <- function() {
  defaults <- get('tba_serv_homologado', envir = frameworkContext$defaultValues)
  return(defaults)
}

get_defaults_tba_serv_propio <- function() {
  defaults <- get('tba_serv_propio', envir = frameworkContext$defaultValues)
  return(defaults)
}

get_defaults_tba_tip_baja <- function() {
  defaults <- get('tba_tip_baja', envir = frameworkContext$defaultValues)
  return(defaults)
}

get_defaults_tba_tip_prest <- function() {
  defaults <- get('tba_tip_prest', envir = frameworkContext$defaultValues)
  return(defaults)
}

get_defaults_tba_tip_variables <- function() {
  defaults <- get('tba_tip_variables', envir = frameworkContext$defaultValues)
  return(defaults)
}

get_defaults_tba_ud_medidas <- function() {
  defaults <- get('tba_ud_medidas', envir = frameworkContext$defaultValues)
  return(defaults)
}

get_defaults_tba_zonas <- function() {
  defaults <- get('tba_zonas', envir = frameworkContext$defaultValues)
  return(defaults)
}

declareTest <- function(id, description) {
  frameworkContext$testId <- id
  frameworkContext$testDescription <- description
}

add_tb_aconadve <- function(id, num_ac_adversos, numsipcod, ano_mes, cod_crg, cod_est_salud) {
  defaults <- get('tb_aconadve', envir = frameworkContext$defaultValues)
  fields <- c()
  values <- c()
  if (missing(id)) {
    id <- defaults$id
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_aconadve.id')
  }
  fields <- c(fields, "id")
  values <- c(values, if (is.null(id)) "NULL" else if (is(id, "subQuery")) paste0("(", as.character(id), ")") else paste0("'", as.character(id), "'"))

  if (missing(num_ac_adversos)) {
    num_ac_adversos <- defaults$num_ac_adversos
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_aconadve.num_ac_adversos')
  }
  fields <- c(fields, "num_ac_adversos")
  values <- c(values, if (is.null(num_ac_adversos)) "NULL" else if (is(num_ac_adversos, "subQuery")) paste0("(", as.character(num_ac_adversos), ")") else paste0("'", as.character(num_ac_adversos), "'"))

  if (missing(numsipcod)) {
    numsipcod <- defaults$numsipcod
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_aconadve.numsipcod')
  }
  fields <- c(fields, "numsipcod")
  values <- c(values, if (is.null(numsipcod)) "NULL" else if (is(numsipcod, "subQuery")) paste0("(", as.character(numsipcod), ")") else paste0("'", as.character(numsipcod), "'"))

  if (missing(ano_mes)) {
    ano_mes <- defaults$ano_mes
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_aconadve.ano_mes')
  }
  fields <- c(fields, "ano_mes")
  values <- c(values, if (is.null(ano_mes)) "NULL" else if (is(ano_mes, "subQuery")) paste0("(", as.character(ano_mes), ")") else paste0("'", as.character(ano_mes), "'"))

  if (missing(cod_crg)) {
    cod_crg <- defaults$cod_crg
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_aconadve.cod_crg')
  }
  fields <- c(fields, "cod_crg")
  values <- c(values, if (is.null(cod_crg)) "NULL" else if (is(cod_crg, "subQuery")) paste0("(", as.character(cod_crg), ")") else paste0("'", as.character(cod_crg), "'"))

  if (missing(cod_est_salud)) {
    cod_est_salud <- defaults$cod_est_salud
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_aconadve.cod_est_salud')
  }
  fields <- c(fields, "cod_est_salud")
  values <- c(values, if (is.null(cod_est_salud)) "NULL" else if (is(cod_est_salud, "subQuery")) paste0("(", as.character(cod_est_salud), ")") else paste0("'", as.character(cod_est_salud), "'"))

  inserts <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, table = "tb_aconadve", fields = fields, values = values)
  frameworkContext$inserts[[length(frameworkContext$inserts) + 1]] <- inserts
  invisible(NULL)
}

add_tb_alergias <- function(id, num_alergias, numsipcod, ano_mes, cod_crg, cod_est_salud) {
  defaults <- get('tb_alergias', envir = frameworkContext$defaultValues)
  fields <- c()
  values <- c()
  if (missing(id)) {
    id <- defaults$id
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_alergias.id')
  }
  fields <- c(fields, "id")
  values <- c(values, if (is.null(id)) "NULL" else if (is(id, "subQuery")) paste0("(", as.character(id), ")") else paste0("'", as.character(id), "'"))

  if (missing(num_alergias)) {
    num_alergias <- defaults$num_alergias
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_alergias.num_alergias')
  }
  fields <- c(fields, "num_alergias")
  values <- c(values, if (is.null(num_alergias)) "NULL" else if (is(num_alergias, "subQuery")) paste0("(", as.character(num_alergias), ")") else paste0("'", as.character(num_alergias), "'"))

  if (missing(numsipcod)) {
    numsipcod <- defaults$numsipcod
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_alergias.numsipcod')
  }
  fields <- c(fields, "numsipcod")
  values <- c(values, if (is.null(numsipcod)) "NULL" else if (is(numsipcod, "subQuery")) paste0("(", as.character(numsipcod), ")") else paste0("'", as.character(numsipcod), "'"))

  if (missing(ano_mes)) {
    ano_mes <- defaults$ano_mes
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_alergias.ano_mes')
  }
  fields <- c(fields, "ano_mes")
  values <- c(values, if (is.null(ano_mes)) "NULL" else if (is(ano_mes, "subQuery")) paste0("(", as.character(ano_mes), ")") else paste0("'", as.character(ano_mes), "'"))

  if (missing(cod_crg)) {
    cod_crg <- defaults$cod_crg
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_alergias.cod_crg')
  }
  fields <- c(fields, "cod_crg")
  values <- c(values, if (is.null(cod_crg)) "NULL" else if (is(cod_crg, "subQuery")) paste0("(", as.character(cod_crg), ")") else paste0("'", as.character(cod_crg), "'"))

  if (missing(cod_est_salud)) {
    cod_est_salud <- defaults$cod_est_salud
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_alergias.cod_est_salud')
  }
  fields <- c(fields, "cod_est_salud")
  values <- c(values, if (is.null(cod_est_salud)) "NULL" else if (is(cod_est_salud, "subQuery")) paste0("(", as.character(cod_est_salud), ")") else paste0("'", as.character(cod_est_salud), "'"))

  inserts <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, table = "tb_alergias", fields = fields, values = values)
  frameworkContext$inserts[[length(frameworkContext$inserts) + 1]] <- inserts
  invisible(NULL)
}

add_tb_ante_cmbd <- function(id, tipo_actividad, numsipcod, d1, d2, d3, d4, d5, d6, d7, d8, d9, d10, d11, d12, d13, d14, d15, d16, d17, d18, d19, d20, d21, d22, d23, d24, d25, d26, d27, d28, d29, d30, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16, p17, p18, p19, p20, p21, p22, p23, p24, p25, p26, p27, p28, p29, p30, cir_ingreso, fecha_ingreso, fecha_alta, cir_alta, grd, peso_grd) {
  defaults <- get('tb_ante_cmbd', envir = frameworkContext$defaultValues)
  fields <- c()
  values <- c()
  if (missing(id)) {
    id <- defaults$id
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ante_cmbd.id')
  }
  fields <- c(fields, "id")
  values <- c(values, if (is.null(id)) "NULL" else if (is(id, "subQuery")) paste0("(", as.character(id), ")") else paste0("'", as.character(id), "'"))

  if (missing(tipo_actividad)) {
    tipo_actividad <- defaults$tipo_actividad
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ante_cmbd.tipo_actividad')
  }
  fields <- c(fields, "tipo_actividad")
  values <- c(values, if (is.null(tipo_actividad)) "NULL" else if (is(tipo_actividad, "subQuery")) paste0("(", as.character(tipo_actividad), ")") else paste0("'", as.character(tipo_actividad), "'"))

  if (missing(numsipcod)) {
    numsipcod <- defaults$numsipcod
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ante_cmbd.numsipcod')
  }
  fields <- c(fields, "numsipcod")
  values <- c(values, if (is.null(numsipcod)) "NULL" else if (is(numsipcod, "subQuery")) paste0("(", as.character(numsipcod), ")") else paste0("'", as.character(numsipcod), "'"))

  if (missing(d1)) {
    d1 <- defaults$d1
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ante_cmbd.d1')
  }
  fields <- c(fields, "d1")
  values <- c(values, if (is.null(d1)) "NULL" else if (is(d1, "subQuery")) paste0("(", as.character(d1), ")") else paste0("'", as.character(d1), "'"))

  if (missing(d2)) {
    d2 <- defaults$d2
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ante_cmbd.d2')
  }
  fields <- c(fields, "d2")
  values <- c(values, if (is.null(d2)) "NULL" else if (is(d2, "subQuery")) paste0("(", as.character(d2), ")") else paste0("'", as.character(d2), "'"))

  if (missing(d3)) {
    d3 <- defaults$d3
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ante_cmbd.d3')
  }
  fields <- c(fields, "d3")
  values <- c(values, if (is.null(d3)) "NULL" else if (is(d3, "subQuery")) paste0("(", as.character(d3), ")") else paste0("'", as.character(d3), "'"))

  if (missing(d4)) {
    d4 <- defaults$d4
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ante_cmbd.d4')
  }
  fields <- c(fields, "d4")
  values <- c(values, if (is.null(d4)) "NULL" else if (is(d4, "subQuery")) paste0("(", as.character(d4), ")") else paste0("'", as.character(d4), "'"))

  if (missing(d5)) {
    d5 <- defaults$d5
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ante_cmbd.d5')
  }
  fields <- c(fields, "d5")
  values <- c(values, if (is.null(d5)) "NULL" else if (is(d5, "subQuery")) paste0("(", as.character(d5), ")") else paste0("'", as.character(d5), "'"))

  if (missing(d6)) {
    d6 <- defaults$d6
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ante_cmbd.d6')
  }
  fields <- c(fields, "d6")
  values <- c(values, if (is.null(d6)) "NULL" else if (is(d6, "subQuery")) paste0("(", as.character(d6), ")") else paste0("'", as.character(d6), "'"))

  if (missing(d7)) {
    d7 <- defaults$d7
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ante_cmbd.d7')
  }
  fields <- c(fields, "d7")
  values <- c(values, if (is.null(d7)) "NULL" else if (is(d7, "subQuery")) paste0("(", as.character(d7), ")") else paste0("'", as.character(d7), "'"))

  if (missing(d8)) {
    d8 <- defaults$d8
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ante_cmbd.d8')
  }
  fields <- c(fields, "d8")
  values <- c(values, if (is.null(d8)) "NULL" else if (is(d8, "subQuery")) paste0("(", as.character(d8), ")") else paste0("'", as.character(d8), "'"))

  if (missing(d9)) {
    d9 <- defaults$d9
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ante_cmbd.d9')
  }
  fields <- c(fields, "d9")
  values <- c(values, if (is.null(d9)) "NULL" else if (is(d9, "subQuery")) paste0("(", as.character(d9), ")") else paste0("'", as.character(d9), "'"))

  if (missing(d10)) {
    d10 <- defaults$d10
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ante_cmbd.d10')
  }
  fields <- c(fields, "d10")
  values <- c(values, if (is.null(d10)) "NULL" else if (is(d10, "subQuery")) paste0("(", as.character(d10), ")") else paste0("'", as.character(d10), "'"))

  if (missing(d11)) {
    d11 <- defaults$d11
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ante_cmbd.d11')
  }
  fields <- c(fields, "d11")
  values <- c(values, if (is.null(d11)) "NULL" else if (is(d11, "subQuery")) paste0("(", as.character(d11), ")") else paste0("'", as.character(d11), "'"))

  if (missing(d12)) {
    d12 <- defaults$d12
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ante_cmbd.d12')
  }
  fields <- c(fields, "d12")
  values <- c(values, if (is.null(d12)) "NULL" else if (is(d12, "subQuery")) paste0("(", as.character(d12), ")") else paste0("'", as.character(d12), "'"))

  if (missing(d13)) {
    d13 <- defaults$d13
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ante_cmbd.d13')
  }
  fields <- c(fields, "d13")
  values <- c(values, if (is.null(d13)) "NULL" else if (is(d13, "subQuery")) paste0("(", as.character(d13), ")") else paste0("'", as.character(d13), "'"))

  if (missing(d14)) {
    d14 <- defaults$d14
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ante_cmbd.d14')
  }
  fields <- c(fields, "d14")
  values <- c(values, if (is.null(d14)) "NULL" else if (is(d14, "subQuery")) paste0("(", as.character(d14), ")") else paste0("'", as.character(d14), "'"))

  if (missing(d15)) {
    d15 <- defaults$d15
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ante_cmbd.d15')
  }
  fields <- c(fields, "d15")
  values <- c(values, if (is.null(d15)) "NULL" else if (is(d15, "subQuery")) paste0("(", as.character(d15), ")") else paste0("'", as.character(d15), "'"))

  if (missing(d16)) {
    d16 <- defaults$d16
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ante_cmbd.d16')
  }
  fields <- c(fields, "d16")
  values <- c(values, if (is.null(d16)) "NULL" else if (is(d16, "subQuery")) paste0("(", as.character(d16), ")") else paste0("'", as.character(d16), "'"))

  if (missing(d17)) {
    d17 <- defaults$d17
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ante_cmbd.d17')
  }
  fields <- c(fields, "d17")
  values <- c(values, if (is.null(d17)) "NULL" else if (is(d17, "subQuery")) paste0("(", as.character(d17), ")") else paste0("'", as.character(d17), "'"))

  if (missing(d18)) {
    d18 <- defaults$d18
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ante_cmbd.d18')
  }
  fields <- c(fields, "d18")
  values <- c(values, if (is.null(d18)) "NULL" else if (is(d18, "subQuery")) paste0("(", as.character(d18), ")") else paste0("'", as.character(d18), "'"))

  if (missing(d19)) {
    d19 <- defaults$d19
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ante_cmbd.d19')
  }
  fields <- c(fields, "d19")
  values <- c(values, if (is.null(d19)) "NULL" else if (is(d19, "subQuery")) paste0("(", as.character(d19), ")") else paste0("'", as.character(d19), "'"))

  if (missing(d20)) {
    d20 <- defaults$d20
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ante_cmbd.d20')
  }
  fields <- c(fields, "d20")
  values <- c(values, if (is.null(d20)) "NULL" else if (is(d20, "subQuery")) paste0("(", as.character(d20), ")") else paste0("'", as.character(d20), "'"))

  if (missing(d21)) {
    d21 <- defaults$d21
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ante_cmbd.d21')
  }
  fields <- c(fields, "d21")
  values <- c(values, if (is.null(d21)) "NULL" else if (is(d21, "subQuery")) paste0("(", as.character(d21), ")") else paste0("'", as.character(d21), "'"))

  if (missing(d22)) {
    d22 <- defaults$d22
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ante_cmbd.d22')
  }
  fields <- c(fields, "d22")
  values <- c(values, if (is.null(d22)) "NULL" else if (is(d22, "subQuery")) paste0("(", as.character(d22), ")") else paste0("'", as.character(d22), "'"))

  if (missing(d23)) {
    d23 <- defaults$d23
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ante_cmbd.d23')
  }
  fields <- c(fields, "d23")
  values <- c(values, if (is.null(d23)) "NULL" else if (is(d23, "subQuery")) paste0("(", as.character(d23), ")") else paste0("'", as.character(d23), "'"))

  if (missing(d24)) {
    d24 <- defaults$d24
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ante_cmbd.d24')
  }
  fields <- c(fields, "d24")
  values <- c(values, if (is.null(d24)) "NULL" else if (is(d24, "subQuery")) paste0("(", as.character(d24), ")") else paste0("'", as.character(d24), "'"))

  if (missing(d25)) {
    d25 <- defaults$d25
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ante_cmbd.d25')
  }
  fields <- c(fields, "d25")
  values <- c(values, if (is.null(d25)) "NULL" else if (is(d25, "subQuery")) paste0("(", as.character(d25), ")") else paste0("'", as.character(d25), "'"))

  if (missing(d26)) {
    d26 <- defaults$d26
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ante_cmbd.d26')
  }
  fields <- c(fields, "d26")
  values <- c(values, if (is.null(d26)) "NULL" else if (is(d26, "subQuery")) paste0("(", as.character(d26), ")") else paste0("'", as.character(d26), "'"))

  if (missing(d27)) {
    d27 <- defaults$d27
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ante_cmbd.d27')
  }
  fields <- c(fields, "d27")
  values <- c(values, if (is.null(d27)) "NULL" else if (is(d27, "subQuery")) paste0("(", as.character(d27), ")") else paste0("'", as.character(d27), "'"))

  if (missing(d28)) {
    d28 <- defaults$d28
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ante_cmbd.d28')
  }
  fields <- c(fields, "d28")
  values <- c(values, if (is.null(d28)) "NULL" else if (is(d28, "subQuery")) paste0("(", as.character(d28), ")") else paste0("'", as.character(d28), "'"))

  if (missing(d29)) {
    d29 <- defaults$d29
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ante_cmbd.d29')
  }
  fields <- c(fields, "d29")
  values <- c(values, if (is.null(d29)) "NULL" else if (is(d29, "subQuery")) paste0("(", as.character(d29), ")") else paste0("'", as.character(d29), "'"))

  if (missing(d30)) {
    d30 <- defaults$d30
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ante_cmbd.d30')
  }
  fields <- c(fields, "d30")
  values <- c(values, if (is.null(d30)) "NULL" else if (is(d30, "subQuery")) paste0("(", as.character(d30), ")") else paste0("'", as.character(d30), "'"))

  if (missing(p1)) {
    p1 <- defaults$p1
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ante_cmbd.p1')
  }
  fields <- c(fields, "p1")
  values <- c(values, if (is.null(p1)) "NULL" else if (is(p1, "subQuery")) paste0("(", as.character(p1), ")") else paste0("'", as.character(p1), "'"))

  if (missing(p2)) {
    p2 <- defaults$p2
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ante_cmbd.p2')
  }
  fields <- c(fields, "p2")
  values <- c(values, if (is.null(p2)) "NULL" else if (is(p2, "subQuery")) paste0("(", as.character(p2), ")") else paste0("'", as.character(p2), "'"))

  if (missing(p3)) {
    p3 <- defaults$p3
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ante_cmbd.p3')
  }
  fields <- c(fields, "p3")
  values <- c(values, if (is.null(p3)) "NULL" else if (is(p3, "subQuery")) paste0("(", as.character(p3), ")") else paste0("'", as.character(p3), "'"))

  if (missing(p4)) {
    p4 <- defaults$p4
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ante_cmbd.p4')
  }
  fields <- c(fields, "p4")
  values <- c(values, if (is.null(p4)) "NULL" else if (is(p4, "subQuery")) paste0("(", as.character(p4), ")") else paste0("'", as.character(p4), "'"))

  if (missing(p5)) {
    p5 <- defaults$p5
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ante_cmbd.p5')
  }
  fields <- c(fields, "p5")
  values <- c(values, if (is.null(p5)) "NULL" else if (is(p5, "subQuery")) paste0("(", as.character(p5), ")") else paste0("'", as.character(p5), "'"))

  if (missing(p6)) {
    p6 <- defaults$p6
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ante_cmbd.p6')
  }
  fields <- c(fields, "p6")
  values <- c(values, if (is.null(p6)) "NULL" else if (is(p6, "subQuery")) paste0("(", as.character(p6), ")") else paste0("'", as.character(p6), "'"))

  if (missing(p7)) {
    p7 <- defaults$p7
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ante_cmbd.p7')
  }
  fields <- c(fields, "p7")
  values <- c(values, if (is.null(p7)) "NULL" else if (is(p7, "subQuery")) paste0("(", as.character(p7), ")") else paste0("'", as.character(p7), "'"))

  if (missing(p8)) {
    p8 <- defaults$p8
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ante_cmbd.p8')
  }
  fields <- c(fields, "p8")
  values <- c(values, if (is.null(p8)) "NULL" else if (is(p8, "subQuery")) paste0("(", as.character(p8), ")") else paste0("'", as.character(p8), "'"))

  if (missing(p9)) {
    p9 <- defaults$p9
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ante_cmbd.p9')
  }
  fields <- c(fields, "p9")
  values <- c(values, if (is.null(p9)) "NULL" else if (is(p9, "subQuery")) paste0("(", as.character(p9), ")") else paste0("'", as.character(p9), "'"))

  if (missing(p10)) {
    p10 <- defaults$p10
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ante_cmbd.p10')
  }
  fields <- c(fields, "p10")
  values <- c(values, if (is.null(p10)) "NULL" else if (is(p10, "subQuery")) paste0("(", as.character(p10), ")") else paste0("'", as.character(p10), "'"))

  if (missing(p11)) {
    p11 <- defaults$p11
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ante_cmbd.p11')
  }
  fields <- c(fields, "p11")
  values <- c(values, if (is.null(p11)) "NULL" else if (is(p11, "subQuery")) paste0("(", as.character(p11), ")") else paste0("'", as.character(p11), "'"))

  if (missing(p12)) {
    p12 <- defaults$p12
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ante_cmbd.p12')
  }
  fields <- c(fields, "p12")
  values <- c(values, if (is.null(p12)) "NULL" else if (is(p12, "subQuery")) paste0("(", as.character(p12), ")") else paste0("'", as.character(p12), "'"))

  if (missing(p13)) {
    p13 <- defaults$p13
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ante_cmbd.p13')
  }
  fields <- c(fields, "p13")
  values <- c(values, if (is.null(p13)) "NULL" else if (is(p13, "subQuery")) paste0("(", as.character(p13), ")") else paste0("'", as.character(p13), "'"))

  if (missing(p14)) {
    p14 <- defaults$p14
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ante_cmbd.p14')
  }
  fields <- c(fields, "p14")
  values <- c(values, if (is.null(p14)) "NULL" else if (is(p14, "subQuery")) paste0("(", as.character(p14), ")") else paste0("'", as.character(p14), "'"))

  if (missing(p15)) {
    p15 <- defaults$p15
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ante_cmbd.p15')
  }
  fields <- c(fields, "p15")
  values <- c(values, if (is.null(p15)) "NULL" else if (is(p15, "subQuery")) paste0("(", as.character(p15), ")") else paste0("'", as.character(p15), "'"))

  if (missing(p16)) {
    p16 <- defaults$p16
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ante_cmbd.p16')
  }
  fields <- c(fields, "p16")
  values <- c(values, if (is.null(p16)) "NULL" else if (is(p16, "subQuery")) paste0("(", as.character(p16), ")") else paste0("'", as.character(p16), "'"))

  if (missing(p17)) {
    p17 <- defaults$p17
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ante_cmbd.p17')
  }
  fields <- c(fields, "p17")
  values <- c(values, if (is.null(p17)) "NULL" else if (is(p17, "subQuery")) paste0("(", as.character(p17), ")") else paste0("'", as.character(p17), "'"))

  if (missing(p18)) {
    p18 <- defaults$p18
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ante_cmbd.p18')
  }
  fields <- c(fields, "p18")
  values <- c(values, if (is.null(p18)) "NULL" else if (is(p18, "subQuery")) paste0("(", as.character(p18), ")") else paste0("'", as.character(p18), "'"))

  if (missing(p19)) {
    p19 <- defaults$p19
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ante_cmbd.p19')
  }
  fields <- c(fields, "p19")
  values <- c(values, if (is.null(p19)) "NULL" else if (is(p19, "subQuery")) paste0("(", as.character(p19), ")") else paste0("'", as.character(p19), "'"))

  if (missing(p20)) {
    p20 <- defaults$p20
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ante_cmbd.p20')
  }
  fields <- c(fields, "p20")
  values <- c(values, if (is.null(p20)) "NULL" else if (is(p20, "subQuery")) paste0("(", as.character(p20), ")") else paste0("'", as.character(p20), "'"))

  if (missing(p21)) {
    p21 <- defaults$p21
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ante_cmbd.p21')
  }
  fields <- c(fields, "p21")
  values <- c(values, if (is.null(p21)) "NULL" else if (is(p21, "subQuery")) paste0("(", as.character(p21), ")") else paste0("'", as.character(p21), "'"))

  if (missing(p22)) {
    p22 <- defaults$p22
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ante_cmbd.p22')
  }
  fields <- c(fields, "p22")
  values <- c(values, if (is.null(p22)) "NULL" else if (is(p22, "subQuery")) paste0("(", as.character(p22), ")") else paste0("'", as.character(p22), "'"))

  if (missing(p23)) {
    p23 <- defaults$p23
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ante_cmbd.p23')
  }
  fields <- c(fields, "p23")
  values <- c(values, if (is.null(p23)) "NULL" else if (is(p23, "subQuery")) paste0("(", as.character(p23), ")") else paste0("'", as.character(p23), "'"))

  if (missing(p24)) {
    p24 <- defaults$p24
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ante_cmbd.p24')
  }
  fields <- c(fields, "p24")
  values <- c(values, if (is.null(p24)) "NULL" else if (is(p24, "subQuery")) paste0("(", as.character(p24), ")") else paste0("'", as.character(p24), "'"))

  if (missing(p25)) {
    p25 <- defaults$p25
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ante_cmbd.p25')
  }
  fields <- c(fields, "p25")
  values <- c(values, if (is.null(p25)) "NULL" else if (is(p25, "subQuery")) paste0("(", as.character(p25), ")") else paste0("'", as.character(p25), "'"))

  if (missing(p26)) {
    p26 <- defaults$p26
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ante_cmbd.p26')
  }
  fields <- c(fields, "p26")
  values <- c(values, if (is.null(p26)) "NULL" else if (is(p26, "subQuery")) paste0("(", as.character(p26), ")") else paste0("'", as.character(p26), "'"))

  if (missing(p27)) {
    p27 <- defaults$p27
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ante_cmbd.p27')
  }
  fields <- c(fields, "p27")
  values <- c(values, if (is.null(p27)) "NULL" else if (is(p27, "subQuery")) paste0("(", as.character(p27), ")") else paste0("'", as.character(p27), "'"))

  if (missing(p28)) {
    p28 <- defaults$p28
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ante_cmbd.p28')
  }
  fields <- c(fields, "p28")
  values <- c(values, if (is.null(p28)) "NULL" else if (is(p28, "subQuery")) paste0("(", as.character(p28), ")") else paste0("'", as.character(p28), "'"))

  if (missing(p29)) {
    p29 <- defaults$p29
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ante_cmbd.p29')
  }
  fields <- c(fields, "p29")
  values <- c(values, if (is.null(p29)) "NULL" else if (is(p29, "subQuery")) paste0("(", as.character(p29), ")") else paste0("'", as.character(p29), "'"))

  if (missing(p30)) {
    p30 <- defaults$p30
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ante_cmbd.p30')
  }
  fields <- c(fields, "p30")
  values <- c(values, if (is.null(p30)) "NULL" else if (is(p30, "subQuery")) paste0("(", as.character(p30), ")") else paste0("'", as.character(p30), "'"))

  if (missing(cir_ingreso)) {
    cir_ingreso <- defaults$cir_ingreso
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ante_cmbd.cir_ingreso')
  }
  fields <- c(fields, "cir_ingreso")
  values <- c(values, if (is.null(cir_ingreso)) "NULL" else if (is(cir_ingreso, "subQuery")) paste0("(", as.character(cir_ingreso), ")") else paste0("'", as.character(cir_ingreso), "'"))

  if (missing(fecha_ingreso)) {
    fecha_ingreso <- defaults$fecha_ingreso
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ante_cmbd.fecha_ingreso')
  }
  fields <- c(fields, "fecha_ingreso")
  values <- c(values, if (is.null(fecha_ingreso)) "NULL" else if (is(fecha_ingreso, "subQuery")) paste0("(", as.character(fecha_ingreso), ")") else paste0("'", as.character(fecha_ingreso), "'"))

  if (missing(fecha_alta)) {
    fecha_alta <- defaults$fecha_alta
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ante_cmbd.fecha_alta')
  }
  fields <- c(fields, "fecha_alta")
  values <- c(values, if (is.null(fecha_alta)) "NULL" else if (is(fecha_alta, "subQuery")) paste0("(", as.character(fecha_alta), ")") else paste0("'", as.character(fecha_alta), "'"))

  if (missing(cir_alta)) {
    cir_alta <- defaults$cir_alta
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ante_cmbd.cir_alta')
  }
  fields <- c(fields, "cir_alta")
  values <- c(values, if (is.null(cir_alta)) "NULL" else if (is(cir_alta, "subQuery")) paste0("(", as.character(cir_alta), ")") else paste0("'", as.character(cir_alta), "'"))

  if (missing(grd)) {
    grd <- defaults$grd
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ante_cmbd.grd')
  }
  fields <- c(fields, "grd")
  values <- c(values, if (is.null(grd)) "NULL" else if (is(grd, "subQuery")) paste0("(", as.character(grd), ")") else paste0("'", as.character(grd), "'"))

  if (missing(peso_grd)) {
    peso_grd <- defaults$peso_grd
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ante_cmbd.peso_grd')
  }
  fields <- c(fields, "peso_grd")
  values <- c(values, if (is.null(peso_grd)) "NULL" else if (is(peso_grd, "subQuery")) paste0("(", as.character(peso_grd), ")") else paste0("'", as.character(peso_grd), "'"))

  inserts <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, table = "tb_ante_cmbd", fields = fields, values = values)
  frameworkContext$inserts[[length(frameworkContext$inserts) + 1]] <- inserts
  invisible(NULL)
}

add_tb_antepers <- function(id, numsipcod, fecha_inicio, fecha_fin, cod_diagnostico, estado_morbilidad) {
  defaults <- get('tb_antepers', envir = frameworkContext$defaultValues)
  fields <- c()
  values <- c()
  if (missing(id)) {
    id <- defaults$id
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_antepers.id')
  }
  fields <- c(fields, "id")
  values <- c(values, if (is.null(id)) "NULL" else if (is(id, "subQuery")) paste0("(", as.character(id), ")") else paste0("'", as.character(id), "'"))

  if (missing(numsipcod)) {
    numsipcod <- defaults$numsipcod
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_antepers.numsipcod')
  }
  fields <- c(fields, "numsipcod")
  values <- c(values, if (is.null(numsipcod)) "NULL" else if (is(numsipcod, "subQuery")) paste0("(", as.character(numsipcod), ")") else paste0("'", as.character(numsipcod), "'"))

  if (missing(fecha_inicio)) {
    fecha_inicio <- defaults$fecha_inicio
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_antepers.fecha_inicio')
  }
  fields <- c(fields, "fecha_inicio")
  values <- c(values, if (is.null(fecha_inicio)) "NULL" else if (is(fecha_inicio, "subQuery")) paste0("(", as.character(fecha_inicio), ")") else paste0("'", as.character(fecha_inicio), "'"))

  if (missing(fecha_fin)) {
    fecha_fin <- defaults$fecha_fin
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_antepers.fecha_fin')
  }
  fields <- c(fields, "fecha_fin")
  values <- c(values, if (is.null(fecha_fin)) "NULL" else if (is(fecha_fin, "subQuery")) paste0("(", as.character(fecha_fin), ")") else paste0("'", as.character(fecha_fin), "'"))

  if (missing(cod_diagnostico)) {
    cod_diagnostico <- defaults$cod_diagnostico
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_antepers.cod_diagnostico')
  }
  fields <- c(fields, "cod_diagnostico")
  values <- c(values, if (is.null(cod_diagnostico)) "NULL" else if (is(cod_diagnostico, "subQuery")) paste0("(", as.character(cod_diagnostico), ")") else paste0("'", as.character(cod_diagnostico), "'"))

  if (missing(estado_morbilidad)) {
    estado_morbilidad <- defaults$estado_morbilidad
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_antepers.estado_morbilidad')
  }
  fields <- c(fields, "estado_morbilidad")
  values <- c(values, if (is.null(estado_morbilidad)) "NULL" else if (is(estado_morbilidad, "subQuery")) paste0("(", as.character(estado_morbilidad), ")") else paste0("'", as.character(estado_morbilidad), "'"))

  inserts <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, table = "tb_antepers", fields = fields, values = values)
  frameworkContext$inserts[[length(frameworkContext$inserts) + 1]] <- inserts
  invisible(NULL)
}

add_tb_cex <- function(id, num_consultas, numsipcod, fecha_consulta, cod_serv_homologado, cod_serv_propio) {
  defaults <- get('tb_cex', envir = frameworkContext$defaultValues)
  fields <- c()
  values <- c()
  if (missing(id)) {
    id <- defaults$id
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_cex.id')
  }
  fields <- c(fields, "id")
  values <- c(values, if (is.null(id)) "NULL" else if (is(id, "subQuery")) paste0("(", as.character(id), ")") else paste0("'", as.character(id), "'"))

  if (missing(num_consultas)) {
    num_consultas <- defaults$num_consultas
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_cex.num_consultas')
  }
  fields <- c(fields, "num_consultas")
  values <- c(values, if (is.null(num_consultas)) "NULL" else if (is(num_consultas, "subQuery")) paste0("(", as.character(num_consultas), ")") else paste0("'", as.character(num_consultas), "'"))

  if (missing(numsipcod)) {
    numsipcod <- defaults$numsipcod
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_cex.numsipcod')
  }
  fields <- c(fields, "numsipcod")
  values <- c(values, if (is.null(numsipcod)) "NULL" else if (is(numsipcod, "subQuery")) paste0("(", as.character(numsipcod), ")") else paste0("'", as.character(numsipcod), "'"))

  if (missing(fecha_consulta)) {
    fecha_consulta <- defaults$fecha_consulta
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_cex.fecha_consulta')
  }
  fields <- c(fields, "fecha_consulta")
  values <- c(values, if (is.null(fecha_consulta)) "NULL" else if (is(fecha_consulta, "subQuery")) paste0("(", as.character(fecha_consulta), ")") else paste0("'", as.character(fecha_consulta), "'"))

  if (missing(cod_serv_homologado)) {
    cod_serv_homologado <- defaults$cod_serv_homologado
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_cex.cod_serv_homologado')
  }
  fields <- c(fields, "cod_serv_homologado")
  values <- c(values, if (is.null(cod_serv_homologado)) "NULL" else if (is(cod_serv_homologado, "subQuery")) paste0("(", as.character(cod_serv_homologado), ")") else paste0("'", as.character(cod_serv_homologado), "'"))

  if (missing(cod_serv_propio)) {
    cod_serv_propio <- defaults$cod_serv_propio
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_cex.cod_serv_propio')
  }
  fields <- c(fields, "cod_serv_propio")
  values <- c(values, if (is.null(cod_serv_propio)) "NULL" else if (is(cod_serv_propio, "subQuery")) paste0("(", as.character(cod_serv_propio), ")") else paste0("'", as.character(cod_serv_propio), "'"))

  inserts <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, table = "tb_cex", fields = fields, values = values)
  frameworkContext$inserts[[length(frameworkContext$inserts) + 1]] <- inserts
  invisible(NULL)
}

add_tb_cie_atc <- function(id, num_cieatc, numsipcod, ano_mes, cod_crg, cod_est_salud) {
  defaults <- get('tb_cie_atc', envir = frameworkContext$defaultValues)
  fields <- c()
  values <- c()
  if (missing(id)) {
    id <- defaults$id
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_cie_atc.id')
  }
  fields <- c(fields, "id")
  values <- c(values, if (is.null(id)) "NULL" else if (is(id, "subQuery")) paste0("(", as.character(id), ")") else paste0("'", as.character(id), "'"))

  if (missing(num_cieatc)) {
    num_cieatc <- defaults$num_cieatc
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_cie_atc.num_cieatc')
  }
  fields <- c(fields, "num_cieatc")
  values <- c(values, if (is.null(num_cieatc)) "NULL" else if (is(num_cieatc, "subQuery")) paste0("(", as.character(num_cieatc), ")") else paste0("'", as.character(num_cieatc), "'"))

  if (missing(numsipcod)) {
    numsipcod <- defaults$numsipcod
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_cie_atc.numsipcod')
  }
  fields <- c(fields, "numsipcod")
  values <- c(values, if (is.null(numsipcod)) "NULL" else if (is(numsipcod, "subQuery")) paste0("(", as.character(numsipcod), ")") else paste0("'", as.character(numsipcod), "'"))

  if (missing(ano_mes)) {
    ano_mes <- defaults$ano_mes
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_cie_atc.ano_mes')
  }
  fields <- c(fields, "ano_mes")
  values <- c(values, if (is.null(ano_mes)) "NULL" else if (is(ano_mes, "subQuery")) paste0("(", as.character(ano_mes), ")") else paste0("'", as.character(ano_mes), "'"))

  if (missing(cod_crg)) {
    cod_crg <- defaults$cod_crg
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_cie_atc.cod_crg')
  }
  fields <- c(fields, "cod_crg")
  values <- c(values, if (is.null(cod_crg)) "NULL" else if (is(cod_crg, "subQuery")) paste0("(", as.character(cod_crg), ")") else paste0("'", as.character(cod_crg), "'"))

  if (missing(cod_est_salud)) {
    cod_est_salud <- defaults$cod_est_salud
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_cie_atc.cod_est_salud')
  }
  fields <- c(fields, "cod_est_salud")
  values <- c(values, if (is.null(cod_est_salud)) "NULL" else if (is(cod_est_salud, "subQuery")) paste0("(", as.character(cod_est_salud), ")") else paste0("'", as.character(cod_est_salud), "'"))

  inserts <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, table = "tb_cie_atc", fields = fields, values = values)
  frameworkContext$inserts[[length(frameworkContext$inserts) + 1]] <- inserts
  invisible(NULL)
}

add_tb_consultas_atp <- function(id, num_consultas, numsipcod, fecha_registro, cod_serv_homologado, cod_serv_propio) {
  defaults <- get('tb_consultas_atp', envir = frameworkContext$defaultValues)
  fields <- c()
  values <- c()
  if (missing(id)) {
    id <- defaults$id
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_consultas_atp.id')
  }
  fields <- c(fields, "id")
  values <- c(values, if (is.null(id)) "NULL" else if (is(id, "subQuery")) paste0("(", as.character(id), ")") else paste0("'", as.character(id), "'"))

  if (missing(num_consultas)) {
    num_consultas <- defaults$num_consultas
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_consultas_atp.num_consultas')
  }
  fields <- c(fields, "num_consultas")
  values <- c(values, if (is.null(num_consultas)) "NULL" else if (is(num_consultas, "subQuery")) paste0("(", as.character(num_consultas), ")") else paste0("'", as.character(num_consultas), "'"))

  if (missing(numsipcod)) {
    numsipcod <- defaults$numsipcod
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_consultas_atp.numsipcod')
  }
  fields <- c(fields, "numsipcod")
  values <- c(values, if (is.null(numsipcod)) "NULL" else if (is(numsipcod, "subQuery")) paste0("(", as.character(numsipcod), ")") else paste0("'", as.character(numsipcod), "'"))

  if (missing(fecha_registro)) {
    fecha_registro <- defaults$fecha_registro
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_consultas_atp.fecha_registro')
  }
  fields <- c(fields, "fecha_registro")
  values <- c(values, if (is.null(fecha_registro)) "NULL" else if (is(fecha_registro, "subQuery")) paste0("(", as.character(fecha_registro), ")") else paste0("'", as.character(fecha_registro), "'"))

  if (missing(cod_serv_homologado)) {
    cod_serv_homologado <- defaults$cod_serv_homologado
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_consultas_atp.cod_serv_homologado')
  }
  fields <- c(fields, "cod_serv_homologado")
  values <- c(values, if (is.null(cod_serv_homologado)) "NULL" else if (is(cod_serv_homologado, "subQuery")) paste0("(", as.character(cod_serv_homologado), ")") else paste0("'", as.character(cod_serv_homologado), "'"))

  if (missing(cod_serv_propio)) {
    cod_serv_propio <- defaults$cod_serv_propio
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_consultas_atp.cod_serv_propio')
  }
  fields <- c(fields, "cod_serv_propio")
  values <- c(values, if (is.null(cod_serv_propio)) "NULL" else if (is(cod_serv_propio, "subQuery")) paste0("(", as.character(cod_serv_propio), ")") else paste0("'", as.character(cod_serv_propio), "'"))

  inserts <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, table = "tb_consultas_atp", fields = fields, values = values)
  frameworkContext$inserts[[length(frameworkContext$inserts) + 1]] <- inserts
  invisible(NULL)
}

add_tb_contraind <- function(id, num_contraindicaciones, numsipcod, ano_mes, cod_crg, cod_est_salud, tipo_contraindicacion) {
  defaults <- get('tb_contraind', envir = frameworkContext$defaultValues)
  fields <- c()
  values <- c()
  if (missing(id)) {
    id <- defaults$id
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_contraind.id')
  }
  fields <- c(fields, "id")
  values <- c(values, if (is.null(id)) "NULL" else if (is(id, "subQuery")) paste0("(", as.character(id), ")") else paste0("'", as.character(id), "'"))

  if (missing(num_contraindicaciones)) {
    num_contraindicaciones <- defaults$num_contraindicaciones
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_contraind.num_contraindicaciones')
  }
  fields <- c(fields, "num_contraindicaciones")
  values <- c(values, if (is.null(num_contraindicaciones)) "NULL" else if (is(num_contraindicaciones, "subQuery")) paste0("(", as.character(num_contraindicaciones), ")") else paste0("'", as.character(num_contraindicaciones), "'"))

  if (missing(numsipcod)) {
    numsipcod <- defaults$numsipcod
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_contraind.numsipcod')
  }
  fields <- c(fields, "numsipcod")
  values <- c(values, if (is.null(numsipcod)) "NULL" else if (is(numsipcod, "subQuery")) paste0("(", as.character(numsipcod), ")") else paste0("'", as.character(numsipcod), "'"))

  if (missing(ano_mes)) {
    ano_mes <- defaults$ano_mes
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_contraind.ano_mes')
  }
  fields <- c(fields, "ano_mes")
  values <- c(values, if (is.null(ano_mes)) "NULL" else if (is(ano_mes, "subQuery")) paste0("(", as.character(ano_mes), ")") else paste0("'", as.character(ano_mes), "'"))

  if (missing(cod_crg)) {
    cod_crg <- defaults$cod_crg
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_contraind.cod_crg')
  }
  fields <- c(fields, "cod_crg")
  values <- c(values, if (is.null(cod_crg)) "NULL" else if (is(cod_crg, "subQuery")) paste0("(", as.character(cod_crg), ")") else paste0("'", as.character(cod_crg), "'"))

  if (missing(cod_est_salud)) {
    cod_est_salud <- defaults$cod_est_salud
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_contraind.cod_est_salud')
  }
  fields <- c(fields, "cod_est_salud")
  values <- c(values, if (is.null(cod_est_salud)) "NULL" else if (is(cod_est_salud, "subQuery")) paste0("(", as.character(cod_est_salud), ")") else paste0("'", as.character(cod_est_salud), "'"))

  if (missing(tipo_contraindicacion)) {
    tipo_contraindicacion <- defaults$tipo_contraindicacion
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_contraind.tipo_contraindicacion')
  }
  fields <- c(fields, "tipo_contraindicacion")
  values <- c(values, if (is.null(tipo_contraindicacion)) "NULL" else if (is(tipo_contraindicacion, "subQuery")) paste0("(", as.character(tipo_contraindicacion), ")") else paste0("'", as.character(tipo_contraindicacion), "'"))

  inserts <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, table = "tb_contraind", fields = fields, values = values)
  frameworkContext$inserts[[length(frameworkContext$inserts) + 1]] <- inserts
  invisible(NULL)
}

add_tb_ctdh <- function(id, num_ctdh, numsipcod, ano_mes, cod_crg, cod_est_salud) {
  defaults <- get('tb_ctdh', envir = frameworkContext$defaultValues)
  fields <- c()
  values <- c()
  if (missing(id)) {
    id <- defaults$id
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ctdh.id')
  }
  fields <- c(fields, "id")
  values <- c(values, if (is.null(id)) "NULL" else if (is(id, "subQuery")) paste0("(", as.character(id), ")") else paste0("'", as.character(id), "'"))

  if (missing(num_ctdh)) {
    num_ctdh <- defaults$num_ctdh
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ctdh.num_ctdh')
  }
  fields <- c(fields, "num_ctdh")
  values <- c(values, if (is.null(num_ctdh)) "NULL" else if (is(num_ctdh, "subQuery")) paste0("(", as.character(num_ctdh), ")") else paste0("'", as.character(num_ctdh), "'"))

  if (missing(numsipcod)) {
    numsipcod <- defaults$numsipcod
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ctdh.numsipcod')
  }
  fields <- c(fields, "numsipcod")
  values <- c(values, if (is.null(numsipcod)) "NULL" else if (is(numsipcod, "subQuery")) paste0("(", as.character(numsipcod), ")") else paste0("'", as.character(numsipcod), "'"))

  if (missing(ano_mes)) {
    ano_mes <- defaults$ano_mes
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ctdh.ano_mes')
  }
  fields <- c(fields, "ano_mes")
  values <- c(values, if (is.null(ano_mes)) "NULL" else if (is(ano_mes, "subQuery")) paste0("(", as.character(ano_mes), ")") else paste0("'", as.character(ano_mes), "'"))

  if (missing(cod_crg)) {
    cod_crg <- defaults$cod_crg
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ctdh.cod_crg')
  }
  fields <- c(fields, "cod_crg")
  values <- c(values, if (is.null(cod_crg)) "NULL" else if (is(cod_crg, "subQuery")) paste0("(", as.character(cod_crg), ")") else paste0("'", as.character(cod_crg), "'"))

  if (missing(cod_est_salud)) {
    cod_est_salud <- defaults$cod_est_salud
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_ctdh.cod_est_salud')
  }
  fields <- c(fields, "cod_est_salud")
  values <- c(values, if (is.null(cod_est_salud)) "NULL" else if (is(cod_est_salud, "subQuery")) paste0("(", as.character(cod_est_salud), ")") else paste0("'", as.character(cod_est_salud), "'"))

  inserts <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, table = "tb_ctdh", fields = fields, values = values)
  frameworkContext$inserts[[length(frameworkContext$inserts) + 1]] <- inserts
  invisible(NULL)
}

add_tb_diag_cmbd <- function(id, tipo_actividad, numsipcod, cie9, cir_ingreso, fecha_ingreso, fecha_alta, cir_alta, grd, peso_grd, orden) {
  defaults <- get('tb_diag_cmbd', envir = frameworkContext$defaultValues)
  fields <- c()
  values <- c()
  if (missing(id)) {
    id <- defaults$id
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_diag_cmbd.id')
  }
  fields <- c(fields, "id")
  values <- c(values, if (is.null(id)) "NULL" else if (is(id, "subQuery")) paste0("(", as.character(id), ")") else paste0("'", as.character(id), "'"))

  if (missing(tipo_actividad)) {
    tipo_actividad <- defaults$tipo_actividad
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_diag_cmbd.tipo_actividad')
  }
  fields <- c(fields, "tipo_actividad")
  values <- c(values, if (is.null(tipo_actividad)) "NULL" else if (is(tipo_actividad, "subQuery")) paste0("(", as.character(tipo_actividad), ")") else paste0("'", as.character(tipo_actividad), "'"))

  if (missing(numsipcod)) {
    numsipcod <- defaults$numsipcod
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_diag_cmbd.numsipcod')
  }
  fields <- c(fields, "numsipcod")
  values <- c(values, if (is.null(numsipcod)) "NULL" else if (is(numsipcod, "subQuery")) paste0("(", as.character(numsipcod), ")") else paste0("'", as.character(numsipcod), "'"))

  if (missing(cie9)) {
    cie9 <- defaults$cie9
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_diag_cmbd.cie9')
  }
  fields <- c(fields, "cie9")
  values <- c(values, if (is.null(cie9)) "NULL" else if (is(cie9, "subQuery")) paste0("(", as.character(cie9), ")") else paste0("'", as.character(cie9), "'"))

  if (missing(cir_ingreso)) {
    cir_ingreso <- defaults$cir_ingreso
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_diag_cmbd.cir_ingreso')
  }
  fields <- c(fields, "cir_ingreso")
  values <- c(values, if (is.null(cir_ingreso)) "NULL" else if (is(cir_ingreso, "subQuery")) paste0("(", as.character(cir_ingreso), ")") else paste0("'", as.character(cir_ingreso), "'"))

  if (missing(fecha_ingreso)) {
    fecha_ingreso <- defaults$fecha_ingreso
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_diag_cmbd.fecha_ingreso')
  }
  fields <- c(fields, "fecha_ingreso")
  values <- c(values, if (is.null(fecha_ingreso)) "NULL" else if (is(fecha_ingreso, "subQuery")) paste0("(", as.character(fecha_ingreso), ")") else paste0("'", as.character(fecha_ingreso), "'"))

  if (missing(fecha_alta)) {
    fecha_alta <- defaults$fecha_alta
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_diag_cmbd.fecha_alta')
  }
  fields <- c(fields, "fecha_alta")
  values <- c(values, if (is.null(fecha_alta)) "NULL" else if (is(fecha_alta, "subQuery")) paste0("(", as.character(fecha_alta), ")") else paste0("'", as.character(fecha_alta), "'"))

  if (missing(cir_alta)) {
    cir_alta <- defaults$cir_alta
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_diag_cmbd.cir_alta')
  }
  fields <- c(fields, "cir_alta")
  values <- c(values, if (is.null(cir_alta)) "NULL" else if (is(cir_alta, "subQuery")) paste0("(", as.character(cir_alta), ")") else paste0("'", as.character(cir_alta), "'"))

  if (missing(grd)) {
    grd <- defaults$grd
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_diag_cmbd.grd')
  }
  fields <- c(fields, "grd")
  values <- c(values, if (is.null(grd)) "NULL" else if (is(grd, "subQuery")) paste0("(", as.character(grd), ")") else paste0("'", as.character(grd), "'"))

  if (missing(peso_grd)) {
    peso_grd <- defaults$peso_grd
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_diag_cmbd.peso_grd')
  }
  fields <- c(fields, "peso_grd")
  values <- c(values, if (is.null(peso_grd)) "NULL" else if (is(peso_grd, "subQuery")) paste0("(", as.character(peso_grd), ")") else paste0("'", as.character(peso_grd), "'"))

  if (missing(orden)) {
    orden <- defaults$orden
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_diag_cmbd.orden')
  }
  fields <- c(fields, "orden")
  values <- c(values, if (is.null(orden)) "NULL" else if (is(orden, "subQuery")) paste0("(", as.character(orden), ")") else paste0("'", as.character(orden), "'"))

  inserts <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, table = "tb_diag_cmbd", fields = fields, values = values)
  frameworkContext$inserts[[length(frameworkContext$inserts) + 1]] <- inserts
  invisible(NULL)
}

add_tb_diag_juntos <- function(id, numsipcod, fecha_inicio, fecha_fin, cod_diagnostico, estado_morbilidad, tipo_actividad, cir_ingreso, cir_alta, grd, peso_grd, orden, origen) {
  defaults <- get('tb_diag_juntos', envir = frameworkContext$defaultValues)
  fields <- c()
  values <- c()
  if (missing(id)) {
    id <- defaults$id
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_diag_juntos.id')
  }
  fields <- c(fields, "id")
  values <- c(values, if (is.null(id)) "NULL" else if (is(id, "subQuery")) paste0("(", as.character(id), ")") else paste0("'", as.character(id), "'"))

  if (missing(numsipcod)) {
    numsipcod <- defaults$numsipcod
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_diag_juntos.numsipcod')
  }
  fields <- c(fields, "numsipcod")
  values <- c(values, if (is.null(numsipcod)) "NULL" else if (is(numsipcod, "subQuery")) paste0("(", as.character(numsipcod), ")") else paste0("'", as.character(numsipcod), "'"))

  if (missing(fecha_inicio)) {
    fecha_inicio <- defaults$fecha_inicio
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_diag_juntos.fecha_inicio')
  }
  fields <- c(fields, "fecha_inicio")
  values <- c(values, if (is.null(fecha_inicio)) "NULL" else if (is(fecha_inicio, "subQuery")) paste0("(", as.character(fecha_inicio), ")") else paste0("'", as.character(fecha_inicio), "'"))

  if (missing(fecha_fin)) {
    fecha_fin <- defaults$fecha_fin
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_diag_juntos.fecha_fin')
  }
  fields <- c(fields, "fecha_fin")
  values <- c(values, if (is.null(fecha_fin)) "NULL" else if (is(fecha_fin, "subQuery")) paste0("(", as.character(fecha_fin), ")") else paste0("'", as.character(fecha_fin), "'"))

  if (missing(cod_diagnostico)) {
    cod_diagnostico <- defaults$cod_diagnostico
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_diag_juntos.cod_diagnostico')
  }
  fields <- c(fields, "cod_diagnostico")
  values <- c(values, if (is.null(cod_diagnostico)) "NULL" else if (is(cod_diagnostico, "subQuery")) paste0("(", as.character(cod_diagnostico), ")") else paste0("'", as.character(cod_diagnostico), "'"))

  if (missing(estado_morbilidad)) {
    estado_morbilidad <- defaults$estado_morbilidad
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_diag_juntos.estado_morbilidad')
  }
  fields <- c(fields, "estado_morbilidad")
  values <- c(values, if (is.null(estado_morbilidad)) "NULL" else if (is(estado_morbilidad, "subQuery")) paste0("(", as.character(estado_morbilidad), ")") else paste0("'", as.character(estado_morbilidad), "'"))

  if (missing(tipo_actividad)) {
    tipo_actividad <- defaults$tipo_actividad
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_diag_juntos.tipo_actividad')
  }
  fields <- c(fields, "tipo_actividad")
  values <- c(values, if (is.null(tipo_actividad)) "NULL" else if (is(tipo_actividad, "subQuery")) paste0("(", as.character(tipo_actividad), ")") else paste0("'", as.character(tipo_actividad), "'"))

  if (missing(cir_ingreso)) {
    cir_ingreso <- defaults$cir_ingreso
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_diag_juntos.cir_ingreso')
  }
  fields <- c(fields, "cir_ingreso")
  values <- c(values, if (is.null(cir_ingreso)) "NULL" else if (is(cir_ingreso, "subQuery")) paste0("(", as.character(cir_ingreso), ")") else paste0("'", as.character(cir_ingreso), "'"))

  if (missing(cir_alta)) {
    cir_alta <- defaults$cir_alta
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_diag_juntos.cir_alta')
  }
  fields <- c(fields, "cir_alta")
  values <- c(values, if (is.null(cir_alta)) "NULL" else if (is(cir_alta, "subQuery")) paste0("(", as.character(cir_alta), ")") else paste0("'", as.character(cir_alta), "'"))

  if (missing(grd)) {
    grd <- defaults$grd
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_diag_juntos.grd')
  }
  fields <- c(fields, "grd")
  values <- c(values, if (is.null(grd)) "NULL" else if (is(grd, "subQuery")) paste0("(", as.character(grd), ")") else paste0("'", as.character(grd), "'"))

  if (missing(peso_grd)) {
    peso_grd <- defaults$peso_grd
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_diag_juntos.peso_grd')
  }
  fields <- c(fields, "peso_grd")
  values <- c(values, if (is.null(peso_grd)) "NULL" else if (is(peso_grd, "subQuery")) paste0("(", as.character(peso_grd), ")") else paste0("'", as.character(peso_grd), "'"))

  if (missing(orden)) {
    orden <- defaults$orden
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_diag_juntos.orden')
  }
  fields <- c(fields, "orden")
  values <- c(values, if (is.null(orden)) "NULL" else if (is(orden, "subQuery")) paste0("(", as.character(orden), ")") else paste0("'", as.character(orden), "'"))

  if (missing(origen)) {
    origen <- defaults$origen
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_diag_juntos.origen')
  }
  fields <- c(fields, "origen")
  values <- c(values, if (is.null(origen)) "NULL" else if (is(origen, "subQuery")) paste0("(", as.character(origen), ")") else paste0("'", as.character(origen), "'"))

  inserts <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, table = "tb_diag_juntos", fields = fields, values = values)
  frameworkContext$inserts[[length(frameworkContext$inserts) + 1]] <- inserts
  invisible(NULL)
}

add_tb_duplicid <- function(id, num_duplicidades, numsipcod, ano_mes, cod_crg, cod_est_salud) {
  defaults <- get('tb_duplicid', envir = frameworkContext$defaultValues)
  fields <- c()
  values <- c()
  if (missing(id)) {
    id <- defaults$id
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_duplicid.id')
  }
  fields <- c(fields, "id")
  values <- c(values, if (is.null(id)) "NULL" else if (is(id, "subQuery")) paste0("(", as.character(id), ")") else paste0("'", as.character(id), "'"))

  if (missing(num_duplicidades)) {
    num_duplicidades <- defaults$num_duplicidades
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_duplicid.num_duplicidades')
  }
  fields <- c(fields, "num_duplicidades")
  values <- c(values, if (is.null(num_duplicidades)) "NULL" else if (is(num_duplicidades, "subQuery")) paste0("(", as.character(num_duplicidades), ")") else paste0("'", as.character(num_duplicidades), "'"))

  if (missing(numsipcod)) {
    numsipcod <- defaults$numsipcod
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_duplicid.numsipcod')
  }
  fields <- c(fields, "numsipcod")
  values <- c(values, if (is.null(numsipcod)) "NULL" else if (is(numsipcod, "subQuery")) paste0("(", as.character(numsipcod), ")") else paste0("'", as.character(numsipcod), "'"))

  if (missing(ano_mes)) {
    ano_mes <- defaults$ano_mes
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_duplicid.ano_mes')
  }
  fields <- c(fields, "ano_mes")
  values <- c(values, if (is.null(ano_mes)) "NULL" else if (is(ano_mes, "subQuery")) paste0("(", as.character(ano_mes), ")") else paste0("'", as.character(ano_mes), "'"))

  if (missing(cod_crg)) {
    cod_crg <- defaults$cod_crg
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_duplicid.cod_crg')
  }
  fields <- c(fields, "cod_crg")
  values <- c(values, if (is.null(cod_crg)) "NULL" else if (is(cod_crg, "subQuery")) paste0("(", as.character(cod_crg), ")") else paste0("'", as.character(cod_crg), "'"))

  if (missing(cod_est_salud)) {
    cod_est_salud <- defaults$cod_est_salud
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_duplicid.cod_est_salud')
  }
  fields <- c(fields, "cod_est_salud")
  values <- c(values, if (is.null(cod_est_salud)) "NULL" else if (is(cod_est_salud, "subQuery")) paste0("(", as.character(cod_est_salud), ")") else paste0("'", as.character(cod_est_salud), "'"))

  inserts <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, table = "tb_duplicid", fields = fields, values = values)
  frameworkContext$inserts[[length(frameworkContext$inserts) + 1]] <- inserts
  invisible(NULL)
}

add_tb_estancia_uci <- function(id, numsipcod, fecha, num_estancia_uci) {
  defaults <- get('tb_estancia_uci', envir = frameworkContext$defaultValues)
  fields <- c()
  values <- c()
  if (missing(id)) {
    id <- defaults$id
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_estancia_uci.id')
  }
  fields <- c(fields, "id")
  values <- c(values, if (is.null(id)) "NULL" else if (is(id, "subQuery")) paste0("(", as.character(id), ")") else paste0("'", as.character(id), "'"))

  if (missing(numsipcod)) {
    numsipcod <- defaults$numsipcod
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_estancia_uci.numsipcod')
  }
  fields <- c(fields, "numsipcod")
  values <- c(values, if (is.null(numsipcod)) "NULL" else if (is(numsipcod, "subQuery")) paste0("(", as.character(numsipcod), ")") else paste0("'", as.character(numsipcod), "'"))

  if (missing(fecha)) {
    fecha <- defaults$fecha
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_estancia_uci.fecha')
  }
  fields <- c(fields, "fecha")
  values <- c(values, if (is.null(fecha)) "NULL" else if (is(fecha, "subQuery")) paste0("(", as.character(fecha), ")") else paste0("'", as.character(fecha), "'"))

  if (missing(num_estancia_uci)) {
    num_estancia_uci <- defaults$num_estancia_uci
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_estancia_uci.num_estancia_uci')
  }
  fields <- c(fields, "num_estancia_uci")
  values <- c(values, if (is.null(num_estancia_uci)) "NULL" else if (is(num_estancia_uci, "subQuery")) paste0("(", as.character(num_estancia_uci), ")") else paste0("'", as.character(num_estancia_uci), "'"))

  inserts <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, table = "tb_estancia_uci", fields = fields, values = values)
  frameworkContext$inserts[[length(frameworkContext$inserts) + 1]] <- inserts
  invisible(NULL)
}

add_tb_incatemp <- function(id, numsipcod, fecha_registro, fecha_baja, fecha_alta, dias_baja, cod_causa_alta, cod_diagnostico, cod_motivo_cierre, cod_procedimiento, cod_tipo_baja) {
  defaults <- get('tb_incatemp', envir = frameworkContext$defaultValues)
  fields <- c()
  values <- c()
  if (missing(id)) {
    id <- defaults$id
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_incatemp.id')
  }
  fields <- c(fields, "id")
  values <- c(values, if (is.null(id)) "NULL" else if (is(id, "subQuery")) paste0("(", as.character(id), ")") else paste0("'", as.character(id), "'"))

  if (missing(numsipcod)) {
    numsipcod <- defaults$numsipcod
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_incatemp.numsipcod')
  }
  fields <- c(fields, "numsipcod")
  values <- c(values, if (is.null(numsipcod)) "NULL" else if (is(numsipcod, "subQuery")) paste0("(", as.character(numsipcod), ")") else paste0("'", as.character(numsipcod), "'"))

  if (missing(fecha_registro)) {
    fecha_registro <- defaults$fecha_registro
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_incatemp.fecha_registro')
  }
  fields <- c(fields, "fecha_registro")
  values <- c(values, if (is.null(fecha_registro)) "NULL" else if (is(fecha_registro, "subQuery")) paste0("(", as.character(fecha_registro), ")") else paste0("'", as.character(fecha_registro), "'"))

  if (missing(fecha_baja)) {
    fecha_baja <- defaults$fecha_baja
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_incatemp.fecha_baja')
  }
  fields <- c(fields, "fecha_baja")
  values <- c(values, if (is.null(fecha_baja)) "NULL" else if (is(fecha_baja, "subQuery")) paste0("(", as.character(fecha_baja), ")") else paste0("'", as.character(fecha_baja), "'"))

  if (missing(fecha_alta)) {
    fecha_alta <- defaults$fecha_alta
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_incatemp.fecha_alta')
  }
  fields <- c(fields, "fecha_alta")
  values <- c(values, if (is.null(fecha_alta)) "NULL" else if (is(fecha_alta, "subQuery")) paste0("(", as.character(fecha_alta), ")") else paste0("'", as.character(fecha_alta), "'"))

  if (missing(dias_baja)) {
    dias_baja <- defaults$dias_baja
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_incatemp.dias_baja')
  }
  fields <- c(fields, "dias_baja")
  values <- c(values, if (is.null(dias_baja)) "NULL" else if (is(dias_baja, "subQuery")) paste0("(", as.character(dias_baja), ")") else paste0("'", as.character(dias_baja), "'"))

  if (missing(cod_causa_alta)) {
    cod_causa_alta <- defaults$cod_causa_alta
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_incatemp.cod_causa_alta')
  }
  fields <- c(fields, "cod_causa_alta")
  values <- c(values, if (is.null(cod_causa_alta)) "NULL" else if (is(cod_causa_alta, "subQuery")) paste0("(", as.character(cod_causa_alta), ")") else paste0("'", as.character(cod_causa_alta), "'"))

  if (missing(cod_diagnostico)) {
    cod_diagnostico <- defaults$cod_diagnostico
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_incatemp.cod_diagnostico')
  }
  fields <- c(fields, "cod_diagnostico")
  values <- c(values, if (is.null(cod_diagnostico)) "NULL" else if (is(cod_diagnostico, "subQuery")) paste0("(", as.character(cod_diagnostico), ")") else paste0("'", as.character(cod_diagnostico), "'"))

  if (missing(cod_motivo_cierre)) {
    cod_motivo_cierre <- defaults$cod_motivo_cierre
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_incatemp.cod_motivo_cierre')
  }
  fields <- c(fields, "cod_motivo_cierre")
  values <- c(values, if (is.null(cod_motivo_cierre)) "NULL" else if (is(cod_motivo_cierre, "subQuery")) paste0("(", as.character(cod_motivo_cierre), ")") else paste0("'", as.character(cod_motivo_cierre), "'"))

  if (missing(cod_procedimiento)) {
    cod_procedimiento <- defaults$cod_procedimiento
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_incatemp.cod_procedimiento')
  }
  fields <- c(fields, "cod_procedimiento")
  values <- c(values, if (is.null(cod_procedimiento)) "NULL" else if (is(cod_procedimiento, "subQuery")) paste0("(", as.character(cod_procedimiento), ")") else paste0("'", as.character(cod_procedimiento), "'"))

  if (missing(cod_tipo_baja)) {
    cod_tipo_baja <- defaults$cod_tipo_baja
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_incatemp.cod_tipo_baja')
  }
  fields <- c(fields, "cod_tipo_baja")
  values <- c(values, if (is.null(cod_tipo_baja)) "NULL" else if (is(cod_tipo_baja, "subQuery")) paste0("(", as.character(cod_tipo_baja), ")") else paste0("'", as.character(cod_tipo_baja), "'"))

  inserts <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, table = "tb_incatemp", fields = fields, values = values)
  frameworkContext$inserts[[length(frameworkContext$inserts) + 1]] <- inserts
  invisible(NULL)
}

add_tb_interacc <- function(id, num_interacciones, numsipcod, ano_mes, cod_crg, cod_est_salud, gravedad_interaccion) {
  defaults <- get('tb_interacc', envir = frameworkContext$defaultValues)
  fields <- c()
  values <- c()
  if (missing(id)) {
    id <- defaults$id
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_interacc.id')
  }
  fields <- c(fields, "id")
  values <- c(values, if (is.null(id)) "NULL" else if (is(id, "subQuery")) paste0("(", as.character(id), ")") else paste0("'", as.character(id), "'"))

  if (missing(num_interacciones)) {
    num_interacciones <- defaults$num_interacciones
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_interacc.num_interacciones')
  }
  fields <- c(fields, "num_interacciones")
  values <- c(values, if (is.null(num_interacciones)) "NULL" else if (is(num_interacciones, "subQuery")) paste0("(", as.character(num_interacciones), ")") else paste0("'", as.character(num_interacciones), "'"))

  if (missing(numsipcod)) {
    numsipcod <- defaults$numsipcod
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_interacc.numsipcod')
  }
  fields <- c(fields, "numsipcod")
  values <- c(values, if (is.null(numsipcod)) "NULL" else if (is(numsipcod, "subQuery")) paste0("(", as.character(numsipcod), ")") else paste0("'", as.character(numsipcod), "'"))

  if (missing(ano_mes)) {
    ano_mes <- defaults$ano_mes
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_interacc.ano_mes')
  }
  fields <- c(fields, "ano_mes")
  values <- c(values, if (is.null(ano_mes)) "NULL" else if (is(ano_mes, "subQuery")) paste0("(", as.character(ano_mes), ")") else paste0("'", as.character(ano_mes), "'"))

  if (missing(cod_crg)) {
    cod_crg <- defaults$cod_crg
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_interacc.cod_crg')
  }
  fields <- c(fields, "cod_crg")
  values <- c(values, if (is.null(cod_crg)) "NULL" else if (is(cod_crg, "subQuery")) paste0("(", as.character(cod_crg), ")") else paste0("'", as.character(cod_crg), "'"))

  if (missing(cod_est_salud)) {
    cod_est_salud <- defaults$cod_est_salud
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_interacc.cod_est_salud')
  }
  fields <- c(fields, "cod_est_salud")
  values <- c(values, if (is.null(cod_est_salud)) "NULL" else if (is(cod_est_salud, "subQuery")) paste0("(", as.character(cod_est_salud), ")") else paste0("'", as.character(cod_est_salud), "'"))

  if (missing(gravedad_interaccion)) {
    gravedad_interaccion <- defaults$gravedad_interaccion
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_interacc.gravedad_interaccion')
  }
  fields <- c(fields, "gravedad_interaccion")
  values <- c(values, if (is.null(gravedad_interaccion)) "NULL" else if (is(gravedad_interaccion, "subQuery")) paste0("(", as.character(gravedad_interaccion), ")") else paste0("'", as.character(gravedad_interaccion), "'"))

  inserts <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, table = "tb_interacc", fields = fields, values = values)
  frameworkContext$inserts[[length(frameworkContext$inserts) + 1]] <- inserts
  invisible(NULL)
}


add_tb_morbilid <- function(id, numsipcod, fecha_inicio, fecha_fin, cod_diagnostico, estado_morbilidad) {
  defaults <- get('tb_morbilid', envir = frameworkContext$defaultValues)
  fields <- c()
  values <- c()

  if (missing(id)) {
    id <- defaults$id
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_morbilid.id')
  }
  fields <- c(fields, "id")
  values <- c(values, if (is.null(id)) "NULL" else if (is(id, "subQuery")) paste0("(", as.character(id), ")") else paste0("'", as.character(id), "'"))

  if (missing(numsipcod)) {
    numsipcod <- defaults$numsipcod
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_morbilid.numsipcod')
  }
  fields <- c(fields, "numsipcod")
  values <- c(values, if (is.null(numsipcod)) "NULL" else if (is(numsipcod, "subQuery")) paste0("(", as.character(numsipcod), ")") else paste0("'", as.character(numsipcod), "'"))

  if (missing(fecha_inicio)) {
    fecha_inicio <- defaults$fecha_inicio
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_morbilid.fecha_inicio')
  }
  fields <- c(fields, "fecha_inicio")
  values <- c(values, if (is.null(fecha_inicio)) "NULL" else if (is(fecha_inicio, "subQuery")) paste0("(", as.character(fecha_inicio), ")") else paste0("'", as.character(fecha_inicio), "'"))

  if (missing(fecha_fin)) {
    fecha_fin <- defaults$fecha_fin
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_morbilid.fecha_fin')
  }
  fields <- c(fields, "fecha_fin")
  values <- c(values, if (is.null(fecha_fin)) "NULL" else if (is(fecha_fin, "subQuery")) paste0("(", as.character(fecha_fin), ")") else paste0("'", as.character(fecha_fin), "'"))

  if (missing(cod_diagnostico)) {
    cod_diagnostico <- defaults$cod_diagnostico
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_morbilid.cod_diagnostico')
  }
  fields <- c(fields, "cod_diagnostico")
  values <- c(values, if (is.null(cod_diagnostico)) "NULL" else if (is(cod_diagnostico, "subQuery")) paste0("(", as.character(cod_diagnostico), ")") else paste0("'", as.character(cod_diagnostico), "'"))

  if (missing(estado_morbilidad)) {
    estado_morbilidad <- defaults$estado_morbilidad
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_morbilid.estado_morbilidad')
  }
  fields <- c(fields, "estado_morbilidad")
  values <- c(values, if (is.null(estado_morbilidad)) "NULL" else if (is(estado_morbilidad, "subQuery")) paste0("(", as.character(estado_morbilidad), ")") else paste0("'", as.character(estado_morbilidad), "'"))

  inserts <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, table = "tb_morbilid", fields = fields, values = values)
  frameworkContext$inserts[[length(frameworkContext$inserts) + 1]] <- inserts
  invisible(NULL)
}

add_tb_posologia <- function(id, num_posologias, tipo_posologia, numsipcod, ano_mes, cod_crg, cod_est_salud) {
  defaults <- get('tb_posologia', envir = frameworkContext$defaultValues)
  fields <- c()
  values <- c()
  if (missing(id)) {
    id <- defaults$id
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_posologia.id')
  }
  fields <- c(fields, "id")
  values <- c(values, if (is.null(id)) "NULL" else if (is(id, "subQuery")) paste0("(", as.character(id), ")") else paste0("'", as.character(id), "'"))

  if (missing(num_posologias)) {
    num_posologias <- defaults$num_posologias
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_posologia.num_posologias')
  }
  fields <- c(fields, "num_posologias")
  values <- c(values, if (is.null(num_posologias)) "NULL" else if (is(num_posologias, "subQuery")) paste0("(", as.character(num_posologias), ")") else paste0("'", as.character(num_posologias), "'"))

  if (missing(tipo_posologia)) {
    tipo_posologia <- defaults$tipo_posologia
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_posologia.tipo_posologia')
  }
  fields <- c(fields, "tipo_posologia")
  values <- c(values, if (is.null(tipo_posologia)) "NULL" else if (is(tipo_posologia, "subQuery")) paste0("(", as.character(tipo_posologia), ")") else paste0("'", as.character(tipo_posologia), "'"))

  if (missing(numsipcod)) {
    numsipcod <- defaults$numsipcod
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_posologia.numsipcod')
  }
  fields <- c(fields, "numsipcod")
  values <- c(values, if (is.null(numsipcod)) "NULL" else if (is(numsipcod, "subQuery")) paste0("(", as.character(numsipcod), ")") else paste0("'", as.character(numsipcod), "'"))

  if (missing(ano_mes)) {
    ano_mes <- defaults$ano_mes
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_posologia.ano_mes')
  }
  fields <- c(fields, "ano_mes")
  values <- c(values, if (is.null(ano_mes)) "NULL" else if (is(ano_mes, "subQuery")) paste0("(", as.character(ano_mes), ")") else paste0("'", as.character(ano_mes), "'"))

  if (missing(cod_crg)) {
    cod_crg <- defaults$cod_crg
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_posologia.cod_crg')
  }
  fields <- c(fields, "cod_crg")
  values <- c(values, if (is.null(cod_crg)) "NULL" else if (is(cod_crg, "subQuery")) paste0("(", as.character(cod_crg), ")") else paste0("'", as.character(cod_crg), "'"))

  if (missing(cod_est_salud)) {
    cod_est_salud <- defaults$cod_est_salud
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_posologia.cod_est_salud')
  }
  fields <- c(fields, "cod_est_salud")
  values <- c(values, if (is.null(cod_est_salud)) "NULL" else if (is(cod_est_salud, "subQuery")) paste0("(", as.character(cod_est_salud), ")") else paste0("'", as.character(cod_est_salud), "'"))

  inserts <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, table = "tb_posologia", fields = fields, values = values)
  frameworkContext$inserts[[length(frameworkContext$inserts) + 1]] <- inserts
  invisible(NULL)
}

add_tb_prescrip <- function(id, numsipcod, numreceta, id_tratamiento, fecha_prescripcion, cod_atc2, cod_atc4, cod_presfarma, cod_prinactivo) {
  defaults <- get('tb_prescrip', envir = frameworkContext$defaultValues)
  fields <- c()
  values <- c()
  if (missing(id)) {
    id <- defaults$id
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_prescrip.id')
  }
  fields <- c(fields, "id")
  values <- c(values, if (is.null(id)) "NULL" else if (is(id, "subQuery")) paste0("(", as.character(id), ")") else paste0("'", as.character(id), "'"))

  if (missing(numsipcod)) {
    numsipcod <- defaults$numsipcod
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_prescrip.numsipcod')
  }
  fields <- c(fields, "numsipcod")
  values <- c(values, if (is.null(numsipcod)) "NULL" else if (is(numsipcod, "subQuery")) paste0("(", as.character(numsipcod), ")") else paste0("'", as.character(numsipcod), "'"))

  if (missing(numreceta)) {
    numreceta <- defaults$numreceta
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_prescrip.numreceta')
  }
  fields <- c(fields, "numreceta")
  values <- c(values, if (is.null(numreceta)) "NULL" else if (is(numreceta, "subQuery")) paste0("(", as.character(numreceta), ")") else paste0("'", as.character(numreceta), "'"))

  if (missing(id_tratamiento)) {
    id_tratamiento <- defaults$id_tratamiento
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_prescrip.id_tratamiento')
  }
  fields <- c(fields, "id_tratamiento")
  values <- c(values, if (is.null(id_tratamiento)) "NULL" else if (is(id_tratamiento, "subQuery")) paste0("(", as.character(id_tratamiento), ")") else paste0("'", as.character(id_tratamiento), "'"))

  if (missing(fecha_prescripcion)) {
    fecha_prescripcion <- defaults$fecha_prescripcion
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_prescrip.fecha_prescripcion')
  }
  fields <- c(fields, "fecha_prescripcion")
  values <- c(values, if (is.null(fecha_prescripcion)) "NULL" else if (is(fecha_prescripcion, "subQuery")) paste0("(", as.character(fecha_prescripcion), ")") else paste0("'", as.character(fecha_prescripcion), "'"))

  if (missing(cod_atc2)) {
    cod_atc2 <- defaults$cod_atc2
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_prescrip.cod_atc2')
  }
  fields <- c(fields, "cod_atc2")
  values <- c(values, if (is.null(cod_atc2)) "NULL" else if (is(cod_atc2, "subQuery")) paste0("(", as.character(cod_atc2), ")") else paste0("'", as.character(cod_atc2), "'"))

  if (missing(cod_atc4)) {
    cod_atc4 <- defaults$cod_atc4
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_prescrip.cod_atc4')
  }
  fields <- c(fields, "cod_atc4")
  values <- c(values, if (is.null(cod_atc4)) "NULL" else if (is(cod_atc4, "subQuery")) paste0("(", as.character(cod_atc4), ")") else paste0("'", as.character(cod_atc4), "'"))

  if (missing(cod_presfarma)) {
    cod_presfarma <- defaults$cod_presfarma
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_prescrip.cod_presfarma')
  }
  fields <- c(fields, "cod_presfarma")
  values <- c(values, if (is.null(cod_presfarma)) "NULL" else if (is(cod_presfarma, "subQuery")) paste0("(", as.character(cod_presfarma), ")") else paste0("'", as.character(cod_presfarma), "'"))

  if (missing(cod_prinactivo)) {
    cod_prinactivo <- defaults$cod_prinactivo
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_prescrip.cod_prinactivo')
  }
  fields <- c(fields, "cod_prinactivo")
  values <- c(values, if (is.null(cod_prinactivo)) "NULL" else if (is(cod_prinactivo, "subQuery")) paste0("(", as.character(cod_prinactivo), ")") else paste0("'", as.character(cod_prinactivo), "'"))

  inserts <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, table = "tb_prescrip", fields = fields, values = values)
  frameworkContext$inserts[[length(frameworkContext$inserts) + 1]] <- inserts
  invisible(NULL)
}

add_tb_prestaci <- function(id, valor_registrado, numsipcod, fecha_registro, cod_prestacion, cod_ud_medida) {
  defaults <- get('tb_prestaci', envir = frameworkContext$defaultValues)
  fields <- c()
  values <- c()
  if (missing(id)) {
    id <- defaults$id
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_prestaci.id')
  }
  fields <- c(fields, "id")
  values <- c(values, if (is.null(id)) "NULL" else if (is(id, "subQuery")) paste0("(", as.character(id), ")") else paste0("'", as.character(id), "'"))

  if (missing(valor_registrado)) {
    valor_registrado <- defaults$valor_registrado
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_prestaci.valor_registrado')
  }
  fields <- c(fields, "valor_registrado")
  values <- c(values, if (is.null(valor_registrado)) "NULL" else if (is(valor_registrado, "subQuery")) paste0("(", as.character(valor_registrado), ")") else paste0("'", as.character(valor_registrado), "'"))

  if (missing(numsipcod)) {
    numsipcod <- defaults$numsipcod
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_prestaci.numsipcod')
  }
  fields <- c(fields, "numsipcod")
  values <- c(values, if (is.null(numsipcod)) "NULL" else if (is(numsipcod, "subQuery")) paste0("(", as.character(numsipcod), ")") else paste0("'", as.character(numsipcod), "'"))

  if (missing(fecha_registro)) {
    fecha_registro <- defaults$fecha_registro
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_prestaci.fecha_registro')
  }
  fields <- c(fields, "fecha_registro")
  values <- c(values, if (is.null(fecha_registro)) "NULL" else if (is(fecha_registro, "subQuery")) paste0("(", as.character(fecha_registro), ")") else paste0("'", as.character(fecha_registro), "'"))

  if (missing(cod_prestacion)) {
    cod_prestacion <- defaults$cod_prestacion
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_prestaci.cod_prestacion')
  }
  fields <- c(fields, "cod_prestacion")
  values <- c(values, if (is.null(cod_prestacion)) "NULL" else if (is(cod_prestacion, "subQuery")) paste0("(", as.character(cod_prestacion), ")") else paste0("'", as.character(cod_prestacion), "'"))

  if (missing(cod_ud_medida)) {
    cod_ud_medida <- defaults$cod_ud_medida
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_prestaci.cod_ud_medida')
  }
  fields <- c(fields, "cod_ud_medida")
  values <- c(values, if (is.null(cod_ud_medida)) "NULL" else if (is(cod_ud_medida, "subQuery")) paste0("(", as.character(cod_ud_medida), ")") else paste0("'", as.character(cod_ud_medida), "'"))

  inserts <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, table = "tb_prestaci", fields = fields, values = values)
  frameworkContext$inserts[[length(frameworkContext$inserts) + 1]] <- inserts
  invisible(NULL)
}

add_tb_proc_cmbd <- function(id, tipo_actividad, numsipcod, cie9p, cir_ingreso, fecha_ingreso, fecha_alta, cir_alta, grd, peso_grd, orden) {
  defaults <- get('tb_proc_cmbd', envir = frameworkContext$defaultValues)
  fields <- c()
  values <- c()
  if (missing(id)) {
    id <- defaults$id
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_proc_cmbd.id')
  }
  fields <- c(fields, "id")
  values <- c(values, if (is.null(id)) "NULL" else if (is(id, "subQuery")) paste0("(", as.character(id), ")") else paste0("'", as.character(id), "'"))

  if (missing(tipo_actividad)) {
    tipo_actividad <- defaults$tipo_actividad
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_proc_cmbd.tipo_actividad')
  }
  fields <- c(fields, "tipo_actividad")
  values <- c(values, if (is.null(tipo_actividad)) "NULL" else if (is(tipo_actividad, "subQuery")) paste0("(", as.character(tipo_actividad), ")") else paste0("'", as.character(tipo_actividad), "'"))

  if (missing(numsipcod)) {
    numsipcod <- defaults$numsipcod
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_proc_cmbd.numsipcod')
  }
  fields <- c(fields, "numsipcod")
  values <- c(values, if (is.null(numsipcod)) "NULL" else if (is(numsipcod, "subQuery")) paste0("(", as.character(numsipcod), ")") else paste0("'", as.character(numsipcod), "'"))

  if (missing(cie9p)) {
    cie9p <- defaults$cie9p
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_proc_cmbd.cie9p')
  }
  fields <- c(fields, "cie9p")
  values <- c(values, if (is.null(cie9p)) "NULL" else if (is(cie9p, "subQuery")) paste0("(", as.character(cie9p), ")") else paste0("'", as.character(cie9p), "'"))

  if (missing(cir_ingreso)) {
    cir_ingreso <- defaults$cir_ingreso
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_proc_cmbd.cir_ingreso')
  }
  fields <- c(fields, "cir_ingreso")
  values <- c(values, if (is.null(cir_ingreso)) "NULL" else if (is(cir_ingreso, "subQuery")) paste0("(", as.character(cir_ingreso), ")") else paste0("'", as.character(cir_ingreso), "'"))

  if (missing(fecha_ingreso)) {
    fecha_ingreso <- defaults$fecha_ingreso
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_proc_cmbd.fecha_ingreso')
  }
  fields <- c(fields, "fecha_ingreso")
  values <- c(values, if (is.null(fecha_ingreso)) "NULL" else if (is(fecha_ingreso, "subQuery")) paste0("(", as.character(fecha_ingreso), ")") else paste0("'", as.character(fecha_ingreso), "'"))

  if (missing(fecha_alta)) {
    fecha_alta <- defaults$fecha_alta
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_proc_cmbd.fecha_alta')
  }
  fields <- c(fields, "fecha_alta")
  values <- c(values, if (is.null(fecha_alta)) "NULL" else if (is(fecha_alta, "subQuery")) paste0("(", as.character(fecha_alta), ")") else paste0("'", as.character(fecha_alta), "'"))

  if (missing(cir_alta)) {
    cir_alta <- defaults$cir_alta
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_proc_cmbd.cir_alta')
  }
  fields <- c(fields, "cir_alta")
  values <- c(values, if (is.null(cir_alta)) "NULL" else if (is(cir_alta, "subQuery")) paste0("(", as.character(cir_alta), ")") else paste0("'", as.character(cir_alta), "'"))

  if (missing(grd)) {
    grd <- defaults$grd
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_proc_cmbd.grd')
  }
  fields <- c(fields, "grd")
  values <- c(values, if (is.null(grd)) "NULL" else if (is(grd, "subQuery")) paste0("(", as.character(grd), ")") else paste0("'", as.character(grd), "'"))

  if (missing(peso_grd)) {
    peso_grd <- defaults$peso_grd
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_proc_cmbd.peso_grd')
  }
  fields <- c(fields, "peso_grd")
  values <- c(values, if (is.null(peso_grd)) "NULL" else if (is(peso_grd, "subQuery")) paste0("(", as.character(peso_grd), ")") else paste0("'", as.character(peso_grd), "'"))

  if (missing(orden)) {
    orden <- defaults$orden
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_proc_cmbd.orden')
  }
  fields <- c(fields, "orden")
  values <- c(values, if (is.null(orden)) "NULL" else if (is(orden, "subQuery")) paste0("(", as.character(orden), ")") else paste0("'", as.character(orden), "'"))

  inserts <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, table = "tb_proc_cmbd", fields = fields, values = values)
  frameworkContext$inserts[[length(frameworkContext$inserts) + 1]] <- inserts
  invisible(NULL)
}

add_tb_rele <- function(id, numsipcod, numreceta, anomes_facturacion, fecha_dispensacion, cod_atc2, cod_atc4, cod_presfarma, cod_prinactivo) {
  defaults <- get('tb_rele', envir = frameworkContext$defaultValues)
  fields <- c()
  values <- c()
  if (missing(id)) {
    id <- defaults$id
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_rele.id')
  }
  fields <- c(fields, "id")
  values <- c(values, if (is.null(id)) "NULL" else if (is(id, "subQuery")) paste0("(", as.character(id), ")") else paste0("'", as.character(id), "'"))

  if (missing(numsipcod)) {
    numsipcod <- defaults$numsipcod
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_rele.numsipcod')
  }
  fields <- c(fields, "numsipcod")
  values <- c(values, if (is.null(numsipcod)) "NULL" else if (is(numsipcod, "subQuery")) paste0("(", as.character(numsipcod), ")") else paste0("'", as.character(numsipcod), "'"))

  if (missing(numreceta)) {
    numreceta <- defaults$numreceta
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_rele.numreceta')
  }
  fields <- c(fields, "numreceta")
  values <- c(values, if (is.null(numreceta)) "NULL" else if (is(numreceta, "subQuery")) paste0("(", as.character(numreceta), ")") else paste0("'", as.character(numreceta), "'"))

  if (missing(anomes_facturacion)) {
    anomes_facturacion <- defaults$anomes_facturacion
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_rele.anomes_facturacion')
  }
  fields <- c(fields, "anomes_facturacion")
  values <- c(values, if (is.null(anomes_facturacion)) "NULL" else if (is(anomes_facturacion, "subQuery")) paste0("(", as.character(anomes_facturacion), ")") else paste0("'", as.character(anomes_facturacion), "'"))

  if (missing(fecha_dispensacion)) {
    fecha_dispensacion <- defaults$fecha_dispensacion
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_rele.fecha_dispensacion')
  }
  fields <- c(fields, "fecha_dispensacion")
  values <- c(values, if (is.null(fecha_dispensacion)) "NULL" else if (is(fecha_dispensacion, "subQuery")) paste0("(", as.character(fecha_dispensacion), ")") else paste0("'", as.character(fecha_dispensacion), "'"))

  if (missing(cod_atc2)) {
    cod_atc2 <- defaults$cod_atc2
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_rele.cod_atc2')
  }
  fields <- c(fields, "cod_atc2")
  values <- c(values, if (is.null(cod_atc2)) "NULL" else if (is(cod_atc2, "subQuery")) paste0("(", as.character(cod_atc2), ")") else paste0("'", as.character(cod_atc2), "'"))

  if (missing(cod_atc4)) {
    cod_atc4 <- defaults$cod_atc4
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_rele.cod_atc4')
  }
  fields <- c(fields, "cod_atc4")
  values <- c(values, if (is.null(cod_atc4)) "NULL" else if (is(cod_atc4, "subQuery")) paste0("(", as.character(cod_atc4), ")") else paste0("'", as.character(cod_atc4), "'"))

  if (missing(cod_presfarma)) {
    cod_presfarma <- defaults$cod_presfarma
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_rele.cod_presfarma')
  }
  fields <- c(fields, "cod_presfarma")
  values <- c(values, if (is.null(cod_presfarma)) "NULL" else if (is(cod_presfarma, "subQuery")) paste0("(", as.character(cod_presfarma), ")") else paste0("'", as.character(cod_presfarma), "'"))

  if (missing(cod_prinactivo)) {
    cod_prinactivo <- defaults$cod_prinactivo
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_rele.cod_prinactivo')
  }
  fields <- c(fields, "cod_prinactivo")
  values <- c(values, if (is.null(cod_prinactivo)) "NULL" else if (is(cod_prinactivo, "subQuery")) paste0("(", as.character(cod_prinactivo), ")") else paste0("'", as.character(cod_prinactivo), "'"))

  inserts <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, table = "tb_rele", fields = fields, values = values)
  frameworkContext$inserts[[length(frameworkContext$inserts) + 1]] <- inserts
  invisible(NULL)
}

add_tb_scp_2012 <- function(id, numsipcod, ano_mes, cod_crg, cod_est_salud) {
  defaults <- get('tb_scp_2012', envir = frameworkContext$defaultValues)
  fields <- c()
  values <- c()
  if (missing(id)) {
    id <- defaults$id
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_scp_2012.id')
  }
  fields <- c(fields, "id")
  values <- c(values, if (is.null(id)) "NULL" else if (is(id, "subQuery")) paste0("(", as.character(id), ")") else paste0("'", as.character(id), "'"))

  if (missing(numsipcod)) {
    numsipcod <- defaults$numsipcod
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_scp_2012.numsipcod')
  }
  fields <- c(fields, "numsipcod")
  values <- c(values, if (is.null(numsipcod)) "NULL" else if (is(numsipcod, "subQuery")) paste0("(", as.character(numsipcod), ")") else paste0("'", as.character(numsipcod), "'"))

  if (missing(ano_mes)) {
    ano_mes <- defaults$ano_mes
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_scp_2012.ano_mes')
  }
  fields <- c(fields, "ano_mes")
  values <- c(values, if (is.null(ano_mes)) "NULL" else if (is(ano_mes, "subQuery")) paste0("(", as.character(ano_mes), ")") else paste0("'", as.character(ano_mes), "'"))

  if (missing(cod_crg)) {
    cod_crg <- defaults$cod_crg
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_scp_2012.cod_crg')
  }
  fields <- c(fields, "cod_crg")
  values <- c(values, if (is.null(cod_crg)) "NULL" else if (is(cod_crg, "subQuery")) paste0("(", as.character(cod_crg), ")") else paste0("'", as.character(cod_crg), "'"))

  if (missing(cod_est_salud)) {
    cod_est_salud <- defaults$cod_est_salud
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_scp_2012.cod_est_salud')
  }
  fields <- c(fields, "cod_est_salud")
  values <- c(values, if (is.null(cod_est_salud)) "NULL" else if (is(cod_est_salud, "subQuery")) paste0("(", as.character(cod_est_salud), ")") else paste0("'", as.character(cod_est_salud), "'"))

  inserts <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, table = "tb_scp_2012", fields = fields, values = values)
  frameworkContext$inserts[[length(frameworkContext$inserts) + 1]] <- inserts
  invisible(NULL)
}

add_tb_scp_2013 <- function(id, numsipcod, ano_mes, cod_crg, cod_est_salud) {
  defaults <- get('tb_scp_2013', envir = frameworkContext$defaultValues)
  fields <- c()
  values <- c()
  if (missing(id)) {
    id <- defaults$id
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_scp_2013.id')
  }
  fields <- c(fields, "id")
  values <- c(values, if (is.null(id)) "NULL" else if (is(id, "subQuery")) paste0("(", as.character(id), ")") else paste0("'", as.character(id), "'"))

  if (missing(numsipcod)) {
    numsipcod <- defaults$numsipcod
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_scp_2013.numsipcod')
  }
  fields <- c(fields, "numsipcod")
  values <- c(values, if (is.null(numsipcod)) "NULL" else if (is(numsipcod, "subQuery")) paste0("(", as.character(numsipcod), ")") else paste0("'", as.character(numsipcod), "'"))

  if (missing(ano_mes)) {
    ano_mes <- defaults$ano_mes
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_scp_2013.ano_mes')
  }
  fields <- c(fields, "ano_mes")
  values <- c(values, if (is.null(ano_mes)) "NULL" else if (is(ano_mes, "subQuery")) paste0("(", as.character(ano_mes), ")") else paste0("'", as.character(ano_mes), "'"))

  if (missing(cod_crg)) {
    cod_crg <- defaults$cod_crg
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_scp_2013.cod_crg')
  }
  fields <- c(fields, "cod_crg")
  values <- c(values, if (is.null(cod_crg)) "NULL" else if (is(cod_crg, "subQuery")) paste0("(", as.character(cod_crg), ")") else paste0("'", as.character(cod_crg), "'"))

  if (missing(cod_est_salud)) {
    cod_est_salud <- defaults$cod_est_salud
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_scp_2013.cod_est_salud')
  }
  fields <- c(fields, "cod_est_salud")
  values <- c(values, if (is.null(cod_est_salud)) "NULL" else if (is(cod_est_salud, "subQuery")) paste0("(", as.character(cod_est_salud), ")") else paste0("'", as.character(cod_est_salud), "'"))

  inserts <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, table = "tb_scp_2013", fields = fields, values = values)
  frameworkContext$inserts[[length(frameworkContext$inserts) + 1]] <- inserts
  invisible(NULL)
}

add_tb_scp_2014 <- function(id, numsipcod, ano_mes, cod_crg, cod_est_salud) {
  defaults <- get('tb_scp_2014', envir = frameworkContext$defaultValues)
  fields <- c()
  values <- c()
  if (missing(id)) {
    id <- defaults$id
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_scp_2014.id')
  }
  fields <- c(fields, "id")
  values <- c(values, if (is.null(id)) "NULL" else if (is(id, "subQuery")) paste0("(", as.character(id), ")") else paste0("'", as.character(id), "'"))

  if (missing(numsipcod)) {
    numsipcod <- defaults$numsipcod
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_scp_2014.numsipcod')
  }
  fields <- c(fields, "numsipcod")
  values <- c(values, if (is.null(numsipcod)) "NULL" else if (is(numsipcod, "subQuery")) paste0("(", as.character(numsipcod), ")") else paste0("'", as.character(numsipcod), "'"))

  if (missing(ano_mes)) {
    ano_mes <- defaults$ano_mes
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_scp_2014.ano_mes')
  }
  fields <- c(fields, "ano_mes")
  values <- c(values, if (is.null(ano_mes)) "NULL" else if (is(ano_mes, "subQuery")) paste0("(", as.character(ano_mes), ")") else paste0("'", as.character(ano_mes), "'"))

  if (missing(cod_crg)) {
    cod_crg <- defaults$cod_crg
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_scp_2014.cod_crg')
  }
  fields <- c(fields, "cod_crg")
  values <- c(values, if (is.null(cod_crg)) "NULL" else if (is(cod_crg, "subQuery")) paste0("(", as.character(cod_crg), ")") else paste0("'", as.character(cod_crg), "'"))

  if (missing(cod_est_salud)) {
    cod_est_salud <- defaults$cod_est_salud
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_scp_2014.cod_est_salud')
  }
  fields <- c(fields, "cod_est_salud")
  values <- c(values, if (is.null(cod_est_salud)) "NULL" else if (is(cod_est_salud, "subQuery")) paste0("(", as.character(cod_est_salud), ")") else paste0("'", as.character(cod_est_salud), "'"))

  inserts <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, table = "tb_scp_2014", fields = fields, values = values)
  frameworkContext$inserts[[length(frameworkContext$inserts) + 1]] <- inserts
  invisible(NULL)
}

add_tb_scp_2015 <- function(id, numsipcod, ano_mes, cod_crg, cod_est_salud) {
  defaults <- get('tb_scp_2015', envir = frameworkContext$defaultValues)
  fields <- c()
  values <- c()
  if (missing(id)) {
    id <- defaults$id
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_scp_2015.id')
  }
  fields <- c(fields, "id")
  values <- c(values, if (is.null(id)) "NULL" else if (is(id, "subQuery")) paste0("(", as.character(id), ")") else paste0("'", as.character(id), "'"))

  if (missing(numsipcod)) {
    numsipcod <- defaults$numsipcod
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_scp_2015.numsipcod')
  }
  fields <- c(fields, "numsipcod")
  values <- c(values, if (is.null(numsipcod)) "NULL" else if (is(numsipcod, "subQuery")) paste0("(", as.character(numsipcod), ")") else paste0("'", as.character(numsipcod), "'"))

  if (missing(ano_mes)) {
    ano_mes <- defaults$ano_mes
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_scp_2015.ano_mes')
  }
  fields <- c(fields, "ano_mes")
  values <- c(values, if (is.null(ano_mes)) "NULL" else if (is(ano_mes, "subQuery")) paste0("(", as.character(ano_mes), ")") else paste0("'", as.character(ano_mes), "'"))

  if (missing(cod_crg)) {
    cod_crg <- defaults$cod_crg
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_scp_2015.cod_crg')
  }
  fields <- c(fields, "cod_crg")
  values <- c(values, if (is.null(cod_crg)) "NULL" else if (is(cod_crg, "subQuery")) paste0("(", as.character(cod_crg), ")") else paste0("'", as.character(cod_crg), "'"))

  if (missing(cod_est_salud)) {
    cod_est_salud <- defaults$cod_est_salud
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_scp_2015.cod_est_salud')
  }
  fields <- c(fields, "cod_est_salud")
  values <- c(values, if (is.null(cod_est_salud)) "NULL" else if (is(cod_est_salud, "subQuery")) paste0("(", as.character(cod_est_salud), ")") else paste0("'", as.character(cod_est_salud), "'"))

  inserts <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, table = "tb_scp_2015", fields = fields, values = values)
  frameworkContext$inserts[[length(frameworkContext$inserts) + 1]] <- inserts
  invisible(NULL)
}

add_tb_sip_spo <- function(id, numsipcod, sexo, fecha_nac, fecha_def, fecha_baja_sip, cod_causa_baja) {
  defaults <- get('tb_sip_spo', envir = frameworkContext$defaultValues)
  fields <- c()
  values <- c()
  if (missing(id)) {
    id <- defaults$id
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_sip_spo.id')
  }
  fields <- c(fields, "id")
  values <- c(values, if (is.null(id)) "NULL" else if (is(id, "subQuery")) paste0("(", as.character(id), ")") else paste0("'", as.character(id), "'"))

  if (missing(numsipcod)) {
    numsipcod <- defaults$numsipcod
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_sip_spo.numsipcod')
  }
  fields <- c(fields, "numsipcod")
  values <- c(values, if (is.null(numsipcod)) "NULL" else if (is(numsipcod, "subQuery")) paste0("(", as.character(numsipcod), ")") else paste0("'", as.character(numsipcod), "'"))

  if (missing(sexo)) {
    sexo <- defaults$sexo
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_sip_spo.sexo')
  }
  fields <- c(fields, "sexo")
  values <- c(values, if (is.null(sexo)) "NULL" else if (is(sexo, "subQuery")) paste0("(", as.character(sexo), ")") else paste0("'", as.character(sexo), "'"))

  if (missing(fecha_nac)) {
    fecha_nac <- defaults$fecha_nac
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_sip_spo.fecha_nac')
  }
  fields <- c(fields, "fecha_nac")
  values <- c(values, if (is.null(fecha_nac)) "NULL" else if (is(fecha_nac, "subQuery")) paste0("(", as.character(fecha_nac), ")") else paste0("'", as.character(fecha_nac), "'"))

  if (missing(fecha_def)) {
    fecha_def <- defaults$fecha_def
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_sip_spo.fecha_def')
  }
  fields <- c(fields, "fecha_def")
  values <- c(values, if (is.null(fecha_def)) "NULL" else if (is(fecha_def, "subQuery")) paste0("(", as.character(fecha_def), ")") else paste0("'", as.character(fecha_def), "'"))

  if (missing(fecha_baja_sip)) {
    fecha_baja_sip <- defaults$fecha_baja_sip
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_sip_spo.fecha_baja_sip')
  }
  fields <- c(fields, "fecha_baja_sip")
  values <- c(values, if (is.null(fecha_baja_sip)) "NULL" else if (is(fecha_baja_sip, "subQuery")) paste0("(", as.character(fecha_baja_sip), ")") else paste0("'", as.character(fecha_baja_sip), "'"))

  if (missing(cod_causa_baja)) {
    cod_causa_baja <- defaults$cod_causa_baja
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_sip_spo.cod_causa_baja')
  }
  fields <- c(fields, "cod_causa_baja")
  values <- c(values, if (is.null(cod_causa_baja)) "NULL" else if (is(cod_causa_baja, "subQuery")) paste0("(", as.character(cod_causa_baja), ")") else paste0("'", as.character(cod_causa_baja), "'"))

  inserts <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, table = "tb_sip_spo", fields = fields, values = values)
  frameworkContext$inserts[[length(frameworkContext$inserts) + 1]] <- inserts
  invisible(NULL)
}

add_tb_sip_spo_resto_2012 <- function(id, numsipcod, cod_centro_asignacion, cod_departamento_asignacion, cod_zona_asignacion, clave_medica, codigo_apsig, fecha_corte, sit_empadronamiento, nacionalidad_espanola, cod_modalidad, derecho_medico, cod_pais_procedencia_acred, cod_comunidad_procedencia_acred, cod_pais_nacimiento, titular_beneficiario, cod_raf) {
  defaults <- get('tb_sip_spo_resto_2012', envir = frameworkContext$defaultValues)
  fields <- c()
  values <- c()
  if (missing(id)) {
    id <- defaults$id
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_sip_spo_resto_2012.id')
  }
  fields <- c(fields, "id")
  values <- c(values, if (is.null(id)) "NULL" else if (is(id, "subQuery")) paste0("(", as.character(id), ")") else paste0("'", as.character(id), "'"))

  if (missing(numsipcod)) {
    numsipcod <- defaults$numsipcod
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_sip_spo_resto_2012.numsipcod')
  }
  fields <- c(fields, "numsipcod")
  values <- c(values, if (is.null(numsipcod)) "NULL" else if (is(numsipcod, "subQuery")) paste0("(", as.character(numsipcod), ")") else paste0("'", as.character(numsipcod), "'"))

  if (missing(cod_centro_asignacion)) {
    cod_centro_asignacion <- defaults$cod_centro_asignacion
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_sip_spo_resto_2012.cod_centro_asignacion')
  }
  fields <- c(fields, "cod_centro_asignacion")
  values <- c(values, if (is.null(cod_centro_asignacion)) "NULL" else if (is(cod_centro_asignacion, "subQuery")) paste0("(", as.character(cod_centro_asignacion), ")") else paste0("'", as.character(cod_centro_asignacion), "'"))

  if (missing(cod_departamento_asignacion)) {
    cod_departamento_asignacion <- defaults$cod_departamento_asignacion
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_sip_spo_resto_2012.cod_departamento_asignacion')
  }
  fields <- c(fields, "cod_departamento_asignacion")
  values <- c(values, if (is.null(cod_departamento_asignacion)) "NULL" else if (is(cod_departamento_asignacion, "subQuery")) paste0("(", as.character(cod_departamento_asignacion), ")") else paste0("'", as.character(cod_departamento_asignacion), "'"))

  if (missing(cod_zona_asignacion)) {
    cod_zona_asignacion <- defaults$cod_zona_asignacion
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_sip_spo_resto_2012.cod_zona_asignacion')
  }
  fields <- c(fields, "cod_zona_asignacion")
  values <- c(values, if (is.null(cod_zona_asignacion)) "NULL" else if (is(cod_zona_asignacion, "subQuery")) paste0("(", as.character(cod_zona_asignacion), ")") else paste0("'", as.character(cod_zona_asignacion), "'"))

  if (missing(clave_medica)) {
    clave_medica <- defaults$clave_medica
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_sip_spo_resto_2012.clave_medica')
  }
  fields <- c(fields, "clave_medica")
  values <- c(values, if (is.null(clave_medica)) "NULL" else if (is(clave_medica, "subQuery")) paste0("(", as.character(clave_medica), ")") else paste0("'", as.character(clave_medica), "'"))

  if (missing(codigo_apsig)) {
    codigo_apsig <- defaults$codigo_apsig
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_sip_spo_resto_2012.codigo_apsig')
  }
  fields <- c(fields, "codigo_apsig")
  values <- c(values, if (is.null(codigo_apsig)) "NULL" else if (is(codigo_apsig, "subQuery")) paste0("(", as.character(codigo_apsig), ")") else paste0("'", as.character(codigo_apsig), "'"))

  if (missing(fecha_corte)) {
    fecha_corte <- defaults$fecha_corte
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_sip_spo_resto_2012.fecha_corte')
  }
  fields <- c(fields, "fecha_corte")
  values <- c(values, if (is.null(fecha_corte)) "NULL" else if (is(fecha_corte, "subQuery")) paste0("(", as.character(fecha_corte), ")") else paste0("'", as.character(fecha_corte), "'"))

  if (missing(sit_empadronamiento)) {
    sit_empadronamiento <- defaults$sit_empadronamiento
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_sip_spo_resto_2012.sit_empadronamiento')
  }
  fields <- c(fields, "sit_empadronamiento")
  values <- c(values, if (is.null(sit_empadronamiento)) "NULL" else if (is(sit_empadronamiento, "subQuery")) paste0("(", as.character(sit_empadronamiento), ")") else paste0("'", as.character(sit_empadronamiento), "'"))

  if (missing(nacionalidad_espanola)) {
    nacionalidad_espanola <- defaults$nacionalidad_espanola
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_sip_spo_resto_2012.nacionalidad_espanola')
  }
  fields <- c(fields, "nacionalidad_espanola")
  values <- c(values, if (is.null(nacionalidad_espanola)) "NULL" else if (is(nacionalidad_espanola, "subQuery")) paste0("(", as.character(nacionalidad_espanola), ")") else paste0("'", as.character(nacionalidad_espanola), "'"))

  if (missing(cod_modalidad)) {
    cod_modalidad <- defaults$cod_modalidad
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_sip_spo_resto_2012.cod_modalidad')
  }
  fields <- c(fields, "cod_modalidad")
  values <- c(values, if (is.null(cod_modalidad)) "NULL" else if (is(cod_modalidad, "subQuery")) paste0("(", as.character(cod_modalidad), ")") else paste0("'", as.character(cod_modalidad), "'"))

  if (missing(derecho_medico)) {
    derecho_medico <- defaults$derecho_medico
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_sip_spo_resto_2012.derecho_medico')
  }
  fields <- c(fields, "derecho_medico")
  values <- c(values, if (is.null(derecho_medico)) "NULL" else if (is(derecho_medico, "subQuery")) paste0("(", as.character(derecho_medico), ")") else paste0("'", as.character(derecho_medico), "'"))

  if (missing(cod_pais_procedencia_acred)) {
    cod_pais_procedencia_acred <- defaults$cod_pais_procedencia_acred
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_sip_spo_resto_2012.cod_pais_procedencia_acred')
  }
  fields <- c(fields, "cod_pais_procedencia_acred")
  values <- c(values, if (is.null(cod_pais_procedencia_acred)) "NULL" else if (is(cod_pais_procedencia_acred, "subQuery")) paste0("(", as.character(cod_pais_procedencia_acred), ")") else paste0("'", as.character(cod_pais_procedencia_acred), "'"))

  if (missing(cod_comunidad_procedencia_acred)) {
    cod_comunidad_procedencia_acred <- defaults$cod_comunidad_procedencia_acred
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_sip_spo_resto_2012.cod_comunidad_procedencia_acred')
  }
  fields <- c(fields, "cod_comunidad_procedencia_acred")
  values <- c(values, if (is.null(cod_comunidad_procedencia_acred)) "NULL" else if (is(cod_comunidad_procedencia_acred, "subQuery")) paste0("(", as.character(cod_comunidad_procedencia_acred), ")") else paste0("'", as.character(cod_comunidad_procedencia_acred), "'"))

  if (missing(cod_pais_nacimiento)) {
    cod_pais_nacimiento <- defaults$cod_pais_nacimiento
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_sip_spo_resto_2012.cod_pais_nacimiento')
  }
  fields <- c(fields, "cod_pais_nacimiento")
  values <- c(values, if (is.null(cod_pais_nacimiento)) "NULL" else if (is(cod_pais_nacimiento, "subQuery")) paste0("(", as.character(cod_pais_nacimiento), ")") else paste0("'", as.character(cod_pais_nacimiento), "'"))

  if (missing(titular_beneficiario)) {
    titular_beneficiario <- defaults$titular_beneficiario
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_sip_spo_resto_2012.titular_beneficiario')
  }
  fields <- c(fields, "titular_beneficiario")
  values <- c(values, if (is.null(titular_beneficiario)) "NULL" else if (is(titular_beneficiario, "subQuery")) paste0("(", as.character(titular_beneficiario), ")") else paste0("'", as.character(titular_beneficiario), "'"))

  if (missing(cod_raf)) {
    cod_raf <- defaults$cod_raf
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_sip_spo_resto_2012.cod_raf')
  }
  fields <- c(fields, "cod_raf")
  values <- c(values, if (is.null(cod_raf)) "NULL" else if (is(cod_raf, "subQuery")) paste0("(", as.character(cod_raf), ")") else paste0("'", as.character(cod_raf), "'"))

  inserts <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, table = "tb_sip_spo_resto_2012", fields = fields, values = values)
  frameworkContext$inserts[[length(frameworkContext$inserts) + 1]] <- inserts
  invisible(NULL)
}

add_tb_sip_spo_resto_2015 <- function(id, numsipcod, cod_centro_asignacion, cod_departamento_asignacion, cod_zona_asignacion, clave_medica, codigo_apsig, fecha_corte, sit_empadronamiento, nacionalidad_espanola, cod_modalidad, derecho_medico, cod_pais_procedencia_acred, cod_comunidad_procedencia_acred, cod_pais_nacimiento, titular_beneficiario, cod_raf) {
  defaults <- get('tb_sip_spo_resto_2015', envir = frameworkContext$defaultValues)
  fields <- c()
  values <- c()
  if (missing(id)) {
    id <- defaults$id
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_sip_spo_resto_2015.id')
  }
  fields <- c(fields, "id")
  values <- c(values, if (is.null(id)) "NULL" else if (is(id, "subQuery")) paste0("(", as.character(id), ")") else paste0("'", as.character(id), "'"))

  if (missing(numsipcod)) {
    numsipcod <- defaults$numsipcod
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_sip_spo_resto_2015.numsipcod')
  }
  fields <- c(fields, "numsipcod")
  values <- c(values, if (is.null(numsipcod)) "NULL" else if (is(numsipcod, "subQuery")) paste0("(", as.character(numsipcod), ")") else paste0("'", as.character(numsipcod), "'"))

  if (missing(cod_centro_asignacion)) {
    cod_centro_asignacion <- defaults$cod_centro_asignacion
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_sip_spo_resto_2015.cod_centro_asignacion')
  }
  fields <- c(fields, "cod_centro_asignacion")
  values <- c(values, if (is.null(cod_centro_asignacion)) "NULL" else if (is(cod_centro_asignacion, "subQuery")) paste0("(", as.character(cod_centro_asignacion), ")") else paste0("'", as.character(cod_centro_asignacion), "'"))

  if (missing(cod_departamento_asignacion)) {
    cod_departamento_asignacion <- defaults$cod_departamento_asignacion
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_sip_spo_resto_2015.cod_departamento_asignacion')
  }
  fields <- c(fields, "cod_departamento_asignacion")
  values <- c(values, if (is.null(cod_departamento_asignacion)) "NULL" else if (is(cod_departamento_asignacion, "subQuery")) paste0("(", as.character(cod_departamento_asignacion), ")") else paste0("'", as.character(cod_departamento_asignacion), "'"))

  if (missing(cod_zona_asignacion)) {
    cod_zona_asignacion <- defaults$cod_zona_asignacion
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_sip_spo_resto_2015.cod_zona_asignacion')
  }
  fields <- c(fields, "cod_zona_asignacion")
  values <- c(values, if (is.null(cod_zona_asignacion)) "NULL" else if (is(cod_zona_asignacion, "subQuery")) paste0("(", as.character(cod_zona_asignacion), ")") else paste0("'", as.character(cod_zona_asignacion), "'"))

  if (missing(clave_medica)) {
    clave_medica <- defaults$clave_medica
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_sip_spo_resto_2015.clave_medica')
  }
  fields <- c(fields, "clave_medica")
  values <- c(values, if (is.null(clave_medica)) "NULL" else if (is(clave_medica, "subQuery")) paste0("(", as.character(clave_medica), ")") else paste0("'", as.character(clave_medica), "'"))

  if (missing(codigo_apsig)) {
    codigo_apsig <- defaults$codigo_apsig
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_sip_spo_resto_2015.codigo_apsig')
  }
  fields <- c(fields, "codigo_apsig")
  values <- c(values, if (is.null(codigo_apsig)) "NULL" else if (is(codigo_apsig, "subQuery")) paste0("(", as.character(codigo_apsig), ")") else paste0("'", as.character(codigo_apsig), "'"))

  if (missing(fecha_corte)) {
    fecha_corte <- defaults$fecha_corte
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_sip_spo_resto_2015.fecha_corte')
  }
  fields <- c(fields, "fecha_corte")
  values <- c(values, if (is.null(fecha_corte)) "NULL" else if (is(fecha_corte, "subQuery")) paste0("(", as.character(fecha_corte), ")") else paste0("'", as.character(fecha_corte), "'"))

  if (missing(sit_empadronamiento)) {
    sit_empadronamiento <- defaults$sit_empadronamiento
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_sip_spo_resto_2015.sit_empadronamiento')
  }
  fields <- c(fields, "sit_empadronamiento")
  values <- c(values, if (is.null(sit_empadronamiento)) "NULL" else if (is(sit_empadronamiento, "subQuery")) paste0("(", as.character(sit_empadronamiento), ")") else paste0("'", as.character(sit_empadronamiento), "'"))

  if (missing(nacionalidad_espanola)) {
    nacionalidad_espanola <- defaults$nacionalidad_espanola
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_sip_spo_resto_2015.nacionalidad_espanola')
  }
  fields <- c(fields, "nacionalidad_espanola")
  values <- c(values, if (is.null(nacionalidad_espanola)) "NULL" else if (is(nacionalidad_espanola, "subQuery")) paste0("(", as.character(nacionalidad_espanola), ")") else paste0("'", as.character(nacionalidad_espanola), "'"))

  if (missing(cod_modalidad)) {
    cod_modalidad <- defaults$cod_modalidad
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_sip_spo_resto_2015.cod_modalidad')
  }
  fields <- c(fields, "cod_modalidad")
  values <- c(values, if (is.null(cod_modalidad)) "NULL" else if (is(cod_modalidad, "subQuery")) paste0("(", as.character(cod_modalidad), ")") else paste0("'", as.character(cod_modalidad), "'"))

  if (missing(derecho_medico)) {
    derecho_medico <- defaults$derecho_medico
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_sip_spo_resto_2015.derecho_medico')
  }
  fields <- c(fields, "derecho_medico")
  values <- c(values, if (is.null(derecho_medico)) "NULL" else if (is(derecho_medico, "subQuery")) paste0("(", as.character(derecho_medico), ")") else paste0("'", as.character(derecho_medico), "'"))

  if (missing(cod_pais_procedencia_acred)) {
    cod_pais_procedencia_acred <- defaults$cod_pais_procedencia_acred
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_sip_spo_resto_2015.cod_pais_procedencia_acred')
  }
  fields <- c(fields, "cod_pais_procedencia_acred")
  values <- c(values, if (is.null(cod_pais_procedencia_acred)) "NULL" else if (is(cod_pais_procedencia_acred, "subQuery")) paste0("(", as.character(cod_pais_procedencia_acred), ")") else paste0("'", as.character(cod_pais_procedencia_acred), "'"))

  if (missing(cod_comunidad_procedencia_acred)) {
    cod_comunidad_procedencia_acred <- defaults$cod_comunidad_procedencia_acred
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_sip_spo_resto_2015.cod_comunidad_procedencia_acred')
  }
  fields <- c(fields, "cod_comunidad_procedencia_acred")
  values <- c(values, if (is.null(cod_comunidad_procedencia_acred)) "NULL" else if (is(cod_comunidad_procedencia_acred, "subQuery")) paste0("(", as.character(cod_comunidad_procedencia_acred), ")") else paste0("'", as.character(cod_comunidad_procedencia_acred), "'"))

  if (missing(cod_pais_nacimiento)) {
    cod_pais_nacimiento <- defaults$cod_pais_nacimiento
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_sip_spo_resto_2015.cod_pais_nacimiento')
  }
  fields <- c(fields, "cod_pais_nacimiento")
  values <- c(values, if (is.null(cod_pais_nacimiento)) "NULL" else if (is(cod_pais_nacimiento, "subQuery")) paste0("(", as.character(cod_pais_nacimiento), ")") else paste0("'", as.character(cod_pais_nacimiento), "'"))

  if (missing(titular_beneficiario)) {
    titular_beneficiario <- defaults$titular_beneficiario
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_sip_spo_resto_2015.titular_beneficiario')
  }
  fields <- c(fields, "titular_beneficiario")
  values <- c(values, if (is.null(titular_beneficiario)) "NULL" else if (is(titular_beneficiario, "subQuery")) paste0("(", as.character(titular_beneficiario), ")") else paste0("'", as.character(titular_beneficiario), "'"))

  if (missing(cod_raf)) {
    cod_raf <- defaults$cod_raf
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_sip_spo_resto_2015.cod_raf')
  }
  fields <- c(fields, "cod_raf")
  values <- c(values, if (is.null(cod_raf)) "NULL" else if (is(cod_raf, "subQuery")) paste0("(", as.character(cod_raf), ")") else paste0("'", as.character(cod_raf), "'"))

  inserts <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, table = "tb_sip_spo_resto_2015", fields = fields, values = values)
  frameworkContext$inserts[[length(frameworkContext$inserts) + 1]] <- inserts
  invisible(NULL)
}

add_tb_tratamientos <- function(id, unidades, numsipcod, dias_tratamiento, id_tratamiento, cadencia, fecha_fin_tratamiento, fecha_inicio_tratamiento, cod_atc2, cod_atc4, cod_presfarma, cod_prinactivo, tipo_posologia, unidad_posologia) {
  defaults <- get('tb_tratamientos', envir = frameworkContext$defaultValues)
  fields <- c()
  values <- c()
  if (missing(id)) {
    id <- defaults$id
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_tratamientos.id')
  }
  fields <- c(fields, "id")
  values <- c(values, if (is.null(id)) "NULL" else if (is(id, "subQuery")) paste0("(", as.character(id), ")") else paste0("'", as.character(id), "'"))

  if (missing(unidades)) {
    unidades <- defaults$unidades
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_tratamientos.unidades')
  }
  fields <- c(fields, "unidades")
  values <- c(values, if (is.null(unidades)) "NULL" else if (is(unidades, "subQuery")) paste0("(", as.character(unidades), ")") else paste0("'", as.character(unidades), "'"))

  if (missing(numsipcod)) {
    numsipcod <- defaults$numsipcod
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_tratamientos.numsipcod')
  }
  fields <- c(fields, "numsipcod")
  values <- c(values, if (is.null(numsipcod)) "NULL" else if (is(numsipcod, "subQuery")) paste0("(", as.character(numsipcod), ")") else paste0("'", as.character(numsipcod), "'"))

  if (missing(dias_tratamiento)) {
    dias_tratamiento <- defaults$dias_tratamiento
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_tratamientos.dias_tratamiento')
  }
  fields <- c(fields, "dias_tratamiento")
  values <- c(values, if (is.null(dias_tratamiento)) "NULL" else if (is(dias_tratamiento, "subQuery")) paste0("(", as.character(dias_tratamiento), ")") else paste0("'", as.character(dias_tratamiento), "'"))

  if (missing(id_tratamiento)) {
    id_tratamiento <- defaults$id_tratamiento
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_tratamientos.id_tratamiento')
  }
  fields <- c(fields, "id_tratamiento")
  values <- c(values, if (is.null(id_tratamiento)) "NULL" else if (is(id_tratamiento, "subQuery")) paste0("(", as.character(id_tratamiento), ")") else paste0("'", as.character(id_tratamiento), "'"))

  if (missing(cadencia)) {
    cadencia <- defaults$cadencia
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_tratamientos.cadencia')
  }
  fields <- c(fields, "cadencia")
  values <- c(values, if (is.null(cadencia)) "NULL" else if (is(cadencia, "subQuery")) paste0("(", as.character(cadencia), ")") else paste0("'", as.character(cadencia), "'"))

  if (missing(fecha_fin_tratamiento)) {
    fecha_fin_tratamiento <- defaults$fecha_fin_tratamiento
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_tratamientos.fecha_fin_tratamiento')
  }
  fields <- c(fields, "fecha_fin_tratamiento")
  values <- c(values, if (is.null(fecha_fin_tratamiento)) "NULL" else if (is(fecha_fin_tratamiento, "subQuery")) paste0("(", as.character(fecha_fin_tratamiento), ")") else paste0("'", as.character(fecha_fin_tratamiento), "'"))

  if (missing(fecha_inicio_tratamiento)) {
    fecha_inicio_tratamiento <- defaults$fecha_inicio_tratamiento
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_tratamientos.fecha_inicio_tratamiento')
  }
  fields <- c(fields, "fecha_inicio_tratamiento")
  values <- c(values, if (is.null(fecha_inicio_tratamiento)) "NULL" else if (is(fecha_inicio_tratamiento, "subQuery")) paste0("(", as.character(fecha_inicio_tratamiento), ")") else paste0("'", as.character(fecha_inicio_tratamiento), "'"))

  if (missing(cod_atc2)) {
    cod_atc2 <- defaults$cod_atc2
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_tratamientos.cod_atc2')
  }
  fields <- c(fields, "cod_atc2")
  values <- c(values, if (is.null(cod_atc2)) "NULL" else if (is(cod_atc2, "subQuery")) paste0("(", as.character(cod_atc2), ")") else paste0("'", as.character(cod_atc2), "'"))

  if (missing(cod_atc4)) {
    cod_atc4 <- defaults$cod_atc4
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_tratamientos.cod_atc4')
  }
  fields <- c(fields, "cod_atc4")
  values <- c(values, if (is.null(cod_atc4)) "NULL" else if (is(cod_atc4, "subQuery")) paste0("(", as.character(cod_atc4), ")") else paste0("'", as.character(cod_atc4), "'"))

  if (missing(cod_presfarma)) {
    cod_presfarma <- defaults$cod_presfarma
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_tratamientos.cod_presfarma')
  }
  fields <- c(fields, "cod_presfarma")
  values <- c(values, if (is.null(cod_presfarma)) "NULL" else if (is(cod_presfarma, "subQuery")) paste0("(", as.character(cod_presfarma), ")") else paste0("'", as.character(cod_presfarma), "'"))

  if (missing(cod_prinactivo)) {
    cod_prinactivo <- defaults$cod_prinactivo
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_tratamientos.cod_prinactivo')
  }
  fields <- c(fields, "cod_prinactivo")
  values <- c(values, if (is.null(cod_prinactivo)) "NULL" else if (is(cod_prinactivo, "subQuery")) paste0("(", as.character(cod_prinactivo), ")") else paste0("'", as.character(cod_prinactivo), "'"))

  if (missing(tipo_posologia)) {
    tipo_posologia <- defaults$tipo_posologia
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_tratamientos.tipo_posologia')
  }
  fields <- c(fields, "tipo_posologia")
  values <- c(values, if (is.null(tipo_posologia)) "NULL" else if (is(tipo_posologia, "subQuery")) paste0("(", as.character(tipo_posologia), ")") else paste0("'", as.character(tipo_posologia), "'"))

  if (missing(unidad_posologia)) {
    unidad_posologia <- defaults$unidad_posologia
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_tratamientos.unidad_posologia')
  }
  fields <- c(fields, "unidad_posologia")
  values <- c(values, if (is.null(unidad_posologia)) "NULL" else if (is(unidad_posologia, "subQuery")) paste0("(", as.character(unidad_posologia), ")") else paste0("'", as.character(unidad_posologia), "'"))

  inserts <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, table = "tb_tratamientos", fields = fields, values = values)
  frameworkContext$inserts[[length(frameworkContext$inserts) + 1]] <- inserts
  invisible(NULL)
}

add_tb_urgencias <- function(id, num_urgencias, numsipcod, fecha_urgencia, cod_motivo_urg) {
  defaults <- get('tb_urgencias', envir = frameworkContext$defaultValues)
  fields <- c()
  values <- c()
  if (missing(id)) {
    id <- defaults$id
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_urgencias.id')
  }
  fields <- c(fields, "id")
  values <- c(values, if (is.null(id)) "NULL" else if (is(id, "subQuery")) paste0("(", as.character(id), ")") else paste0("'", as.character(id), "'"))

  if (missing(num_urgencias)) {
    num_urgencias <- defaults$num_urgencias
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_urgencias.num_urgencias')
  }
  fields <- c(fields, "num_urgencias")
  values <- c(values, if (is.null(num_urgencias)) "NULL" else if (is(num_urgencias, "subQuery")) paste0("(", as.character(num_urgencias), ")") else paste0("'", as.character(num_urgencias), "'"))

  if (missing(numsipcod)) {
    numsipcod <- defaults$numsipcod
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_urgencias.numsipcod')
  }
  fields <- c(fields, "numsipcod")
  values <- c(values, if (is.null(numsipcod)) "NULL" else if (is(numsipcod, "subQuery")) paste0("(", as.character(numsipcod), ")") else paste0("'", as.character(numsipcod), "'"))

  if (missing(fecha_urgencia)) {
    fecha_urgencia <- defaults$fecha_urgencia
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_urgencias.fecha_urgencia')
  }
  fields <- c(fields, "fecha_urgencia")
  values <- c(values, if (is.null(fecha_urgencia)) "NULL" else if (is(fecha_urgencia, "subQuery")) paste0("(", as.character(fecha_urgencia), ")") else paste0("'", as.character(fecha_urgencia), "'"))

  if (missing(cod_motivo_urg)) {
    cod_motivo_urg <- defaults$cod_motivo_urg
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_urgencias.cod_motivo_urg')
  }
  fields <- c(fields, "cod_motivo_urg")
  values <- c(values, if (is.null(cod_motivo_urg)) "NULL" else if (is(cod_motivo_urg, "subQuery")) paste0("(", as.character(cod_motivo_urg), ")") else paste0("'", as.character(cod_motivo_urg), "'"))

  inserts <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, table = "tb_urgencias", fields = fields, values = values)
  frameworkContext$inserts[[length(frameworkContext$inserts) + 1]] <- inserts
  invisible(NULL)
}

add_tb_variables <- function(id, valor_registrado, numsipcod, fecha_registro, cod_variable_clinic, cod_ud_medida) {
  defaults <- get('tb_variables', envir = frameworkContext$defaultValues)
  fields <- c()
  values <- c()
  if (missing(id)) {
    id <- defaults$id
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_variables.id')
  }
  fields <- c(fields, "id")
  values <- c(values, if (is.null(id)) "NULL" else if (is(id, "subQuery")) paste0("(", as.character(id), ")") else paste0("'", as.character(id), "'"))

  if (missing(valor_registrado)) {
    valor_registrado <- defaults$valor_registrado
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_variables.valor_registrado')
  }
  fields <- c(fields, "valor_registrado")
  values <- c(values, if (is.null(valor_registrado)) "NULL" else if (is(valor_registrado, "subQuery")) paste0("(", as.character(valor_registrado), ")") else paste0("'", as.character(valor_registrado), "'"))

  if (missing(numsipcod)) {
    numsipcod <- defaults$numsipcod
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_variables.numsipcod')
  }
  fields <- c(fields, "numsipcod")
  values <- c(values, if (is.null(numsipcod)) "NULL" else if (is(numsipcod, "subQuery")) paste0("(", as.character(numsipcod), ")") else paste0("'", as.character(numsipcod), "'"))

  if (missing(fecha_registro)) {
    fecha_registro <- defaults$fecha_registro
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_variables.fecha_registro')
  }
  fields <- c(fields, "fecha_registro")
  values <- c(values, if (is.null(fecha_registro)) "NULL" else if (is(fecha_registro, "subQuery")) paste0("(", as.character(fecha_registro), ")") else paste0("'", as.character(fecha_registro), "'"))

  if (missing(cod_variable_clinic)) {
    cod_variable_clinic <- defaults$cod_variable_clinic
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_variables.cod_variable_clinic')
  }
  fields <- c(fields, "cod_variable_clinic")
  values <- c(values, if (is.null(cod_variable_clinic)) "NULL" else if (is(cod_variable_clinic, "subQuery")) paste0("(", as.character(cod_variable_clinic), ")") else paste0("'", as.character(cod_variable_clinic), "'"))

  if (missing(cod_ud_medida)) {
    cod_ud_medida <- defaults$cod_ud_medida
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tb_variables.cod_ud_medida')
  }
  fields <- c(fields, "cod_ud_medida")
  values <- c(values, if (is.null(cod_ud_medida)) "NULL" else if (is(cod_ud_medida, "subQuery")) paste0("(", as.character(cod_ud_medida), ")") else paste0("'", as.character(cod_ud_medida), "'"))

  inserts <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, table = "tb_variables", fields = fields, values = values)
  frameworkContext$inserts[[length(frameworkContext$inserts) + 1]] <- inserts
  invisible(NULL)
}

add_tba_atc2 <- function(id, cod_atc2, des_atc2) {
  defaults <- get('tba_atc2', envir = frameworkContext$defaultValues)
  fields <- c()
  values <- c()
  if (missing(id)) {
    id <- defaults$id
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_atc2.id')
  }
  fields <- c(fields, "id")
  values <- c(values, if (is.null(id)) "NULL" else if (is(id, "subQuery")) paste0("(", as.character(id), ")") else paste0("'", as.character(id), "'"))

  if (missing(cod_atc2)) {
    cod_atc2 <- defaults$cod_atc2
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_atc2.cod_atc2')
  }
  fields <- c(fields, "cod_atc2")
  values <- c(values, if (is.null(cod_atc2)) "NULL" else if (is(cod_atc2, "subQuery")) paste0("(", as.character(cod_atc2), ")") else paste0("'", as.character(cod_atc2), "'"))

  if (missing(des_atc2)) {
    des_atc2 <- defaults$des_atc2
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_atc2.des_atc2')
  }
  fields <- c(fields, "des_atc2")
  values <- c(values, if (is.null(des_atc2)) "NULL" else if (is(des_atc2, "subQuery")) paste0("(", as.character(des_atc2), ")") else paste0("'", as.character(des_atc2), "'"))

  inserts <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, table = "tba_atc2", fields = fields, values = values)
  frameworkContext$inserts[[length(frameworkContext$inserts) + 1]] <- inserts
  invisible(NULL)
}

add_tba_atc4 <- function(id, cod_atc4, des_atc4) {
  defaults <- get('tba_atc4', envir = frameworkContext$defaultValues)
  fields <- c()
  values <- c()
  if (missing(id)) {
    id <- defaults$id
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_atc4.id')
  }
  fields <- c(fields, "id")
  values <- c(values, if (is.null(id)) "NULL" else if (is(id, "subQuery")) paste0("(", as.character(id), ")") else paste0("'", as.character(id), "'"))

  if (missing(cod_atc4)) {
    cod_atc4 <- defaults$cod_atc4
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_atc4.cod_atc4')
  }
  fields <- c(fields, "cod_atc4")
  values <- c(values, if (is.null(cod_atc4)) "NULL" else if (is(cod_atc4, "subQuery")) paste0("(", as.character(cod_atc4), ")") else paste0("'", as.character(cod_atc4), "'"))

  if (missing(des_atc4)) {
    des_atc4 <- defaults$des_atc4
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_atc4.des_atc4')
  }
  fields <- c(fields, "des_atc4")
  values <- c(values, if (is.null(des_atc4)) "NULL" else if (is(des_atc4, "subQuery")) paste0("(", as.character(des_atc4), ")") else paste0("'", as.character(des_atc4), "'"))

  inserts <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, table = "tba_atc4", fields = fields, values = values)
  frameworkContext$inserts[[length(frameworkContext$inserts) + 1]] <- inserts
  invisible(NULL)
}

add_tba_cau_alta <- function(id, cod_causa_alta, des_causa_alta) {
  defaults <- get('tba_cau_alta', envir = frameworkContext$defaultValues)
  fields <- c()
  values <- c()
  if (missing(id)) {
    id <- defaults$id
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_cau_alta.id')
  }
  fields <- c(fields, "id")
  values <- c(values, if (is.null(id)) "NULL" else if (is(id, "subQuery")) paste0("(", as.character(id), ")") else paste0("'", as.character(id), "'"))

  if (missing(cod_causa_alta)) {
    cod_causa_alta <- defaults$cod_causa_alta
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_cau_alta.cod_causa_alta')
  }
  fields <- c(fields, "cod_causa_alta")
  values <- c(values, if (is.null(cod_causa_alta)) "NULL" else if (is(cod_causa_alta, "subQuery")) paste0("(", as.character(cod_causa_alta), ")") else paste0("'", as.character(cod_causa_alta), "'"))

  if (missing(des_causa_alta)) {
    des_causa_alta <- defaults$des_causa_alta
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_cau_alta.des_causa_alta')
  }
  fields <- c(fields, "des_causa_alta")
  values <- c(values, if (is.null(des_causa_alta)) "NULL" else if (is(des_causa_alta, "subQuery")) paste0("(", as.character(des_causa_alta), ")") else paste0("'", as.character(des_causa_alta), "'"))

  inserts <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, table = "tba_cau_alta", fields = fields, values = values)
  frameworkContext$inserts[[length(frameworkContext$inserts) + 1]] <- inserts
  invisible(NULL)
}

add_tba_cau_baja <- function(id, cod_causa_baja, des_causa_baja) {
  defaults <- get('tba_cau_baja', envir = frameworkContext$defaultValues)
  fields <- c()
  values <- c()
  if (missing(id)) {
    id <- defaults$id
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_cau_baja.id')
  }
  fields <- c(fields, "id")
  values <- c(values, if (is.null(id)) "NULL" else if (is(id, "subQuery")) paste0("(", as.character(id), ")") else paste0("'", as.character(id), "'"))

  if (missing(cod_causa_baja)) {
    cod_causa_baja <- defaults$cod_causa_baja
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_cau_baja.cod_causa_baja')
  }
  fields <- c(fields, "cod_causa_baja")
  values <- c(values, if (is.null(cod_causa_baja)) "NULL" else if (is(cod_causa_baja, "subQuery")) paste0("(", as.character(cod_causa_baja), ")") else paste0("'", as.character(cod_causa_baja), "'"))

  if (missing(des_causa_baja)) {
    des_causa_baja <- defaults$des_causa_baja
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_cau_baja.des_causa_baja')
  }
  fields <- c(fields, "des_causa_baja")
  values <- c(values, if (is.null(des_causa_baja)) "NULL" else if (is(des_causa_baja, "subQuery")) paste0("(", as.character(des_causa_baja), ")") else paste0("'", as.character(des_causa_baja), "'"))

  inserts <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, table = "tba_cau_baja", fields = fields, values = values)
  frameworkContext$inserts[[length(frameworkContext$inserts) + 1]] <- inserts
  invisible(NULL)
}

add_tba_centros <- function(id, cod_centro, des_centro) {
  defaults <- get('tba_centros', envir = frameworkContext$defaultValues)
  fields <- c()
  values <- c()
  if (missing(id)) {
    id <- defaults$id
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_centros.id')
  }
  fields <- c(fields, "id")
  values <- c(values, if (is.null(id)) "NULL" else if (is(id, "subQuery")) paste0("(", as.character(id), ")") else paste0("'", as.character(id), "'"))

  if (missing(cod_centro)) {
    cod_centro <- defaults$cod_centro
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_centros.cod_centro')
  }
  fields <- c(fields, "cod_centro")
  values <- c(values, if (is.null(cod_centro)) "NULL" else if (is(cod_centro, "subQuery")) paste0("(", as.character(cod_centro), ")") else paste0("'", as.character(cod_centro), "'"))

  if (missing(des_centro)) {
    des_centro <- defaults$des_centro
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_centros.des_centro')
  }
  fields <- c(fields, "des_centro")
  values <- c(values, if (is.null(des_centro)) "NULL" else if (is(des_centro, "subQuery")) paste0("(", as.character(des_centro), ")") else paste0("'", as.character(des_centro), "'"))

  inserts <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, table = "tba_centros", fields = fields, values = values)
  frameworkContext$inserts[[length(frameworkContext$inserts) + 1]] <- inserts
  invisible(NULL)
}

add_tba_centros_asignacion <- function(id, cod_centro, cod_departamento, cod_zona) {
  defaults <- get('tba_centros_asignacion', envir = frameworkContext$defaultValues)
  fields <- c()
  values <- c()
  if (missing(id)) {
    id <- defaults$id
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_centros_asignacion.id')
  }
  fields <- c(fields, "id")
  values <- c(values, if (is.null(id)) "NULL" else if (is(id, "subQuery")) paste0("(", as.character(id), ")") else paste0("'", as.character(id), "'"))

  if (missing(cod_centro)) {
    cod_centro <- defaults$cod_centro
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_centros_asignacion.cod_centro')
  }
  fields <- c(fields, "cod_centro")
  values <- c(values, if (is.null(cod_centro)) "NULL" else if (is(cod_centro, "subQuery")) paste0("(", as.character(cod_centro), ")") else paste0("'", as.character(cod_centro), "'"))

  if (missing(cod_departamento)) {
    cod_departamento <- defaults$cod_departamento
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_centros_asignacion.cod_departamento')
  }
  fields <- c(fields, "cod_departamento")
  values <- c(values, if (is.null(cod_departamento)) "NULL" else if (is(cod_departamento, "subQuery")) paste0("(", as.character(cod_departamento), ")") else paste0("'", as.character(cod_departamento), "'"))

  if (missing(cod_zona)) {
    cod_zona <- defaults$cod_zona
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_centros_asignacion.cod_zona')
  }
  fields <- c(fields, "cod_zona")
  values <- c(values, if (is.null(cod_zona)) "NULL" else if (is(cod_zona, "subQuery")) paste0("(", as.character(cod_zona), ")") else paste0("'", as.character(cod_zona), "'"))

  inserts <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, table = "tba_centros_asignacion", fields = fields, values = values)
  frameworkContext$inserts[[length(frameworkContext$inserts) + 1]] <- inserts
  invisible(NULL)
}

add_tba_cie9 <- function(id, cod_diagnostico, des_diagnostico) {
  defaults <- get('tba_cie9', envir = frameworkContext$defaultValues)
  fields <- c()
  values <- c()
  if (missing(id)) {
    id <- defaults$id
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_cie9.id')
  }
  fields <- c(fields, "id")
  values <- c(values, if (is.null(id)) "NULL" else if (is(id, "subQuery")) paste0("(", as.character(id), ")") else paste0("'", as.character(id), "'"))

  if (missing(cod_diagnostico)) {
    cod_diagnostico <- defaults$cod_diagnostico
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_cie9.cod_diagnostico')
  }
  fields <- c(fields, "cod_diagnostico")
  values <- c(values, if (is.null(cod_diagnostico)) "NULL" else if (is(cod_diagnostico, "subQuery")) paste0("(", as.character(cod_diagnostico), ")") else paste0("'", as.character(cod_diagnostico), "'"))

  if (missing(des_diagnostico)) {
    des_diagnostico <- defaults$des_diagnostico
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_cie9.des_diagnostico')
  }
  fields <- c(fields, "des_diagnostico")
  values <- c(values, if (is.null(des_diagnostico)) "NULL" else if (is(des_diagnostico, "subQuery")) paste0("(", as.character(des_diagnostico), ")") else paste0("'", as.character(des_diagnostico), "'"))

  inserts <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, table = "tba_cie9", fields = fields, values = values)
  frameworkContext$inserts[[length(frameworkContext$inserts) + 1]] <- inserts
  invisible(NULL)
}

add_tba_cie9p <- function(id, cod_procedimiento, des_procedimiento) {
  defaults <- get('tba_cie9p', envir = frameworkContext$defaultValues)
  fields <- c()
  values <- c()
  if (missing(id)) {
    id <- defaults$id
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_cie9p.id')
  }
  fields <- c(fields, "id")
  values <- c(values, if (is.null(id)) "NULL" else if (is(id, "subQuery")) paste0("(", as.character(id), ")") else paste0("'", as.character(id), "'"))

  if (missing(cod_procedimiento)) {
    cod_procedimiento <- defaults$cod_procedimiento
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_cie9p.cod_procedimiento')
  }
  fields <- c(fields, "cod_procedimiento")
  values <- c(values, if (is.null(cod_procedimiento)) "NULL" else if (is(cod_procedimiento, "subQuery")) paste0("(", as.character(cod_procedimiento), ")") else paste0("'", as.character(cod_procedimiento), "'"))

  if (missing(des_procedimiento)) {
    des_procedimiento <- defaults$des_procedimiento
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_cie9p.des_procedimiento')
  }
  fields <- c(fields, "des_procedimiento")
  values <- c(values, if (is.null(des_procedimiento)) "NULL" else if (is(des_procedimiento, "subQuery")) paste0("(", as.character(des_procedimiento), ")") else paste0("'", as.character(des_procedimiento), "'"))

  inserts <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, table = "tba_cie9p", fields = fields, values = values)
  frameworkContext$inserts[[length(frameworkContext$inserts) + 1]] <- inserts
  invisible(NULL)
}

add_tba_comunidad_acred <- function(id, cod_comunidad, des_comunidad) {
  defaults <- get('tba_comunidad_acred', envir = frameworkContext$defaultValues)
  fields <- c()
  values <- c()
  if (missing(id)) {
    id <- defaults$id
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_comunidad_acred.id')
  }
  fields <- c(fields, "id")
  values <- c(values, if (is.null(id)) "NULL" else if (is(id, "subQuery")) paste0("(", as.character(id), ")") else paste0("'", as.character(id), "'"))

  if (missing(cod_comunidad)) {
    cod_comunidad <- defaults$cod_comunidad
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_comunidad_acred.cod_comunidad')
  }
  fields <- c(fields, "cod_comunidad")
  values <- c(values, if (is.null(cod_comunidad)) "NULL" else if (is(cod_comunidad, "subQuery")) paste0("(", as.character(cod_comunidad), ")") else paste0("'", as.character(cod_comunidad), "'"))

  if (missing(des_comunidad)) {
    des_comunidad <- defaults$des_comunidad
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_comunidad_acred.des_comunidad')
  }
  fields <- c(fields, "des_comunidad")
  values <- c(values, if (is.null(des_comunidad)) "NULL" else if (is(des_comunidad, "subQuery")) paste0("(", as.character(des_comunidad), ")") else paste0("'", as.character(des_comunidad), "'"))

  inserts <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, table = "tba_comunidad_acred", fields = fields, values = values)
  frameworkContext$inserts[[length(frameworkContext$inserts) + 1]] <- inserts
  invisible(NULL)
}

add_tba_crg <- function(id, cod_crg, des_crg) {
  defaults <- get('tba_crg', envir = frameworkContext$defaultValues)
  fields <- c()
  values <- c()
  if (missing(id)) {
    id <- defaults$id
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_crg.id')
  }
  fields <- c(fields, "id")
  values <- c(values, if (is.null(id)) "NULL" else if (is(id, "subQuery")) paste0("(", as.character(id), ")") else paste0("'", as.character(id), "'"))

  if (missing(cod_crg)) {
    cod_crg <- defaults$cod_crg
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_crg.cod_crg')
  }
  fields <- c(fields, "cod_crg")
  values <- c(values, if (is.null(cod_crg)) "NULL" else if (is(cod_crg, "subQuery")) paste0("(", as.character(cod_crg), ")") else paste0("'", as.character(cod_crg), "'"))

  if (missing(des_crg)) {
    des_crg <- defaults$des_crg
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_crg.des_crg')
  }
  fields <- c(fields, "des_crg")
  values <- c(values, if (is.null(des_crg)) "NULL" else if (is(des_crg, "subQuery")) paste0("(", as.character(des_crg), ")") else paste0("'", as.character(des_crg), "'"))

  inserts <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, table = "tba_crg", fields = fields, values = values)
  frameworkContext$inserts[[length(frameworkContext$inserts) + 1]] <- inserts
  invisible(NULL)
}

add_tba_departamentos <- function(id, cod_departamento, des_departamento) {
  defaults <- get('tba_departamentos', envir = frameworkContext$defaultValues)
  fields <- c()
  values <- c()
  if (missing(id)) {
    id <- defaults$id
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_departamentos.id')
  }
  fields <- c(fields, "id")
  values <- c(values, if (is.null(id)) "NULL" else if (is(id, "subQuery")) paste0("(", as.character(id), ")") else paste0("'", as.character(id), "'"))

  if (missing(cod_departamento)) {
    cod_departamento <- defaults$cod_departamento
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_departamentos.cod_departamento')
  }
  fields <- c(fields, "cod_departamento")
  values <- c(values, if (is.null(cod_departamento)) "NULL" else if (is(cod_departamento, "subQuery")) paste0("(", as.character(cod_departamento), ")") else paste0("'", as.character(cod_departamento), "'"))

  if (missing(des_departamento)) {
    des_departamento <- defaults$des_departamento
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_departamentos.des_departamento')
  }
  fields <- c(fields, "des_departamento")
  values <- c(values, if (is.null(des_departamento)) "NULL" else if (is(des_departamento, "subQuery")) paste0("(", as.character(des_departamento), ")") else paste0("'", as.character(des_departamento), "'"))

  inserts <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, table = "tba_departamentos", fields = fields, values = values)
  frameworkContext$inserts[[length(frameworkContext$inserts) + 1]] <- inserts
  invisible(NULL)
}

add_tba_est_salud <- function(id, cod_est_salud, des_est_salud) {
  defaults <- get('tba_est_salud', envir = frameworkContext$defaultValues)
  fields <- c()
  values <- c()
  if (missing(id)) {
    id <- defaults$id
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_est_salud.id')
  }
  fields <- c(fields, "id")
  values <- c(values, if (is.null(id)) "NULL" else if (is(id, "subQuery")) paste0("(", as.character(id), ")") else paste0("'", as.character(id), "'"))

  if (missing(cod_est_salud)) {
    cod_est_salud <- defaults$cod_est_salud
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_est_salud.cod_est_salud')
  }
  fields <- c(fields, "cod_est_salud")
  values <- c(values, if (is.null(cod_est_salud)) "NULL" else if (is(cod_est_salud, "subQuery")) paste0("(", as.character(cod_est_salud), ")") else paste0("'", as.character(cod_est_salud), "'"))

  if (missing(des_est_salud)) {
    des_est_salud <- defaults$des_est_salud
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_est_salud.des_est_salud')
  }
  fields <- c(fields, "des_est_salud")
  values <- c(values, if (is.null(des_est_salud)) "NULL" else if (is(des_est_salud, "subQuery")) paste0("(", as.character(des_est_salud), ")") else paste0("'", as.character(des_est_salud), "'"))

  inserts <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, table = "tba_est_salud", fields = fields, values = values)
  frameworkContext$inserts[[length(frameworkContext$inserts) + 1]] <- inserts
  invisible(NULL)
}

add_tba_farmacia <- function(id, cod_presfarma, des_presfarma, cod_prinactivo, des_prinactivo, cod_atc2, des_atc2, cod_atc4, des_atc4) {
  defaults <- get('tba_farmacia', envir = frameworkContext$defaultValues)
  fields <- c()
  values <- c()
  if (missing(id)) {
    id <- defaults$id
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_farmacia.id')
  }
  fields <- c(fields, "id")
  values <- c(values, if (is.null(id)) "NULL" else if (is(id, "subQuery")) paste0("(", as.character(id), ")") else paste0("'", as.character(id), "'"))

  if (missing(cod_presfarma)) {
    cod_presfarma <- defaults$cod_presfarma
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_farmacia.cod_presfarma')
  }
  fields <- c(fields, "cod_presfarma")
  values <- c(values, if (is.null(cod_presfarma)) "NULL" else if (is(cod_presfarma, "subQuery")) paste0("(", as.character(cod_presfarma), ")") else paste0("'", as.character(cod_presfarma), "'"))

  if (missing(des_presfarma)) {
    des_presfarma <- defaults$des_presfarma
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_farmacia.des_presfarma')
  }
  fields <- c(fields, "des_presfarma")
  values <- c(values, if (is.null(des_presfarma)) "NULL" else if (is(des_presfarma, "subQuery")) paste0("(", as.character(des_presfarma), ")") else paste0("'", as.character(des_presfarma), "'"))

  if (missing(cod_prinactivo)) {
    cod_prinactivo <- defaults$cod_prinactivo
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_farmacia.cod_prinactivo')
  }
  fields <- c(fields, "cod_prinactivo")
  values <- c(values, if (is.null(cod_prinactivo)) "NULL" else if (is(cod_prinactivo, "subQuery")) paste0("(", as.character(cod_prinactivo), ")") else paste0("'", as.character(cod_prinactivo), "'"))

  if (missing(des_prinactivo)) {
    des_prinactivo <- defaults$des_prinactivo
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_farmacia.des_prinactivo')
  }
  fields <- c(fields, "des_prinactivo")
  values <- c(values, if (is.null(des_prinactivo)) "NULL" else if (is(des_prinactivo, "subQuery")) paste0("(", as.character(des_prinactivo), ")") else paste0("'", as.character(des_prinactivo), "'"))

  if (missing(cod_atc2)) {
    cod_atc2 <- defaults$cod_atc2
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_farmacia.cod_atc2')
  }
  fields <- c(fields, "cod_atc2")
  values <- c(values, if (is.null(cod_atc2)) "NULL" else if (is(cod_atc2, "subQuery")) paste0("(", as.character(cod_atc2), ")") else paste0("'", as.character(cod_atc2), "'"))

  if (missing(des_atc2)) {
    des_atc2 <- defaults$des_atc2
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_farmacia.des_atc2')
  }
  fields <- c(fields, "des_atc2")
  values <- c(values, if (is.null(des_atc2)) "NULL" else if (is(des_atc2, "subQuery")) paste0("(", as.character(des_atc2), ")") else paste0("'", as.character(des_atc2), "'"))

  if (missing(cod_atc4)) {
    cod_atc4 <- defaults$cod_atc4
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_farmacia.cod_atc4')
  }
  fields <- c(fields, "cod_atc4")
  values <- c(values, if (is.null(cod_atc4)) "NULL" else if (is(cod_atc4, "subQuery")) paste0("(", as.character(cod_atc4), ")") else paste0("'", as.character(cod_atc4), "'"))

  if (missing(des_atc4)) {
    des_atc4 <- defaults$des_atc4
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_farmacia.des_atc4')
  }
  fields <- c(fields, "des_atc4")
  values <- c(values, if (is.null(des_atc4)) "NULL" else if (is(des_atc4, "subQuery")) paste0("(", as.character(des_atc4), ")") else paste0("'", as.character(des_atc4), "'"))

  inserts <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, table = "tba_farmacia", fields = fields, values = values)
  frameworkContext$inserts[[length(frameworkContext$inserts) + 1]] <- inserts
  invisible(NULL)
}

add_tba_modalidad <- function(id, cod_modalidad, des_modalidad) {
  defaults <- get('tba_modalidad', envir = frameworkContext$defaultValues)
  fields <- c()
  values <- c()
  if (missing(id)) {
    id <- defaults$id
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_modalidad.id')
  }
  fields <- c(fields, "id")
  values <- c(values, if (is.null(id)) "NULL" else if (is(id, "subQuery")) paste0("(", as.character(id), ")") else paste0("'", as.character(id), "'"))

  if (missing(cod_modalidad)) {
    cod_modalidad <- defaults$cod_modalidad
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_modalidad.cod_modalidad')
  }
  fields <- c(fields, "cod_modalidad")
  values <- c(values, if (is.null(cod_modalidad)) "NULL" else if (is(cod_modalidad, "subQuery")) paste0("(", as.character(cod_modalidad), ")") else paste0("'", as.character(cod_modalidad), "'"))

  if (missing(des_modalidad)) {
    des_modalidad <- defaults$des_modalidad
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_modalidad.des_modalidad')
  }
  fields <- c(fields, "des_modalidad")
  values <- c(values, if (is.null(des_modalidad)) "NULL" else if (is(des_modalidad, "subQuery")) paste0("(", as.character(des_modalidad), ")") else paste0("'", as.character(des_modalidad), "'"))

  inserts <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, table = "tba_modalidad", fields = fields, values = values)
  frameworkContext$inserts[[length(frameworkContext$inserts) + 1]] <- inserts
  invisible(NULL)
}

add_tba_mot_cierre <- function(id, cod_motivo_cierre, des_motivo_cierre) {
  defaults <- get('tba_mot_cierre', envir = frameworkContext$defaultValues)
  fields <- c()
  values <- c()
  if (missing(id)) {
    id <- defaults$id
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_mot_cierre.id')
  }
  fields <- c(fields, "id")
  values <- c(values, if (is.null(id)) "NULL" else if (is(id, "subQuery")) paste0("(", as.character(id), ")") else paste0("'", as.character(id), "'"))

  if (missing(cod_motivo_cierre)) {
    cod_motivo_cierre <- defaults$cod_motivo_cierre
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_mot_cierre.cod_motivo_cierre')
  }
  fields <- c(fields, "cod_motivo_cierre")
  values <- c(values, if (is.null(cod_motivo_cierre)) "NULL" else if (is(cod_motivo_cierre, "subQuery")) paste0("(", as.character(cod_motivo_cierre), ")") else paste0("'", as.character(cod_motivo_cierre), "'"))

  if (missing(des_motivo_cierre)) {
    des_motivo_cierre <- defaults$des_motivo_cierre
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_mot_cierre.des_motivo_cierre')
  }
  fields <- c(fields, "des_motivo_cierre")
  values <- c(values, if (is.null(des_motivo_cierre)) "NULL" else if (is(des_motivo_cierre, "subQuery")) paste0("(", as.character(des_motivo_cierre), ")") else paste0("'", as.character(des_motivo_cierre), "'"))

  inserts <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, table = "tba_mot_cierre", fields = fields, values = values)
  frameworkContext$inserts[[length(frameworkContext$inserts) + 1]] <- inserts
  invisible(NULL)
}

add_tba_mot_urgencia <- function(id, cod_motivo_urg, des_motivo_urg) {
  defaults <- get('tba_mot_urgencia', envir = frameworkContext$defaultValues)
  fields <- c()
  values <- c()
  if (missing(id)) {
    id <- defaults$id
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_mot_urgencia.id')
  }
  fields <- c(fields, "id")
  values <- c(values, if (is.null(id)) "NULL" else if (is(id, "subQuery")) paste0("(", as.character(id), ")") else paste0("'", as.character(id), "'"))

  if (missing(cod_motivo_urg)) {
    cod_motivo_urg <- defaults$cod_motivo_urg
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_mot_urgencia.cod_motivo_urg')
  }
  fields <- c(fields, "cod_motivo_urg")
  values <- c(values, if (is.null(cod_motivo_urg)) "NULL" else if (is(cod_motivo_urg, "subQuery")) paste0("(", as.character(cod_motivo_urg), ")") else paste0("'", as.character(cod_motivo_urg), "'"))

  if (missing(des_motivo_urg)) {
    des_motivo_urg <- defaults$des_motivo_urg
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_mot_urgencia.des_motivo_urg')
  }
  fields <- c(fields, "des_motivo_urg")
  values <- c(values, if (is.null(des_motivo_urg)) "NULL" else if (is(des_motivo_urg, "subQuery")) paste0("(", as.character(des_motivo_urg), ")") else paste0("'", as.character(des_motivo_urg), "'"))

  inserts <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, table = "tba_mot_urgencia", fields = fields, values = values)
  frameworkContext$inserts[[length(frameworkContext$inserts) + 1]] <- inserts
  invisible(NULL)
}

add_tba_pais_acred <- function(id, cod_pais, des_pais) {
  defaults <- get('tba_pais_acred', envir = frameworkContext$defaultValues)
  fields <- c()
  values <- c()
  if (missing(id)) {
    id <- defaults$id
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_pais_acred.id')
  }
  fields <- c(fields, "id")
  values <- c(values, if (is.null(id)) "NULL" else if (is(id, "subQuery")) paste0("(", as.character(id), ")") else paste0("'", as.character(id), "'"))

  if (missing(cod_pais)) {
    cod_pais <- defaults$cod_pais
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_pais_acred.cod_pais')
  }
  fields <- c(fields, "cod_pais")
  values <- c(values, if (is.null(cod_pais)) "NULL" else if (is(cod_pais, "subQuery")) paste0("(", as.character(cod_pais), ")") else paste0("'", as.character(cod_pais), "'"))

  if (missing(des_pais)) {
    des_pais <- defaults$des_pais
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_pais_acred.des_pais')
  }
  fields <- c(fields, "des_pais")
  values <- c(values, if (is.null(des_pais)) "NULL" else if (is(des_pais, "subQuery")) paste0("(", as.character(des_pais), ")") else paste0("'", as.character(des_pais), "'"))

  inserts <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, table = "tba_pais_acred", fields = fields, values = values)
  frameworkContext$inserts[[length(frameworkContext$inserts) + 1]] <- inserts
  invisible(NULL)
}

add_tba_presfarma <- function(id, cod_presfarma, des_presfarma) {
  defaults <- get('tba_presfarma', envir = frameworkContext$defaultValues)
  fields <- c()
  values <- c()
  if (missing(id)) {
    id <- defaults$id
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_presfarma.id')
  }
  fields <- c(fields, "id")
  values <- c(values, if (is.null(id)) "NULL" else if (is(id, "subQuery")) paste0("(", as.character(id), ")") else paste0("'", as.character(id), "'"))

  if (missing(cod_presfarma)) {
    cod_presfarma <- defaults$cod_presfarma
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_presfarma.cod_presfarma')
  }
  fields <- c(fields, "cod_presfarma")
  values <- c(values, if (is.null(cod_presfarma)) "NULL" else if (is(cod_presfarma, "subQuery")) paste0("(", as.character(cod_presfarma), ")") else paste0("'", as.character(cod_presfarma), "'"))

  if (missing(des_presfarma)) {
    des_presfarma <- defaults$des_presfarma
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_presfarma.des_presfarma')
  }
  fields <- c(fields, "des_presfarma")
  values <- c(values, if (is.null(des_presfarma)) "NULL" else if (is(des_presfarma, "subQuery")) paste0("(", as.character(des_presfarma), ")") else paste0("'", as.character(des_presfarma), "'"))

  inserts <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, table = "tba_presfarma", fields = fields, values = values)
  frameworkContext$inserts[[length(frameworkContext$inserts) + 1]] <- inserts
  invisible(NULL)
}

add_tba_prinactivo <- function(id, cod_prinactivo, des_prinactivo) {
  defaults <- get('tba_prinactivo', envir = frameworkContext$defaultValues)
  fields <- c()
  values <- c()
  if (missing(id)) {
    id <- defaults$id
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_prinactivo.id')
  }
  fields <- c(fields, "id")
  values <- c(values, if (is.null(id)) "NULL" else if (is(id, "subQuery")) paste0("(", as.character(id), ")") else paste0("'", as.character(id), "'"))

  if (missing(cod_prinactivo)) {
    cod_prinactivo <- defaults$cod_prinactivo
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_prinactivo.cod_prinactivo')
  }
  fields <- c(fields, "cod_prinactivo")
  values <- c(values, if (is.null(cod_prinactivo)) "NULL" else if (is(cod_prinactivo, "subQuery")) paste0("(", as.character(cod_prinactivo), ")") else paste0("'", as.character(cod_prinactivo), "'"))

  if (missing(des_prinactivo)) {
    des_prinactivo <- defaults$des_prinactivo
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_prinactivo.des_prinactivo')
  }
  fields <- c(fields, "des_prinactivo")
  values <- c(values, if (is.null(des_prinactivo)) "NULL" else if (is(des_prinactivo, "subQuery")) paste0("(", as.character(des_prinactivo), ")") else paste0("'", as.character(des_prinactivo), "'"))

  inserts <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, table = "tba_prinactivo", fields = fields, values = values)
  frameworkContext$inserts[[length(frameworkContext$inserts) + 1]] <- inserts
  invisible(NULL)
}

add_tba_raf <- function(id, cod_raf, des_raf) {
  defaults <- get('tba_raf', envir = frameworkContext$defaultValues)
  fields <- c()
  values <- c()
  if (missing(id)) {
    id <- defaults$id
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_raf.id')
  }
  fields <- c(fields, "id")
  values <- c(values, if (is.null(id)) "NULL" else if (is(id, "subQuery")) paste0("(", as.character(id), ")") else paste0("'", as.character(id), "'"))

  if (missing(cod_raf)) {
    cod_raf <- defaults$cod_raf
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_raf.cod_raf')
  }
  fields <- c(fields, "cod_raf")
  values <- c(values, if (is.null(cod_raf)) "NULL" else if (is(cod_raf, "subQuery")) paste0("(", as.character(cod_raf), ")") else paste0("'", as.character(cod_raf), "'"))

  if (missing(des_raf)) {
    des_raf <- defaults$des_raf
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_raf.des_raf')
  }
  fields <- c(fields, "des_raf")
  values <- c(values, if (is.null(des_raf)) "NULL" else if (is(des_raf, "subQuery")) paste0("(", as.character(des_raf), ")") else paste0("'", as.character(des_raf), "'"))

  inserts <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, table = "tba_raf", fields = fields, values = values)
  frameworkContext$inserts[[length(frameworkContext$inserts) + 1]] <- inserts
  invisible(NULL)
}

add_tba_serv_homologado <- function(id, cod_serv_homologado, des_serv_homologado) {
  defaults <- get('tba_serv_homologado', envir = frameworkContext$defaultValues)
  fields <- c()
  values <- c()
  if (missing(id)) {
    id <- defaults$id
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_serv_homologado.id')
  }
  fields <- c(fields, "id")
  values <- c(values, if (is.null(id)) "NULL" else if (is(id, "subQuery")) paste0("(", as.character(id), ")") else paste0("'", as.character(id), "'"))

  if (missing(cod_serv_homologado)) {
    cod_serv_homologado <- defaults$cod_serv_homologado
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_serv_homologado.cod_serv_homologado')
  }
  fields <- c(fields, "cod_serv_homologado")
  values <- c(values, if (is.null(cod_serv_homologado)) "NULL" else if (is(cod_serv_homologado, "subQuery")) paste0("(", as.character(cod_serv_homologado), ")") else paste0("'", as.character(cod_serv_homologado), "'"))

  if (missing(des_serv_homologado)) {
    des_serv_homologado <- defaults$des_serv_homologado
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_serv_homologado.des_serv_homologado')
  }
  fields <- c(fields, "des_serv_homologado")
  values <- c(values, if (is.null(des_serv_homologado)) "NULL" else if (is(des_serv_homologado, "subQuery")) paste0("(", as.character(des_serv_homologado), ")") else paste0("'", as.character(des_serv_homologado), "'"))

  inserts <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, table = "tba_serv_homologado", fields = fields, values = values)
  frameworkContext$inserts[[length(frameworkContext$inserts) + 1]] <- inserts
  invisible(NULL)
}

add_tba_serv_propio <- function(id, cod_serv_propio, des_serv_propio) {
  defaults <- get('tba_serv_propio', envir = frameworkContext$defaultValues)
  fields <- c()
  values <- c()
  if (missing(id)) {
    id <- defaults$id
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_serv_propio.id')
  }
  fields <- c(fields, "id")
  values <- c(values, if (is.null(id)) "NULL" else if (is(id, "subQuery")) paste0("(", as.character(id), ")") else paste0("'", as.character(id), "'"))

  if (missing(cod_serv_propio)) {
    cod_serv_propio <- defaults$cod_serv_propio
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_serv_propio.cod_serv_propio')
  }
  fields <- c(fields, "cod_serv_propio")
  values <- c(values, if (is.null(cod_serv_propio)) "NULL" else if (is(cod_serv_propio, "subQuery")) paste0("(", as.character(cod_serv_propio), ")") else paste0("'", as.character(cod_serv_propio), "'"))

  if (missing(des_serv_propio)) {
    des_serv_propio <- defaults$des_serv_propio
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_serv_propio.des_serv_propio')
  }
  fields <- c(fields, "des_serv_propio")
  values <- c(values, if (is.null(des_serv_propio)) "NULL" else if (is(des_serv_propio, "subQuery")) paste0("(", as.character(des_serv_propio), ")") else paste0("'", as.character(des_serv_propio), "'"))

  inserts <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, table = "tba_serv_propio", fields = fields, values = values)
  frameworkContext$inserts[[length(frameworkContext$inserts) + 1]] <- inserts
  invisible(NULL)
}

add_tba_tip_baja <- function(id, cod_tipo_baja, des_tipo_baja) {
  defaults <- get('tba_tip_baja', envir = frameworkContext$defaultValues)
  fields <- c()
  values <- c()
  if (missing(id)) {
    id <- defaults$id
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_tip_baja.id')
  }
  fields <- c(fields, "id")
  values <- c(values, if (is.null(id)) "NULL" else if (is(id, "subQuery")) paste0("(", as.character(id), ")") else paste0("'", as.character(id), "'"))

  if (missing(cod_tipo_baja)) {
    cod_tipo_baja <- defaults$cod_tipo_baja
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_tip_baja.cod_tipo_baja')
  }
  fields <- c(fields, "cod_tipo_baja")
  values <- c(values, if (is.null(cod_tipo_baja)) "NULL" else if (is(cod_tipo_baja, "subQuery")) paste0("(", as.character(cod_tipo_baja), ")") else paste0("'", as.character(cod_tipo_baja), "'"))

  if (missing(des_tipo_baja)) {
    des_tipo_baja <- defaults$des_tipo_baja
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_tip_baja.des_tipo_baja')
  }
  fields <- c(fields, "des_tipo_baja")
  values <- c(values, if (is.null(des_tipo_baja)) "NULL" else if (is(des_tipo_baja, "subQuery")) paste0("(", as.character(des_tipo_baja), ")") else paste0("'", as.character(des_tipo_baja), "'"))

  inserts <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, table = "tba_tip_baja", fields = fields, values = values)
  frameworkContext$inserts[[length(frameworkContext$inserts) + 1]] <- inserts
  invisible(NULL)
}

add_tba_tip_prest <- function(id, cod_prestacion, des_prestacion) {
  defaults <- get('tba_tip_prest', envir = frameworkContext$defaultValues)
  fields <- c()
  values <- c()
  if (missing(id)) {
    id <- defaults$id
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_tip_prest.id')
  }
  fields <- c(fields, "id")
  values <- c(values, if (is.null(id)) "NULL" else if (is(id, "subQuery")) paste0("(", as.character(id), ")") else paste0("'", as.character(id), "'"))

  if (missing(cod_prestacion)) {
    cod_prestacion <- defaults$cod_prestacion
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_tip_prest.cod_prestacion')
  }
  fields <- c(fields, "cod_prestacion")
  values <- c(values, if (is.null(cod_prestacion)) "NULL" else if (is(cod_prestacion, "subQuery")) paste0("(", as.character(cod_prestacion), ")") else paste0("'", as.character(cod_prestacion), "'"))

  if (missing(des_prestacion)) {
    des_prestacion <- defaults$des_prestacion
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_tip_prest.des_prestacion')
  }
  fields <- c(fields, "des_prestacion")
  values <- c(values, if (is.null(des_prestacion)) "NULL" else if (is(des_prestacion, "subQuery")) paste0("(", as.character(des_prestacion), ")") else paste0("'", as.character(des_prestacion), "'"))

  inserts <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, table = "tba_tip_prest", fields = fields, values = values)
  frameworkContext$inserts[[length(frameworkContext$inserts) + 1]] <- inserts
  invisible(NULL)
}

add_tba_tip_variables <- function(id, cod_variable_clinic, des_variable_clinic) {
  defaults <- get('tba_tip_variables', envir = frameworkContext$defaultValues)
  fields <- c()
  values <- c()
  if (missing(id)) {
    id <- defaults$id
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_tip_variables.id')
  }
  fields <- c(fields, "id")
  values <- c(values, if (is.null(id)) "NULL" else if (is(id, "subQuery")) paste0("(", as.character(id), ")") else paste0("'", as.character(id), "'"))

  if (missing(cod_variable_clinic)) {
    cod_variable_clinic <- defaults$cod_variable_clinic
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_tip_variables.cod_variable_clinic')
  }
  fields <- c(fields, "cod_variable_clinic")
  values <- c(values, if (is.null(cod_variable_clinic)) "NULL" else if (is(cod_variable_clinic, "subQuery")) paste0("(", as.character(cod_variable_clinic), ")") else paste0("'", as.character(cod_variable_clinic), "'"))

  if (missing(des_variable_clinic)) {
    des_variable_clinic <- defaults$des_variable_clinic
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_tip_variables.des_variable_clinic')
  }
  fields <- c(fields, "des_variable_clinic")
  values <- c(values, if (is.null(des_variable_clinic)) "NULL" else if (is(des_variable_clinic, "subQuery")) paste0("(", as.character(des_variable_clinic), ")") else paste0("'", as.character(des_variable_clinic), "'"))

  inserts <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, table = "tba_tip_variables", fields = fields, values = values)
  frameworkContext$inserts[[length(frameworkContext$inserts) + 1]] <- inserts
  invisible(NULL)
}

add_tba_ud_medidas <- function(id, cod_ud_medida, des_ud_medida) {
  defaults <- get('tba_ud_medidas', envir = frameworkContext$defaultValues)
  fields <- c()
  values <- c()
  if (missing(id)) {
    id <- defaults$id
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_ud_medidas.id')
  }
  fields <- c(fields, "id")
  values <- c(values, if (is.null(id)) "NULL" else if (is(id, "subQuery")) paste0("(", as.character(id), ")") else paste0("'", as.character(id), "'"))

  if (missing(cod_ud_medida)) {
    cod_ud_medida <- defaults$cod_ud_medida
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_ud_medidas.cod_ud_medida')
  }
  fields <- c(fields, "cod_ud_medida")
  values <- c(values, if (is.null(cod_ud_medida)) "NULL" else if (is(cod_ud_medida, "subQuery")) paste0("(", as.character(cod_ud_medida), ")") else paste0("'", as.character(cod_ud_medida), "'"))

  if (missing(des_ud_medida)) {
    des_ud_medida <- defaults$des_ud_medida
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_ud_medidas.des_ud_medida')
  }
  fields <- c(fields, "des_ud_medida")
  values <- c(values, if (is.null(des_ud_medida)) "NULL" else if (is(des_ud_medida, "subQuery")) paste0("(", as.character(des_ud_medida), ")") else paste0("'", as.character(des_ud_medida), "'"))

  inserts <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, table = "tba_ud_medidas", fields = fields, values = values)
  frameworkContext$inserts[[length(frameworkContext$inserts) + 1]] <- inserts
  invisible(NULL)
}

add_tba_zonas <- function(id, cod_zona, des_zona) {
  defaults <- get('tba_zonas', envir = frameworkContext$defaultValues)
  fields <- c()
  values <- c()
  if (missing(id)) {
    id <- defaults$id
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_zonas.id')
  }
  fields <- c(fields, "id")
  values <- c(values, if (is.null(id)) "NULL" else if (is(id, "subQuery")) paste0("(", as.character(id), ")") else paste0("'", as.character(id), "'"))

  if (missing(cod_zona)) {
    cod_zona <- defaults$cod_zona
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_zonas.cod_zona')
  }
  fields <- c(fields, "cod_zona")
  values <- c(values, if (is.null(cod_zona)) "NULL" else if (is(cod_zona, "subQuery")) paste0("(", as.character(cod_zona), ")") else paste0("'", as.character(cod_zona), "'"))

  if (missing(des_zona)) {
    des_zona <- defaults$des_zona
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'tba_zonas.des_zona')
  }
  fields <- c(fields, "des_zona")
  values <- c(values, if (is.null(des_zona)) "NULL" else if (is(des_zona, "subQuery")) paste0("(", as.character(des_zona), ")") else paste0("'", as.character(des_zona), "'"))

  inserts <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, table = "tba_zonas", fields = fields, values = values)
  frameworkContext$inserts[[length(frameworkContext$inserts) + 1]] <- inserts
  invisible(NULL)
}

expect_person <- function(person_id, gender_concept_id, year_of_birth, month_of_birth, day_of_birth, birth_datetime, death_datetime, race_concept_id, ethnicity_concept_id, location_id, provider_id, care_site_id, person_source_value, gender_source_value, gender_source_concept_id, race_source_value, race_source_concept_id, ethnicity_source_value, ethnicity_source_concept_id) {
  fields <- c()
  values <- c()
  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.person_id')
  }

  if (!missing(gender_concept_id)) {
    fields <- c(fields, "gender_concept_id")
    values <- c(values, if (is.null(gender_concept_id)) " IS NULL" else if (is(gender_concept_id, "subQuery")) paste0(" = (", as.character(gender_concept_id), ")") else paste0(" = '", as.character(gender_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.gender_concept_id')
  }

  if (!missing(year_of_birth)) {
    fields <- c(fields, "year_of_birth")
    values <- c(values, if (is.null(year_of_birth)) " IS NULL" else if (is(year_of_birth, "subQuery")) paste0(" = (", as.character(year_of_birth), ")") else paste0(" = '", as.character(year_of_birth), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.year_of_birth')
  }

  if (!missing(month_of_birth)) {
    fields <- c(fields, "month_of_birth")
    values <- c(values, if (is.null(month_of_birth)) " IS NULL" else if (is(month_of_birth, "subQuery")) paste0(" = (", as.character(month_of_birth), ")") else paste0(" = '", as.character(month_of_birth), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.month_of_birth')
  }

  if (!missing(day_of_birth)) {
    fields <- c(fields, "day_of_birth")
    values <- c(values, if (is.null(day_of_birth)) " IS NULL" else if (is(day_of_birth, "subQuery")) paste0(" = (", as.character(day_of_birth), ")") else paste0(" = '", as.character(day_of_birth), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.day_of_birth')
  }

  if (!missing(birth_datetime)) {
    fields <- c(fields, "birth_datetime")
    values <- c(values, if (is.null(birth_datetime)) " IS NULL" else if (is(birth_datetime, "subQuery")) paste0(" = (", as.character(birth_datetime), ")") else paste0(" = '", as.character(birth_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.birth_datetime')
  }

  if (!missing(death_datetime)) {
    fields <- c(fields, "death_datetime")
    values <- c(values, if (is.null(death_datetime)) " IS NULL" else if (is(death_datetime, "subQuery")) paste0(" = (", as.character(death_datetime), ")") else paste0(" = '", as.character(death_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.death_datetime')
  }

  if (!missing(race_concept_id)) {
    fields <- c(fields, "race_concept_id")
    values <- c(values, if (is.null(race_concept_id)) " IS NULL" else if (is(race_concept_id, "subQuery")) paste0(" = (", as.character(race_concept_id), ")") else paste0(" = '", as.character(race_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.race_concept_id')
  }

  if (!missing(ethnicity_concept_id)) {
    fields <- c(fields, "ethnicity_concept_id")
    values <- c(values, if (is.null(ethnicity_concept_id)) " IS NULL" else if (is(ethnicity_concept_id, "subQuery")) paste0(" = (", as.character(ethnicity_concept_id), ")") else paste0(" = '", as.character(ethnicity_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.ethnicity_concept_id')
  }

  if (!missing(location_id)) {
    fields <- c(fields, "location_id")
    values <- c(values, if (is.null(location_id)) " IS NULL" else if (is(location_id, "subQuery")) paste0(" = (", as.character(location_id), ")") else paste0(" = '", as.character(location_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.location_id')
  }

  if (!missing(provider_id)) {
    fields <- c(fields, "provider_id")
    values <- c(values, if (is.null(provider_id)) " IS NULL" else if (is(provider_id, "subQuery")) paste0(" = (", as.character(provider_id), ")") else paste0(" = '", as.character(provider_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.provider_id')
  }

  if (!missing(care_site_id)) {
    fields <- c(fields, "care_site_id")
    values <- c(values, if (is.null(care_site_id)) " IS NULL" else if (is(care_site_id, "subQuery")) paste0(" = (", as.character(care_site_id), ")") else paste0(" = '", as.character(care_site_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.care_site_id')
  }

  if (!missing(person_source_value)) {
    fields <- c(fields, "person_source_value")
    values <- c(values, if (is.null(person_source_value)) " IS NULL" else if (is(person_source_value, "subQuery")) paste0(" = (", as.character(person_source_value), ")") else paste0(" = '", as.character(person_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.person_source_value')
  }

  if (!missing(gender_source_value)) {
    fields <- c(fields, "gender_source_value")
    values <- c(values, if (is.null(gender_source_value)) " IS NULL" else if (is(gender_source_value, "subQuery")) paste0(" = (", as.character(gender_source_value), ")") else paste0(" = '", as.character(gender_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.gender_source_value')
  }

  if (!missing(gender_source_concept_id)) {
    fields <- c(fields, "gender_source_concept_id")
    values <- c(values, if (is.null(gender_source_concept_id)) " IS NULL" else if (is(gender_source_concept_id, "subQuery")) paste0(" = (", as.character(gender_source_concept_id), ")") else paste0(" = '", as.character(gender_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.gender_source_concept_id')
  }

  if (!missing(race_source_value)) {
    fields <- c(fields, "race_source_value")
    values <- c(values, if (is.null(race_source_value)) " IS NULL" else if (is(race_source_value, "subQuery")) paste0(" = (", as.character(race_source_value), ")") else paste0(" = '", as.character(race_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.race_source_value')
  }

  if (!missing(race_source_concept_id)) {
    fields <- c(fields, "race_source_concept_id")
    values <- c(values, if (is.null(race_source_concept_id)) " IS NULL" else if (is(race_source_concept_id, "subQuery")) paste0(" = (", as.character(race_source_concept_id), ")") else paste0(" = '", as.character(race_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.race_source_concept_id')
  }

  if (!missing(ethnicity_source_value)) {
    fields <- c(fields, "ethnicity_source_value")
    values <- c(values, if (is.null(ethnicity_source_value)) " IS NULL" else if (is(ethnicity_source_value, "subQuery")) paste0(" = (", as.character(ethnicity_source_value), ")") else paste0(" = '", as.character(ethnicity_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.ethnicity_source_value')
  }

  if (!missing(ethnicity_source_concept_id)) {
    fields <- c(fields, "ethnicity_source_concept_id")
    values <- c(values, if (is.null(ethnicity_source_concept_id)) " IS NULL" else if (is(ethnicity_source_concept_id, "subQuery")) paste0(" = (", as.character(ethnicity_source_concept_id), ")") else paste0(" = '", as.character(ethnicity_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.ethnicity_source_concept_id')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 0, table = "person", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_observation_period <- function(observation_period_id, person_id, observation_period_start_date, observation_period_end_date, period_type_concept_id) {
  fields <- c()
  values <- c()
  if (!missing(observation_period_id)) {
    fields <- c(fields, "observation_period_id")
    values <- c(values, if (is.null(observation_period_id)) " IS NULL" else if (is(observation_period_id, "subQuery")) paste0(" = (", as.character(observation_period_id), ")") else paste0(" = '", as.character(observation_period_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation_period.observation_period_id')
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation_period.person_id')
  }

  if (!missing(observation_period_start_date)) {
    fields <- c(fields, "observation_period_start_date")
    values <- c(values, if (is.null(observation_period_start_date)) " IS NULL" else if (is(observation_period_start_date, "subQuery")) paste0(" = (", as.character(observation_period_start_date), ")") else paste0(" = '", as.character(observation_period_start_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation_period.observation_period_start_date')
  }

  if (!missing(observation_period_end_date)) {
    fields <- c(fields, "observation_period_end_date")
    values <- c(values, if (is.null(observation_period_end_date)) " IS NULL" else if (is(observation_period_end_date, "subQuery")) paste0(" = (", as.character(observation_period_end_date), ")") else paste0(" = '", as.character(observation_period_end_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation_period.observation_period_end_date')
  }

  if (!missing(period_type_concept_id)) {
    fields <- c(fields, "period_type_concept_id")
    values <- c(values, if (is.null(period_type_concept_id)) " IS NULL" else if (is(period_type_concept_id, "subQuery")) paste0(" = (", as.character(period_type_concept_id), ")") else paste0(" = '", as.character(period_type_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation_period.period_type_concept_id')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 0, table = "observation_period", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_visit_occurrence <- function(visit_occurrence_id, person_id, visit_concept_id, visit_start_date, visit_start_datetime, visit_end_date, visit_end_datetime, visit_type_concept_id, provider_id, care_site_id, visit_source_value, visit_source_concept_id, admitting_source_concept_id, admitting_source_value, discharge_to_concept_id, discharge_to_source_value, preceding_visit_occurrence_id) {
  fields <- c()
  values <- c()
  if (!missing(visit_occurrence_id)) {
    fields <- c(fields, "visit_occurrence_id")
    values <- c(values, if (is.null(visit_occurrence_id)) " IS NULL" else if (is(visit_occurrence_id, "subQuery")) paste0(" = (", as.character(visit_occurrence_id), ")") else paste0(" = '", as.character(visit_occurrence_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_occurrence.visit_occurrence_id')
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_occurrence.person_id')
  }

  if (!missing(visit_concept_id)) {
    fields <- c(fields, "visit_concept_id")
    values <- c(values, if (is.null(visit_concept_id)) " IS NULL" else if (is(visit_concept_id, "subQuery")) paste0(" = (", as.character(visit_concept_id), ")") else paste0(" = '", as.character(visit_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_occurrence.visit_concept_id')
  }

  if (!missing(visit_start_date)) {
    fields <- c(fields, "visit_start_date")
    values <- c(values, if (is.null(visit_start_date)) " IS NULL" else if (is(visit_start_date, "subQuery")) paste0(" = (", as.character(visit_start_date), ")") else paste0(" = '", as.character(visit_start_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_occurrence.visit_start_date')
  }

  if (!missing(visit_start_datetime)) {
    fields <- c(fields, "visit_start_datetime")
    values <- c(values, if (is.null(visit_start_datetime)) " IS NULL" else if (is(visit_start_datetime, "subQuery")) paste0(" = (", as.character(visit_start_datetime), ")") else paste0(" = '", as.character(visit_start_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_occurrence.visit_start_datetime')
  }

  if (!missing(visit_end_date)) {
    fields <- c(fields, "visit_end_date")
    values <- c(values, if (is.null(visit_end_date)) " IS NULL" else if (is(visit_end_date, "subQuery")) paste0(" = (", as.character(visit_end_date), ")") else paste0(" = '", as.character(visit_end_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_occurrence.visit_end_date')
  }

  if (!missing(visit_end_datetime)) {
    fields <- c(fields, "visit_end_datetime")
    values <- c(values, if (is.null(visit_end_datetime)) " IS NULL" else if (is(visit_end_datetime, "subQuery")) paste0(" = (", as.character(visit_end_datetime), ")") else paste0(" = '", as.character(visit_end_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_occurrence.visit_end_datetime')
  }

  if (!missing(visit_type_concept_id)) {
    fields <- c(fields, "visit_type_concept_id")
    values <- c(values, if (is.null(visit_type_concept_id)) " IS NULL" else if (is(visit_type_concept_id, "subQuery")) paste0(" = (", as.character(visit_type_concept_id), ")") else paste0(" = '", as.character(visit_type_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_occurrence.visit_type_concept_id')
  }

  if (!missing(provider_id)) {
    fields <- c(fields, "provider_id")
    values <- c(values, if (is.null(provider_id)) " IS NULL" else if (is(provider_id, "subQuery")) paste0(" = (", as.character(provider_id), ")") else paste0(" = '", as.character(provider_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_occurrence.provider_id')
  }

  if (!missing(care_site_id)) {
    fields <- c(fields, "care_site_id")
    values <- c(values, if (is.null(care_site_id)) " IS NULL" else if (is(care_site_id, "subQuery")) paste0(" = (", as.character(care_site_id), ")") else paste0(" = '", as.character(care_site_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_occurrence.care_site_id')
  }

  if (!missing(visit_source_value)) {
    fields <- c(fields, "visit_source_value")
    values <- c(values, if (is.null(visit_source_value)) " IS NULL" else if (is(visit_source_value, "subQuery")) paste0(" = (", as.character(visit_source_value), ")") else paste0(" = '", as.character(visit_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_occurrence.visit_source_value')
  }

  if (!missing(visit_source_concept_id)) {
    fields <- c(fields, "visit_source_concept_id")
    values <- c(values, if (is.null(visit_source_concept_id)) " IS NULL" else if (is(visit_source_concept_id, "subQuery")) paste0(" = (", as.character(visit_source_concept_id), ")") else paste0(" = '", as.character(visit_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_occurrence.visit_source_concept_id')
  }

  if (!missing(admitting_source_concept_id)) {
    fields <- c(fields, "admitting_source_concept_id")
    values <- c(values, if (is.null(admitting_source_concept_id)) " IS NULL" else if (is(admitting_source_concept_id, "subQuery")) paste0(" = (", as.character(admitting_source_concept_id), ")") else paste0(" = '", as.character(admitting_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_occurrence.admitting_source_concept_id')
  }

  if (!missing(admitting_source_value)) {
    fields <- c(fields, "admitting_source_value")
    values <- c(values, if (is.null(admitting_source_value)) " IS NULL" else if (is(admitting_source_value, "subQuery")) paste0(" = (", as.character(admitting_source_value), ")") else paste0(" = '", as.character(admitting_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_occurrence.admitting_source_value')
  }

  if (!missing(discharge_to_concept_id)) {
    fields <- c(fields, "discharge_to_concept_id")
    values <- c(values, if (is.null(discharge_to_concept_id)) " IS NULL" else if (is(discharge_to_concept_id, "subQuery")) paste0(" = (", as.character(discharge_to_concept_id), ")") else paste0(" = '", as.character(discharge_to_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_occurrence.discharge_to_concept_id')
  }

  if (!missing(discharge_to_source_value)) {
    fields <- c(fields, "discharge_to_source_value")
    values <- c(values, if (is.null(discharge_to_source_value)) " IS NULL" else if (is(discharge_to_source_value, "subQuery")) paste0(" = (", as.character(discharge_to_source_value), ")") else paste0(" = '", as.character(discharge_to_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_occurrence.discharge_to_source_value')
  }

  if (!missing(preceding_visit_occurrence_id)) {
    fields <- c(fields, "preceding_visit_occurrence_id")
    values <- c(values, if (is.null(preceding_visit_occurrence_id)) " IS NULL" else if (is(preceding_visit_occurrence_id, "subQuery")) paste0(" = (", as.character(preceding_visit_occurrence_id), ")") else paste0(" = '", as.character(preceding_visit_occurrence_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_occurrence.preceding_visit_occurrence_id')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 0, table = "visit_occurrence", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_visit_detail <- function(visit_detail_id, person_id, visit_detail_concept_id, visit_detail_start_date, visit_detail_start_datetime, visit_detail_end_date, visit_detail_end_datetime, visit_detail_type_concept_id, provider_id, care_site_id, visit_detail_source_value, visit_detail_source_concept_id, admitted_from_source_value, admitted_from_concept_id, discharge_to_source_value, discharge_to_concept_id, preceding_visit_detail_id, visit_detail_parent_id, visit_occurrence_id) {
  fields <- c()
  values <- c()
  if (!missing(visit_detail_id)) {
    fields <- c(fields, "visit_detail_id")
    values <- c(values, if (is.null(visit_detail_id)) " IS NULL" else if (is(visit_detail_id, "subQuery")) paste0(" = (", as.character(visit_detail_id), ")") else paste0(" = '", as.character(visit_detail_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.visit_detail_id')
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.person_id')
  }

  if (!missing(visit_detail_concept_id)) {
    fields <- c(fields, "visit_detail_concept_id")
    values <- c(values, if (is.null(visit_detail_concept_id)) " IS NULL" else if (is(visit_detail_concept_id, "subQuery")) paste0(" = (", as.character(visit_detail_concept_id), ")") else paste0(" = '", as.character(visit_detail_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.visit_detail_concept_id')
  }

  if (!missing(visit_detail_start_date)) {
    fields <- c(fields, "visit_detail_start_date")
    values <- c(values, if (is.null(visit_detail_start_date)) " IS NULL" else if (is(visit_detail_start_date, "subQuery")) paste0(" = (", as.character(visit_detail_start_date), ")") else paste0(" = '", as.character(visit_detail_start_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.visit_detail_start_date')
  }

  if (!missing(visit_detail_start_datetime)) {
    fields <- c(fields, "visit_detail_start_datetime")
    values <- c(values, if (is.null(visit_detail_start_datetime)) " IS NULL" else if (is(visit_detail_start_datetime, "subQuery")) paste0(" = (", as.character(visit_detail_start_datetime), ")") else paste0(" = '", as.character(visit_detail_start_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.visit_detail_start_datetime')
  }

  if (!missing(visit_detail_end_date)) {
    fields <- c(fields, "visit_detail_end_date")
    values <- c(values, if (is.null(visit_detail_end_date)) " IS NULL" else if (is(visit_detail_end_date, "subQuery")) paste0(" = (", as.character(visit_detail_end_date), ")") else paste0(" = '", as.character(visit_detail_end_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.visit_detail_end_date')
  }

  if (!missing(visit_detail_end_datetime)) {
    fields <- c(fields, "visit_detail_end_datetime")
    values <- c(values, if (is.null(visit_detail_end_datetime)) " IS NULL" else if (is(visit_detail_end_datetime, "subQuery")) paste0(" = (", as.character(visit_detail_end_datetime), ")") else paste0(" = '", as.character(visit_detail_end_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.visit_detail_end_datetime')
  }

  if (!missing(visit_detail_type_concept_id)) {
    fields <- c(fields, "visit_detail_type_concept_id")
    values <- c(values, if (is.null(visit_detail_type_concept_id)) " IS NULL" else if (is(visit_detail_type_concept_id, "subQuery")) paste0(" = (", as.character(visit_detail_type_concept_id), ")") else paste0(" = '", as.character(visit_detail_type_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.visit_detail_type_concept_id')
  }

  if (!missing(provider_id)) {
    fields <- c(fields, "provider_id")
    values <- c(values, if (is.null(provider_id)) " IS NULL" else if (is(provider_id, "subQuery")) paste0(" = (", as.character(provider_id), ")") else paste0(" = '", as.character(provider_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.provider_id')
  }

  if (!missing(care_site_id)) {
    fields <- c(fields, "care_site_id")
    values <- c(values, if (is.null(care_site_id)) " IS NULL" else if (is(care_site_id, "subQuery")) paste0(" = (", as.character(care_site_id), ")") else paste0(" = '", as.character(care_site_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.care_site_id')
  }

  if (!missing(visit_detail_source_value)) {
    fields <- c(fields, "visit_detail_source_value")
    values <- c(values, if (is.null(visit_detail_source_value)) " IS NULL" else if (is(visit_detail_source_value, "subQuery")) paste0(" = (", as.character(visit_detail_source_value), ")") else paste0(" = '", as.character(visit_detail_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.visit_detail_source_value')
  }

  if (!missing(visit_detail_source_concept_id)) {
    fields <- c(fields, "visit_detail_source_concept_id")
    values <- c(values, if (is.null(visit_detail_source_concept_id)) " IS NULL" else if (is(visit_detail_source_concept_id, "subQuery")) paste0(" = (", as.character(visit_detail_source_concept_id), ")") else paste0(" = '", as.character(visit_detail_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.visit_detail_source_concept_id')
  }

  if (!missing(admitted_from_source_value)) {
    fields <- c(fields, "admitted_from_source_value")
    values <- c(values, if (is.null(admitted_from_source_value)) " IS NULL" else if (is(admitted_from_source_value, "subQuery")) paste0(" = (", as.character(admitted_from_source_value), ")") else paste0(" = '", as.character(admitted_from_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.admitted_from_source_value')
  }

  if (!missing(admitted_from_concept_id)) {
    fields <- c(fields, "admitted_from_concept_id")
    values <- c(values, if (is.null(admitted_from_concept_id)) " IS NULL" else if (is(admitted_from_concept_id, "subQuery")) paste0(" = (", as.character(admitted_from_concept_id), ")") else paste0(" = '", as.character(admitted_from_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.admitted_from_concept_id')
  }

  if (!missing(discharge_to_source_value)) {
    fields <- c(fields, "discharge_to_source_value")
    values <- c(values, if (is.null(discharge_to_source_value)) " IS NULL" else if (is(discharge_to_source_value, "subQuery")) paste0(" = (", as.character(discharge_to_source_value), ")") else paste0(" = '", as.character(discharge_to_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.discharge_to_source_value')
  }

  if (!missing(discharge_to_concept_id)) {
    fields <- c(fields, "discharge_to_concept_id")
    values <- c(values, if (is.null(discharge_to_concept_id)) " IS NULL" else if (is(discharge_to_concept_id, "subQuery")) paste0(" = (", as.character(discharge_to_concept_id), ")") else paste0(" = '", as.character(discharge_to_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.discharge_to_concept_id')
  }

  if (!missing(preceding_visit_detail_id)) {
    fields <- c(fields, "preceding_visit_detail_id")
    values <- c(values, if (is.null(preceding_visit_detail_id)) " IS NULL" else if (is(preceding_visit_detail_id, "subQuery")) paste0(" = (", as.character(preceding_visit_detail_id), ")") else paste0(" = '", as.character(preceding_visit_detail_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.preceding_visit_detail_id')
  }

  if (!missing(visit_detail_parent_id)) {
    fields <- c(fields, "visit_detail_parent_id")
    values <- c(values, if (is.null(visit_detail_parent_id)) " IS NULL" else if (is(visit_detail_parent_id, "subQuery")) paste0(" = (", as.character(visit_detail_parent_id), ")") else paste0(" = '", as.character(visit_detail_parent_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.visit_detail_parent_id')
  }

  if (!missing(visit_occurrence_id)) {
    fields <- c(fields, "visit_occurrence_id")
    values <- c(values, if (is.null(visit_occurrence_id)) " IS NULL" else if (is(visit_occurrence_id, "subQuery")) paste0(" = (", as.character(visit_occurrence_id), ")") else paste0(" = '", as.character(visit_occurrence_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.visit_occurrence_id')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 0, table = "visit_detail", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_condition_occurrence <- function(condition_occurrence_id, person_id, condition_concept_id, condition_start_date, condition_start_datetime, condition_end_date, condition_end_datetime, condition_type_concept_id, condition_status_concept_id, stop_reason, provider_id, visit_occurrence_id, visit_detail_id, condition_source_value, condition_source_concept_id, condition_status_source_value) {
  fields <- c()
  values <- c()
  if (!missing(condition_occurrence_id)) {
    fields <- c(fields, "condition_occurrence_id")
    values <- c(values, if (is.null(condition_occurrence_id)) " IS NULL" else if (is(condition_occurrence_id, "subQuery")) paste0(" = (", as.character(condition_occurrence_id), ")") else paste0(" = '", as.character(condition_occurrence_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_occurrence.condition_occurrence_id')
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_occurrence.person_id')
  }

  if (!missing(condition_concept_id)) {
    fields <- c(fields, "condition_concept_id")
    values <- c(values, if (is.null(condition_concept_id)) " IS NULL" else if (is(condition_concept_id, "subQuery")) paste0(" = (", as.character(condition_concept_id), ")") else paste0(" = '", as.character(condition_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_occurrence.condition_concept_id')
  }

  if (!missing(condition_start_date)) {
    fields <- c(fields, "condition_start_date")
    values <- c(values, if (is.null(condition_start_date)) " IS NULL" else if (is(condition_start_date, "subQuery")) paste0(" = (", as.character(condition_start_date), ")") else paste0(" = '", as.character(condition_start_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_occurrence.condition_start_date')
  }

  if (!missing(condition_start_datetime)) {
    fields <- c(fields, "condition_start_datetime")
    values <- c(values, if (is.null(condition_start_datetime)) " IS NULL" else if (is(condition_start_datetime, "subQuery")) paste0(" = (", as.character(condition_start_datetime), ")") else paste0(" = '", as.character(condition_start_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_occurrence.condition_start_datetime')
  }

  if (!missing(condition_end_date)) {
    fields <- c(fields, "condition_end_date")
    values <- c(values, if (is.null(condition_end_date)) " IS NULL" else if (is(condition_end_date, "subQuery")) paste0(" = (", as.character(condition_end_date), ")") else paste0(" = '", as.character(condition_end_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_occurrence.condition_end_date')
  }

  if (!missing(condition_end_datetime)) {
    fields <- c(fields, "condition_end_datetime")
    values <- c(values, if (is.null(condition_end_datetime)) " IS NULL" else if (is(condition_end_datetime, "subQuery")) paste0(" = (", as.character(condition_end_datetime), ")") else paste0(" = '", as.character(condition_end_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_occurrence.condition_end_datetime')
  }

  if (!missing(condition_type_concept_id)) {
    fields <- c(fields, "condition_type_concept_id")
    values <- c(values, if (is.null(condition_type_concept_id)) " IS NULL" else if (is(condition_type_concept_id, "subQuery")) paste0(" = (", as.character(condition_type_concept_id), ")") else paste0(" = '", as.character(condition_type_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_occurrence.condition_type_concept_id')
  }

  if (!missing(condition_status_concept_id)) {
    fields <- c(fields, "condition_status_concept_id")
    values <- c(values, if (is.null(condition_status_concept_id)) " IS NULL" else if (is(condition_status_concept_id, "subQuery")) paste0(" = (", as.character(condition_status_concept_id), ")") else paste0(" = '", as.character(condition_status_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_occurrence.condition_status_concept_id')
  }

  if (!missing(stop_reason)) {
    fields <- c(fields, "stop_reason")
    values <- c(values, if (is.null(stop_reason)) " IS NULL" else if (is(stop_reason, "subQuery")) paste0(" = (", as.character(stop_reason), ")") else paste0(" = '", as.character(stop_reason), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_occurrence.stop_reason')
  }

  if (!missing(provider_id)) {
    fields <- c(fields, "provider_id")
    values <- c(values, if (is.null(provider_id)) " IS NULL" else if (is(provider_id, "subQuery")) paste0(" = (", as.character(provider_id), ")") else paste0(" = '", as.character(provider_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_occurrence.provider_id')
  }

  if (!missing(visit_occurrence_id)) {
    fields <- c(fields, "visit_occurrence_id")
    values <- c(values, if (is.null(visit_occurrence_id)) " IS NULL" else if (is(visit_occurrence_id, "subQuery")) paste0(" = (", as.character(visit_occurrence_id), ")") else paste0(" = '", as.character(visit_occurrence_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_occurrence.visit_occurrence_id')
  }

  if (!missing(visit_detail_id)) {
    fields <- c(fields, "visit_detail_id")
    values <- c(values, if (is.null(visit_detail_id)) " IS NULL" else if (is(visit_detail_id, "subQuery")) paste0(" = (", as.character(visit_detail_id), ")") else paste0(" = '", as.character(visit_detail_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_occurrence.visit_detail_id')
  }

  if (!missing(condition_source_value)) {
    fields <- c(fields, "condition_source_value")
    values <- c(values, if (is.null(condition_source_value)) " IS NULL" else if (is(condition_source_value, "subQuery")) paste0(" = (", as.character(condition_source_value), ")") else paste0(" = '", as.character(condition_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_occurrence.condition_source_value')
  }

  if (!missing(condition_source_concept_id)) {
    fields <- c(fields, "condition_source_concept_id")
    values <- c(values, if (is.null(condition_source_concept_id)) " IS NULL" else if (is(condition_source_concept_id, "subQuery")) paste0(" = (", as.character(condition_source_concept_id), ")") else paste0(" = '", as.character(condition_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_occurrence.condition_source_concept_id')
  }

  if (!missing(condition_status_source_value)) {
    fields <- c(fields, "condition_status_source_value")
    values <- c(values, if (is.null(condition_status_source_value)) " IS NULL" else if (is(condition_status_source_value, "subQuery")) paste0(" = (", as.character(condition_status_source_value), ")") else paste0(" = '", as.character(condition_status_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_occurrence.condition_status_source_value')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 0, table = "condition_occurrence", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_procedure_occurrence <- function(procedure_occurrence_id, person_id, procedure_concept_id, procedure_date, procedure_datetime, procedure_type_concept_id, modifier_concept_id, quantity, provider_id, visit_occurrence_id, visit_detail_id, procedure_source_value, procedure_source_concept_id, modifier_source_value) {
  fields <- c()
  values <- c()
  if (!missing(procedure_occurrence_id)) {
    fields <- c(fields, "procedure_occurrence_id")
    values <- c(values, if (is.null(procedure_occurrence_id)) " IS NULL" else if (is(procedure_occurrence_id, "subQuery")) paste0(" = (", as.character(procedure_occurrence_id), ")") else paste0(" = '", as.character(procedure_occurrence_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'procedure_occurrence.procedure_occurrence_id')
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'procedure_occurrence.person_id')
  }

  if (!missing(procedure_concept_id)) {
    fields <- c(fields, "procedure_concept_id")
    values <- c(values, if (is.null(procedure_concept_id)) " IS NULL" else if (is(procedure_concept_id, "subQuery")) paste0(" = (", as.character(procedure_concept_id), ")") else paste0(" = '", as.character(procedure_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'procedure_occurrence.procedure_concept_id')
  }

  if (!missing(procedure_date)) {
    fields <- c(fields, "procedure_date")
    values <- c(values, if (is.null(procedure_date)) " IS NULL" else if (is(procedure_date, "subQuery")) paste0(" = (", as.character(procedure_date), ")") else paste0(" = '", as.character(procedure_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'procedure_occurrence.procedure_date')
  }

  if (!missing(procedure_datetime)) {
    fields <- c(fields, "procedure_datetime")
    values <- c(values, if (is.null(procedure_datetime)) " IS NULL" else if (is(procedure_datetime, "subQuery")) paste0(" = (", as.character(procedure_datetime), ")") else paste0(" = '", as.character(procedure_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'procedure_occurrence.procedure_datetime')
  }

  if (!missing(procedure_type_concept_id)) {
    fields <- c(fields, "procedure_type_concept_id")
    values <- c(values, if (is.null(procedure_type_concept_id)) " IS NULL" else if (is(procedure_type_concept_id, "subQuery")) paste0(" = (", as.character(procedure_type_concept_id), ")") else paste0(" = '", as.character(procedure_type_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'procedure_occurrence.procedure_type_concept_id')
  }

  if (!missing(modifier_concept_id)) {
    fields <- c(fields, "modifier_concept_id")
    values <- c(values, if (is.null(modifier_concept_id)) " IS NULL" else if (is(modifier_concept_id, "subQuery")) paste0(" = (", as.character(modifier_concept_id), ")") else paste0(" = '", as.character(modifier_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'procedure_occurrence.modifier_concept_id')
  }

  if (!missing(quantity)) {
    fields <- c(fields, "quantity")
    values <- c(values, if (is.null(quantity)) " IS NULL" else if (is(quantity, "subQuery")) paste0(" = (", as.character(quantity), ")") else paste0(" = '", as.character(quantity), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'procedure_occurrence.quantity')
  }

  if (!missing(provider_id)) {
    fields <- c(fields, "provider_id")
    values <- c(values, if (is.null(provider_id)) " IS NULL" else if (is(provider_id, "subQuery")) paste0(" = (", as.character(provider_id), ")") else paste0(" = '", as.character(provider_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'procedure_occurrence.provider_id')
  }

  if (!missing(visit_occurrence_id)) {
    fields <- c(fields, "visit_occurrence_id")
    values <- c(values, if (is.null(visit_occurrence_id)) " IS NULL" else if (is(visit_occurrence_id, "subQuery")) paste0(" = (", as.character(visit_occurrence_id), ")") else paste0(" = '", as.character(visit_occurrence_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'procedure_occurrence.visit_occurrence_id')
  }

  if (!missing(visit_detail_id)) {
    fields <- c(fields, "visit_detail_id")
    values <- c(values, if (is.null(visit_detail_id)) " IS NULL" else if (is(visit_detail_id, "subQuery")) paste0(" = (", as.character(visit_detail_id), ")") else paste0(" = '", as.character(visit_detail_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'procedure_occurrence.visit_detail_id')
  }

  if (!missing(procedure_source_value)) {
    fields <- c(fields, "procedure_source_value")
    values <- c(values, if (is.null(procedure_source_value)) " IS NULL" else if (is(procedure_source_value, "subQuery")) paste0(" = (", as.character(procedure_source_value), ")") else paste0(" = '", as.character(procedure_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'procedure_occurrence.procedure_source_value')
  }

  if (!missing(procedure_source_concept_id)) {
    fields <- c(fields, "procedure_source_concept_id")
    values <- c(values, if (is.null(procedure_source_concept_id)) " IS NULL" else if (is(procedure_source_concept_id, "subQuery")) paste0(" = (", as.character(procedure_source_concept_id), ")") else paste0(" = '", as.character(procedure_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'procedure_occurrence.procedure_source_concept_id')
  }

  if (!missing(modifier_source_value)) {
    fields <- c(fields, "modifier_source_value")
    values <- c(values, if (is.null(modifier_source_value)) " IS NULL" else if (is(modifier_source_value, "subQuery")) paste0(" = (", as.character(modifier_source_value), ")") else paste0(" = '", as.character(modifier_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'procedure_occurrence.modifier_source_value')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 0, table = "procedure_occurrence", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_drug_exposure <- function(drug_exposure_id, person_id, drug_concept_id, drug_exposure_start_date, drug_exposure_start_datetime, drug_exposure_end_date, drug_exposure_end_datetime, verbatim_end_date, drug_type_concept_id, stop_reason, refills, quantity, days_supply, sig, route_concept_id, lot_number, provider_id, visit_occurrence_id, visit_detail_id, drug_source_value, drug_source_concept_id, route_source_value, dose_unit_source_value) {
  fields <- c()
  values <- c()
  if (!missing(drug_exposure_id)) {
    fields <- c(fields, "drug_exposure_id")
    values <- c(values, if (is.null(drug_exposure_id)) " IS NULL" else if (is(drug_exposure_id, "subQuery")) paste0(" = (", as.character(drug_exposure_id), ")") else paste0(" = '", as.character(drug_exposure_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.drug_exposure_id')
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.person_id')
  }

  if (!missing(drug_concept_id)) {
    fields <- c(fields, "drug_concept_id")
    values <- c(values, if (is.null(drug_concept_id)) " IS NULL" else if (is(drug_concept_id, "subQuery")) paste0(" = (", as.character(drug_concept_id), ")") else paste0(" = '", as.character(drug_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.drug_concept_id')
  }

  if (!missing(drug_exposure_start_date)) {
    fields <- c(fields, "drug_exposure_start_date")
    values <- c(values, if (is.null(drug_exposure_start_date)) " IS NULL" else if (is(drug_exposure_start_date, "subQuery")) paste0(" = (", as.character(drug_exposure_start_date), ")") else paste0(" = '", as.character(drug_exposure_start_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.drug_exposure_start_date')
  }

  if (!missing(drug_exposure_start_datetime)) {
    fields <- c(fields, "drug_exposure_start_datetime")
    values <- c(values, if (is.null(drug_exposure_start_datetime)) " IS NULL" else if (is(drug_exposure_start_datetime, "subQuery")) paste0(" = (", as.character(drug_exposure_start_datetime), ")") else paste0(" = '", as.character(drug_exposure_start_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.drug_exposure_start_datetime')
  }

  if (!missing(drug_exposure_end_date)) {
    fields <- c(fields, "drug_exposure_end_date")
    values <- c(values, if (is.null(drug_exposure_end_date)) " IS NULL" else if (is(drug_exposure_end_date, "subQuery")) paste0(" = (", as.character(drug_exposure_end_date), ")") else paste0(" = '", as.character(drug_exposure_end_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.drug_exposure_end_date')
  }

  if (!missing(drug_exposure_end_datetime)) {
    fields <- c(fields, "drug_exposure_end_datetime")
    values <- c(values, if (is.null(drug_exposure_end_datetime)) " IS NULL" else if (is(drug_exposure_end_datetime, "subQuery")) paste0(" = (", as.character(drug_exposure_end_datetime), ")") else paste0(" = '", as.character(drug_exposure_end_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.drug_exposure_end_datetime')
  }

  if (!missing(verbatim_end_date)) {
    fields <- c(fields, "verbatim_end_date")
    values <- c(values, if (is.null(verbatim_end_date)) " IS NULL" else if (is(verbatim_end_date, "subQuery")) paste0(" = (", as.character(verbatim_end_date), ")") else paste0(" = '", as.character(verbatim_end_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.verbatim_end_date')
  }

  if (!missing(drug_type_concept_id)) {
    fields <- c(fields, "drug_type_concept_id")
    values <- c(values, if (is.null(drug_type_concept_id)) " IS NULL" else if (is(drug_type_concept_id, "subQuery")) paste0(" = (", as.character(drug_type_concept_id), ")") else paste0(" = '", as.character(drug_type_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.drug_type_concept_id')
  }

  if (!missing(stop_reason)) {
    fields <- c(fields, "stop_reason")
    values <- c(values, if (is.null(stop_reason)) " IS NULL" else if (is(stop_reason, "subQuery")) paste0(" = (", as.character(stop_reason), ")") else paste0(" = '", as.character(stop_reason), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.stop_reason')
  }

  if (!missing(refills)) {
    fields <- c(fields, "refills")
    values <- c(values, if (is.null(refills)) " IS NULL" else if (is(refills, "subQuery")) paste0(" = (", as.character(refills), ")") else paste0(" = '", as.character(refills), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.refills')
  }

  if (!missing(quantity)) {
    fields <- c(fields, "quantity")
    values <- c(values, if (is.null(quantity)) " IS NULL" else if (is(quantity, "subQuery")) paste0(" = (", as.character(quantity), ")") else paste0(" = '", as.character(quantity), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.quantity')
  }

  if (!missing(days_supply)) {
    fields <- c(fields, "days_supply")
    values <- c(values, if (is.null(days_supply)) " IS NULL" else if (is(days_supply, "subQuery")) paste0(" = (", as.character(days_supply), ")") else paste0(" = '", as.character(days_supply), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.days_supply')
  }

  if (!missing(sig)) {
    fields <- c(fields, "sig")
    values <- c(values, if (is.null(sig)) " IS NULL" else if (is(sig, "subQuery")) paste0(" = (", as.character(sig), ")") else paste0(" = '", as.character(sig), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.sig')
  }

  if (!missing(route_concept_id)) {
    fields <- c(fields, "route_concept_id")
    values <- c(values, if (is.null(route_concept_id)) " IS NULL" else if (is(route_concept_id, "subQuery")) paste0(" = (", as.character(route_concept_id), ")") else paste0(" = '", as.character(route_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.route_concept_id')
  }

  if (!missing(lot_number)) {
    fields <- c(fields, "lot_number")
    values <- c(values, if (is.null(lot_number)) " IS NULL" else if (is(lot_number, "subQuery")) paste0(" = (", as.character(lot_number), ")") else paste0(" = '", as.character(lot_number), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.lot_number')
  }

  if (!missing(provider_id)) {
    fields <- c(fields, "provider_id")
    values <- c(values, if (is.null(provider_id)) " IS NULL" else if (is(provider_id, "subQuery")) paste0(" = (", as.character(provider_id), ")") else paste0(" = '", as.character(provider_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.provider_id')
  }

  if (!missing(visit_occurrence_id)) {
    fields <- c(fields, "visit_occurrence_id")
    values <- c(values, if (is.null(visit_occurrence_id)) " IS NULL" else if (is(visit_occurrence_id, "subQuery")) paste0(" = (", as.character(visit_occurrence_id), ")") else paste0(" = '", as.character(visit_occurrence_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.visit_occurrence_id')
  }

  if (!missing(visit_detail_id)) {
    fields <- c(fields, "visit_detail_id")
    values <- c(values, if (is.null(visit_detail_id)) " IS NULL" else if (is(visit_detail_id, "subQuery")) paste0(" = (", as.character(visit_detail_id), ")") else paste0(" = '", as.character(visit_detail_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.visit_detail_id')
  }

  if (!missing(drug_source_value)) {
    fields <- c(fields, "drug_source_value")
    values <- c(values, if (is.null(drug_source_value)) " IS NULL" else if (is(drug_source_value, "subQuery")) paste0(" = (", as.character(drug_source_value), ")") else paste0(" = '", as.character(drug_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.drug_source_value')
  }

  if (!missing(drug_source_concept_id)) {
    fields <- c(fields, "drug_source_concept_id")
    values <- c(values, if (is.null(drug_source_concept_id)) " IS NULL" else if (is(drug_source_concept_id, "subQuery")) paste0(" = (", as.character(drug_source_concept_id), ")") else paste0(" = '", as.character(drug_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.drug_source_concept_id')
  }

  if (!missing(route_source_value)) {
    fields <- c(fields, "route_source_value")
    values <- c(values, if (is.null(route_source_value)) " IS NULL" else if (is(route_source_value, "subQuery")) paste0(" = (", as.character(route_source_value), ")") else paste0(" = '", as.character(route_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.route_source_value')
  }

  if (!missing(dose_unit_source_value)) {
    fields <- c(fields, "dose_unit_source_value")
    values <- c(values, if (is.null(dose_unit_source_value)) " IS NULL" else if (is(dose_unit_source_value, "subQuery")) paste0(" = (", as.character(dose_unit_source_value), ")") else paste0(" = '", as.character(dose_unit_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.dose_unit_source_value')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 0, table = "drug_exposure", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_device_exposure <- function(device_exposure_id, person_id, device_concept_id, device_exposure_start_date, device_exposure_start_datetime, device_exposure_end_date, device_exposure_end_datetime, device_type_concept_id, unique_device_id, quantity, provider_id, visit_occurrence_id, visit_detail_id, device_source_value, device_source_concept_id) {
  fields <- c()
  values <- c()
  if (!missing(device_exposure_id)) {
    fields <- c(fields, "device_exposure_id")
    values <- c(values, if (is.null(device_exposure_id)) " IS NULL" else if (is(device_exposure_id, "subQuery")) paste0(" = (", as.character(device_exposure_id), ")") else paste0(" = '", as.character(device_exposure_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'device_exposure.device_exposure_id')
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'device_exposure.person_id')
  }

  if (!missing(device_concept_id)) {
    fields <- c(fields, "device_concept_id")
    values <- c(values, if (is.null(device_concept_id)) " IS NULL" else if (is(device_concept_id, "subQuery")) paste0(" = (", as.character(device_concept_id), ")") else paste0(" = '", as.character(device_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'device_exposure.device_concept_id')
  }

  if (!missing(device_exposure_start_date)) {
    fields <- c(fields, "device_exposure_start_date")
    values <- c(values, if (is.null(device_exposure_start_date)) " IS NULL" else if (is(device_exposure_start_date, "subQuery")) paste0(" = (", as.character(device_exposure_start_date), ")") else paste0(" = '", as.character(device_exposure_start_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'device_exposure.device_exposure_start_date')
  }

  if (!missing(device_exposure_start_datetime)) {
    fields <- c(fields, "device_exposure_start_datetime")
    values <- c(values, if (is.null(device_exposure_start_datetime)) " IS NULL" else if (is(device_exposure_start_datetime, "subQuery")) paste0(" = (", as.character(device_exposure_start_datetime), ")") else paste0(" = '", as.character(device_exposure_start_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'device_exposure.device_exposure_start_datetime')
  }

  if (!missing(device_exposure_end_date)) {
    fields <- c(fields, "device_exposure_end_date")
    values <- c(values, if (is.null(device_exposure_end_date)) " IS NULL" else if (is(device_exposure_end_date, "subQuery")) paste0(" = (", as.character(device_exposure_end_date), ")") else paste0(" = '", as.character(device_exposure_end_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'device_exposure.device_exposure_end_date')
  }

  if (!missing(device_exposure_end_datetime)) {
    fields <- c(fields, "device_exposure_end_datetime")
    values <- c(values, if (is.null(device_exposure_end_datetime)) " IS NULL" else if (is(device_exposure_end_datetime, "subQuery")) paste0(" = (", as.character(device_exposure_end_datetime), ")") else paste0(" = '", as.character(device_exposure_end_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'device_exposure.device_exposure_end_datetime')
  }

  if (!missing(device_type_concept_id)) {
    fields <- c(fields, "device_type_concept_id")
    values <- c(values, if (is.null(device_type_concept_id)) " IS NULL" else if (is(device_type_concept_id, "subQuery")) paste0(" = (", as.character(device_type_concept_id), ")") else paste0(" = '", as.character(device_type_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'device_exposure.device_type_concept_id')
  }

  if (!missing(unique_device_id)) {
    fields <- c(fields, "unique_device_id")
    values <- c(values, if (is.null(unique_device_id)) " IS NULL" else if (is(unique_device_id, "subQuery")) paste0(" = (", as.character(unique_device_id), ")") else paste0(" = '", as.character(unique_device_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'device_exposure.unique_device_id')
  }

  if (!missing(quantity)) {
    fields <- c(fields, "quantity")
    values <- c(values, if (is.null(quantity)) " IS NULL" else if (is(quantity, "subQuery")) paste0(" = (", as.character(quantity), ")") else paste0(" = '", as.character(quantity), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'device_exposure.quantity')
  }

  if (!missing(provider_id)) {
    fields <- c(fields, "provider_id")
    values <- c(values, if (is.null(provider_id)) " IS NULL" else if (is(provider_id, "subQuery")) paste0(" = (", as.character(provider_id), ")") else paste0(" = '", as.character(provider_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'device_exposure.provider_id')
  }

  if (!missing(visit_occurrence_id)) {
    fields <- c(fields, "visit_occurrence_id")
    values <- c(values, if (is.null(visit_occurrence_id)) " IS NULL" else if (is(visit_occurrence_id, "subQuery")) paste0(" = (", as.character(visit_occurrence_id), ")") else paste0(" = '", as.character(visit_occurrence_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'device_exposure.visit_occurrence_id')
  }

  if (!missing(visit_detail_id)) {
    fields <- c(fields, "visit_detail_id")
    values <- c(values, if (is.null(visit_detail_id)) " IS NULL" else if (is(visit_detail_id, "subQuery")) paste0(" = (", as.character(visit_detail_id), ")") else paste0(" = '", as.character(visit_detail_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'device_exposure.visit_detail_id')
  }

  if (!missing(device_source_value)) {
    fields <- c(fields, "device_source_value")
    values <- c(values, if (is.null(device_source_value)) " IS NULL" else if (is(device_source_value, "subQuery")) paste0(" = (", as.character(device_source_value), ")") else paste0(" = '", as.character(device_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'device_exposure.device_source_value')
  }

  if (!missing(device_source_concept_id)) {
    fields <- c(fields, "device_source_concept_id")
    values <- c(values, if (is.null(device_source_concept_id)) " IS NULL" else if (is(device_source_concept_id, "subQuery")) paste0(" = (", as.character(device_source_concept_id), ")") else paste0(" = '", as.character(device_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'device_exposure.device_source_concept_id')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 0, table = "device_exposure", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_measurement <- function(measurement_id, person_id, measurement_concept_id, measurement_date, measurement_datetime, measurement_time, measurement_type_concept_id, operator_concept_id, value_as_number, value_as_concept_id, unit_concept_id, range_low, range_high, provider_id, visit_occurrence_id, visit_detail_id, measurement_source_value, measurement_source_concept_id, unit_source_value, value_source_value) {
  fields <- c()
  values <- c()
  if (!missing(measurement_id)) {
    fields <- c(fields, "measurement_id")
    values <- c(values, if (is.null(measurement_id)) " IS NULL" else if (is(measurement_id, "subQuery")) paste0(" = (", as.character(measurement_id), ")") else paste0(" = '", as.character(measurement_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.measurement_id')
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.person_id')
  }

  if (!missing(measurement_concept_id)) {
    fields <- c(fields, "measurement_concept_id")
    values <- c(values, if (is.null(measurement_concept_id)) " IS NULL" else if (is(measurement_concept_id, "subQuery")) paste0(" = (", as.character(measurement_concept_id), ")") else paste0(" = '", as.character(measurement_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.measurement_concept_id')
  }

  if (!missing(measurement_date)) {
    fields <- c(fields, "measurement_date")
    values <- c(values, if (is.null(measurement_date)) " IS NULL" else if (is(measurement_date, "subQuery")) paste0(" = (", as.character(measurement_date), ")") else paste0(" = '", as.character(measurement_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.measurement_date')
  }

  if (!missing(measurement_datetime)) {
    fields <- c(fields, "measurement_datetime")
    values <- c(values, if (is.null(measurement_datetime)) " IS NULL" else if (is(measurement_datetime, "subQuery")) paste0(" = (", as.character(measurement_datetime), ")") else paste0(" = '", as.character(measurement_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.measurement_datetime')
  }

  if (!missing(measurement_time)) {
    fields <- c(fields, "measurement_time")
    values <- c(values, if (is.null(measurement_time)) " IS NULL" else if (is(measurement_time, "subQuery")) paste0(" = (", as.character(measurement_time), ")") else paste0(" = '", as.character(measurement_time), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.measurement_time')
  }

  if (!missing(measurement_type_concept_id)) {
    fields <- c(fields, "measurement_type_concept_id")
    values <- c(values, if (is.null(measurement_type_concept_id)) " IS NULL" else if (is(measurement_type_concept_id, "subQuery")) paste0(" = (", as.character(measurement_type_concept_id), ")") else paste0(" = '", as.character(measurement_type_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.measurement_type_concept_id')
  }

  if (!missing(operator_concept_id)) {
    fields <- c(fields, "operator_concept_id")
    values <- c(values, if (is.null(operator_concept_id)) " IS NULL" else if (is(operator_concept_id, "subQuery")) paste0(" = (", as.character(operator_concept_id), ")") else paste0(" = '", as.character(operator_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.operator_concept_id')
  }

  if (!missing(value_as_number)) {
    fields <- c(fields, "value_as_number")
    values <- c(values, if (is.null(value_as_number)) " IS NULL" else if (is(value_as_number, "subQuery")) paste0(" = (", as.character(value_as_number), ")") else paste0(" = '", as.character(value_as_number), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.value_as_number')
  }

  if (!missing(value_as_concept_id)) {
    fields <- c(fields, "value_as_concept_id")
    values <- c(values, if (is.null(value_as_concept_id)) " IS NULL" else if (is(value_as_concept_id, "subQuery")) paste0(" = (", as.character(value_as_concept_id), ")") else paste0(" = '", as.character(value_as_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.value_as_concept_id')
  }

  if (!missing(unit_concept_id)) {
    fields <- c(fields, "unit_concept_id")
    values <- c(values, if (is.null(unit_concept_id)) " IS NULL" else if (is(unit_concept_id, "subQuery")) paste0(" = (", as.character(unit_concept_id), ")") else paste0(" = '", as.character(unit_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.unit_concept_id')
  }

  if (!missing(range_low)) {
    fields <- c(fields, "range_low")
    values <- c(values, if (is.null(range_low)) " IS NULL" else if (is(range_low, "subQuery")) paste0(" = (", as.character(range_low), ")") else paste0(" = '", as.character(range_low), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.range_low')
  }

  if (!missing(range_high)) {
    fields <- c(fields, "range_high")
    values <- c(values, if (is.null(range_high)) " IS NULL" else if (is(range_high, "subQuery")) paste0(" = (", as.character(range_high), ")") else paste0(" = '", as.character(range_high), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.range_high')
  }

  if (!missing(provider_id)) {
    fields <- c(fields, "provider_id")
    values <- c(values, if (is.null(provider_id)) " IS NULL" else if (is(provider_id, "subQuery")) paste0(" = (", as.character(provider_id), ")") else paste0(" = '", as.character(provider_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.provider_id')
  }

  if (!missing(visit_occurrence_id)) {
    fields <- c(fields, "visit_occurrence_id")
    values <- c(values, if (is.null(visit_occurrence_id)) " IS NULL" else if (is(visit_occurrence_id, "subQuery")) paste0(" = (", as.character(visit_occurrence_id), ")") else paste0(" = '", as.character(visit_occurrence_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.visit_occurrence_id')
  }

  if (!missing(visit_detail_id)) {
    fields <- c(fields, "visit_detail_id")
    values <- c(values, if (is.null(visit_detail_id)) " IS NULL" else if (is(visit_detail_id, "subQuery")) paste0(" = (", as.character(visit_detail_id), ")") else paste0(" = '", as.character(visit_detail_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.visit_detail_id')
  }

  if (!missing(measurement_source_value)) {
    fields <- c(fields, "measurement_source_value")
    values <- c(values, if (is.null(measurement_source_value)) " IS NULL" else if (is(measurement_source_value, "subQuery")) paste0(" = (", as.character(measurement_source_value), ")") else paste0(" = '", as.character(measurement_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.measurement_source_value')
  }

  if (!missing(measurement_source_concept_id)) {
    fields <- c(fields, "measurement_source_concept_id")
    values <- c(values, if (is.null(measurement_source_concept_id)) " IS NULL" else if (is(measurement_source_concept_id, "subQuery")) paste0(" = (", as.character(measurement_source_concept_id), ")") else paste0(" = '", as.character(measurement_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.measurement_source_concept_id')
  }

  if (!missing(unit_source_value)) {
    fields <- c(fields, "unit_source_value")
    values <- c(values, if (is.null(unit_source_value)) " IS NULL" else if (is(unit_source_value, "subQuery")) paste0(" = (", as.character(unit_source_value), ")") else paste0(" = '", as.character(unit_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.unit_source_value')
  }

  if (!missing(value_source_value)) {
    fields <- c(fields, "value_source_value")
    values <- c(values, if (is.null(value_source_value)) " IS NULL" else if (is(value_source_value, "subQuery")) paste0(" = (", as.character(value_source_value), ")") else paste0(" = '", as.character(value_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.value_source_value')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 0, table = "measurement", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_observation <- function(observation_id, person_id, observation_concept_id, observation_date, observation_datetime, observation_type_concept_id, value_as_number, value_as_string, value_as_concept_id, qualifier_concept_id, unit_concept_id, provider_id, visit_occurrence_id, visit_detail_id, observation_source_value, observation_source_concept_id, unit_source_value, qualifier_source_value, observation_event_id, obs_event_field_concept_id, value_as_datetime) {
  fields <- c()
  values <- c()
  if (!missing(observation_id)) {
    fields <- c(fields, "observation_id")
    values <- c(values, if (is.null(observation_id)) " IS NULL" else if (is(observation_id, "subQuery")) paste0(" = (", as.character(observation_id), ")") else paste0(" = '", as.character(observation_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.observation_id')
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.person_id')
  }

  if (!missing(observation_concept_id)) {
    fields <- c(fields, "observation_concept_id")
    values <- c(values, if (is.null(observation_concept_id)) " IS NULL" else if (is(observation_concept_id, "subQuery")) paste0(" = (", as.character(observation_concept_id), ")") else paste0(" = '", as.character(observation_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.observation_concept_id')
  }

  if (!missing(observation_date)) {
    fields <- c(fields, "observation_date")
    values <- c(values, if (is.null(observation_date)) " IS NULL" else if (is(observation_date, "subQuery")) paste0(" = (", as.character(observation_date), ")") else paste0(" = '", as.character(observation_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.observation_date')
  }

  if (!missing(observation_datetime)) {
    fields <- c(fields, "observation_datetime")
    values <- c(values, if (is.null(observation_datetime)) " IS NULL" else if (is(observation_datetime, "subQuery")) paste0(" = (", as.character(observation_datetime), ")") else paste0(" = '", as.character(observation_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.observation_datetime')
  }

  if (!missing(observation_type_concept_id)) {
    fields <- c(fields, "observation_type_concept_id")
    values <- c(values, if (is.null(observation_type_concept_id)) " IS NULL" else if (is(observation_type_concept_id, "subQuery")) paste0(" = (", as.character(observation_type_concept_id), ")") else paste0(" = '", as.character(observation_type_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.observation_type_concept_id')
  }

  if (!missing(value_as_number)) {
    fields <- c(fields, "value_as_number")
    values <- c(values, if (is.null(value_as_number)) " IS NULL" else if (is(value_as_number, "subQuery")) paste0(" = (", as.character(value_as_number), ")") else paste0(" = '", as.character(value_as_number), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.value_as_number')
  }

  if (!missing(value_as_string)) {
    fields <- c(fields, "value_as_string")
    values <- c(values, if (is.null(value_as_string)) " IS NULL" else if (is(value_as_string, "subQuery")) paste0(" = (", as.character(value_as_string), ")") else paste0(" = '", as.character(value_as_string), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.value_as_string')
  }

  if (!missing(value_as_concept_id)) {
    fields <- c(fields, "value_as_concept_id")
    values <- c(values, if (is.null(value_as_concept_id)) " IS NULL" else if (is(value_as_concept_id, "subQuery")) paste0(" = (", as.character(value_as_concept_id), ")") else paste0(" = '", as.character(value_as_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.value_as_concept_id')
  }

  if (!missing(qualifier_concept_id)) {
    fields <- c(fields, "qualifier_concept_id")
    values <- c(values, if (is.null(qualifier_concept_id)) " IS NULL" else if (is(qualifier_concept_id, "subQuery")) paste0(" = (", as.character(qualifier_concept_id), ")") else paste0(" = '", as.character(qualifier_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.qualifier_concept_id')
  }

  if (!missing(unit_concept_id)) {
    fields <- c(fields, "unit_concept_id")
    values <- c(values, if (is.null(unit_concept_id)) " IS NULL" else if (is(unit_concept_id, "subQuery")) paste0(" = (", as.character(unit_concept_id), ")") else paste0(" = '", as.character(unit_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.unit_concept_id')
  }

  if (!missing(provider_id)) {
    fields <- c(fields, "provider_id")
    values <- c(values, if (is.null(provider_id)) " IS NULL" else if (is(provider_id, "subQuery")) paste0(" = (", as.character(provider_id), ")") else paste0(" = '", as.character(provider_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.provider_id')
  }

  if (!missing(visit_occurrence_id)) {
    fields <- c(fields, "visit_occurrence_id")
    values <- c(values, if (is.null(visit_occurrence_id)) " IS NULL" else if (is(visit_occurrence_id, "subQuery")) paste0(" = (", as.character(visit_occurrence_id), ")") else paste0(" = '", as.character(visit_occurrence_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.visit_occurrence_id')
  }

  if (!missing(visit_detail_id)) {
    fields <- c(fields, "visit_detail_id")
    values <- c(values, if (is.null(visit_detail_id)) " IS NULL" else if (is(visit_detail_id, "subQuery")) paste0(" = (", as.character(visit_detail_id), ")") else paste0(" = '", as.character(visit_detail_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.visit_detail_id')
  }

  if (!missing(observation_source_value)) {
    fields <- c(fields, "observation_source_value")
    values <- c(values, if (is.null(observation_source_value)) " IS NULL" else if (is(observation_source_value, "subQuery")) paste0(" = (", as.character(observation_source_value), ")") else paste0(" = '", as.character(observation_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.observation_source_value')
  }

  if (!missing(observation_source_concept_id)) {
    fields <- c(fields, "observation_source_concept_id")
    values <- c(values, if (is.null(observation_source_concept_id)) " IS NULL" else if (is(observation_source_concept_id, "subQuery")) paste0(" = (", as.character(observation_source_concept_id), ")") else paste0(" = '", as.character(observation_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.observation_source_concept_id')
  }

  if (!missing(unit_source_value)) {
    fields <- c(fields, "unit_source_value")
    values <- c(values, if (is.null(unit_source_value)) " IS NULL" else if (is(unit_source_value, "subQuery")) paste0(" = (", as.character(unit_source_value), ")") else paste0(" = '", as.character(unit_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.unit_source_value')
  }

  if (!missing(qualifier_source_value)) {
    fields <- c(fields, "qualifier_source_value")
    values <- c(values, if (is.null(qualifier_source_value)) " IS NULL" else if (is(qualifier_source_value, "subQuery")) paste0(" = (", as.character(qualifier_source_value), ")") else paste0(" = '", as.character(qualifier_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.qualifier_source_value')
  }

  if (!missing(observation_event_id)) {
    fields <- c(fields, "observation_event_id")
    values <- c(values, if (is.null(observation_event_id)) " IS NULL" else if (is(observation_event_id, "subQuery")) paste0(" = (", as.character(observation_event_id), ")") else paste0(" = '", as.character(observation_event_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.observation_event_id')
  }

  if (!missing(obs_event_field_concept_id)) {
    fields <- c(fields, "obs_event_field_concept_id")
    values <- c(values, if (is.null(obs_event_field_concept_id)) " IS NULL" else if (is(obs_event_field_concept_id, "subQuery")) paste0(" = (", as.character(obs_event_field_concept_id), ")") else paste0(" = '", as.character(obs_event_field_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.obs_event_field_concept_id')
  }

  if (!missing(value_as_datetime)) {
    fields <- c(fields, "value_as_datetime")
    values <- c(values, if (is.null(value_as_datetime)) " IS NULL" else if (is(value_as_datetime, "subQuery")) paste0(" = (", as.character(value_as_datetime), ")") else paste0(" = '", as.character(value_as_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.value_as_datetime')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 0, table = "observation", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_specimen <- function(specimen_id, person_id, specimen_concept_id, specimen_type_concept_id, specimen_date, specimen_datetime, quantity, unit_concept_id, anatomic_site_concept_id, disease_status_concept_id, specimen_source_id, specimen_source_value, unit_source_value, anatomic_site_source_value, disease_status_source_value) {
  fields <- c()
  values <- c()
  if (!missing(specimen_id)) {
    fields <- c(fields, "specimen_id")
    values <- c(values, if (is.null(specimen_id)) " IS NULL" else if (is(specimen_id, "subQuery")) paste0(" = (", as.character(specimen_id), ")") else paste0(" = '", as.character(specimen_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'specimen.specimen_id')
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'specimen.person_id')
  }

  if (!missing(specimen_concept_id)) {
    fields <- c(fields, "specimen_concept_id")
    values <- c(values, if (is.null(specimen_concept_id)) " IS NULL" else if (is(specimen_concept_id, "subQuery")) paste0(" = (", as.character(specimen_concept_id), ")") else paste0(" = '", as.character(specimen_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'specimen.specimen_concept_id')
  }

  if (!missing(specimen_type_concept_id)) {
    fields <- c(fields, "specimen_type_concept_id")
    values <- c(values, if (is.null(specimen_type_concept_id)) " IS NULL" else if (is(specimen_type_concept_id, "subQuery")) paste0(" = (", as.character(specimen_type_concept_id), ")") else paste0(" = '", as.character(specimen_type_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'specimen.specimen_type_concept_id')
  }

  if (!missing(specimen_date)) {
    fields <- c(fields, "specimen_date")
    values <- c(values, if (is.null(specimen_date)) " IS NULL" else if (is(specimen_date, "subQuery")) paste0(" = (", as.character(specimen_date), ")") else paste0(" = '", as.character(specimen_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'specimen.specimen_date')
  }

  if (!missing(specimen_datetime)) {
    fields <- c(fields, "specimen_datetime")
    values <- c(values, if (is.null(specimen_datetime)) " IS NULL" else if (is(specimen_datetime, "subQuery")) paste0(" = (", as.character(specimen_datetime), ")") else paste0(" = '", as.character(specimen_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'specimen.specimen_datetime')
  }

  if (!missing(quantity)) {
    fields <- c(fields, "quantity")
    values <- c(values, if (is.null(quantity)) " IS NULL" else if (is(quantity, "subQuery")) paste0(" = (", as.character(quantity), ")") else paste0(" = '", as.character(quantity), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'specimen.quantity')
  }

  if (!missing(unit_concept_id)) {
    fields <- c(fields, "unit_concept_id")
    values <- c(values, if (is.null(unit_concept_id)) " IS NULL" else if (is(unit_concept_id, "subQuery")) paste0(" = (", as.character(unit_concept_id), ")") else paste0(" = '", as.character(unit_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'specimen.unit_concept_id')
  }

  if (!missing(anatomic_site_concept_id)) {
    fields <- c(fields, "anatomic_site_concept_id")
    values <- c(values, if (is.null(anatomic_site_concept_id)) " IS NULL" else if (is(anatomic_site_concept_id, "subQuery")) paste0(" = (", as.character(anatomic_site_concept_id), ")") else paste0(" = '", as.character(anatomic_site_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'specimen.anatomic_site_concept_id')
  }

  if (!missing(disease_status_concept_id)) {
    fields <- c(fields, "disease_status_concept_id")
    values <- c(values, if (is.null(disease_status_concept_id)) " IS NULL" else if (is(disease_status_concept_id, "subQuery")) paste0(" = (", as.character(disease_status_concept_id), ")") else paste0(" = '", as.character(disease_status_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'specimen.disease_status_concept_id')
  }

  if (!missing(specimen_source_id)) {
    fields <- c(fields, "specimen_source_id")
    values <- c(values, if (is.null(specimen_source_id)) " IS NULL" else if (is(specimen_source_id, "subQuery")) paste0(" = (", as.character(specimen_source_id), ")") else paste0(" = '", as.character(specimen_source_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'specimen.specimen_source_id')
  }

  if (!missing(specimen_source_value)) {
    fields <- c(fields, "specimen_source_value")
    values <- c(values, if (is.null(specimen_source_value)) " IS NULL" else if (is(specimen_source_value, "subQuery")) paste0(" = (", as.character(specimen_source_value), ")") else paste0(" = '", as.character(specimen_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'specimen.specimen_source_value')
  }

  if (!missing(unit_source_value)) {
    fields <- c(fields, "unit_source_value")
    values <- c(values, if (is.null(unit_source_value)) " IS NULL" else if (is(unit_source_value, "subQuery")) paste0(" = (", as.character(unit_source_value), ")") else paste0(" = '", as.character(unit_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'specimen.unit_source_value')
  }

  if (!missing(anatomic_site_source_value)) {
    fields <- c(fields, "anatomic_site_source_value")
    values <- c(values, if (is.null(anatomic_site_source_value)) " IS NULL" else if (is(anatomic_site_source_value, "subQuery")) paste0(" = (", as.character(anatomic_site_source_value), ")") else paste0(" = '", as.character(anatomic_site_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'specimen.anatomic_site_source_value')
  }

  if (!missing(disease_status_source_value)) {
    fields <- c(fields, "disease_status_source_value")
    values <- c(values, if (is.null(disease_status_source_value)) " IS NULL" else if (is(disease_status_source_value, "subQuery")) paste0(" = (", as.character(disease_status_source_value), ")") else paste0(" = '", as.character(disease_status_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'specimen.disease_status_source_value')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 0, table = "specimen", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_note <- function(note_id, person_id, note_event_id, note_event_field_concept_id, note_date, note_datetime, note_type_concept_id, note_class_concept_id, note_title, note_text, encoding_concept_id, language_concept_id, provider_id, visit_occurrence_id, visit_detail_id, note_source_value) {
  fields <- c()
  values <- c()
  if (!missing(note_id)) {
    fields <- c(fields, "note_id")
    values <- c(values, if (is.null(note_id)) " IS NULL" else if (is(note_id, "subQuery")) paste0(" = (", as.character(note_id), ")") else paste0(" = '", as.character(note_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note.note_id')
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note.person_id')
  }

  if (!missing(note_event_id)) {
    fields <- c(fields, "note_event_id")
    values <- c(values, if (is.null(note_event_id)) " IS NULL" else if (is(note_event_id, "subQuery")) paste0(" = (", as.character(note_event_id), ")") else paste0(" = '", as.character(note_event_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note.note_event_id')
  }

  if (!missing(note_event_field_concept_id)) {
    fields <- c(fields, "note_event_field_concept_id")
    values <- c(values, if (is.null(note_event_field_concept_id)) " IS NULL" else if (is(note_event_field_concept_id, "subQuery")) paste0(" = (", as.character(note_event_field_concept_id), ")") else paste0(" = '", as.character(note_event_field_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note.note_event_field_concept_id')
  }

  if (!missing(note_date)) {
    fields <- c(fields, "note_date")
    values <- c(values, if (is.null(note_date)) " IS NULL" else if (is(note_date, "subQuery")) paste0(" = (", as.character(note_date), ")") else paste0(" = '", as.character(note_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note.note_date')
  }

  if (!missing(note_datetime)) {
    fields <- c(fields, "note_datetime")
    values <- c(values, if (is.null(note_datetime)) " IS NULL" else if (is(note_datetime, "subQuery")) paste0(" = (", as.character(note_datetime), ")") else paste0(" = '", as.character(note_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note.note_datetime')
  }

  if (!missing(note_type_concept_id)) {
    fields <- c(fields, "note_type_concept_id")
    values <- c(values, if (is.null(note_type_concept_id)) " IS NULL" else if (is(note_type_concept_id, "subQuery")) paste0(" = (", as.character(note_type_concept_id), ")") else paste0(" = '", as.character(note_type_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note.note_type_concept_id')
  }

  if (!missing(note_class_concept_id)) {
    fields <- c(fields, "note_class_concept_id")
    values <- c(values, if (is.null(note_class_concept_id)) " IS NULL" else if (is(note_class_concept_id, "subQuery")) paste0(" = (", as.character(note_class_concept_id), ")") else paste0(" = '", as.character(note_class_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note.note_class_concept_id')
  }

  if (!missing(note_title)) {
    fields <- c(fields, "note_title")
    values <- c(values, if (is.null(note_title)) " IS NULL" else if (is(note_title, "subQuery")) paste0(" = (", as.character(note_title), ")") else paste0(" = '", as.character(note_title), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note.note_title')
  }

  if (!missing(note_text)) {
    fields <- c(fields, "note_text")
    values <- c(values, if (is.null(note_text)) " IS NULL" else if (is(note_text, "subQuery")) paste0(" = (", as.character(note_text), ")") else paste0(" = '", as.character(note_text), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note.note_text')
  }

  if (!missing(encoding_concept_id)) {
    fields <- c(fields, "encoding_concept_id")
    values <- c(values, if (is.null(encoding_concept_id)) " IS NULL" else if (is(encoding_concept_id, "subQuery")) paste0(" = (", as.character(encoding_concept_id), ")") else paste0(" = '", as.character(encoding_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note.encoding_concept_id')
  }

  if (!missing(language_concept_id)) {
    fields <- c(fields, "language_concept_id")
    values <- c(values, if (is.null(language_concept_id)) " IS NULL" else if (is(language_concept_id, "subQuery")) paste0(" = (", as.character(language_concept_id), ")") else paste0(" = '", as.character(language_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note.language_concept_id')
  }

  if (!missing(provider_id)) {
    fields <- c(fields, "provider_id")
    values <- c(values, if (is.null(provider_id)) " IS NULL" else if (is(provider_id, "subQuery")) paste0(" = (", as.character(provider_id), ")") else paste0(" = '", as.character(provider_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note.provider_id')
  }

  if (!missing(visit_occurrence_id)) {
    fields <- c(fields, "visit_occurrence_id")
    values <- c(values, if (is.null(visit_occurrence_id)) " IS NULL" else if (is(visit_occurrence_id, "subQuery")) paste0(" = (", as.character(visit_occurrence_id), ")") else paste0(" = '", as.character(visit_occurrence_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note.visit_occurrence_id')
  }

  if (!missing(visit_detail_id)) {
    fields <- c(fields, "visit_detail_id")
    values <- c(values, if (is.null(visit_detail_id)) " IS NULL" else if (is(visit_detail_id, "subQuery")) paste0(" = (", as.character(visit_detail_id), ")") else paste0(" = '", as.character(visit_detail_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note.visit_detail_id')
  }

  if (!missing(note_source_value)) {
    fields <- c(fields, "note_source_value")
    values <- c(values, if (is.null(note_source_value)) " IS NULL" else if (is(note_source_value, "subQuery")) paste0(" = (", as.character(note_source_value), ")") else paste0(" = '", as.character(note_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note.note_source_value')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 0, table = "note", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_note_nlp <- function(note_nlp_id, note_id, section_concept_id, snippet, offset, lexical_variant, note_nlp_concept_id, note_nlp_source_concept_id, nlp_system, nlp_date, nlp_datetime, term_exists, term_temporal, term_modifiers) {
  fields <- c()
  values <- c()
  if (!missing(note_nlp_id)) {
    fields <- c(fields, "note_nlp_id")
    values <- c(values, if (is.null(note_nlp_id)) " IS NULL" else if (is(note_nlp_id, "subQuery")) paste0(" = (", as.character(note_nlp_id), ")") else paste0(" = '", as.character(note_nlp_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note_nlp.note_nlp_id')
  }

  if (!missing(note_id)) {
    fields <- c(fields, "note_id")
    values <- c(values, if (is.null(note_id)) " IS NULL" else if (is(note_id, "subQuery")) paste0(" = (", as.character(note_id), ")") else paste0(" = '", as.character(note_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note_nlp.note_id')
  }

  if (!missing(section_concept_id)) {
    fields <- c(fields, "section_concept_id")
    values <- c(values, if (is.null(section_concept_id)) " IS NULL" else if (is(section_concept_id, "subQuery")) paste0(" = (", as.character(section_concept_id), ")") else paste0(" = '", as.character(section_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note_nlp.section_concept_id')
  }

  if (!missing(snippet)) {
    fields <- c(fields, "snippet")
    values <- c(values, if (is.null(snippet)) " IS NULL" else if (is(snippet, "subQuery")) paste0(" = (", as.character(snippet), ")") else paste0(" = '", as.character(snippet), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note_nlp.snippet')
  }

  if (!missing(offset)) {
    fields <- c(fields, "offset")
    values <- c(values, if (is.null(offset)) " IS NULL" else if (is(offset, "subQuery")) paste0(" = (", as.character(offset), ")") else paste0(" = '", as.character(offset), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note_nlp.offset')
  }

  if (!missing(lexical_variant)) {
    fields <- c(fields, "lexical_variant")
    values <- c(values, if (is.null(lexical_variant)) " IS NULL" else if (is(lexical_variant, "subQuery")) paste0(" = (", as.character(lexical_variant), ")") else paste0(" = '", as.character(lexical_variant), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note_nlp.lexical_variant')
  }

  if (!missing(note_nlp_concept_id)) {
    fields <- c(fields, "note_nlp_concept_id")
    values <- c(values, if (is.null(note_nlp_concept_id)) " IS NULL" else if (is(note_nlp_concept_id, "subQuery")) paste0(" = (", as.character(note_nlp_concept_id), ")") else paste0(" = '", as.character(note_nlp_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note_nlp.note_nlp_concept_id')
  }

  if (!missing(note_nlp_source_concept_id)) {
    fields <- c(fields, "note_nlp_source_concept_id")
    values <- c(values, if (is.null(note_nlp_source_concept_id)) " IS NULL" else if (is(note_nlp_source_concept_id, "subQuery")) paste0(" = (", as.character(note_nlp_source_concept_id), ")") else paste0(" = '", as.character(note_nlp_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note_nlp.note_nlp_source_concept_id')
  }

  if (!missing(nlp_system)) {
    fields <- c(fields, "nlp_system")
    values <- c(values, if (is.null(nlp_system)) " IS NULL" else if (is(nlp_system, "subQuery")) paste0(" = (", as.character(nlp_system), ")") else paste0(" = '", as.character(nlp_system), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note_nlp.nlp_system')
  }

  if (!missing(nlp_date)) {
    fields <- c(fields, "nlp_date")
    values <- c(values, if (is.null(nlp_date)) " IS NULL" else if (is(nlp_date, "subQuery")) paste0(" = (", as.character(nlp_date), ")") else paste0(" = '", as.character(nlp_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note_nlp.nlp_date')
  }

  if (!missing(nlp_datetime)) {
    fields <- c(fields, "nlp_datetime")
    values <- c(values, if (is.null(nlp_datetime)) " IS NULL" else if (is(nlp_datetime, "subQuery")) paste0(" = (", as.character(nlp_datetime), ")") else paste0(" = '", as.character(nlp_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note_nlp.nlp_datetime')
  }

  if (!missing(term_exists)) {
    fields <- c(fields, "term_exists")
    values <- c(values, if (is.null(term_exists)) " IS NULL" else if (is(term_exists, "subQuery")) paste0(" = (", as.character(term_exists), ")") else paste0(" = '", as.character(term_exists), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note_nlp.term_exists')
  }

  if (!missing(term_temporal)) {
    fields <- c(fields, "term_temporal")
    values <- c(values, if (is.null(term_temporal)) " IS NULL" else if (is(term_temporal, "subQuery")) paste0(" = (", as.character(term_temporal), ")") else paste0(" = '", as.character(term_temporal), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note_nlp.term_temporal')
  }

  if (!missing(term_modifiers)) {
    fields <- c(fields, "term_modifiers")
    values <- c(values, if (is.null(term_modifiers)) " IS NULL" else if (is(term_modifiers, "subQuery")) paste0(" = (", as.character(term_modifiers), ")") else paste0(" = '", as.character(term_modifiers), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note_nlp.term_modifiers')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 0, table = "note_nlp", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_survey_conduct <- function(survey_conduct_id, person_id, survey_concept_id, survey_start_date, survey_start_datetime, survey_end_date, survey_end_datetime, provider_id, assisted_concept_id, respondent_type_concept_id, timing_concept_id, collection_method_concept_id, assisted_source_value, respondent_type_source_value, timing_source_value, collection_method_source_value, survey_source_value, survey_source_concept_id, survey_source_identifier, validated_survey_concept_id, validated_survey_source_value, survey_version_number, visit_occurrence_id, response_visit_occurrence_id) {
  fields <- c()
  values <- c()
  if (!missing(survey_conduct_id)) {
    fields <- c(fields, "survey_conduct_id")
    values <- c(values, if (is.null(survey_conduct_id)) " IS NULL" else if (is(survey_conduct_id, "subQuery")) paste0(" = (", as.character(survey_conduct_id), ")") else paste0(" = '", as.character(survey_conduct_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.survey_conduct_id')
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.person_id')
  }

  if (!missing(survey_concept_id)) {
    fields <- c(fields, "survey_concept_id")
    values <- c(values, if (is.null(survey_concept_id)) " IS NULL" else if (is(survey_concept_id, "subQuery")) paste0(" = (", as.character(survey_concept_id), ")") else paste0(" = '", as.character(survey_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.survey_concept_id')
  }

  if (!missing(survey_start_date)) {
    fields <- c(fields, "survey_start_date")
    values <- c(values, if (is.null(survey_start_date)) " IS NULL" else if (is(survey_start_date, "subQuery")) paste0(" = (", as.character(survey_start_date), ")") else paste0(" = '", as.character(survey_start_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.survey_start_date')
  }

  if (!missing(survey_start_datetime)) {
    fields <- c(fields, "survey_start_datetime")
    values <- c(values, if (is.null(survey_start_datetime)) " IS NULL" else if (is(survey_start_datetime, "subQuery")) paste0(" = (", as.character(survey_start_datetime), ")") else paste0(" = '", as.character(survey_start_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.survey_start_datetime')
  }

  if (!missing(survey_end_date)) {
    fields <- c(fields, "survey_end_date")
    values <- c(values, if (is.null(survey_end_date)) " IS NULL" else if (is(survey_end_date, "subQuery")) paste0(" = (", as.character(survey_end_date), ")") else paste0(" = '", as.character(survey_end_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.survey_end_date')
  }

  if (!missing(survey_end_datetime)) {
    fields <- c(fields, "survey_end_datetime")
    values <- c(values, if (is.null(survey_end_datetime)) " IS NULL" else if (is(survey_end_datetime, "subQuery")) paste0(" = (", as.character(survey_end_datetime), ")") else paste0(" = '", as.character(survey_end_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.survey_end_datetime')
  }

  if (!missing(provider_id)) {
    fields <- c(fields, "provider_id")
    values <- c(values, if (is.null(provider_id)) " IS NULL" else if (is(provider_id, "subQuery")) paste0(" = (", as.character(provider_id), ")") else paste0(" = '", as.character(provider_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.provider_id')
  }

  if (!missing(assisted_concept_id)) {
    fields <- c(fields, "assisted_concept_id")
    values <- c(values, if (is.null(assisted_concept_id)) " IS NULL" else if (is(assisted_concept_id, "subQuery")) paste0(" = (", as.character(assisted_concept_id), ")") else paste0(" = '", as.character(assisted_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.assisted_concept_id')
  }

  if (!missing(respondent_type_concept_id)) {
    fields <- c(fields, "respondent_type_concept_id")
    values <- c(values, if (is.null(respondent_type_concept_id)) " IS NULL" else if (is(respondent_type_concept_id, "subQuery")) paste0(" = (", as.character(respondent_type_concept_id), ")") else paste0(" = '", as.character(respondent_type_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.respondent_type_concept_id')
  }

  if (!missing(timing_concept_id)) {
    fields <- c(fields, "timing_concept_id")
    values <- c(values, if (is.null(timing_concept_id)) " IS NULL" else if (is(timing_concept_id, "subQuery")) paste0(" = (", as.character(timing_concept_id), ")") else paste0(" = '", as.character(timing_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.timing_concept_id')
  }

  if (!missing(collection_method_concept_id)) {
    fields <- c(fields, "collection_method_concept_id")
    values <- c(values, if (is.null(collection_method_concept_id)) " IS NULL" else if (is(collection_method_concept_id, "subQuery")) paste0(" = (", as.character(collection_method_concept_id), ")") else paste0(" = '", as.character(collection_method_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.collection_method_concept_id')
  }

  if (!missing(assisted_source_value)) {
    fields <- c(fields, "assisted_source_value")
    values <- c(values, if (is.null(assisted_source_value)) " IS NULL" else if (is(assisted_source_value, "subQuery")) paste0(" = (", as.character(assisted_source_value), ")") else paste0(" = '", as.character(assisted_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.assisted_source_value')
  }

  if (!missing(respondent_type_source_value)) {
    fields <- c(fields, "respondent_type_source_value")
    values <- c(values, if (is.null(respondent_type_source_value)) " IS NULL" else if (is(respondent_type_source_value, "subQuery")) paste0(" = (", as.character(respondent_type_source_value), ")") else paste0(" = '", as.character(respondent_type_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.respondent_type_source_value')
  }

  if (!missing(timing_source_value)) {
    fields <- c(fields, "timing_source_value")
    values <- c(values, if (is.null(timing_source_value)) " IS NULL" else if (is(timing_source_value, "subQuery")) paste0(" = (", as.character(timing_source_value), ")") else paste0(" = '", as.character(timing_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.timing_source_value')
  }

  if (!missing(collection_method_source_value)) {
    fields <- c(fields, "collection_method_source_value")
    values <- c(values, if (is.null(collection_method_source_value)) " IS NULL" else if (is(collection_method_source_value, "subQuery")) paste0(" = (", as.character(collection_method_source_value), ")") else paste0(" = '", as.character(collection_method_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.collection_method_source_value')
  }

  if (!missing(survey_source_value)) {
    fields <- c(fields, "survey_source_value")
    values <- c(values, if (is.null(survey_source_value)) " IS NULL" else if (is(survey_source_value, "subQuery")) paste0(" = (", as.character(survey_source_value), ")") else paste0(" = '", as.character(survey_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.survey_source_value')
  }

  if (!missing(survey_source_concept_id)) {
    fields <- c(fields, "survey_source_concept_id")
    values <- c(values, if (is.null(survey_source_concept_id)) " IS NULL" else if (is(survey_source_concept_id, "subQuery")) paste0(" = (", as.character(survey_source_concept_id), ")") else paste0(" = '", as.character(survey_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.survey_source_concept_id')
  }

  if (!missing(survey_source_identifier)) {
    fields <- c(fields, "survey_source_identifier")
    values <- c(values, if (is.null(survey_source_identifier)) " IS NULL" else if (is(survey_source_identifier, "subQuery")) paste0(" = (", as.character(survey_source_identifier), ")") else paste0(" = '", as.character(survey_source_identifier), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.survey_source_identifier')
  }

  if (!missing(validated_survey_concept_id)) {
    fields <- c(fields, "validated_survey_concept_id")
    values <- c(values, if (is.null(validated_survey_concept_id)) " IS NULL" else if (is(validated_survey_concept_id, "subQuery")) paste0(" = (", as.character(validated_survey_concept_id), ")") else paste0(" = '", as.character(validated_survey_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.validated_survey_concept_id')
  }

  if (!missing(validated_survey_source_value)) {
    fields <- c(fields, "validated_survey_source_value")
    values <- c(values, if (is.null(validated_survey_source_value)) " IS NULL" else if (is(validated_survey_source_value, "subQuery")) paste0(" = (", as.character(validated_survey_source_value), ")") else paste0(" = '", as.character(validated_survey_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.validated_survey_source_value')
  }

  if (!missing(survey_version_number)) {
    fields <- c(fields, "survey_version_number")
    values <- c(values, if (is.null(survey_version_number)) " IS NULL" else if (is(survey_version_number, "subQuery")) paste0(" = (", as.character(survey_version_number), ")") else paste0(" = '", as.character(survey_version_number), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.survey_version_number')
  }

  if (!missing(visit_occurrence_id)) {
    fields <- c(fields, "visit_occurrence_id")
    values <- c(values, if (is.null(visit_occurrence_id)) " IS NULL" else if (is(visit_occurrence_id, "subQuery")) paste0(" = (", as.character(visit_occurrence_id), ")") else paste0(" = '", as.character(visit_occurrence_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.visit_occurrence_id')
  }

  if (!missing(response_visit_occurrence_id)) {
    fields <- c(fields, "response_visit_occurrence_id")
    values <- c(values, if (is.null(response_visit_occurrence_id)) " IS NULL" else if (is(response_visit_occurrence_id, "subQuery")) paste0(" = (", as.character(response_visit_occurrence_id), ")") else paste0(" = '", as.character(response_visit_occurrence_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.response_visit_occurrence_id')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 0, table = "survey_conduct", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_cost <- function(cost_id, person_id, cost_event_id, cost_event_field_concept_id, cost_concept_id, cost_type_concept_id, cost_source_concept_id, cost_source_value, currency_concept_id, cost, incurred_date, billed_date, paid_date, revenue_code_concept_id, drg_concept_id, revenue_code_source_value, drg_source_value, payer_plan_period_id) {
  fields <- c()
  values <- c()
  if (!missing(cost_id)) {
    fields <- c(fields, "cost_id")
    values <- c(values, if (is.null(cost_id)) " IS NULL" else if (is(cost_id, "subQuery")) paste0(" = (", as.character(cost_id), ")") else paste0(" = '", as.character(cost_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cost.cost_id')
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cost.person_id')
  }

  if (!missing(cost_event_id)) {
    fields <- c(fields, "cost_event_id")
    values <- c(values, if (is.null(cost_event_id)) " IS NULL" else if (is(cost_event_id, "subQuery")) paste0(" = (", as.character(cost_event_id), ")") else paste0(" = '", as.character(cost_event_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cost.cost_event_id')
  }

  if (!missing(cost_event_field_concept_id)) {
    fields <- c(fields, "cost_event_field_concept_id")
    values <- c(values, if (is.null(cost_event_field_concept_id)) " IS NULL" else if (is(cost_event_field_concept_id, "subQuery")) paste0(" = (", as.character(cost_event_field_concept_id), ")") else paste0(" = '", as.character(cost_event_field_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cost.cost_event_field_concept_id')
  }

  if (!missing(cost_concept_id)) {
    fields <- c(fields, "cost_concept_id")
    values <- c(values, if (is.null(cost_concept_id)) " IS NULL" else if (is(cost_concept_id, "subQuery")) paste0(" = (", as.character(cost_concept_id), ")") else paste0(" = '", as.character(cost_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cost.cost_concept_id')
  }

  if (!missing(cost_type_concept_id)) {
    fields <- c(fields, "cost_type_concept_id")
    values <- c(values, if (is.null(cost_type_concept_id)) " IS NULL" else if (is(cost_type_concept_id, "subQuery")) paste0(" = (", as.character(cost_type_concept_id), ")") else paste0(" = '", as.character(cost_type_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cost.cost_type_concept_id')
  }

  if (!missing(cost_source_concept_id)) {
    fields <- c(fields, "cost_source_concept_id")
    values <- c(values, if (is.null(cost_source_concept_id)) " IS NULL" else if (is(cost_source_concept_id, "subQuery")) paste0(" = (", as.character(cost_source_concept_id), ")") else paste0(" = '", as.character(cost_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cost.cost_source_concept_id')
  }

  if (!missing(cost_source_value)) {
    fields <- c(fields, "cost_source_value")
    values <- c(values, if (is.null(cost_source_value)) " IS NULL" else if (is(cost_source_value, "subQuery")) paste0(" = (", as.character(cost_source_value), ")") else paste0(" = '", as.character(cost_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cost.cost_source_value')
  }

  if (!missing(currency_concept_id)) {
    fields <- c(fields, "currency_concept_id")
    values <- c(values, if (is.null(currency_concept_id)) " IS NULL" else if (is(currency_concept_id, "subQuery")) paste0(" = (", as.character(currency_concept_id), ")") else paste0(" = '", as.character(currency_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cost.currency_concept_id')
  }

  if (!missing(cost)) {
    fields <- c(fields, "cost")
    values <- c(values, if (is.null(cost)) " IS NULL" else if (is(cost, "subQuery")) paste0(" = (", as.character(cost), ")") else paste0(" = '", as.character(cost), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cost.cost')
  }

  if (!missing(incurred_date)) {
    fields <- c(fields, "incurred_date")
    values <- c(values, if (is.null(incurred_date)) " IS NULL" else if (is(incurred_date, "subQuery")) paste0(" = (", as.character(incurred_date), ")") else paste0(" = '", as.character(incurred_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cost.incurred_date')
  }

  if (!missing(billed_date)) {
    fields <- c(fields, "billed_date")
    values <- c(values, if (is.null(billed_date)) " IS NULL" else if (is(billed_date, "subQuery")) paste0(" = (", as.character(billed_date), ")") else paste0(" = '", as.character(billed_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cost.billed_date')
  }

  if (!missing(paid_date)) {
    fields <- c(fields, "paid_date")
    values <- c(values, if (is.null(paid_date)) " IS NULL" else if (is(paid_date, "subQuery")) paste0(" = (", as.character(paid_date), ")") else paste0(" = '", as.character(paid_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cost.paid_date')
  }

  if (!missing(revenue_code_concept_id)) {
    fields <- c(fields, "revenue_code_concept_id")
    values <- c(values, if (is.null(revenue_code_concept_id)) " IS NULL" else if (is(revenue_code_concept_id, "subQuery")) paste0(" = (", as.character(revenue_code_concept_id), ")") else paste0(" = '", as.character(revenue_code_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cost.revenue_code_concept_id')
  }

  if (!missing(drg_concept_id)) {
    fields <- c(fields, "drg_concept_id")
    values <- c(values, if (is.null(drg_concept_id)) " IS NULL" else if (is(drg_concept_id, "subQuery")) paste0(" = (", as.character(drg_concept_id), ")") else paste0(" = '", as.character(drg_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cost.drg_concept_id')
  }

  if (!missing(revenue_code_source_value)) {
    fields <- c(fields, "revenue_code_source_value")
    values <- c(values, if (is.null(revenue_code_source_value)) " IS NULL" else if (is(revenue_code_source_value, "subQuery")) paste0(" = (", as.character(revenue_code_source_value), ")") else paste0(" = '", as.character(revenue_code_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cost.revenue_code_source_value')
  }

  if (!missing(drg_source_value)) {
    fields <- c(fields, "drg_source_value")
    values <- c(values, if (is.null(drg_source_value)) " IS NULL" else if (is(drg_source_value, "subQuery")) paste0(" = (", as.character(drg_source_value), ")") else paste0(" = '", as.character(drg_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cost.drg_source_value')
  }

  if (!missing(payer_plan_period_id)) {
    fields <- c(fields, "payer_plan_period_id")
    values <- c(values, if (is.null(payer_plan_period_id)) " IS NULL" else if (is(payer_plan_period_id, "subQuery")) paste0(" = (", as.character(payer_plan_period_id), ")") else paste0(" = '", as.character(payer_plan_period_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cost.payer_plan_period_id')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 0, table = "cost", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_payer_plan_period <- function(payer_plan_period_id, person_id, contract_person_id, payer_plan_period_start_date, payer_plan_period_end_date, payer_concept_id, payer_source_value, payer_source_concept_id, plan_concept_id, plan_source_value, plan_source_concept_id, contract_concept_id, contract_source_value, contract_source_concept_id, sponsor_concept_id, sponsor_source_value, sponsor_source_concept_id, family_source_value, stop_reason_concept_id, stop_reason_source_value, stop_reason_source_concept_id) {
  fields <- c()
  values <- c()
  if (!missing(payer_plan_period_id)) {
    fields <- c(fields, "payer_plan_period_id")
    values <- c(values, if (is.null(payer_plan_period_id)) " IS NULL" else if (is(payer_plan_period_id, "subQuery")) paste0(" = (", as.character(payer_plan_period_id), ")") else paste0(" = '", as.character(payer_plan_period_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.payer_plan_period_id')
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.person_id')
  }

  if (!missing(contract_person_id)) {
    fields <- c(fields, "contract_person_id")
    values <- c(values, if (is.null(contract_person_id)) " IS NULL" else if (is(contract_person_id, "subQuery")) paste0(" = (", as.character(contract_person_id), ")") else paste0(" = '", as.character(contract_person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.contract_person_id')
  }

  if (!missing(payer_plan_period_start_date)) {
    fields <- c(fields, "payer_plan_period_start_date")
    values <- c(values, if (is.null(payer_plan_period_start_date)) " IS NULL" else if (is(payer_plan_period_start_date, "subQuery")) paste0(" = (", as.character(payer_plan_period_start_date), ")") else paste0(" = '", as.character(payer_plan_period_start_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.payer_plan_period_start_date')
  }

  if (!missing(payer_plan_period_end_date)) {
    fields <- c(fields, "payer_plan_period_end_date")
    values <- c(values, if (is.null(payer_plan_period_end_date)) " IS NULL" else if (is(payer_plan_period_end_date, "subQuery")) paste0(" = (", as.character(payer_plan_period_end_date), ")") else paste0(" = '", as.character(payer_plan_period_end_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.payer_plan_period_end_date')
  }

  if (!missing(payer_concept_id)) {
    fields <- c(fields, "payer_concept_id")
    values <- c(values, if (is.null(payer_concept_id)) " IS NULL" else if (is(payer_concept_id, "subQuery")) paste0(" = (", as.character(payer_concept_id), ")") else paste0(" = '", as.character(payer_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.payer_concept_id')
  }

  if (!missing(payer_source_value)) {
    fields <- c(fields, "payer_source_value")
    values <- c(values, if (is.null(payer_source_value)) " IS NULL" else if (is(payer_source_value, "subQuery")) paste0(" = (", as.character(payer_source_value), ")") else paste0(" = '", as.character(payer_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.payer_source_value')
  }

  if (!missing(payer_source_concept_id)) {
    fields <- c(fields, "payer_source_concept_id")
    values <- c(values, if (is.null(payer_source_concept_id)) " IS NULL" else if (is(payer_source_concept_id, "subQuery")) paste0(" = (", as.character(payer_source_concept_id), ")") else paste0(" = '", as.character(payer_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.payer_source_concept_id')
  }

  if (!missing(plan_concept_id)) {
    fields <- c(fields, "plan_concept_id")
    values <- c(values, if (is.null(plan_concept_id)) " IS NULL" else if (is(plan_concept_id, "subQuery")) paste0(" = (", as.character(plan_concept_id), ")") else paste0(" = '", as.character(plan_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.plan_concept_id')
  }

  if (!missing(plan_source_value)) {
    fields <- c(fields, "plan_source_value")
    values <- c(values, if (is.null(plan_source_value)) " IS NULL" else if (is(plan_source_value, "subQuery")) paste0(" = (", as.character(plan_source_value), ")") else paste0(" = '", as.character(plan_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.plan_source_value')
  }

  if (!missing(plan_source_concept_id)) {
    fields <- c(fields, "plan_source_concept_id")
    values <- c(values, if (is.null(plan_source_concept_id)) " IS NULL" else if (is(plan_source_concept_id, "subQuery")) paste0(" = (", as.character(plan_source_concept_id), ")") else paste0(" = '", as.character(plan_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.plan_source_concept_id')
  }

  if (!missing(contract_concept_id)) {
    fields <- c(fields, "contract_concept_id")
    values <- c(values, if (is.null(contract_concept_id)) " IS NULL" else if (is(contract_concept_id, "subQuery")) paste0(" = (", as.character(contract_concept_id), ")") else paste0(" = '", as.character(contract_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.contract_concept_id')
  }

  if (!missing(contract_source_value)) {
    fields <- c(fields, "contract_source_value")
    values <- c(values, if (is.null(contract_source_value)) " IS NULL" else if (is(contract_source_value, "subQuery")) paste0(" = (", as.character(contract_source_value), ")") else paste0(" = '", as.character(contract_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.contract_source_value')
  }

  if (!missing(contract_source_concept_id)) {
    fields <- c(fields, "contract_source_concept_id")
    values <- c(values, if (is.null(contract_source_concept_id)) " IS NULL" else if (is(contract_source_concept_id, "subQuery")) paste0(" = (", as.character(contract_source_concept_id), ")") else paste0(" = '", as.character(contract_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.contract_source_concept_id')
  }

  if (!missing(sponsor_concept_id)) {
    fields <- c(fields, "sponsor_concept_id")
    values <- c(values, if (is.null(sponsor_concept_id)) " IS NULL" else if (is(sponsor_concept_id, "subQuery")) paste0(" = (", as.character(sponsor_concept_id), ")") else paste0(" = '", as.character(sponsor_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.sponsor_concept_id')
  }

  if (!missing(sponsor_source_value)) {
    fields <- c(fields, "sponsor_source_value")
    values <- c(values, if (is.null(sponsor_source_value)) " IS NULL" else if (is(sponsor_source_value, "subQuery")) paste0(" = (", as.character(sponsor_source_value), ")") else paste0(" = '", as.character(sponsor_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.sponsor_source_value')
  }

  if (!missing(sponsor_source_concept_id)) {
    fields <- c(fields, "sponsor_source_concept_id")
    values <- c(values, if (is.null(sponsor_source_concept_id)) " IS NULL" else if (is(sponsor_source_concept_id, "subQuery")) paste0(" = (", as.character(sponsor_source_concept_id), ")") else paste0(" = '", as.character(sponsor_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.sponsor_source_concept_id')
  }

  if (!missing(family_source_value)) {
    fields <- c(fields, "family_source_value")
    values <- c(values, if (is.null(family_source_value)) " IS NULL" else if (is(family_source_value, "subQuery")) paste0(" = (", as.character(family_source_value), ")") else paste0(" = '", as.character(family_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.family_source_value')
  }

  if (!missing(stop_reason_concept_id)) {
    fields <- c(fields, "stop_reason_concept_id")
    values <- c(values, if (is.null(stop_reason_concept_id)) " IS NULL" else if (is(stop_reason_concept_id, "subQuery")) paste0(" = (", as.character(stop_reason_concept_id), ")") else paste0(" = '", as.character(stop_reason_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.stop_reason_concept_id')
  }

  if (!missing(stop_reason_source_value)) {
    fields <- c(fields, "stop_reason_source_value")
    values <- c(values, if (is.null(stop_reason_source_value)) " IS NULL" else if (is(stop_reason_source_value, "subQuery")) paste0(" = (", as.character(stop_reason_source_value), ")") else paste0(" = '", as.character(stop_reason_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.stop_reason_source_value')
  }

  if (!missing(stop_reason_source_concept_id)) {
    fields <- c(fields, "stop_reason_source_concept_id")
    values <- c(values, if (is.null(stop_reason_source_concept_id)) " IS NULL" else if (is(stop_reason_source_concept_id, "subQuery")) paste0(" = (", as.character(stop_reason_source_concept_id), ")") else paste0(" = '", as.character(stop_reason_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.stop_reason_source_concept_id')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 0, table = "payer_plan_period", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_drug_era <- function(drug_era_id, person_id, drug_concept_id, drug_era_start_datetime, drug_era_end_datetime, drug_exposure_count, gap_days) {
  fields <- c()
  values <- c()
  if (!missing(drug_era_id)) {
    fields <- c(fields, "drug_era_id")
    values <- c(values, if (is.null(drug_era_id)) " IS NULL" else if (is(drug_era_id, "subQuery")) paste0(" = (", as.character(drug_era_id), ")") else paste0(" = '", as.character(drug_era_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_era.drug_era_id')
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_era.person_id')
  }

  if (!missing(drug_concept_id)) {
    fields <- c(fields, "drug_concept_id")
    values <- c(values, if (is.null(drug_concept_id)) " IS NULL" else if (is(drug_concept_id, "subQuery")) paste0(" = (", as.character(drug_concept_id), ")") else paste0(" = '", as.character(drug_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_era.drug_concept_id')
  }

  if (!missing(drug_era_start_datetime)) {
    fields <- c(fields, "drug_era_start_datetime")
    values <- c(values, if (is.null(drug_era_start_datetime)) " IS NULL" else if (is(drug_era_start_datetime, "subQuery")) paste0(" = (", as.character(drug_era_start_datetime), ")") else paste0(" = '", as.character(drug_era_start_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_era.drug_era_start_datetime')
  }

  if (!missing(drug_era_end_datetime)) {
    fields <- c(fields, "drug_era_end_datetime")
    values <- c(values, if (is.null(drug_era_end_datetime)) " IS NULL" else if (is(drug_era_end_datetime, "subQuery")) paste0(" = (", as.character(drug_era_end_datetime), ")") else paste0(" = '", as.character(drug_era_end_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_era.drug_era_end_datetime')
  }

  if (!missing(drug_exposure_count)) {
    fields <- c(fields, "drug_exposure_count")
    values <- c(values, if (is.null(drug_exposure_count)) " IS NULL" else if (is(drug_exposure_count, "subQuery")) paste0(" = (", as.character(drug_exposure_count), ")") else paste0(" = '", as.character(drug_exposure_count), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_era.drug_exposure_count')
  }

  if (!missing(gap_days)) {
    fields <- c(fields, "gap_days")
    values <- c(values, if (is.null(gap_days)) " IS NULL" else if (is(gap_days, "subQuery")) paste0(" = (", as.character(gap_days), ")") else paste0(" = '", as.character(gap_days), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_era.gap_days')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 0, table = "drug_era", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_dose_era <- function(dose_era_id, person_id, drug_concept_id, unit_concept_id, dose_value, dose_era_start_datetime, dose_era_end_datetime) {
  fields <- c()
  values <- c()
  if (!missing(dose_era_id)) {
    fields <- c(fields, "dose_era_id")
    values <- c(values, if (is.null(dose_era_id)) " IS NULL" else if (is(dose_era_id, "subQuery")) paste0(" = (", as.character(dose_era_id), ")") else paste0(" = '", as.character(dose_era_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'dose_era.dose_era_id')
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'dose_era.person_id')
  }

  if (!missing(drug_concept_id)) {
    fields <- c(fields, "drug_concept_id")
    values <- c(values, if (is.null(drug_concept_id)) " IS NULL" else if (is(drug_concept_id, "subQuery")) paste0(" = (", as.character(drug_concept_id), ")") else paste0(" = '", as.character(drug_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'dose_era.drug_concept_id')
  }

  if (!missing(unit_concept_id)) {
    fields <- c(fields, "unit_concept_id")
    values <- c(values, if (is.null(unit_concept_id)) " IS NULL" else if (is(unit_concept_id, "subQuery")) paste0(" = (", as.character(unit_concept_id), ")") else paste0(" = '", as.character(unit_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'dose_era.unit_concept_id')
  }

  if (!missing(dose_value)) {
    fields <- c(fields, "dose_value")
    values <- c(values, if (is.null(dose_value)) " IS NULL" else if (is(dose_value, "subQuery")) paste0(" = (", as.character(dose_value), ")") else paste0(" = '", as.character(dose_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'dose_era.dose_value')
  }

  if (!missing(dose_era_start_datetime)) {
    fields <- c(fields, "dose_era_start_datetime")
    values <- c(values, if (is.null(dose_era_start_datetime)) " IS NULL" else if (is(dose_era_start_datetime, "subQuery")) paste0(" = (", as.character(dose_era_start_datetime), ")") else paste0(" = '", as.character(dose_era_start_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'dose_era.dose_era_start_datetime')
  }

  if (!missing(dose_era_end_datetime)) {
    fields <- c(fields, "dose_era_end_datetime")
    values <- c(values, if (is.null(dose_era_end_datetime)) " IS NULL" else if (is(dose_era_end_datetime, "subQuery")) paste0(" = (", as.character(dose_era_end_datetime), ")") else paste0(" = '", as.character(dose_era_end_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'dose_era.dose_era_end_datetime')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 0, table = "dose_era", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_condition_era <- function(condition_era_id, person_id, condition_concept_id, condition_era_start_datetime, condition_era_end_datetime, condition_occurrence_count) {
  fields <- c()
  values <- c()
  if (!missing(condition_era_id)) {
    fields <- c(fields, "condition_era_id")
    values <- c(values, if (is.null(condition_era_id)) " IS NULL" else if (is(condition_era_id, "subQuery")) paste0(" = (", as.character(condition_era_id), ")") else paste0(" = '", as.character(condition_era_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_era.condition_era_id')
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_era.person_id')
  }

  if (!missing(condition_concept_id)) {
    fields <- c(fields, "condition_concept_id")
    values <- c(values, if (is.null(condition_concept_id)) " IS NULL" else if (is(condition_concept_id, "subQuery")) paste0(" = (", as.character(condition_concept_id), ")") else paste0(" = '", as.character(condition_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_era.condition_concept_id')
  }

  if (!missing(condition_era_start_datetime)) {
    fields <- c(fields, "condition_era_start_datetime")
    values <- c(values, if (is.null(condition_era_start_datetime)) " IS NULL" else if (is(condition_era_start_datetime, "subQuery")) paste0(" = (", as.character(condition_era_start_datetime), ")") else paste0(" = '", as.character(condition_era_start_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_era.condition_era_start_datetime')
  }

  if (!missing(condition_era_end_datetime)) {
    fields <- c(fields, "condition_era_end_datetime")
    values <- c(values, if (is.null(condition_era_end_datetime)) " IS NULL" else if (is(condition_era_end_datetime, "subQuery")) paste0(" = (", as.character(condition_era_end_datetime), ")") else paste0(" = '", as.character(condition_era_end_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_era.condition_era_end_datetime')
  }

  if (!missing(condition_occurrence_count)) {
    fields <- c(fields, "condition_occurrence_count")
    values <- c(values, if (is.null(condition_occurrence_count)) " IS NULL" else if (is(condition_occurrence_count, "subQuery")) paste0(" = (", as.character(condition_occurrence_count), ")") else paste0(" = '", as.character(condition_occurrence_count), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_era.condition_occurrence_count')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 0, table = "condition_era", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_location <- function(location_id, address_1, address_2, city, state, zip, county, country, location_source_value, latitude, longitude) {
  fields <- c()
  values <- c()
  if (!missing(location_id)) {
    fields <- c(fields, "location_id")
    values <- c(values, if (is.null(location_id)) " IS NULL" else if (is(location_id, "subQuery")) paste0(" = (", as.character(location_id), ")") else paste0(" = '", as.character(location_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'location.location_id')
  }

  if (!missing(address_1)) {
    fields <- c(fields, "address_1")
    values <- c(values, if (is.null(address_1)) " IS NULL" else if (is(address_1, "subQuery")) paste0(" = (", as.character(address_1), ")") else paste0(" = '", as.character(address_1), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'location.address_1')
  }

  if (!missing(address_2)) {
    fields <- c(fields, "address_2")
    values <- c(values, if (is.null(address_2)) " IS NULL" else if (is(address_2, "subQuery")) paste0(" = (", as.character(address_2), ")") else paste0(" = '", as.character(address_2), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'location.address_2')
  }

  if (!missing(city)) {
    fields <- c(fields, "city")
    values <- c(values, if (is.null(city)) " IS NULL" else if (is(city, "subQuery")) paste0(" = (", as.character(city), ")") else paste0(" = '", as.character(city), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'location.city')
  }

  if (!missing(state)) {
    fields <- c(fields, "state")
    values <- c(values, if (is.null(state)) " IS NULL" else if (is(state, "subQuery")) paste0(" = (", as.character(state), ")") else paste0(" = '", as.character(state), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'location.state')
  }

  if (!missing(zip)) {
    fields <- c(fields, "zip")
    values <- c(values, if (is.null(zip)) " IS NULL" else if (is(zip, "subQuery")) paste0(" = (", as.character(zip), ")") else paste0(" = '", as.character(zip), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'location.zip')
  }

  if (!missing(county)) {
    fields <- c(fields, "county")
    values <- c(values, if (is.null(county)) " IS NULL" else if (is(county, "subQuery")) paste0(" = (", as.character(county), ")") else paste0(" = '", as.character(county), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'location.county')
  }

  if (!missing(country)) {
    fields <- c(fields, "country")
    values <- c(values, if (is.null(country)) " IS NULL" else if (is(country, "subQuery")) paste0(" = (", as.character(country), ")") else paste0(" = '", as.character(country), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'location.country')
  }

  if (!missing(location_source_value)) {
    fields <- c(fields, "location_source_value")
    values <- c(values, if (is.null(location_source_value)) " IS NULL" else if (is(location_source_value, "subQuery")) paste0(" = (", as.character(location_source_value), ")") else paste0(" = '", as.character(location_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'location.location_source_value')
  }

  if (!missing(latitude)) {
    fields <- c(fields, "latitude")
    values <- c(values, if (is.null(latitude)) " IS NULL" else if (is(latitude, "subQuery")) paste0(" = (", as.character(latitude), ")") else paste0(" = '", as.character(latitude), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'location.latitude')
  }

  if (!missing(longitude)) {
    fields <- c(fields, "longitude")
    values <- c(values, if (is.null(longitude)) " IS NULL" else if (is(longitude, "subQuery")) paste0(" = (", as.character(longitude), ")") else paste0(" = '", as.character(longitude), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'location.longitude')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 0, table = "location", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_location_history <- function(location_id, relationship_type_concept_id, domain_id, entity_id, start_date, end_date) {
  fields <- c()
  values <- c()
  if (!missing(location_id)) {
    fields <- c(fields, "location_id")
    values <- c(values, if (is.null(location_id)) " IS NULL" else if (is(location_id, "subQuery")) paste0(" = (", as.character(location_id), ")") else paste0(" = '", as.character(location_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'location_history.location_id')
  }

  if (!missing(relationship_type_concept_id)) {
    fields <- c(fields, "relationship_type_concept_id")
    values <- c(values, if (is.null(relationship_type_concept_id)) " IS NULL" else if (is(relationship_type_concept_id, "subQuery")) paste0(" = (", as.character(relationship_type_concept_id), ")") else paste0(" = '", as.character(relationship_type_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'location_history.relationship_type_concept_id')
  }

  if (!missing(domain_id)) {
    fields <- c(fields, "domain_id")
    values <- c(values, if (is.null(domain_id)) " IS NULL" else if (is(domain_id, "subQuery")) paste0(" = (", as.character(domain_id), ")") else paste0(" = '", as.character(domain_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'location_history.domain_id')
  }

  if (!missing(entity_id)) {
    fields <- c(fields, "entity_id")
    values <- c(values, if (is.null(entity_id)) " IS NULL" else if (is(entity_id, "subQuery")) paste0(" = (", as.character(entity_id), ")") else paste0(" = '", as.character(entity_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'location_history.entity_id')
  }

  if (!missing(start_date)) {
    fields <- c(fields, "start_date")
    values <- c(values, if (is.null(start_date)) " IS NULL" else if (is(start_date, "subQuery")) paste0(" = (", as.character(start_date), ")") else paste0(" = '", as.character(start_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'location_history.start_date')
  }

  if (!missing(end_date)) {
    fields <- c(fields, "end_date")
    values <- c(values, if (is.null(end_date)) " IS NULL" else if (is(end_date, "subQuery")) paste0(" = (", as.character(end_date), ")") else paste0(" = '", as.character(end_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'location_history.end_date')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 0, table = "location_history", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_provider <- function(provider_id, provider_name, npi, dea, specialty_concept_id, care_site_id, year_of_birth, gender_concept_id, provider_source_value, specialty_source_value, specialty_source_concept_id, gender_source_value, gender_source_concept_id) {
  fields <- c()
  values <- c()
  if (!missing(provider_id)) {
    fields <- c(fields, "provider_id")
    values <- c(values, if (is.null(provider_id)) " IS NULL" else if (is(provider_id, "subQuery")) paste0(" = (", as.character(provider_id), ")") else paste0(" = '", as.character(provider_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'provider.provider_id')
  }

  if (!missing(provider_name)) {
    fields <- c(fields, "provider_name")
    values <- c(values, if (is.null(provider_name)) " IS NULL" else if (is(provider_name, "subQuery")) paste0(" = (", as.character(provider_name), ")") else paste0(" = '", as.character(provider_name), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'provider.provider_name')
  }

  if (!missing(npi)) {
    fields <- c(fields, "npi")
    values <- c(values, if (is.null(npi)) " IS NULL" else if (is(npi, "subQuery")) paste0(" = (", as.character(npi), ")") else paste0(" = '", as.character(npi), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'provider.npi')
  }

  if (!missing(dea)) {
    fields <- c(fields, "dea")
    values <- c(values, if (is.null(dea)) " IS NULL" else if (is(dea, "subQuery")) paste0(" = (", as.character(dea), ")") else paste0(" = '", as.character(dea), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'provider.dea')
  }

  if (!missing(specialty_concept_id)) {
    fields <- c(fields, "specialty_concept_id")
    values <- c(values, if (is.null(specialty_concept_id)) " IS NULL" else if (is(specialty_concept_id, "subQuery")) paste0(" = (", as.character(specialty_concept_id), ")") else paste0(" = '", as.character(specialty_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'provider.specialty_concept_id')
  }

  if (!missing(care_site_id)) {
    fields <- c(fields, "care_site_id")
    values <- c(values, if (is.null(care_site_id)) " IS NULL" else if (is(care_site_id, "subQuery")) paste0(" = (", as.character(care_site_id), ")") else paste0(" = '", as.character(care_site_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'provider.care_site_id')
  }

  if (!missing(year_of_birth)) {
    fields <- c(fields, "year_of_birth")
    values <- c(values, if (is.null(year_of_birth)) " IS NULL" else if (is(year_of_birth, "subQuery")) paste0(" = (", as.character(year_of_birth), ")") else paste0(" = '", as.character(year_of_birth), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'provider.year_of_birth')
  }

  if (!missing(gender_concept_id)) {
    fields <- c(fields, "gender_concept_id")
    values <- c(values, if (is.null(gender_concept_id)) " IS NULL" else if (is(gender_concept_id, "subQuery")) paste0(" = (", as.character(gender_concept_id), ")") else paste0(" = '", as.character(gender_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'provider.gender_concept_id')
  }

  if (!missing(provider_source_value)) {
    fields <- c(fields, "provider_source_value")
    values <- c(values, if (is.null(provider_source_value)) " IS NULL" else if (is(provider_source_value, "subQuery")) paste0(" = (", as.character(provider_source_value), ")") else paste0(" = '", as.character(provider_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'provider.provider_source_value')
  }

  if (!missing(specialty_source_value)) {
    fields <- c(fields, "specialty_source_value")
    values <- c(values, if (is.null(specialty_source_value)) " IS NULL" else if (is(specialty_source_value, "subQuery")) paste0(" = (", as.character(specialty_source_value), ")") else paste0(" = '", as.character(specialty_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'provider.specialty_source_value')
  }

  if (!missing(specialty_source_concept_id)) {
    fields <- c(fields, "specialty_source_concept_id")
    values <- c(values, if (is.null(specialty_source_concept_id)) " IS NULL" else if (is(specialty_source_concept_id, "subQuery")) paste0(" = (", as.character(specialty_source_concept_id), ")") else paste0(" = '", as.character(specialty_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'provider.specialty_source_concept_id')
  }

  if (!missing(gender_source_value)) {
    fields <- c(fields, "gender_source_value")
    values <- c(values, if (is.null(gender_source_value)) " IS NULL" else if (is(gender_source_value, "subQuery")) paste0(" = (", as.character(gender_source_value), ")") else paste0(" = '", as.character(gender_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'provider.gender_source_value')
  }

  if (!missing(gender_source_concept_id)) {
    fields <- c(fields, "gender_source_concept_id")
    values <- c(values, if (is.null(gender_source_concept_id)) " IS NULL" else if (is(gender_source_concept_id, "subQuery")) paste0(" = (", as.character(gender_source_concept_id), ")") else paste0(" = '", as.character(gender_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'provider.gender_source_concept_id')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 0, table = "provider", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_care_site <- function(care_site_id, care_site_name, place_of_service_concept_id, location_id, care_site_source_value, place_of_service_source_value) {
  fields <- c()
  values <- c()
  if (!missing(care_site_id)) {
    fields <- c(fields, "care_site_id")
    values <- c(values, if (is.null(care_site_id)) " IS NULL" else if (is(care_site_id, "subQuery")) paste0(" = (", as.character(care_site_id), ")") else paste0(" = '", as.character(care_site_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'care_site.care_site_id')
  }

  if (!missing(care_site_name)) {
    fields <- c(fields, "care_site_name")
    values <- c(values, if (is.null(care_site_name)) " IS NULL" else if (is(care_site_name, "subQuery")) paste0(" = (", as.character(care_site_name), ")") else paste0(" = '", as.character(care_site_name), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'care_site.care_site_name')
  }

  if (!missing(place_of_service_concept_id)) {
    fields <- c(fields, "place_of_service_concept_id")
    values <- c(values, if (is.null(place_of_service_concept_id)) " IS NULL" else if (is(place_of_service_concept_id, "subQuery")) paste0(" = (", as.character(place_of_service_concept_id), ")") else paste0(" = '", as.character(place_of_service_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'care_site.place_of_service_concept_id')
  }

  if (!missing(location_id)) {
    fields <- c(fields, "location_id")
    values <- c(values, if (is.null(location_id)) " IS NULL" else if (is(location_id, "subQuery")) paste0(" = (", as.character(location_id), ")") else paste0(" = '", as.character(location_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'care_site.location_id')
  }

  if (!missing(care_site_source_value)) {
    fields <- c(fields, "care_site_source_value")
    values <- c(values, if (is.null(care_site_source_value)) " IS NULL" else if (is(care_site_source_value, "subQuery")) paste0(" = (", as.character(care_site_source_value), ")") else paste0(" = '", as.character(care_site_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'care_site.care_site_source_value')
  }

  if (!missing(place_of_service_source_value)) {
    fields <- c(fields, "place_of_service_source_value")
    values <- c(values, if (is.null(place_of_service_source_value)) " IS NULL" else if (is(place_of_service_source_value, "subQuery")) paste0(" = (", as.character(place_of_service_source_value), ")") else paste0(" = '", as.character(place_of_service_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'care_site.place_of_service_source_value')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 0, table = "care_site", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_cdm_source <- function(cdm_source_name, cdm_source_abbreviation, cdm_holder, source_description, source_documentation_reference, cdm_etl_reference, source_release_date, cdm_release_date, cdm_version, vocabulary_version) {
  fields <- c()
  values <- c()
  if (!missing(cdm_source_name)) {
    fields <- c(fields, "cdm_source_name")
    values <- c(values, if (is.null(cdm_source_name)) " IS NULL" else if (is(cdm_source_name, "subQuery")) paste0(" = (", as.character(cdm_source_name), ")") else paste0(" = '", as.character(cdm_source_name), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cdm_source.cdm_source_name')
  }

  if (!missing(cdm_source_abbreviation)) {
    fields <- c(fields, "cdm_source_abbreviation")
    values <- c(values, if (is.null(cdm_source_abbreviation)) " IS NULL" else if (is(cdm_source_abbreviation, "subQuery")) paste0(" = (", as.character(cdm_source_abbreviation), ")") else paste0(" = '", as.character(cdm_source_abbreviation), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cdm_source.cdm_source_abbreviation')
  }

  if (!missing(cdm_holder)) {
    fields <- c(fields, "cdm_holder")
    values <- c(values, if (is.null(cdm_holder)) " IS NULL" else if (is(cdm_holder, "subQuery")) paste0(" = (", as.character(cdm_holder), ")") else paste0(" = '", as.character(cdm_holder), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cdm_source.cdm_holder')
  }

  if (!missing(source_description)) {
    fields <- c(fields, "source_description")
    values <- c(values, if (is.null(source_description)) " IS NULL" else if (is(source_description, "subQuery")) paste0(" = (", as.character(source_description), ")") else paste0(" = '", as.character(source_description), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cdm_source.source_description')
  }

  if (!missing(source_documentation_reference)) {
    fields <- c(fields, "source_documentation_reference")
    values <- c(values, if (is.null(source_documentation_reference)) " IS NULL" else if (is(source_documentation_reference, "subQuery")) paste0(" = (", as.character(source_documentation_reference), ")") else paste0(" = '", as.character(source_documentation_reference), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cdm_source.source_documentation_reference')
  }

  if (!missing(cdm_etl_reference)) {
    fields <- c(fields, "cdm_etl_reference")
    values <- c(values, if (is.null(cdm_etl_reference)) " IS NULL" else if (is(cdm_etl_reference, "subQuery")) paste0(" = (", as.character(cdm_etl_reference), ")") else paste0(" = '", as.character(cdm_etl_reference), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cdm_source.cdm_etl_reference')
  }

  if (!missing(source_release_date)) {
    fields <- c(fields, "source_release_date")
    values <- c(values, if (is.null(source_release_date)) " IS NULL" else if (is(source_release_date, "subQuery")) paste0(" = (", as.character(source_release_date), ")") else paste0(" = '", as.character(source_release_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cdm_source.source_release_date')
  }

  if (!missing(cdm_release_date)) {
    fields <- c(fields, "cdm_release_date")
    values <- c(values, if (is.null(cdm_release_date)) " IS NULL" else if (is(cdm_release_date, "subQuery")) paste0(" = (", as.character(cdm_release_date), ")") else paste0(" = '", as.character(cdm_release_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cdm_source.cdm_release_date')
  }

  if (!missing(cdm_version)) {
    fields <- c(fields, "cdm_version")
    values <- c(values, if (is.null(cdm_version)) " IS NULL" else if (is(cdm_version, "subQuery")) paste0(" = (", as.character(cdm_version), ")") else paste0(" = '", as.character(cdm_version), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cdm_source.cdm_version')
  }

  if (!missing(vocabulary_version)) {
    fields <- c(fields, "vocabulary_version")
    values <- c(values, if (is.null(vocabulary_version)) " IS NULL" else if (is(vocabulary_version, "subQuery")) paste0(" = (", as.character(vocabulary_version), ")") else paste0(" = '", as.character(vocabulary_version), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cdm_source.vocabulary_version')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 0, table = "cdm_source", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_metadata <- function(metadata_concept_id, metadata_type_concept_id, name, value_as_string, value_as_concept_id, metadata_date, metadata_datetime) {
  fields <- c()
  values <- c()
  if (!missing(metadata_concept_id)) {
    fields <- c(fields, "metadata_concept_id")
    values <- c(values, if (is.null(metadata_concept_id)) " IS NULL" else if (is(metadata_concept_id, "subQuery")) paste0(" = (", as.character(metadata_concept_id), ")") else paste0(" = '", as.character(metadata_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'metadata.metadata_concept_id')
  }

  if (!missing(metadata_type_concept_id)) {
    fields <- c(fields, "metadata_type_concept_id")
    values <- c(values, if (is.null(metadata_type_concept_id)) " IS NULL" else if (is(metadata_type_concept_id, "subQuery")) paste0(" = (", as.character(metadata_type_concept_id), ")") else paste0(" = '", as.character(metadata_type_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'metadata.metadata_type_concept_id')
  }

  if (!missing(name)) {
    fields <- c(fields, "name")
    values <- c(values, if (is.null(name)) " IS NULL" else if (is(name, "subQuery")) paste0(" = (", as.character(name), ")") else paste0(" = '", as.character(name), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'metadata.name')
  }

  if (!missing(value_as_string)) {
    fields <- c(fields, "value_as_string")
    values <- c(values, if (is.null(value_as_string)) " IS NULL" else if (is(value_as_string, "subQuery")) paste0(" = (", as.character(value_as_string), ")") else paste0(" = '", as.character(value_as_string), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'metadata.value_as_string')
  }

  if (!missing(value_as_concept_id)) {
    fields <- c(fields, "value_as_concept_id")
    values <- c(values, if (is.null(value_as_concept_id)) " IS NULL" else if (is(value_as_concept_id, "subQuery")) paste0(" = (", as.character(value_as_concept_id), ")") else paste0(" = '", as.character(value_as_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'metadata.value_as_concept_id')
  }

  if (!missing(metadata_date)) {
    fields <- c(fields, "[metadata date]")
    values <- c(values, if (is.null(metadata_date)) " IS NULL" else if (is(metadata_date, "subQuery")) paste0(" = (", as.character(metadata_date), ")") else paste0(" = '", as.character(metadata_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'metadata.metadata_date')
  }

  if (!missing(metadata_datetime)) {
    fields <- c(fields, "metadata_datetime")
    values <- c(values, if (is.null(metadata_datetime)) " IS NULL" else if (is(metadata_datetime, "subQuery")) paste0(" = (", as.character(metadata_datetime), ")") else paste0(" = '", as.character(metadata_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'metadata.metadata_datetime')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 0, table = "metadata", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_fact_relationship <- function(domain_concept_id_1, fact_id_1, domain_concept_id_2, fact_id_2, relationship_concept_id) {
  fields <- c()
  values <- c()
  if (!missing(domain_concept_id_1)) {
    fields <- c(fields, "domain_concept_id_1")
    values <- c(values, if (is.null(domain_concept_id_1)) " IS NULL" else if (is(domain_concept_id_1, "subQuery")) paste0(" = (", as.character(domain_concept_id_1), ")") else paste0(" = '", as.character(domain_concept_id_1), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'fact_relationship.domain_concept_id_1')
  }

  if (!missing(fact_id_1)) {
    fields <- c(fields, "fact_id_1")
    values <- c(values, if (is.null(fact_id_1)) " IS NULL" else if (is(fact_id_1, "subQuery")) paste0(" = (", as.character(fact_id_1), ")") else paste0(" = '", as.character(fact_id_1), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'fact_relationship.fact_id_1')
  }

  if (!missing(domain_concept_id_2)) {
    fields <- c(fields, "domain_concept_id_2")
    values <- c(values, if (is.null(domain_concept_id_2)) " IS NULL" else if (is(domain_concept_id_2, "subQuery")) paste0(" = (", as.character(domain_concept_id_2), ")") else paste0(" = '", as.character(domain_concept_id_2), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'fact_relationship.domain_concept_id_2')
  }

  if (!missing(fact_id_2)) {
    fields <- c(fields, "fact_id_2")
    values <- c(values, if (is.null(fact_id_2)) " IS NULL" else if (is(fact_id_2, "subQuery")) paste0(" = (", as.character(fact_id_2), ")") else paste0(" = '", as.character(fact_id_2), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'fact_relationship.fact_id_2')
  }

  if (!missing(relationship_concept_id)) {
    fields <- c(fields, "relationship_concept_id")
    values <- c(values, if (is.null(relationship_concept_id)) " IS NULL" else if (is(relationship_concept_id, "subQuery")) paste0(" = (", as.character(relationship_concept_id), ")") else paste0(" = '", as.character(relationship_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'fact_relationship.relationship_concept_id')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 0, table = "fact_relationship", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_death <- function(person_id, death_date, death_datetime, death_type_concept_id, cause_concept_id, cause_source_value, cause_source_concept_id) {
  fields <- c()
  values <- c()
  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'death.person_id')
  }

  if (!missing(death_date)) {
    fields <- c(fields, "death_date")
    values <- c(values, if (is.null(death_date)) " IS NULL" else if (is(death_date, "subQuery")) paste0(" = (", as.character(death_date), ")") else paste0(" = '", as.character(death_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'death.death_date')
  }

  if (!missing(death_datetime)) {
    fields <- c(fields, "death_datetime")
    values <- c(values, if (is.null(death_datetime)) " IS NULL" else if (is(death_datetime, "subQuery")) paste0(" = (", as.character(death_datetime), ")") else paste0(" = '", as.character(death_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'death.death_datetime')
  }

  if (!missing(death_type_concept_id)) {
    fields <- c(fields, "death_type_concept_id")
    values <- c(values, if (is.null(death_type_concept_id)) " IS NULL" else if (is(death_type_concept_id, "subQuery")) paste0(" = (", as.character(death_type_concept_id), ")") else paste0(" = '", as.character(death_type_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'death.death_type_concept_id')
  }

  if (!missing(cause_concept_id)) {
    fields <- c(fields, "cause_concept_id")
    values <- c(values, if (is.null(cause_concept_id)) " IS NULL" else if (is(cause_concept_id, "subQuery")) paste0(" = (", as.character(cause_concept_id), ")") else paste0(" = '", as.character(cause_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'death.cause_concept_id')
  }

  if (!missing(cause_source_value)) {
    fields <- c(fields, "cause_source_value")
    values <- c(values, if (is.null(cause_source_value)) " IS NULL" else if (is(cause_source_value, "subQuery")) paste0(" = (", as.character(cause_source_value), ")") else paste0(" = '", as.character(cause_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'death.cause_source_value')
  }

  if (!missing(cause_source_concept_id)) {
    fields <- c(fields, "cause_source_concept_id")
    values <- c(values, if (is.null(cause_source_concept_id)) " IS NULL" else if (is(cause_source_concept_id, "subQuery")) paste0(" = (", as.character(cause_source_concept_id), ")") else paste0(" = '", as.character(cause_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'death.cause_source_concept_id')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 0, table = "death", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_no_person <- function(person_id, gender_concept_id, year_of_birth, month_of_birth, day_of_birth, birth_datetime, death_datetime, race_concept_id, ethnicity_concept_id, location_id, provider_id, care_site_id, person_source_value, gender_source_value, gender_source_concept_id, race_source_value, race_source_concept_id, ethnicity_source_value, ethnicity_source_concept_id) {
  fields <- c()
  values <- c()
  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
  }

  if (!missing(gender_concept_id)) {
    fields <- c(fields, "gender_concept_id")
    values <- c(values, if (is.null(gender_concept_id)) " IS NULL" else if (is(gender_concept_id, "subQuery")) paste0(" = (", as.character(gender_concept_id), ")") else paste0(" = '", as.character(gender_concept_id), "'"))
  }

  if (!missing(year_of_birth)) {
    fields <- c(fields, "year_of_birth")
    values <- c(values, if (is.null(year_of_birth)) " IS NULL" else if (is(year_of_birth, "subQuery")) paste0(" = (", as.character(year_of_birth), ")") else paste0(" = '", as.character(year_of_birth), "'"))
  }

  if (!missing(month_of_birth)) {
    fields <- c(fields, "month_of_birth")
    values <- c(values, if (is.null(month_of_birth)) " IS NULL" else if (is(month_of_birth, "subQuery")) paste0(" = (", as.character(month_of_birth), ")") else paste0(" = '", as.character(month_of_birth), "'"))
  }

  if (!missing(day_of_birth)) {
    fields <- c(fields, "day_of_birth")
    values <- c(values, if (is.null(day_of_birth)) " IS NULL" else if (is(day_of_birth, "subQuery")) paste0(" = (", as.character(day_of_birth), ")") else paste0(" = '", as.character(day_of_birth), "'"))
  }

  if (!missing(birth_datetime)) {
    fields <- c(fields, "birth_datetime")
    values <- c(values, if (is.null(birth_datetime)) " IS NULL" else if (is(birth_datetime, "subQuery")) paste0(" = (", as.character(birth_datetime), ")") else paste0(" = '", as.character(birth_datetime), "'"))
  }

  if (!missing(death_datetime)) {
    fields <- c(fields, "death_datetime")
    values <- c(values, if (is.null(death_datetime)) " IS NULL" else if (is(death_datetime, "subQuery")) paste0(" = (", as.character(death_datetime), ")") else paste0(" = '", as.character(death_datetime), "'"))
  }

  if (!missing(race_concept_id)) {
    fields <- c(fields, "race_concept_id")
    values <- c(values, if (is.null(race_concept_id)) " IS NULL" else if (is(race_concept_id, "subQuery")) paste0(" = (", as.character(race_concept_id), ")") else paste0(" = '", as.character(race_concept_id), "'"))
  }

  if (!missing(ethnicity_concept_id)) {
    fields <- c(fields, "ethnicity_concept_id")
    values <- c(values, if (is.null(ethnicity_concept_id)) " IS NULL" else if (is(ethnicity_concept_id, "subQuery")) paste0(" = (", as.character(ethnicity_concept_id), ")") else paste0(" = '", as.character(ethnicity_concept_id), "'"))
  }

  if (!missing(location_id)) {
    fields <- c(fields, "location_id")
    values <- c(values, if (is.null(location_id)) " IS NULL" else if (is(location_id, "subQuery")) paste0(" = (", as.character(location_id), ")") else paste0(" = '", as.character(location_id), "'"))
  }

  if (!missing(provider_id)) {
    fields <- c(fields, "provider_id")
    values <- c(values, if (is.null(provider_id)) " IS NULL" else if (is(provider_id, "subQuery")) paste0(" = (", as.character(provider_id), ")") else paste0(" = '", as.character(provider_id), "'"))
  }

  if (!missing(care_site_id)) {
    fields <- c(fields, "care_site_id")
    values <- c(values, if (is.null(care_site_id)) " IS NULL" else if (is(care_site_id, "subQuery")) paste0(" = (", as.character(care_site_id), ")") else paste0(" = '", as.character(care_site_id), "'"))
  }

  if (!missing(person_source_value)) {
    fields <- c(fields, "person_source_value")
    values <- c(values, if (is.null(person_source_value)) " IS NULL" else if (is(person_source_value, "subQuery")) paste0(" = (", as.character(person_source_value), ")") else paste0(" = '", as.character(person_source_value), "'"))
  }

  if (!missing(gender_source_value)) {
    fields <- c(fields, "gender_source_value")
    values <- c(values, if (is.null(gender_source_value)) " IS NULL" else if (is(gender_source_value, "subQuery")) paste0(" = (", as.character(gender_source_value), ")") else paste0(" = '", as.character(gender_source_value), "'"))
  }

  if (!missing(gender_source_concept_id)) {
    fields <- c(fields, "gender_source_concept_id")
    values <- c(values, if (is.null(gender_source_concept_id)) " IS NULL" else if (is(gender_source_concept_id, "subQuery")) paste0(" = (", as.character(gender_source_concept_id), ")") else paste0(" = '", as.character(gender_source_concept_id), "'"))
  }

  if (!missing(race_source_value)) {
    fields <- c(fields, "race_source_value")
    values <- c(values, if (is.null(race_source_value)) " IS NULL" else if (is(race_source_value, "subQuery")) paste0(" = (", as.character(race_source_value), ")") else paste0(" = '", as.character(race_source_value), "'"))
  }

  if (!missing(race_source_concept_id)) {
    fields <- c(fields, "race_source_concept_id")
    values <- c(values, if (is.null(race_source_concept_id)) " IS NULL" else if (is(race_source_concept_id, "subQuery")) paste0(" = (", as.character(race_source_concept_id), ")") else paste0(" = '", as.character(race_source_concept_id), "'"))
  }

  if (!missing(ethnicity_source_value)) {
    fields <- c(fields, "ethnicity_source_value")
    values <- c(values, if (is.null(ethnicity_source_value)) " IS NULL" else if (is(ethnicity_source_value, "subQuery")) paste0(" = (", as.character(ethnicity_source_value), ")") else paste0(" = '", as.character(ethnicity_source_value), "'"))
  }

  if (!missing(ethnicity_source_concept_id)) {
    fields <- c(fields, "ethnicity_source_concept_id")
    values <- c(values, if (is.null(ethnicity_source_concept_id)) " IS NULL" else if (is(ethnicity_source_concept_id, "subQuery")) paste0(" = (", as.character(ethnicity_source_concept_id), ")") else paste0(" = '", as.character(ethnicity_source_concept_id), "'"))
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 1, table = "person", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_no_observation_period <- function(observation_period_id, person_id, observation_period_start_date, observation_period_end_date, period_type_concept_id) {
  fields <- c()
  values <- c()
  if (!missing(observation_period_id)) {
    fields <- c(fields, "observation_period_id")
    values <- c(values, if (is.null(observation_period_id)) " IS NULL" else if (is(observation_period_id, "subQuery")) paste0(" = (", as.character(observation_period_id), ")") else paste0(" = '", as.character(observation_period_id), "'"))
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
  }

  if (!missing(observation_period_start_date)) {
    fields <- c(fields, "observation_period_start_date")
    values <- c(values, if (is.null(observation_period_start_date)) " IS NULL" else if (is(observation_period_start_date, "subQuery")) paste0(" = (", as.character(observation_period_start_date), ")") else paste0(" = '", as.character(observation_period_start_date), "'"))
  }

  if (!missing(observation_period_end_date)) {
    fields <- c(fields, "observation_period_end_date")
    values <- c(values, if (is.null(observation_period_end_date)) " IS NULL" else if (is(observation_period_end_date, "subQuery")) paste0(" = (", as.character(observation_period_end_date), ")") else paste0(" = '", as.character(observation_period_end_date), "'"))
  }

  if (!missing(period_type_concept_id)) {
    fields <- c(fields, "period_type_concept_id")
    values <- c(values, if (is.null(period_type_concept_id)) " IS NULL" else if (is(period_type_concept_id, "subQuery")) paste0(" = (", as.character(period_type_concept_id), ")") else paste0(" = '", as.character(period_type_concept_id), "'"))
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 1, table = "observation_period", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_no_visit_occurrence <- function(visit_occurrence_id, person_id, visit_concept_id, visit_start_date, visit_start_datetime, visit_end_date, visit_end_datetime, visit_type_concept_id, provider_id, care_site_id, visit_source_value, visit_source_concept_id, admitting_source_concept_id, admitting_source_value, discharge_to_concept_id, discharge_to_source_value, preceding_visit_occurrence_id) {
  fields <- c()
  values <- c()
  if (!missing(visit_occurrence_id)) {
    fields <- c(fields, "visit_occurrence_id")
    values <- c(values, if (is.null(visit_occurrence_id)) " IS NULL" else if (is(visit_occurrence_id, "subQuery")) paste0(" = (", as.character(visit_occurrence_id), ")") else paste0(" = '", as.character(visit_occurrence_id), "'"))
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
  }

  if (!missing(visit_concept_id)) {
    fields <- c(fields, "visit_concept_id")
    values <- c(values, if (is.null(visit_concept_id)) " IS NULL" else if (is(visit_concept_id, "subQuery")) paste0(" = (", as.character(visit_concept_id), ")") else paste0(" = '", as.character(visit_concept_id), "'"))
  }

  if (!missing(visit_start_date)) {
    fields <- c(fields, "visit_start_date")
    values <- c(values, if (is.null(visit_start_date)) " IS NULL" else if (is(visit_start_date, "subQuery")) paste0(" = (", as.character(visit_start_date), ")") else paste0(" = '", as.character(visit_start_date), "'"))
  }

  if (!missing(visit_start_datetime)) {
    fields <- c(fields, "visit_start_datetime")
    values <- c(values, if (is.null(visit_start_datetime)) " IS NULL" else if (is(visit_start_datetime, "subQuery")) paste0(" = (", as.character(visit_start_datetime), ")") else paste0(" = '", as.character(visit_start_datetime), "'"))
  }

  if (!missing(visit_end_date)) {
    fields <- c(fields, "visit_end_date")
    values <- c(values, if (is.null(visit_end_date)) " IS NULL" else if (is(visit_end_date, "subQuery")) paste0(" = (", as.character(visit_end_date), ")") else paste0(" = '", as.character(visit_end_date), "'"))
  }

  if (!missing(visit_end_datetime)) {
    fields <- c(fields, "visit_end_datetime")
    values <- c(values, if (is.null(visit_end_datetime)) " IS NULL" else if (is(visit_end_datetime, "subQuery")) paste0(" = (", as.character(visit_end_datetime), ")") else paste0(" = '", as.character(visit_end_datetime), "'"))
  }

  if (!missing(visit_type_concept_id)) {
    fields <- c(fields, "visit_type_concept_id")
    values <- c(values, if (is.null(visit_type_concept_id)) " IS NULL" else if (is(visit_type_concept_id, "subQuery")) paste0(" = (", as.character(visit_type_concept_id), ")") else paste0(" = '", as.character(visit_type_concept_id), "'"))
  }

  if (!missing(provider_id)) {
    fields <- c(fields, "provider_id")
    values <- c(values, if (is.null(provider_id)) " IS NULL" else if (is(provider_id, "subQuery")) paste0(" = (", as.character(provider_id), ")") else paste0(" = '", as.character(provider_id), "'"))
  }

  if (!missing(care_site_id)) {
    fields <- c(fields, "care_site_id")
    values <- c(values, if (is.null(care_site_id)) " IS NULL" else if (is(care_site_id, "subQuery")) paste0(" = (", as.character(care_site_id), ")") else paste0(" = '", as.character(care_site_id), "'"))
  }

  if (!missing(visit_source_value)) {
    fields <- c(fields, "visit_source_value")
    values <- c(values, if (is.null(visit_source_value)) " IS NULL" else if (is(visit_source_value, "subQuery")) paste0(" = (", as.character(visit_source_value), ")") else paste0(" = '", as.character(visit_source_value), "'"))
  }

  if (!missing(visit_source_concept_id)) {
    fields <- c(fields, "visit_source_concept_id")
    values <- c(values, if (is.null(visit_source_concept_id)) " IS NULL" else if (is(visit_source_concept_id, "subQuery")) paste0(" = (", as.character(visit_source_concept_id), ")") else paste0(" = '", as.character(visit_source_concept_id), "'"))
  }

  if (!missing(admitting_source_concept_id)) {
    fields <- c(fields, "admitting_source_concept_id")
    values <- c(values, if (is.null(admitting_source_concept_id)) " IS NULL" else if (is(admitting_source_concept_id, "subQuery")) paste0(" = (", as.character(admitting_source_concept_id), ")") else paste0(" = '", as.character(admitting_source_concept_id), "'"))
  }

  if (!missing(admitting_source_value)) {
    fields <- c(fields, "admitting_source_value")
    values <- c(values, if (is.null(admitting_source_value)) " IS NULL" else if (is(admitting_source_value, "subQuery")) paste0(" = (", as.character(admitting_source_value), ")") else paste0(" = '", as.character(admitting_source_value), "'"))
  }

  if (!missing(discharge_to_concept_id)) {
    fields <- c(fields, "discharge_to_concept_id")
    values <- c(values, if (is.null(discharge_to_concept_id)) " IS NULL" else if (is(discharge_to_concept_id, "subQuery")) paste0(" = (", as.character(discharge_to_concept_id), ")") else paste0(" = '", as.character(discharge_to_concept_id), "'"))
  }

  if (!missing(discharge_to_source_value)) {
    fields <- c(fields, "discharge_to_source_value")
    values <- c(values, if (is.null(discharge_to_source_value)) " IS NULL" else if (is(discharge_to_source_value, "subQuery")) paste0(" = (", as.character(discharge_to_source_value), ")") else paste0(" = '", as.character(discharge_to_source_value), "'"))
  }

  if (!missing(preceding_visit_occurrence_id)) {
    fields <- c(fields, "preceding_visit_occurrence_id")
    values <- c(values, if (is.null(preceding_visit_occurrence_id)) " IS NULL" else if (is(preceding_visit_occurrence_id, "subQuery")) paste0(" = (", as.character(preceding_visit_occurrence_id), ")") else paste0(" = '", as.character(preceding_visit_occurrence_id), "'"))
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 1, table = "visit_occurrence", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_no_visit_detail <- function(visit_detail_id, person_id, visit_detail_concept_id, visit_detail_start_date, visit_detail_start_datetime, visit_detail_end_date, visit_detail_end_datetime, visit_detail_type_concept_id, provider_id, care_site_id, visit_detail_source_value, visit_detail_source_concept_id, admitted_from_source_value, admitted_from_concept_id, discharge_to_source_value, discharge_to_concept_id, preceding_visit_detail_id, visit_detail_parent_id, visit_occurrence_id) {
  fields <- c()
  values <- c()
  if (!missing(visit_detail_id)) {
    fields <- c(fields, "visit_detail_id")
    values <- c(values, if (is.null(visit_detail_id)) " IS NULL" else if (is(visit_detail_id, "subQuery")) paste0(" = (", as.character(visit_detail_id), ")") else paste0(" = '", as.character(visit_detail_id), "'"))
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
  }

  if (!missing(visit_detail_concept_id)) {
    fields <- c(fields, "visit_detail_concept_id")
    values <- c(values, if (is.null(visit_detail_concept_id)) " IS NULL" else if (is(visit_detail_concept_id, "subQuery")) paste0(" = (", as.character(visit_detail_concept_id), ")") else paste0(" = '", as.character(visit_detail_concept_id), "'"))
  }

  if (!missing(visit_detail_start_date)) {
    fields <- c(fields, "visit_detail_start_date")
    values <- c(values, if (is.null(visit_detail_start_date)) " IS NULL" else if (is(visit_detail_start_date, "subQuery")) paste0(" = (", as.character(visit_detail_start_date), ")") else paste0(" = '", as.character(visit_detail_start_date), "'"))
  }

  if (!missing(visit_detail_start_datetime)) {
    fields <- c(fields, "visit_detail_start_datetime")
    values <- c(values, if (is.null(visit_detail_start_datetime)) " IS NULL" else if (is(visit_detail_start_datetime, "subQuery")) paste0(" = (", as.character(visit_detail_start_datetime), ")") else paste0(" = '", as.character(visit_detail_start_datetime), "'"))
  }

  if (!missing(visit_detail_end_date)) {
    fields <- c(fields, "visit_detail_end_date")
    values <- c(values, if (is.null(visit_detail_end_date)) " IS NULL" else if (is(visit_detail_end_date, "subQuery")) paste0(" = (", as.character(visit_detail_end_date), ")") else paste0(" = '", as.character(visit_detail_end_date), "'"))
  }

  if (!missing(visit_detail_end_datetime)) {
    fields <- c(fields, "visit_detail_end_datetime")
    values <- c(values, if (is.null(visit_detail_end_datetime)) " IS NULL" else if (is(visit_detail_end_datetime, "subQuery")) paste0(" = (", as.character(visit_detail_end_datetime), ")") else paste0(" = '", as.character(visit_detail_end_datetime), "'"))
  }

  if (!missing(visit_detail_type_concept_id)) {
    fields <- c(fields, "visit_detail_type_concept_id")
    values <- c(values, if (is.null(visit_detail_type_concept_id)) " IS NULL" else if (is(visit_detail_type_concept_id, "subQuery")) paste0(" = (", as.character(visit_detail_type_concept_id), ")") else paste0(" = '", as.character(visit_detail_type_concept_id), "'"))
  }

  if (!missing(provider_id)) {
    fields <- c(fields, "provider_id")
    values <- c(values, if (is.null(provider_id)) " IS NULL" else if (is(provider_id, "subQuery")) paste0(" = (", as.character(provider_id), ")") else paste0(" = '", as.character(provider_id), "'"))
  }

  if (!missing(care_site_id)) {
    fields <- c(fields, "care_site_id")
    values <- c(values, if (is.null(care_site_id)) " IS NULL" else if (is(care_site_id, "subQuery")) paste0(" = (", as.character(care_site_id), ")") else paste0(" = '", as.character(care_site_id), "'"))
  }

  if (!missing(visit_detail_source_value)) {
    fields <- c(fields, "visit_detail_source_value")
    values <- c(values, if (is.null(visit_detail_source_value)) " IS NULL" else if (is(visit_detail_source_value, "subQuery")) paste0(" = (", as.character(visit_detail_source_value), ")") else paste0(" = '", as.character(visit_detail_source_value), "'"))
  }

  if (!missing(visit_detail_source_concept_id)) {
    fields <- c(fields, "visit_detail_source_concept_id")
    values <- c(values, if (is.null(visit_detail_source_concept_id)) " IS NULL" else if (is(visit_detail_source_concept_id, "subQuery")) paste0(" = (", as.character(visit_detail_source_concept_id), ")") else paste0(" = '", as.character(visit_detail_source_concept_id), "'"))
  }

  if (!missing(admitted_from_source_value)) {
    fields <- c(fields, "admitted_from_source_value")
    values <- c(values, if (is.null(admitted_from_source_value)) " IS NULL" else if (is(admitted_from_source_value, "subQuery")) paste0(" = (", as.character(admitted_from_source_value), ")") else paste0(" = '", as.character(admitted_from_source_value), "'"))
  }

  if (!missing(admitted_from_concept_id)) {
    fields <- c(fields, "admitted_from_concept_id")
    values <- c(values, if (is.null(admitted_from_concept_id)) " IS NULL" else if (is(admitted_from_concept_id, "subQuery")) paste0(" = (", as.character(admitted_from_concept_id), ")") else paste0(" = '", as.character(admitted_from_concept_id), "'"))
  }

  if (!missing(discharge_to_source_value)) {
    fields <- c(fields, "discharge_to_source_value")
    values <- c(values, if (is.null(discharge_to_source_value)) " IS NULL" else if (is(discharge_to_source_value, "subQuery")) paste0(" = (", as.character(discharge_to_source_value), ")") else paste0(" = '", as.character(discharge_to_source_value), "'"))
  }

  if (!missing(discharge_to_concept_id)) {
    fields <- c(fields, "discharge_to_concept_id")
    values <- c(values, if (is.null(discharge_to_concept_id)) " IS NULL" else if (is(discharge_to_concept_id, "subQuery")) paste0(" = (", as.character(discharge_to_concept_id), ")") else paste0(" = '", as.character(discharge_to_concept_id), "'"))
  }

  if (!missing(preceding_visit_detail_id)) {
    fields <- c(fields, "preceding_visit_detail_id")
    values <- c(values, if (is.null(preceding_visit_detail_id)) " IS NULL" else if (is(preceding_visit_detail_id, "subQuery")) paste0(" = (", as.character(preceding_visit_detail_id), ")") else paste0(" = '", as.character(preceding_visit_detail_id), "'"))
  }

  if (!missing(visit_detail_parent_id)) {
    fields <- c(fields, "visit_detail_parent_id")
    values <- c(values, if (is.null(visit_detail_parent_id)) " IS NULL" else if (is(visit_detail_parent_id, "subQuery")) paste0(" = (", as.character(visit_detail_parent_id), ")") else paste0(" = '", as.character(visit_detail_parent_id), "'"))
  }

  if (!missing(visit_occurrence_id)) {
    fields <- c(fields, "visit_occurrence_id")
    values <- c(values, if (is.null(visit_occurrence_id)) " IS NULL" else if (is(visit_occurrence_id, "subQuery")) paste0(" = (", as.character(visit_occurrence_id), ")") else paste0(" = '", as.character(visit_occurrence_id), "'"))
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 1, table = "visit_detail", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_no_condition_occurrence <- function(condition_occurrence_id, person_id, condition_concept_id, condition_start_date, condition_start_datetime, condition_end_date, condition_end_datetime, condition_type_concept_id, condition_status_concept_id, stop_reason, provider_id, visit_occurrence_id, visit_detail_id, condition_source_value, condition_source_concept_id, condition_status_source_value) {
  fields <- c()
  values <- c()
  if (!missing(condition_occurrence_id)) {
    fields <- c(fields, "condition_occurrence_id")
    values <- c(values, if (is.null(condition_occurrence_id)) " IS NULL" else if (is(condition_occurrence_id, "subQuery")) paste0(" = (", as.character(condition_occurrence_id), ")") else paste0(" = '", as.character(condition_occurrence_id), "'"))
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
  }

  if (!missing(condition_concept_id)) {
    fields <- c(fields, "condition_concept_id")
    values <- c(values, if (is.null(condition_concept_id)) " IS NULL" else if (is(condition_concept_id, "subQuery")) paste0(" = (", as.character(condition_concept_id), ")") else paste0(" = '", as.character(condition_concept_id), "'"))
  }

  if (!missing(condition_start_date)) {
    fields <- c(fields, "condition_start_date")
    values <- c(values, if (is.null(condition_start_date)) " IS NULL" else if (is(condition_start_date, "subQuery")) paste0(" = (", as.character(condition_start_date), ")") else paste0(" = '", as.character(condition_start_date), "'"))
  }

  if (!missing(condition_start_datetime)) {
    fields <- c(fields, "condition_start_datetime")
    values <- c(values, if (is.null(condition_start_datetime)) " IS NULL" else if (is(condition_start_datetime, "subQuery")) paste0(" = (", as.character(condition_start_datetime), ")") else paste0(" = '", as.character(condition_start_datetime), "'"))
  }

  if (!missing(condition_end_date)) {
    fields <- c(fields, "condition_end_date")
    values <- c(values, if (is.null(condition_end_date)) " IS NULL" else if (is(condition_end_date, "subQuery")) paste0(" = (", as.character(condition_end_date), ")") else paste0(" = '", as.character(condition_end_date), "'"))
  }

  if (!missing(condition_end_datetime)) {
    fields <- c(fields, "condition_end_datetime")
    values <- c(values, if (is.null(condition_end_datetime)) " IS NULL" else if (is(condition_end_datetime, "subQuery")) paste0(" = (", as.character(condition_end_datetime), ")") else paste0(" = '", as.character(condition_end_datetime), "'"))
  }

  if (!missing(condition_type_concept_id)) {
    fields <- c(fields, "condition_type_concept_id")
    values <- c(values, if (is.null(condition_type_concept_id)) " IS NULL" else if (is(condition_type_concept_id, "subQuery")) paste0(" = (", as.character(condition_type_concept_id), ")") else paste0(" = '", as.character(condition_type_concept_id), "'"))
  }

  if (!missing(condition_status_concept_id)) {
    fields <- c(fields, "condition_status_concept_id")
    values <- c(values, if (is.null(condition_status_concept_id)) " IS NULL" else if (is(condition_status_concept_id, "subQuery")) paste0(" = (", as.character(condition_status_concept_id), ")") else paste0(" = '", as.character(condition_status_concept_id), "'"))
  }

  if (!missing(stop_reason)) {
    fields <- c(fields, "stop_reason")
    values <- c(values, if (is.null(stop_reason)) " IS NULL" else if (is(stop_reason, "subQuery")) paste0(" = (", as.character(stop_reason), ")") else paste0(" = '", as.character(stop_reason), "'"))
  }

  if (!missing(provider_id)) {
    fields <- c(fields, "provider_id")
    values <- c(values, if (is.null(provider_id)) " IS NULL" else if (is(provider_id, "subQuery")) paste0(" = (", as.character(provider_id), ")") else paste0(" = '", as.character(provider_id), "'"))
  }

  if (!missing(visit_occurrence_id)) {
    fields <- c(fields, "visit_occurrence_id")
    values <- c(values, if (is.null(visit_occurrence_id)) " IS NULL" else if (is(visit_occurrence_id, "subQuery")) paste0(" = (", as.character(visit_occurrence_id), ")") else paste0(" = '", as.character(visit_occurrence_id), "'"))
  }

  if (!missing(visit_detail_id)) {
    fields <- c(fields, "visit_detail_id")
    values <- c(values, if (is.null(visit_detail_id)) " IS NULL" else if (is(visit_detail_id, "subQuery")) paste0(" = (", as.character(visit_detail_id), ")") else paste0(" = '", as.character(visit_detail_id), "'"))
  }

  if (!missing(condition_source_value)) {
    fields <- c(fields, "condition_source_value")
    values <- c(values, if (is.null(condition_source_value)) " IS NULL" else if (is(condition_source_value, "subQuery")) paste0(" = (", as.character(condition_source_value), ")") else paste0(" = '", as.character(condition_source_value), "'"))
  }

  if (!missing(condition_source_concept_id)) {
    fields <- c(fields, "condition_source_concept_id")
    values <- c(values, if (is.null(condition_source_concept_id)) " IS NULL" else if (is(condition_source_concept_id, "subQuery")) paste0(" = (", as.character(condition_source_concept_id), ")") else paste0(" = '", as.character(condition_source_concept_id), "'"))
  }

  if (!missing(condition_status_source_value)) {
    fields <- c(fields, "condition_status_source_value")
    values <- c(values, if (is.null(condition_status_source_value)) " IS NULL" else if (is(condition_status_source_value, "subQuery")) paste0(" = (", as.character(condition_status_source_value), ")") else paste0(" = '", as.character(condition_status_source_value), "'"))
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 1, table = "condition_occurrence", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_no_procedure_occurrence <- function(procedure_occurrence_id, person_id, procedure_concept_id, procedure_date, procedure_datetime, procedure_type_concept_id, modifier_concept_id, quantity, provider_id, visit_occurrence_id, visit_detail_id, procedure_source_value, procedure_source_concept_id, modifier_source_value) {
  fields <- c()
  values <- c()
  if (!missing(procedure_occurrence_id)) {
    fields <- c(fields, "procedure_occurrence_id")
    values <- c(values, if (is.null(procedure_occurrence_id)) " IS NULL" else if (is(procedure_occurrence_id, "subQuery")) paste0(" = (", as.character(procedure_occurrence_id), ")") else paste0(" = '", as.character(procedure_occurrence_id), "'"))
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
  }

  if (!missing(procedure_concept_id)) {
    fields <- c(fields, "procedure_concept_id")
    values <- c(values, if (is.null(procedure_concept_id)) " IS NULL" else if (is(procedure_concept_id, "subQuery")) paste0(" = (", as.character(procedure_concept_id), ")") else paste0(" = '", as.character(procedure_concept_id), "'"))
  }

  if (!missing(procedure_date)) {
    fields <- c(fields, "procedure_date")
    values <- c(values, if (is.null(procedure_date)) " IS NULL" else if (is(procedure_date, "subQuery")) paste0(" = (", as.character(procedure_date), ")") else paste0(" = '", as.character(procedure_date), "'"))
  }

  if (!missing(procedure_datetime)) {
    fields <- c(fields, "procedure_datetime")
    values <- c(values, if (is.null(procedure_datetime)) " IS NULL" else if (is(procedure_datetime, "subQuery")) paste0(" = (", as.character(procedure_datetime), ")") else paste0(" = '", as.character(procedure_datetime), "'"))
  }

  if (!missing(procedure_type_concept_id)) {
    fields <- c(fields, "procedure_type_concept_id")
    values <- c(values, if (is.null(procedure_type_concept_id)) " IS NULL" else if (is(procedure_type_concept_id, "subQuery")) paste0(" = (", as.character(procedure_type_concept_id), ")") else paste0(" = '", as.character(procedure_type_concept_id), "'"))
  }

  if (!missing(modifier_concept_id)) {
    fields <- c(fields, "modifier_concept_id")
    values <- c(values, if (is.null(modifier_concept_id)) " IS NULL" else if (is(modifier_concept_id, "subQuery")) paste0(" = (", as.character(modifier_concept_id), ")") else paste0(" = '", as.character(modifier_concept_id), "'"))
  }

  if (!missing(quantity)) {
    fields <- c(fields, "quantity")
    values <- c(values, if (is.null(quantity)) " IS NULL" else if (is(quantity, "subQuery")) paste0(" = (", as.character(quantity), ")") else paste0(" = '", as.character(quantity), "'"))
  }

  if (!missing(provider_id)) {
    fields <- c(fields, "provider_id")
    values <- c(values, if (is.null(provider_id)) " IS NULL" else if (is(provider_id, "subQuery")) paste0(" = (", as.character(provider_id), ")") else paste0(" = '", as.character(provider_id), "'"))
  }

  if (!missing(visit_occurrence_id)) {
    fields <- c(fields, "visit_occurrence_id")
    values <- c(values, if (is.null(visit_occurrence_id)) " IS NULL" else if (is(visit_occurrence_id, "subQuery")) paste0(" = (", as.character(visit_occurrence_id), ")") else paste0(" = '", as.character(visit_occurrence_id), "'"))
  }

  if (!missing(visit_detail_id)) {
    fields <- c(fields, "visit_detail_id")
    values <- c(values, if (is.null(visit_detail_id)) " IS NULL" else if (is(visit_detail_id, "subQuery")) paste0(" = (", as.character(visit_detail_id), ")") else paste0(" = '", as.character(visit_detail_id), "'"))
  }

  if (!missing(procedure_source_value)) {
    fields <- c(fields, "procedure_source_value")
    values <- c(values, if (is.null(procedure_source_value)) " IS NULL" else if (is(procedure_source_value, "subQuery")) paste0(" = (", as.character(procedure_source_value), ")") else paste0(" = '", as.character(procedure_source_value), "'"))
  }

  if (!missing(procedure_source_concept_id)) {
    fields <- c(fields, "procedure_source_concept_id")
    values <- c(values, if (is.null(procedure_source_concept_id)) " IS NULL" else if (is(procedure_source_concept_id, "subQuery")) paste0(" = (", as.character(procedure_source_concept_id), ")") else paste0(" = '", as.character(procedure_source_concept_id), "'"))
  }

  if (!missing(modifier_source_value)) {
    fields <- c(fields, "modifier_source_value")
    values <- c(values, if (is.null(modifier_source_value)) " IS NULL" else if (is(modifier_source_value, "subQuery")) paste0(" = (", as.character(modifier_source_value), ")") else paste0(" = '", as.character(modifier_source_value), "'"))
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 1, table = "procedure_occurrence", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_no_drug_exposure <- function(drug_exposure_id, person_id, drug_concept_id, drug_exposure_start_date, drug_exposure_start_datetime, drug_exposure_end_date, drug_exposure_end_datetime, verbatim_end_date, drug_type_concept_id, stop_reason, refills, quantity, days_supply, sig, route_concept_id, lot_number, provider_id, visit_occurrence_id, visit_detail_id, drug_source_value, drug_source_concept_id, route_source_value, dose_unit_source_value) {
  fields <- c()
  values <- c()
  if (!missing(drug_exposure_id)) {
    fields <- c(fields, "drug_exposure_id")
    values <- c(values, if (is.null(drug_exposure_id)) " IS NULL" else if (is(drug_exposure_id, "subQuery")) paste0(" = (", as.character(drug_exposure_id), ")") else paste0(" = '", as.character(drug_exposure_id), "'"))
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
  }

  if (!missing(drug_concept_id)) {
    fields <- c(fields, "drug_concept_id")
    values <- c(values, if (is.null(drug_concept_id)) " IS NULL" else if (is(drug_concept_id, "subQuery")) paste0(" = (", as.character(drug_concept_id), ")") else paste0(" = '", as.character(drug_concept_id), "'"))
  }

  if (!missing(drug_exposure_start_date)) {
    fields <- c(fields, "drug_exposure_start_date")
    values <- c(values, if (is.null(drug_exposure_start_date)) " IS NULL" else if (is(drug_exposure_start_date, "subQuery")) paste0(" = (", as.character(drug_exposure_start_date), ")") else paste0(" = '", as.character(drug_exposure_start_date), "'"))
  }

  if (!missing(drug_exposure_start_datetime)) {
    fields <- c(fields, "drug_exposure_start_datetime")
    values <- c(values, if (is.null(drug_exposure_start_datetime)) " IS NULL" else if (is(drug_exposure_start_datetime, "subQuery")) paste0(" = (", as.character(drug_exposure_start_datetime), ")") else paste0(" = '", as.character(drug_exposure_start_datetime), "'"))
  }

  if (!missing(drug_exposure_end_date)) {
    fields <- c(fields, "drug_exposure_end_date")
    values <- c(values, if (is.null(drug_exposure_end_date)) " IS NULL" else if (is(drug_exposure_end_date, "subQuery")) paste0(" = (", as.character(drug_exposure_end_date), ")") else paste0(" = '", as.character(drug_exposure_end_date), "'"))
  }

  if (!missing(drug_exposure_end_datetime)) {
    fields <- c(fields, "drug_exposure_end_datetime")
    values <- c(values, if (is.null(drug_exposure_end_datetime)) " IS NULL" else if (is(drug_exposure_end_datetime, "subQuery")) paste0(" = (", as.character(drug_exposure_end_datetime), ")") else paste0(" = '", as.character(drug_exposure_end_datetime), "'"))
  }

  if (!missing(verbatim_end_date)) {
    fields <- c(fields, "verbatim_end_date")
    values <- c(values, if (is.null(verbatim_end_date)) " IS NULL" else if (is(verbatim_end_date, "subQuery")) paste0(" = (", as.character(verbatim_end_date), ")") else paste0(" = '", as.character(verbatim_end_date), "'"))
  }

  if (!missing(drug_type_concept_id)) {
    fields <- c(fields, "drug_type_concept_id")
    values <- c(values, if (is.null(drug_type_concept_id)) " IS NULL" else if (is(drug_type_concept_id, "subQuery")) paste0(" = (", as.character(drug_type_concept_id), ")") else paste0(" = '", as.character(drug_type_concept_id), "'"))
  }

  if (!missing(stop_reason)) {
    fields <- c(fields, "stop_reason")
    values <- c(values, if (is.null(stop_reason)) " IS NULL" else if (is(stop_reason, "subQuery")) paste0(" = (", as.character(stop_reason), ")") else paste0(" = '", as.character(stop_reason), "'"))
  }

  if (!missing(refills)) {
    fields <- c(fields, "refills")
    values <- c(values, if (is.null(refills)) " IS NULL" else if (is(refills, "subQuery")) paste0(" = (", as.character(refills), ")") else paste0(" = '", as.character(refills), "'"))
  }

  if (!missing(quantity)) {
    fields <- c(fields, "quantity")
    values <- c(values, if (is.null(quantity)) " IS NULL" else if (is(quantity, "subQuery")) paste0(" = (", as.character(quantity), ")") else paste0(" = '", as.character(quantity), "'"))
  }

  if (!missing(days_supply)) {
    fields <- c(fields, "days_supply")
    values <- c(values, if (is.null(days_supply)) " IS NULL" else if (is(days_supply, "subQuery")) paste0(" = (", as.character(days_supply), ")") else paste0(" = '", as.character(days_supply), "'"))
  }

  if (!missing(sig)) {
    fields <- c(fields, "sig")
    values <- c(values, if (is.null(sig)) " IS NULL" else if (is(sig, "subQuery")) paste0(" = (", as.character(sig), ")") else paste0(" = '", as.character(sig), "'"))
  }

  if (!missing(route_concept_id)) {
    fields <- c(fields, "route_concept_id")
    values <- c(values, if (is.null(route_concept_id)) " IS NULL" else if (is(route_concept_id, "subQuery")) paste0(" = (", as.character(route_concept_id), ")") else paste0(" = '", as.character(route_concept_id), "'"))
  }

  if (!missing(lot_number)) {
    fields <- c(fields, "lot_number")
    values <- c(values, if (is.null(lot_number)) " IS NULL" else if (is(lot_number, "subQuery")) paste0(" = (", as.character(lot_number), ")") else paste0(" = '", as.character(lot_number), "'"))
  }

  if (!missing(provider_id)) {
    fields <- c(fields, "provider_id")
    values <- c(values, if (is.null(provider_id)) " IS NULL" else if (is(provider_id, "subQuery")) paste0(" = (", as.character(provider_id), ")") else paste0(" = '", as.character(provider_id), "'"))
  }

  if (!missing(visit_occurrence_id)) {
    fields <- c(fields, "visit_occurrence_id")
    values <- c(values, if (is.null(visit_occurrence_id)) " IS NULL" else if (is(visit_occurrence_id, "subQuery")) paste0(" = (", as.character(visit_occurrence_id), ")") else paste0(" = '", as.character(visit_occurrence_id), "'"))
  }

  if (!missing(visit_detail_id)) {
    fields <- c(fields, "visit_detail_id")
    values <- c(values, if (is.null(visit_detail_id)) " IS NULL" else if (is(visit_detail_id, "subQuery")) paste0(" = (", as.character(visit_detail_id), ")") else paste0(" = '", as.character(visit_detail_id), "'"))
  }

  if (!missing(drug_source_value)) {
    fields <- c(fields, "drug_source_value")
    values <- c(values, if (is.null(drug_source_value)) " IS NULL" else if (is(drug_source_value, "subQuery")) paste0(" = (", as.character(drug_source_value), ")") else paste0(" = '", as.character(drug_source_value), "'"))
  }

  if (!missing(drug_source_concept_id)) {
    fields <- c(fields, "drug_source_concept_id")
    values <- c(values, if (is.null(drug_source_concept_id)) " IS NULL" else if (is(drug_source_concept_id, "subQuery")) paste0(" = (", as.character(drug_source_concept_id), ")") else paste0(" = '", as.character(drug_source_concept_id), "'"))
  }

  if (!missing(route_source_value)) {
    fields <- c(fields, "route_source_value")
    values <- c(values, if (is.null(route_source_value)) " IS NULL" else if (is(route_source_value, "subQuery")) paste0(" = (", as.character(route_source_value), ")") else paste0(" = '", as.character(route_source_value), "'"))
  }

  if (!missing(dose_unit_source_value)) {
    fields <- c(fields, "dose_unit_source_value")
    values <- c(values, if (is.null(dose_unit_source_value)) " IS NULL" else if (is(dose_unit_source_value, "subQuery")) paste0(" = (", as.character(dose_unit_source_value), ")") else paste0(" = '", as.character(dose_unit_source_value), "'"))
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 1, table = "drug_exposure", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_no_device_exposure <- function(device_exposure_id, person_id, device_concept_id, device_exposure_start_date, device_exposure_start_datetime, device_exposure_end_date, device_exposure_end_datetime, device_type_concept_id, unique_device_id, quantity, provider_id, visit_occurrence_id, visit_detail_id, device_source_value, device_source_concept_id) {
  fields <- c()
  values <- c()
  if (!missing(device_exposure_id)) {
    fields <- c(fields, "device_exposure_id")
    values <- c(values, if (is.null(device_exposure_id)) " IS NULL" else if (is(device_exposure_id, "subQuery")) paste0(" = (", as.character(device_exposure_id), ")") else paste0(" = '", as.character(device_exposure_id), "'"))
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
  }

  if (!missing(device_concept_id)) {
    fields <- c(fields, "device_concept_id")
    values <- c(values, if (is.null(device_concept_id)) " IS NULL" else if (is(device_concept_id, "subQuery")) paste0(" = (", as.character(device_concept_id), ")") else paste0(" = '", as.character(device_concept_id), "'"))
  }

  if (!missing(device_exposure_start_date)) {
    fields <- c(fields, "device_exposure_start_date")
    values <- c(values, if (is.null(device_exposure_start_date)) " IS NULL" else if (is(device_exposure_start_date, "subQuery")) paste0(" = (", as.character(device_exposure_start_date), ")") else paste0(" = '", as.character(device_exposure_start_date), "'"))
  }

  if (!missing(device_exposure_start_datetime)) {
    fields <- c(fields, "device_exposure_start_datetime")
    values <- c(values, if (is.null(device_exposure_start_datetime)) " IS NULL" else if (is(device_exposure_start_datetime, "subQuery")) paste0(" = (", as.character(device_exposure_start_datetime), ")") else paste0(" = '", as.character(device_exposure_start_datetime), "'"))
  }

  if (!missing(device_exposure_end_date)) {
    fields <- c(fields, "device_exposure_end_date")
    values <- c(values, if (is.null(device_exposure_end_date)) " IS NULL" else if (is(device_exposure_end_date, "subQuery")) paste0(" = (", as.character(device_exposure_end_date), ")") else paste0(" = '", as.character(device_exposure_end_date), "'"))
  }

  if (!missing(device_exposure_end_datetime)) {
    fields <- c(fields, "device_exposure_end_datetime")
    values <- c(values, if (is.null(device_exposure_end_datetime)) " IS NULL" else if (is(device_exposure_end_datetime, "subQuery")) paste0(" = (", as.character(device_exposure_end_datetime), ")") else paste0(" = '", as.character(device_exposure_end_datetime), "'"))
  }

  if (!missing(device_type_concept_id)) {
    fields <- c(fields, "device_type_concept_id")
    values <- c(values, if (is.null(device_type_concept_id)) " IS NULL" else if (is(device_type_concept_id, "subQuery")) paste0(" = (", as.character(device_type_concept_id), ")") else paste0(" = '", as.character(device_type_concept_id), "'"))
  }

  if (!missing(unique_device_id)) {
    fields <- c(fields, "unique_device_id")
    values <- c(values, if (is.null(unique_device_id)) " IS NULL" else if (is(unique_device_id, "subQuery")) paste0(" = (", as.character(unique_device_id), ")") else paste0(" = '", as.character(unique_device_id), "'"))
  }

  if (!missing(quantity)) {
    fields <- c(fields, "quantity")
    values <- c(values, if (is.null(quantity)) " IS NULL" else if (is(quantity, "subQuery")) paste0(" = (", as.character(quantity), ")") else paste0(" = '", as.character(quantity), "'"))
  }

  if (!missing(provider_id)) {
    fields <- c(fields, "provider_id")
    values <- c(values, if (is.null(provider_id)) " IS NULL" else if (is(provider_id, "subQuery")) paste0(" = (", as.character(provider_id), ")") else paste0(" = '", as.character(provider_id), "'"))
  }

  if (!missing(visit_occurrence_id)) {
    fields <- c(fields, "visit_occurrence_id")
    values <- c(values, if (is.null(visit_occurrence_id)) " IS NULL" else if (is(visit_occurrence_id, "subQuery")) paste0(" = (", as.character(visit_occurrence_id), ")") else paste0(" = '", as.character(visit_occurrence_id), "'"))
  }

  if (!missing(visit_detail_id)) {
    fields <- c(fields, "visit_detail_id")
    values <- c(values, if (is.null(visit_detail_id)) " IS NULL" else if (is(visit_detail_id, "subQuery")) paste0(" = (", as.character(visit_detail_id), ")") else paste0(" = '", as.character(visit_detail_id), "'"))
  }

  if (!missing(device_source_value)) {
    fields <- c(fields, "device_source_value")
    values <- c(values, if (is.null(device_source_value)) " IS NULL" else if (is(device_source_value, "subQuery")) paste0(" = (", as.character(device_source_value), ")") else paste0(" = '", as.character(device_source_value), "'"))
  }

  if (!missing(device_source_concept_id)) {
    fields <- c(fields, "device_source_concept_id")
    values <- c(values, if (is.null(device_source_concept_id)) " IS NULL" else if (is(device_source_concept_id, "subQuery")) paste0(" = (", as.character(device_source_concept_id), ")") else paste0(" = '", as.character(device_source_concept_id), "'"))
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 1, table = "device_exposure", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_no_measurement <- function(measurement_id, person_id, measurement_concept_id, measurement_date, measurement_datetime, measurement_time, measurement_type_concept_id, operator_concept_id, value_as_number, value_as_concept_id, unit_concept_id, range_low, range_high, provider_id, visit_occurrence_id, visit_detail_id, measurement_source_value, measurement_source_concept_id, unit_source_value, value_source_value) {
  fields <- c()
  values <- c()
  if (!missing(measurement_id)) {
    fields <- c(fields, "measurement_id")
    values <- c(values, if (is.null(measurement_id)) " IS NULL" else if (is(measurement_id, "subQuery")) paste0(" = (", as.character(measurement_id), ")") else paste0(" = '", as.character(measurement_id), "'"))
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
  }

  if (!missing(measurement_concept_id)) {
    fields <- c(fields, "measurement_concept_id")
    values <- c(values, if (is.null(measurement_concept_id)) " IS NULL" else if (is(measurement_concept_id, "subQuery")) paste0(" = (", as.character(measurement_concept_id), ")") else paste0(" = '", as.character(measurement_concept_id), "'"))
  }

  if (!missing(measurement_date)) {
    fields <- c(fields, "measurement_date")
    values <- c(values, if (is.null(measurement_date)) " IS NULL" else if (is(measurement_date, "subQuery")) paste0(" = (", as.character(measurement_date), ")") else paste0(" = '", as.character(measurement_date), "'"))
  }

  if (!missing(measurement_datetime)) {
    fields <- c(fields, "measurement_datetime")
    values <- c(values, if (is.null(measurement_datetime)) " IS NULL" else if (is(measurement_datetime, "subQuery")) paste0(" = (", as.character(measurement_datetime), ")") else paste0(" = '", as.character(measurement_datetime), "'"))
  }

  if (!missing(measurement_time)) {
    fields <- c(fields, "measurement_time")
    values <- c(values, if (is.null(measurement_time)) " IS NULL" else if (is(measurement_time, "subQuery")) paste0(" = (", as.character(measurement_time), ")") else paste0(" = '", as.character(measurement_time), "'"))
  }

  if (!missing(measurement_type_concept_id)) {
    fields <- c(fields, "measurement_type_concept_id")
    values <- c(values, if (is.null(measurement_type_concept_id)) " IS NULL" else if (is(measurement_type_concept_id, "subQuery")) paste0(" = (", as.character(measurement_type_concept_id), ")") else paste0(" = '", as.character(measurement_type_concept_id), "'"))
  }

  if (!missing(operator_concept_id)) {
    fields <- c(fields, "operator_concept_id")
    values <- c(values, if (is.null(operator_concept_id)) " IS NULL" else if (is(operator_concept_id, "subQuery")) paste0(" = (", as.character(operator_concept_id), ")") else paste0(" = '", as.character(operator_concept_id), "'"))
  }

  if (!missing(value_as_number)) {
    fields <- c(fields, "value_as_number")
    values <- c(values, if (is.null(value_as_number)) " IS NULL" else if (is(value_as_number, "subQuery")) paste0(" = (", as.character(value_as_number), ")") else paste0(" = '", as.character(value_as_number), "'"))
  }

  if (!missing(value_as_concept_id)) {
    fields <- c(fields, "value_as_concept_id")
    values <- c(values, if (is.null(value_as_concept_id)) " IS NULL" else if (is(value_as_concept_id, "subQuery")) paste0(" = (", as.character(value_as_concept_id), ")") else paste0(" = '", as.character(value_as_concept_id), "'"))
  }

  if (!missing(unit_concept_id)) {
    fields <- c(fields, "unit_concept_id")
    values <- c(values, if (is.null(unit_concept_id)) " IS NULL" else if (is(unit_concept_id, "subQuery")) paste0(" = (", as.character(unit_concept_id), ")") else paste0(" = '", as.character(unit_concept_id), "'"))
  }

  if (!missing(range_low)) {
    fields <- c(fields, "range_low")
    values <- c(values, if (is.null(range_low)) " IS NULL" else if (is(range_low, "subQuery")) paste0(" = (", as.character(range_low), ")") else paste0(" = '", as.character(range_low), "'"))
  }

  if (!missing(range_high)) {
    fields <- c(fields, "range_high")
    values <- c(values, if (is.null(range_high)) " IS NULL" else if (is(range_high, "subQuery")) paste0(" = (", as.character(range_high), ")") else paste0(" = '", as.character(range_high), "'"))
  }

  if (!missing(provider_id)) {
    fields <- c(fields, "provider_id")
    values <- c(values, if (is.null(provider_id)) " IS NULL" else if (is(provider_id, "subQuery")) paste0(" = (", as.character(provider_id), ")") else paste0(" = '", as.character(provider_id), "'"))
  }

  if (!missing(visit_occurrence_id)) {
    fields <- c(fields, "visit_occurrence_id")
    values <- c(values, if (is.null(visit_occurrence_id)) " IS NULL" else if (is(visit_occurrence_id, "subQuery")) paste0(" = (", as.character(visit_occurrence_id), ")") else paste0(" = '", as.character(visit_occurrence_id), "'"))
  }

  if (!missing(visit_detail_id)) {
    fields <- c(fields, "visit_detail_id")
    values <- c(values, if (is.null(visit_detail_id)) " IS NULL" else if (is(visit_detail_id, "subQuery")) paste0(" = (", as.character(visit_detail_id), ")") else paste0(" = '", as.character(visit_detail_id), "'"))
  }

  if (!missing(measurement_source_value)) {
    fields <- c(fields, "measurement_source_value")
    values <- c(values, if (is.null(measurement_source_value)) " IS NULL" else if (is(measurement_source_value, "subQuery")) paste0(" = (", as.character(measurement_source_value), ")") else paste0(" = '", as.character(measurement_source_value), "'"))
  }

  if (!missing(measurement_source_concept_id)) {
    fields <- c(fields, "measurement_source_concept_id")
    values <- c(values, if (is.null(measurement_source_concept_id)) " IS NULL" else if (is(measurement_source_concept_id, "subQuery")) paste0(" = (", as.character(measurement_source_concept_id), ")") else paste0(" = '", as.character(measurement_source_concept_id), "'"))
  }

  if (!missing(unit_source_value)) {
    fields <- c(fields, "unit_source_value")
    values <- c(values, if (is.null(unit_source_value)) " IS NULL" else if (is(unit_source_value, "subQuery")) paste0(" = (", as.character(unit_source_value), ")") else paste0(" = '", as.character(unit_source_value), "'"))
  }

  if (!missing(value_source_value)) {
    fields <- c(fields, "value_source_value")
    values <- c(values, if (is.null(value_source_value)) " IS NULL" else if (is(value_source_value, "subQuery")) paste0(" = (", as.character(value_source_value), ")") else paste0(" = '", as.character(value_source_value), "'"))
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 1, table = "measurement", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_no_observation <- function(observation_id, person_id, observation_concept_id, observation_date, observation_datetime, observation_type_concept_id, value_as_number, value_as_string, value_as_concept_id, qualifier_concept_id, unit_concept_id, provider_id, visit_occurrence_id, visit_detail_id, observation_source_value, observation_source_concept_id, unit_source_value, qualifier_source_value, observation_event_id, obs_event_field_concept_id, value_as_datetime) {
  fields <- c()
  values <- c()
  if (!missing(observation_id)) {
    fields <- c(fields, "observation_id")
    values <- c(values, if (is.null(observation_id)) " IS NULL" else if (is(observation_id, "subQuery")) paste0(" = (", as.character(observation_id), ")") else paste0(" = '", as.character(observation_id), "'"))
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
  }

  if (!missing(observation_concept_id)) {
    fields <- c(fields, "observation_concept_id")
    values <- c(values, if (is.null(observation_concept_id)) " IS NULL" else if (is(observation_concept_id, "subQuery")) paste0(" = (", as.character(observation_concept_id), ")") else paste0(" = '", as.character(observation_concept_id), "'"))
  }

  if (!missing(observation_date)) {
    fields <- c(fields, "observation_date")
    values <- c(values, if (is.null(observation_date)) " IS NULL" else if (is(observation_date, "subQuery")) paste0(" = (", as.character(observation_date), ")") else paste0(" = '", as.character(observation_date), "'"))
  }

  if (!missing(observation_datetime)) {
    fields <- c(fields, "observation_datetime")
    values <- c(values, if (is.null(observation_datetime)) " IS NULL" else if (is(observation_datetime, "subQuery")) paste0(" = (", as.character(observation_datetime), ")") else paste0(" = '", as.character(observation_datetime), "'"))
  }

  if (!missing(observation_type_concept_id)) {
    fields <- c(fields, "observation_type_concept_id")
    values <- c(values, if (is.null(observation_type_concept_id)) " IS NULL" else if (is(observation_type_concept_id, "subQuery")) paste0(" = (", as.character(observation_type_concept_id), ")") else paste0(" = '", as.character(observation_type_concept_id), "'"))
  }

  if (!missing(value_as_number)) {
    fields <- c(fields, "value_as_number")
    values <- c(values, if (is.null(value_as_number)) " IS NULL" else if (is(value_as_number, "subQuery")) paste0(" = (", as.character(value_as_number), ")") else paste0(" = '", as.character(value_as_number), "'"))
  }

  if (!missing(value_as_string)) {
    fields <- c(fields, "value_as_string")
    values <- c(values, if (is.null(value_as_string)) " IS NULL" else if (is(value_as_string, "subQuery")) paste0(" = (", as.character(value_as_string), ")") else paste0(" = '", as.character(value_as_string), "'"))
  }

  if (!missing(value_as_concept_id)) {
    fields <- c(fields, "value_as_concept_id")
    values <- c(values, if (is.null(value_as_concept_id)) " IS NULL" else if (is(value_as_concept_id, "subQuery")) paste0(" = (", as.character(value_as_concept_id), ")") else paste0(" = '", as.character(value_as_concept_id), "'"))
  }

  if (!missing(qualifier_concept_id)) {
    fields <- c(fields, "qualifier_concept_id")
    values <- c(values, if (is.null(qualifier_concept_id)) " IS NULL" else if (is(qualifier_concept_id, "subQuery")) paste0(" = (", as.character(qualifier_concept_id), ")") else paste0(" = '", as.character(qualifier_concept_id), "'"))
  }

  if (!missing(unit_concept_id)) {
    fields <- c(fields, "unit_concept_id")
    values <- c(values, if (is.null(unit_concept_id)) " IS NULL" else if (is(unit_concept_id, "subQuery")) paste0(" = (", as.character(unit_concept_id), ")") else paste0(" = '", as.character(unit_concept_id), "'"))
  }

  if (!missing(provider_id)) {
    fields <- c(fields, "provider_id")
    values <- c(values, if (is.null(provider_id)) " IS NULL" else if (is(provider_id, "subQuery")) paste0(" = (", as.character(provider_id), ")") else paste0(" = '", as.character(provider_id), "'"))
  }

  if (!missing(visit_occurrence_id)) {
    fields <- c(fields, "visit_occurrence_id")
    values <- c(values, if (is.null(visit_occurrence_id)) " IS NULL" else if (is(visit_occurrence_id, "subQuery")) paste0(" = (", as.character(visit_occurrence_id), ")") else paste0(" = '", as.character(visit_occurrence_id), "'"))
  }

  if (!missing(visit_detail_id)) {
    fields <- c(fields, "visit_detail_id")
    values <- c(values, if (is.null(visit_detail_id)) " IS NULL" else if (is(visit_detail_id, "subQuery")) paste0(" = (", as.character(visit_detail_id), ")") else paste0(" = '", as.character(visit_detail_id), "'"))
  }

  if (!missing(observation_source_value)) {
    fields <- c(fields, "observation_source_value")
    values <- c(values, if (is.null(observation_source_value)) " IS NULL" else if (is(observation_source_value, "subQuery")) paste0(" = (", as.character(observation_source_value), ")") else paste0(" = '", as.character(observation_source_value), "'"))
  }

  if (!missing(observation_source_concept_id)) {
    fields <- c(fields, "observation_source_concept_id")
    values <- c(values, if (is.null(observation_source_concept_id)) " IS NULL" else if (is(observation_source_concept_id, "subQuery")) paste0(" = (", as.character(observation_source_concept_id), ")") else paste0(" = '", as.character(observation_source_concept_id), "'"))
  }

  if (!missing(unit_source_value)) {
    fields <- c(fields, "unit_source_value")
    values <- c(values, if (is.null(unit_source_value)) " IS NULL" else if (is(unit_source_value, "subQuery")) paste0(" = (", as.character(unit_source_value), ")") else paste0(" = '", as.character(unit_source_value), "'"))
  }

  if (!missing(qualifier_source_value)) {
    fields <- c(fields, "qualifier_source_value")
    values <- c(values, if (is.null(qualifier_source_value)) " IS NULL" else if (is(qualifier_source_value, "subQuery")) paste0(" = (", as.character(qualifier_source_value), ")") else paste0(" = '", as.character(qualifier_source_value), "'"))
  }

  if (!missing(observation_event_id)) {
    fields <- c(fields, "observation_event_id")
    values <- c(values, if (is.null(observation_event_id)) " IS NULL" else if (is(observation_event_id, "subQuery")) paste0(" = (", as.character(observation_event_id), ")") else paste0(" = '", as.character(observation_event_id), "'"))
  }

  if (!missing(obs_event_field_concept_id)) {
    fields <- c(fields, "obs_event_field_concept_id")
    values <- c(values, if (is.null(obs_event_field_concept_id)) " IS NULL" else if (is(obs_event_field_concept_id, "subQuery")) paste0(" = (", as.character(obs_event_field_concept_id), ")") else paste0(" = '", as.character(obs_event_field_concept_id), "'"))
  }

  if (!missing(value_as_datetime)) {
    fields <- c(fields, "value_as_datetime")
    values <- c(values, if (is.null(value_as_datetime)) " IS NULL" else if (is(value_as_datetime, "subQuery")) paste0(" = (", as.character(value_as_datetime), ")") else paste0(" = '", as.character(value_as_datetime), "'"))
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 1, table = "observation", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_no_specimen <- function(specimen_id, person_id, specimen_concept_id, specimen_type_concept_id, specimen_date, specimen_datetime, quantity, unit_concept_id, anatomic_site_concept_id, disease_status_concept_id, specimen_source_id, specimen_source_value, unit_source_value, anatomic_site_source_value, disease_status_source_value) {
  fields <- c()
  values <- c()
  if (!missing(specimen_id)) {
    fields <- c(fields, "specimen_id")
    values <- c(values, if (is.null(specimen_id)) " IS NULL" else if (is(specimen_id, "subQuery")) paste0(" = (", as.character(specimen_id), ")") else paste0(" = '", as.character(specimen_id), "'"))
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
  }

  if (!missing(specimen_concept_id)) {
    fields <- c(fields, "specimen_concept_id")
    values <- c(values, if (is.null(specimen_concept_id)) " IS NULL" else if (is(specimen_concept_id, "subQuery")) paste0(" = (", as.character(specimen_concept_id), ")") else paste0(" = '", as.character(specimen_concept_id), "'"))
  }

  if (!missing(specimen_type_concept_id)) {
    fields <- c(fields, "specimen_type_concept_id")
    values <- c(values, if (is.null(specimen_type_concept_id)) " IS NULL" else if (is(specimen_type_concept_id, "subQuery")) paste0(" = (", as.character(specimen_type_concept_id), ")") else paste0(" = '", as.character(specimen_type_concept_id), "'"))
  }

  if (!missing(specimen_date)) {
    fields <- c(fields, "specimen_date")
    values <- c(values, if (is.null(specimen_date)) " IS NULL" else if (is(specimen_date, "subQuery")) paste0(" = (", as.character(specimen_date), ")") else paste0(" = '", as.character(specimen_date), "'"))
  }

  if (!missing(specimen_datetime)) {
    fields <- c(fields, "specimen_datetime")
    values <- c(values, if (is.null(specimen_datetime)) " IS NULL" else if (is(specimen_datetime, "subQuery")) paste0(" = (", as.character(specimen_datetime), ")") else paste0(" = '", as.character(specimen_datetime), "'"))
  }

  if (!missing(quantity)) {
    fields <- c(fields, "quantity")
    values <- c(values, if (is.null(quantity)) " IS NULL" else if (is(quantity, "subQuery")) paste0(" = (", as.character(quantity), ")") else paste0(" = '", as.character(quantity), "'"))
  }

  if (!missing(unit_concept_id)) {
    fields <- c(fields, "unit_concept_id")
    values <- c(values, if (is.null(unit_concept_id)) " IS NULL" else if (is(unit_concept_id, "subQuery")) paste0(" = (", as.character(unit_concept_id), ")") else paste0(" = '", as.character(unit_concept_id), "'"))
  }

  if (!missing(anatomic_site_concept_id)) {
    fields <- c(fields, "anatomic_site_concept_id")
    values <- c(values, if (is.null(anatomic_site_concept_id)) " IS NULL" else if (is(anatomic_site_concept_id, "subQuery")) paste0(" = (", as.character(anatomic_site_concept_id), ")") else paste0(" = '", as.character(anatomic_site_concept_id), "'"))
  }

  if (!missing(disease_status_concept_id)) {
    fields <- c(fields, "disease_status_concept_id")
    values <- c(values, if (is.null(disease_status_concept_id)) " IS NULL" else if (is(disease_status_concept_id, "subQuery")) paste0(" = (", as.character(disease_status_concept_id), ")") else paste0(" = '", as.character(disease_status_concept_id), "'"))
  }

  if (!missing(specimen_source_id)) {
    fields <- c(fields, "specimen_source_id")
    values <- c(values, if (is.null(specimen_source_id)) " IS NULL" else if (is(specimen_source_id, "subQuery")) paste0(" = (", as.character(specimen_source_id), ")") else paste0(" = '", as.character(specimen_source_id), "'"))
  }

  if (!missing(specimen_source_value)) {
    fields <- c(fields, "specimen_source_value")
    values <- c(values, if (is.null(specimen_source_value)) " IS NULL" else if (is(specimen_source_value, "subQuery")) paste0(" = (", as.character(specimen_source_value), ")") else paste0(" = '", as.character(specimen_source_value), "'"))
  }

  if (!missing(unit_source_value)) {
    fields <- c(fields, "unit_source_value")
    values <- c(values, if (is.null(unit_source_value)) " IS NULL" else if (is(unit_source_value, "subQuery")) paste0(" = (", as.character(unit_source_value), ")") else paste0(" = '", as.character(unit_source_value), "'"))
  }

  if (!missing(anatomic_site_source_value)) {
    fields <- c(fields, "anatomic_site_source_value")
    values <- c(values, if (is.null(anatomic_site_source_value)) " IS NULL" else if (is(anatomic_site_source_value, "subQuery")) paste0(" = (", as.character(anatomic_site_source_value), ")") else paste0(" = '", as.character(anatomic_site_source_value), "'"))
  }

  if (!missing(disease_status_source_value)) {
    fields <- c(fields, "disease_status_source_value")
    values <- c(values, if (is.null(disease_status_source_value)) " IS NULL" else if (is(disease_status_source_value, "subQuery")) paste0(" = (", as.character(disease_status_source_value), ")") else paste0(" = '", as.character(disease_status_source_value), "'"))
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 1, table = "specimen", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_no_note <- function(note_id, person_id, note_event_id, note_event_field_concept_id, note_date, note_datetime, note_type_concept_id, note_class_concept_id, note_title, note_text, encoding_concept_id, language_concept_id, provider_id, visit_occurrence_id, visit_detail_id, note_source_value) {
  fields <- c()
  values <- c()
  if (!missing(note_id)) {
    fields <- c(fields, "note_id")
    values <- c(values, if (is.null(note_id)) " IS NULL" else if (is(note_id, "subQuery")) paste0(" = (", as.character(note_id), ")") else paste0(" = '", as.character(note_id), "'"))
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
  }

  if (!missing(note_event_id)) {
    fields <- c(fields, "note_event_id")
    values <- c(values, if (is.null(note_event_id)) " IS NULL" else if (is(note_event_id, "subQuery")) paste0(" = (", as.character(note_event_id), ")") else paste0(" = '", as.character(note_event_id), "'"))
  }

  if (!missing(note_event_field_concept_id)) {
    fields <- c(fields, "note_event_field_concept_id")
    values <- c(values, if (is.null(note_event_field_concept_id)) " IS NULL" else if (is(note_event_field_concept_id, "subQuery")) paste0(" = (", as.character(note_event_field_concept_id), ")") else paste0(" = '", as.character(note_event_field_concept_id), "'"))
  }

  if (!missing(note_date)) {
    fields <- c(fields, "note_date")
    values <- c(values, if (is.null(note_date)) " IS NULL" else if (is(note_date, "subQuery")) paste0(" = (", as.character(note_date), ")") else paste0(" = '", as.character(note_date), "'"))
  }

  if (!missing(note_datetime)) {
    fields <- c(fields, "note_datetime")
    values <- c(values, if (is.null(note_datetime)) " IS NULL" else if (is(note_datetime, "subQuery")) paste0(" = (", as.character(note_datetime), ")") else paste0(" = '", as.character(note_datetime), "'"))
  }

  if (!missing(note_type_concept_id)) {
    fields <- c(fields, "note_type_concept_id")
    values <- c(values, if (is.null(note_type_concept_id)) " IS NULL" else if (is(note_type_concept_id, "subQuery")) paste0(" = (", as.character(note_type_concept_id), ")") else paste0(" = '", as.character(note_type_concept_id), "'"))
  }

  if (!missing(note_class_concept_id)) {
    fields <- c(fields, "note_class_concept_id")
    values <- c(values, if (is.null(note_class_concept_id)) " IS NULL" else if (is(note_class_concept_id, "subQuery")) paste0(" = (", as.character(note_class_concept_id), ")") else paste0(" = '", as.character(note_class_concept_id), "'"))
  }

  if (!missing(note_title)) {
    fields <- c(fields, "note_title")
    values <- c(values, if (is.null(note_title)) " IS NULL" else if (is(note_title, "subQuery")) paste0(" = (", as.character(note_title), ")") else paste0(" = '", as.character(note_title), "'"))
  }

  if (!missing(note_text)) {
    fields <- c(fields, "note_text")
    values <- c(values, if (is.null(note_text)) " IS NULL" else if (is(note_text, "subQuery")) paste0(" = (", as.character(note_text), ")") else paste0(" = '", as.character(note_text), "'"))
  }

  if (!missing(encoding_concept_id)) {
    fields <- c(fields, "encoding_concept_id")
    values <- c(values, if (is.null(encoding_concept_id)) " IS NULL" else if (is(encoding_concept_id, "subQuery")) paste0(" = (", as.character(encoding_concept_id), ")") else paste0(" = '", as.character(encoding_concept_id), "'"))
  }

  if (!missing(language_concept_id)) {
    fields <- c(fields, "language_concept_id")
    values <- c(values, if (is.null(language_concept_id)) " IS NULL" else if (is(language_concept_id, "subQuery")) paste0(" = (", as.character(language_concept_id), ")") else paste0(" = '", as.character(language_concept_id), "'"))
  }

  if (!missing(provider_id)) {
    fields <- c(fields, "provider_id")
    values <- c(values, if (is.null(provider_id)) " IS NULL" else if (is(provider_id, "subQuery")) paste0(" = (", as.character(provider_id), ")") else paste0(" = '", as.character(provider_id), "'"))
  }

  if (!missing(visit_occurrence_id)) {
    fields <- c(fields, "visit_occurrence_id")
    values <- c(values, if (is.null(visit_occurrence_id)) " IS NULL" else if (is(visit_occurrence_id, "subQuery")) paste0(" = (", as.character(visit_occurrence_id), ")") else paste0(" = '", as.character(visit_occurrence_id), "'"))
  }

  if (!missing(visit_detail_id)) {
    fields <- c(fields, "visit_detail_id")
    values <- c(values, if (is.null(visit_detail_id)) " IS NULL" else if (is(visit_detail_id, "subQuery")) paste0(" = (", as.character(visit_detail_id), ")") else paste0(" = '", as.character(visit_detail_id), "'"))
  }

  if (!missing(note_source_value)) {
    fields <- c(fields, "note_source_value")
    values <- c(values, if (is.null(note_source_value)) " IS NULL" else if (is(note_source_value, "subQuery")) paste0(" = (", as.character(note_source_value), ")") else paste0(" = '", as.character(note_source_value), "'"))
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 1, table = "note", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_no_note_nlp <- function(note_nlp_id, note_id, section_concept_id, snippet, offset, lexical_variant, note_nlp_concept_id, note_nlp_source_concept_id, nlp_system, nlp_date, nlp_datetime, term_exists, term_temporal, term_modifiers) {
  fields <- c()
  values <- c()
  if (!missing(note_nlp_id)) {
    fields <- c(fields, "note_nlp_id")
    values <- c(values, if (is.null(note_nlp_id)) " IS NULL" else if (is(note_nlp_id, "subQuery")) paste0(" = (", as.character(note_nlp_id), ")") else paste0(" = '", as.character(note_nlp_id), "'"))
  }

  if (!missing(note_id)) {
    fields <- c(fields, "note_id")
    values <- c(values, if (is.null(note_id)) " IS NULL" else if (is(note_id, "subQuery")) paste0(" = (", as.character(note_id), ")") else paste0(" = '", as.character(note_id), "'"))
  }

  if (!missing(section_concept_id)) {
    fields <- c(fields, "section_concept_id")
    values <- c(values, if (is.null(section_concept_id)) " IS NULL" else if (is(section_concept_id, "subQuery")) paste0(" = (", as.character(section_concept_id), ")") else paste0(" = '", as.character(section_concept_id), "'"))
  }

  if (!missing(snippet)) {
    fields <- c(fields, "snippet")
    values <- c(values, if (is.null(snippet)) " IS NULL" else if (is(snippet, "subQuery")) paste0(" = (", as.character(snippet), ")") else paste0(" = '", as.character(snippet), "'"))
  }

  if (!missing(offset)) {
    fields <- c(fields, "offset")
    values <- c(values, if (is.null(offset)) " IS NULL" else if (is(offset, "subQuery")) paste0(" = (", as.character(offset), ")") else paste0(" = '", as.character(offset), "'"))
  }

  if (!missing(lexical_variant)) {
    fields <- c(fields, "lexical_variant")
    values <- c(values, if (is.null(lexical_variant)) " IS NULL" else if (is(lexical_variant, "subQuery")) paste0(" = (", as.character(lexical_variant), ")") else paste0(" = '", as.character(lexical_variant), "'"))
  }

  if (!missing(note_nlp_concept_id)) {
    fields <- c(fields, "note_nlp_concept_id")
    values <- c(values, if (is.null(note_nlp_concept_id)) " IS NULL" else if (is(note_nlp_concept_id, "subQuery")) paste0(" = (", as.character(note_nlp_concept_id), ")") else paste0(" = '", as.character(note_nlp_concept_id), "'"))
  }

  if (!missing(note_nlp_source_concept_id)) {
    fields <- c(fields, "note_nlp_source_concept_id")
    values <- c(values, if (is.null(note_nlp_source_concept_id)) " IS NULL" else if (is(note_nlp_source_concept_id, "subQuery")) paste0(" = (", as.character(note_nlp_source_concept_id), ")") else paste0(" = '", as.character(note_nlp_source_concept_id), "'"))
  }

  if (!missing(nlp_system)) {
    fields <- c(fields, "nlp_system")
    values <- c(values, if (is.null(nlp_system)) " IS NULL" else if (is(nlp_system, "subQuery")) paste0(" = (", as.character(nlp_system), ")") else paste0(" = '", as.character(nlp_system), "'"))
  }

  if (!missing(nlp_date)) {
    fields <- c(fields, "nlp_date")
    values <- c(values, if (is.null(nlp_date)) " IS NULL" else if (is(nlp_date, "subQuery")) paste0(" = (", as.character(nlp_date), ")") else paste0(" = '", as.character(nlp_date), "'"))
  }

  if (!missing(nlp_datetime)) {
    fields <- c(fields, "nlp_datetime")
    values <- c(values, if (is.null(nlp_datetime)) " IS NULL" else if (is(nlp_datetime, "subQuery")) paste0(" = (", as.character(nlp_datetime), ")") else paste0(" = '", as.character(nlp_datetime), "'"))
  }

  if (!missing(term_exists)) {
    fields <- c(fields, "term_exists")
    values <- c(values, if (is.null(term_exists)) " IS NULL" else if (is(term_exists, "subQuery")) paste0(" = (", as.character(term_exists), ")") else paste0(" = '", as.character(term_exists), "'"))
  }

  if (!missing(term_temporal)) {
    fields <- c(fields, "term_temporal")
    values <- c(values, if (is.null(term_temporal)) " IS NULL" else if (is(term_temporal, "subQuery")) paste0(" = (", as.character(term_temporal), ")") else paste0(" = '", as.character(term_temporal), "'"))
  }

  if (!missing(term_modifiers)) {
    fields <- c(fields, "term_modifiers")
    values <- c(values, if (is.null(term_modifiers)) " IS NULL" else if (is(term_modifiers, "subQuery")) paste0(" = (", as.character(term_modifiers), ")") else paste0(" = '", as.character(term_modifiers), "'"))
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 1, table = "note_nlp", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_no_survey_conduct <- function(survey_conduct_id, person_id, survey_concept_id, survey_start_date, survey_start_datetime, survey_end_date, survey_end_datetime, provider_id, assisted_concept_id, respondent_type_concept_id, timing_concept_id, collection_method_concept_id, assisted_source_value, respondent_type_source_value, timing_source_value, collection_method_source_value, survey_source_value, survey_source_concept_id, survey_source_identifier, validated_survey_concept_id, validated_survey_source_value, survey_version_number, visit_occurrence_id, response_visit_occurrence_id) {
  fields <- c()
  values <- c()
  if (!missing(survey_conduct_id)) {
    fields <- c(fields, "survey_conduct_id")
    values <- c(values, if (is.null(survey_conduct_id)) " IS NULL" else if (is(survey_conduct_id, "subQuery")) paste0(" = (", as.character(survey_conduct_id), ")") else paste0(" = '", as.character(survey_conduct_id), "'"))
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
  }

  if (!missing(survey_concept_id)) {
    fields <- c(fields, "survey_concept_id")
    values <- c(values, if (is.null(survey_concept_id)) " IS NULL" else if (is(survey_concept_id, "subQuery")) paste0(" = (", as.character(survey_concept_id), ")") else paste0(" = '", as.character(survey_concept_id), "'"))
  }

  if (!missing(survey_start_date)) {
    fields <- c(fields, "survey_start_date")
    values <- c(values, if (is.null(survey_start_date)) " IS NULL" else if (is(survey_start_date, "subQuery")) paste0(" = (", as.character(survey_start_date), ")") else paste0(" = '", as.character(survey_start_date), "'"))
  }

  if (!missing(survey_start_datetime)) {
    fields <- c(fields, "survey_start_datetime")
    values <- c(values, if (is.null(survey_start_datetime)) " IS NULL" else if (is(survey_start_datetime, "subQuery")) paste0(" = (", as.character(survey_start_datetime), ")") else paste0(" = '", as.character(survey_start_datetime), "'"))
  }

  if (!missing(survey_end_date)) {
    fields <- c(fields, "survey_end_date")
    values <- c(values, if (is.null(survey_end_date)) " IS NULL" else if (is(survey_end_date, "subQuery")) paste0(" = (", as.character(survey_end_date), ")") else paste0(" = '", as.character(survey_end_date), "'"))
  }

  if (!missing(survey_end_datetime)) {
    fields <- c(fields, "survey_end_datetime")
    values <- c(values, if (is.null(survey_end_datetime)) " IS NULL" else if (is(survey_end_datetime, "subQuery")) paste0(" = (", as.character(survey_end_datetime), ")") else paste0(" = '", as.character(survey_end_datetime), "'"))
  }

  if (!missing(provider_id)) {
    fields <- c(fields, "provider_id")
    values <- c(values, if (is.null(provider_id)) " IS NULL" else if (is(provider_id, "subQuery")) paste0(" = (", as.character(provider_id), ")") else paste0(" = '", as.character(provider_id), "'"))
  }

  if (!missing(assisted_concept_id)) {
    fields <- c(fields, "assisted_concept_id")
    values <- c(values, if (is.null(assisted_concept_id)) " IS NULL" else if (is(assisted_concept_id, "subQuery")) paste0(" = (", as.character(assisted_concept_id), ")") else paste0(" = '", as.character(assisted_concept_id), "'"))
  }

  if (!missing(respondent_type_concept_id)) {
    fields <- c(fields, "respondent_type_concept_id")
    values <- c(values, if (is.null(respondent_type_concept_id)) " IS NULL" else if (is(respondent_type_concept_id, "subQuery")) paste0(" = (", as.character(respondent_type_concept_id), ")") else paste0(" = '", as.character(respondent_type_concept_id), "'"))
  }

  if (!missing(timing_concept_id)) {
    fields <- c(fields, "timing_concept_id")
    values <- c(values, if (is.null(timing_concept_id)) " IS NULL" else if (is(timing_concept_id, "subQuery")) paste0(" = (", as.character(timing_concept_id), ")") else paste0(" = '", as.character(timing_concept_id), "'"))
  }

  if (!missing(collection_method_concept_id)) {
    fields <- c(fields, "collection_method_concept_id")
    values <- c(values, if (is.null(collection_method_concept_id)) " IS NULL" else if (is(collection_method_concept_id, "subQuery")) paste0(" = (", as.character(collection_method_concept_id), ")") else paste0(" = '", as.character(collection_method_concept_id), "'"))
  }

  if (!missing(assisted_source_value)) {
    fields <- c(fields, "assisted_source_value")
    values <- c(values, if (is.null(assisted_source_value)) " IS NULL" else if (is(assisted_source_value, "subQuery")) paste0(" = (", as.character(assisted_source_value), ")") else paste0(" = '", as.character(assisted_source_value), "'"))
  }

  if (!missing(respondent_type_source_value)) {
    fields <- c(fields, "respondent_type_source_value")
    values <- c(values, if (is.null(respondent_type_source_value)) " IS NULL" else if (is(respondent_type_source_value, "subQuery")) paste0(" = (", as.character(respondent_type_source_value), ")") else paste0(" = '", as.character(respondent_type_source_value), "'"))
  }

  if (!missing(timing_source_value)) {
    fields <- c(fields, "timing_source_value")
    values <- c(values, if (is.null(timing_source_value)) " IS NULL" else if (is(timing_source_value, "subQuery")) paste0(" = (", as.character(timing_source_value), ")") else paste0(" = '", as.character(timing_source_value), "'"))
  }

  if (!missing(collection_method_source_value)) {
    fields <- c(fields, "collection_method_source_value")
    values <- c(values, if (is.null(collection_method_source_value)) " IS NULL" else if (is(collection_method_source_value, "subQuery")) paste0(" = (", as.character(collection_method_source_value), ")") else paste0(" = '", as.character(collection_method_source_value), "'"))
  }

  if (!missing(survey_source_value)) {
    fields <- c(fields, "survey_source_value")
    values <- c(values, if (is.null(survey_source_value)) " IS NULL" else if (is(survey_source_value, "subQuery")) paste0(" = (", as.character(survey_source_value), ")") else paste0(" = '", as.character(survey_source_value), "'"))
  }

  if (!missing(survey_source_concept_id)) {
    fields <- c(fields, "survey_source_concept_id")
    values <- c(values, if (is.null(survey_source_concept_id)) " IS NULL" else if (is(survey_source_concept_id, "subQuery")) paste0(" = (", as.character(survey_source_concept_id), ")") else paste0(" = '", as.character(survey_source_concept_id), "'"))
  }

  if (!missing(survey_source_identifier)) {
    fields <- c(fields, "survey_source_identifier")
    values <- c(values, if (is.null(survey_source_identifier)) " IS NULL" else if (is(survey_source_identifier, "subQuery")) paste0(" = (", as.character(survey_source_identifier), ")") else paste0(" = '", as.character(survey_source_identifier), "'"))
  }

  if (!missing(validated_survey_concept_id)) {
    fields <- c(fields, "validated_survey_concept_id")
    values <- c(values, if (is.null(validated_survey_concept_id)) " IS NULL" else if (is(validated_survey_concept_id, "subQuery")) paste0(" = (", as.character(validated_survey_concept_id), ")") else paste0(" = '", as.character(validated_survey_concept_id), "'"))
  }

  if (!missing(validated_survey_source_value)) {
    fields <- c(fields, "validated_survey_source_value")
    values <- c(values, if (is.null(validated_survey_source_value)) " IS NULL" else if (is(validated_survey_source_value, "subQuery")) paste0(" = (", as.character(validated_survey_source_value), ")") else paste0(" = '", as.character(validated_survey_source_value), "'"))
  }

  if (!missing(survey_version_number)) {
    fields <- c(fields, "survey_version_number")
    values <- c(values, if (is.null(survey_version_number)) " IS NULL" else if (is(survey_version_number, "subQuery")) paste0(" = (", as.character(survey_version_number), ")") else paste0(" = '", as.character(survey_version_number), "'"))
  }

  if (!missing(visit_occurrence_id)) {
    fields <- c(fields, "visit_occurrence_id")
    values <- c(values, if (is.null(visit_occurrence_id)) " IS NULL" else if (is(visit_occurrence_id, "subQuery")) paste0(" = (", as.character(visit_occurrence_id), ")") else paste0(" = '", as.character(visit_occurrence_id), "'"))
  }

  if (!missing(response_visit_occurrence_id)) {
    fields <- c(fields, "response_visit_occurrence_id")
    values <- c(values, if (is.null(response_visit_occurrence_id)) " IS NULL" else if (is(response_visit_occurrence_id, "subQuery")) paste0(" = (", as.character(response_visit_occurrence_id), ")") else paste0(" = '", as.character(response_visit_occurrence_id), "'"))
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 1, table = "survey_conduct", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_no_cost <- function(cost_id, person_id, cost_event_id, cost_event_field_concept_id, cost_concept_id, cost_type_concept_id, cost_source_concept_id, cost_source_value, currency_concept_id, cost, incurred_date, billed_date, paid_date, revenue_code_concept_id, drg_concept_id, revenue_code_source_value, drg_source_value, payer_plan_period_id) {
  fields <- c()
  values <- c()
  if (!missing(cost_id)) {
    fields <- c(fields, "cost_id")
    values <- c(values, if (is.null(cost_id)) " IS NULL" else if (is(cost_id, "subQuery")) paste0(" = (", as.character(cost_id), ")") else paste0(" = '", as.character(cost_id), "'"))
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
  }

  if (!missing(cost_event_id)) {
    fields <- c(fields, "cost_event_id")
    values <- c(values, if (is.null(cost_event_id)) " IS NULL" else if (is(cost_event_id, "subQuery")) paste0(" = (", as.character(cost_event_id), ")") else paste0(" = '", as.character(cost_event_id), "'"))
  }

  if (!missing(cost_event_field_concept_id)) {
    fields <- c(fields, "cost_event_field_concept_id")
    values <- c(values, if (is.null(cost_event_field_concept_id)) " IS NULL" else if (is(cost_event_field_concept_id, "subQuery")) paste0(" = (", as.character(cost_event_field_concept_id), ")") else paste0(" = '", as.character(cost_event_field_concept_id), "'"))
  }

  if (!missing(cost_concept_id)) {
    fields <- c(fields, "cost_concept_id")
    values <- c(values, if (is.null(cost_concept_id)) " IS NULL" else if (is(cost_concept_id, "subQuery")) paste0(" = (", as.character(cost_concept_id), ")") else paste0(" = '", as.character(cost_concept_id), "'"))
  }

  if (!missing(cost_type_concept_id)) {
    fields <- c(fields, "cost_type_concept_id")
    values <- c(values, if (is.null(cost_type_concept_id)) " IS NULL" else if (is(cost_type_concept_id, "subQuery")) paste0(" = (", as.character(cost_type_concept_id), ")") else paste0(" = '", as.character(cost_type_concept_id), "'"))
  }

  if (!missing(cost_source_concept_id)) {
    fields <- c(fields, "cost_source_concept_id")
    values <- c(values, if (is.null(cost_source_concept_id)) " IS NULL" else if (is(cost_source_concept_id, "subQuery")) paste0(" = (", as.character(cost_source_concept_id), ")") else paste0(" = '", as.character(cost_source_concept_id), "'"))
  }

  if (!missing(cost_source_value)) {
    fields <- c(fields, "cost_source_value")
    values <- c(values, if (is.null(cost_source_value)) " IS NULL" else if (is(cost_source_value, "subQuery")) paste0(" = (", as.character(cost_source_value), ")") else paste0(" = '", as.character(cost_source_value), "'"))
  }

  if (!missing(currency_concept_id)) {
    fields <- c(fields, "currency_concept_id")
    values <- c(values, if (is.null(currency_concept_id)) " IS NULL" else if (is(currency_concept_id, "subQuery")) paste0(" = (", as.character(currency_concept_id), ")") else paste0(" = '", as.character(currency_concept_id), "'"))
  }

  if (!missing(cost)) {
    fields <- c(fields, "cost")
    values <- c(values, if (is.null(cost)) " IS NULL" else if (is(cost, "subQuery")) paste0(" = (", as.character(cost), ")") else paste0(" = '", as.character(cost), "'"))
  }

  if (!missing(incurred_date)) {
    fields <- c(fields, "incurred_date")
    values <- c(values, if (is.null(incurred_date)) " IS NULL" else if (is(incurred_date, "subQuery")) paste0(" = (", as.character(incurred_date), ")") else paste0(" = '", as.character(incurred_date), "'"))
  }

  if (!missing(billed_date)) {
    fields <- c(fields, "billed_date")
    values <- c(values, if (is.null(billed_date)) " IS NULL" else if (is(billed_date, "subQuery")) paste0(" = (", as.character(billed_date), ")") else paste0(" = '", as.character(billed_date), "'"))
  }

  if (!missing(paid_date)) {
    fields <- c(fields, "paid_date")
    values <- c(values, if (is.null(paid_date)) " IS NULL" else if (is(paid_date, "subQuery")) paste0(" = (", as.character(paid_date), ")") else paste0(" = '", as.character(paid_date), "'"))
  }

  if (!missing(revenue_code_concept_id)) {
    fields <- c(fields, "revenue_code_concept_id")
    values <- c(values, if (is.null(revenue_code_concept_id)) " IS NULL" else if (is(revenue_code_concept_id, "subQuery")) paste0(" = (", as.character(revenue_code_concept_id), ")") else paste0(" = '", as.character(revenue_code_concept_id), "'"))
  }

  if (!missing(drg_concept_id)) {
    fields <- c(fields, "drg_concept_id")
    values <- c(values, if (is.null(drg_concept_id)) " IS NULL" else if (is(drg_concept_id, "subQuery")) paste0(" = (", as.character(drg_concept_id), ")") else paste0(" = '", as.character(drg_concept_id), "'"))
  }

  if (!missing(revenue_code_source_value)) {
    fields <- c(fields, "revenue_code_source_value")
    values <- c(values, if (is.null(revenue_code_source_value)) " IS NULL" else if (is(revenue_code_source_value, "subQuery")) paste0(" = (", as.character(revenue_code_source_value), ")") else paste0(" = '", as.character(revenue_code_source_value), "'"))
  }

  if (!missing(drg_source_value)) {
    fields <- c(fields, "drg_source_value")
    values <- c(values, if (is.null(drg_source_value)) " IS NULL" else if (is(drg_source_value, "subQuery")) paste0(" = (", as.character(drg_source_value), ")") else paste0(" = '", as.character(drg_source_value), "'"))
  }

  if (!missing(payer_plan_period_id)) {
    fields <- c(fields, "payer_plan_period_id")
    values <- c(values, if (is.null(payer_plan_period_id)) " IS NULL" else if (is(payer_plan_period_id, "subQuery")) paste0(" = (", as.character(payer_plan_period_id), ")") else paste0(" = '", as.character(payer_plan_period_id), "'"))
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 1, table = "cost", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_no_payer_plan_period <- function(payer_plan_period_id, person_id, contract_person_id, payer_plan_period_start_date, payer_plan_period_end_date, payer_concept_id, payer_source_value, payer_source_concept_id, plan_concept_id, plan_source_value, plan_source_concept_id, contract_concept_id, contract_source_value, contract_source_concept_id, sponsor_concept_id, sponsor_source_value, sponsor_source_concept_id, family_source_value, stop_reason_concept_id, stop_reason_source_value, stop_reason_source_concept_id) {
  fields <- c()
  values <- c()
  if (!missing(payer_plan_period_id)) {
    fields <- c(fields, "payer_plan_period_id")
    values <- c(values, if (is.null(payer_plan_period_id)) " IS NULL" else if (is(payer_plan_period_id, "subQuery")) paste0(" = (", as.character(payer_plan_period_id), ")") else paste0(" = '", as.character(payer_plan_period_id), "'"))
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
  }

  if (!missing(contract_person_id)) {
    fields <- c(fields, "contract_person_id")
    values <- c(values, if (is.null(contract_person_id)) " IS NULL" else if (is(contract_person_id, "subQuery")) paste0(" = (", as.character(contract_person_id), ")") else paste0(" = '", as.character(contract_person_id), "'"))
  }

  if (!missing(payer_plan_period_start_date)) {
    fields <- c(fields, "payer_plan_period_start_date")
    values <- c(values, if (is.null(payer_plan_period_start_date)) " IS NULL" else if (is(payer_plan_period_start_date, "subQuery")) paste0(" = (", as.character(payer_plan_period_start_date), ")") else paste0(" = '", as.character(payer_plan_period_start_date), "'"))
  }

  if (!missing(payer_plan_period_end_date)) {
    fields <- c(fields, "payer_plan_period_end_date")
    values <- c(values, if (is.null(payer_plan_period_end_date)) " IS NULL" else if (is(payer_plan_period_end_date, "subQuery")) paste0(" = (", as.character(payer_plan_period_end_date), ")") else paste0(" = '", as.character(payer_plan_period_end_date), "'"))
  }

  if (!missing(payer_concept_id)) {
    fields <- c(fields, "payer_concept_id")
    values <- c(values, if (is.null(payer_concept_id)) " IS NULL" else if (is(payer_concept_id, "subQuery")) paste0(" = (", as.character(payer_concept_id), ")") else paste0(" = '", as.character(payer_concept_id), "'"))
  }

  if (!missing(payer_source_value)) {
    fields <- c(fields, "payer_source_value")
    values <- c(values, if (is.null(payer_source_value)) " IS NULL" else if (is(payer_source_value, "subQuery")) paste0(" = (", as.character(payer_source_value), ")") else paste0(" = '", as.character(payer_source_value), "'"))
  }

  if (!missing(payer_source_concept_id)) {
    fields <- c(fields, "payer_source_concept_id")
    values <- c(values, if (is.null(payer_source_concept_id)) " IS NULL" else if (is(payer_source_concept_id, "subQuery")) paste0(" = (", as.character(payer_source_concept_id), ")") else paste0(" = '", as.character(payer_source_concept_id), "'"))
  }

  if (!missing(plan_concept_id)) {
    fields <- c(fields, "plan_concept_id")
    values <- c(values, if (is.null(plan_concept_id)) " IS NULL" else if (is(plan_concept_id, "subQuery")) paste0(" = (", as.character(plan_concept_id), ")") else paste0(" = '", as.character(plan_concept_id), "'"))
  }

  if (!missing(plan_source_value)) {
    fields <- c(fields, "plan_source_value")
    values <- c(values, if (is.null(plan_source_value)) " IS NULL" else if (is(plan_source_value, "subQuery")) paste0(" = (", as.character(plan_source_value), ")") else paste0(" = '", as.character(plan_source_value), "'"))
  }

  if (!missing(plan_source_concept_id)) {
    fields <- c(fields, "plan_source_concept_id")
    values <- c(values, if (is.null(plan_source_concept_id)) " IS NULL" else if (is(plan_source_concept_id, "subQuery")) paste0(" = (", as.character(plan_source_concept_id), ")") else paste0(" = '", as.character(plan_source_concept_id), "'"))
  }

  if (!missing(contract_concept_id)) {
    fields <- c(fields, "contract_concept_id")
    values <- c(values, if (is.null(contract_concept_id)) " IS NULL" else if (is(contract_concept_id, "subQuery")) paste0(" = (", as.character(contract_concept_id), ")") else paste0(" = '", as.character(contract_concept_id), "'"))
  }

  if (!missing(contract_source_value)) {
    fields <- c(fields, "contract_source_value")
    values <- c(values, if (is.null(contract_source_value)) " IS NULL" else if (is(contract_source_value, "subQuery")) paste0(" = (", as.character(contract_source_value), ")") else paste0(" = '", as.character(contract_source_value), "'"))
  }

  if (!missing(contract_source_concept_id)) {
    fields <- c(fields, "contract_source_concept_id")
    values <- c(values, if (is.null(contract_source_concept_id)) " IS NULL" else if (is(contract_source_concept_id, "subQuery")) paste0(" = (", as.character(contract_source_concept_id), ")") else paste0(" = '", as.character(contract_source_concept_id), "'"))
  }

  if (!missing(sponsor_concept_id)) {
    fields <- c(fields, "sponsor_concept_id")
    values <- c(values, if (is.null(sponsor_concept_id)) " IS NULL" else if (is(sponsor_concept_id, "subQuery")) paste0(" = (", as.character(sponsor_concept_id), ")") else paste0(" = '", as.character(sponsor_concept_id), "'"))
  }

  if (!missing(sponsor_source_value)) {
    fields <- c(fields, "sponsor_source_value")
    values <- c(values, if (is.null(sponsor_source_value)) " IS NULL" else if (is(sponsor_source_value, "subQuery")) paste0(" = (", as.character(sponsor_source_value), ")") else paste0(" = '", as.character(sponsor_source_value), "'"))
  }

  if (!missing(sponsor_source_concept_id)) {
    fields <- c(fields, "sponsor_source_concept_id")
    values <- c(values, if (is.null(sponsor_source_concept_id)) " IS NULL" else if (is(sponsor_source_concept_id, "subQuery")) paste0(" = (", as.character(sponsor_source_concept_id), ")") else paste0(" = '", as.character(sponsor_source_concept_id), "'"))
  }

  if (!missing(family_source_value)) {
    fields <- c(fields, "family_source_value")
    values <- c(values, if (is.null(family_source_value)) " IS NULL" else if (is(family_source_value, "subQuery")) paste0(" = (", as.character(family_source_value), ")") else paste0(" = '", as.character(family_source_value), "'"))
  }

  if (!missing(stop_reason_concept_id)) {
    fields <- c(fields, "stop_reason_concept_id")
    values <- c(values, if (is.null(stop_reason_concept_id)) " IS NULL" else if (is(stop_reason_concept_id, "subQuery")) paste0(" = (", as.character(stop_reason_concept_id), ")") else paste0(" = '", as.character(stop_reason_concept_id), "'"))
  }

  if (!missing(stop_reason_source_value)) {
    fields <- c(fields, "stop_reason_source_value")
    values <- c(values, if (is.null(stop_reason_source_value)) " IS NULL" else if (is(stop_reason_source_value, "subQuery")) paste0(" = (", as.character(stop_reason_source_value), ")") else paste0(" = '", as.character(stop_reason_source_value), "'"))
  }

  if (!missing(stop_reason_source_concept_id)) {
    fields <- c(fields, "stop_reason_source_concept_id")
    values <- c(values, if (is.null(stop_reason_source_concept_id)) " IS NULL" else if (is(stop_reason_source_concept_id, "subQuery")) paste0(" = (", as.character(stop_reason_source_concept_id), ")") else paste0(" = '", as.character(stop_reason_source_concept_id), "'"))
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 1, table = "payer_plan_period", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_no_drug_era <- function(drug_era_id, person_id, drug_concept_id, drug_era_start_datetime, drug_era_end_datetime, drug_exposure_count, gap_days) {
  fields <- c()
  values <- c()
  if (!missing(drug_era_id)) {
    fields <- c(fields, "drug_era_id")
    values <- c(values, if (is.null(drug_era_id)) " IS NULL" else if (is(drug_era_id, "subQuery")) paste0(" = (", as.character(drug_era_id), ")") else paste0(" = '", as.character(drug_era_id), "'"))
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
  }

  if (!missing(drug_concept_id)) {
    fields <- c(fields, "drug_concept_id")
    values <- c(values, if (is.null(drug_concept_id)) " IS NULL" else if (is(drug_concept_id, "subQuery")) paste0(" = (", as.character(drug_concept_id), ")") else paste0(" = '", as.character(drug_concept_id), "'"))
  }

  if (!missing(drug_era_start_datetime)) {
    fields <- c(fields, "drug_era_start_datetime")
    values <- c(values, if (is.null(drug_era_start_datetime)) " IS NULL" else if (is(drug_era_start_datetime, "subQuery")) paste0(" = (", as.character(drug_era_start_datetime), ")") else paste0(" = '", as.character(drug_era_start_datetime), "'"))
  }

  if (!missing(drug_era_end_datetime)) {
    fields <- c(fields, "drug_era_end_datetime")
    values <- c(values, if (is.null(drug_era_end_datetime)) " IS NULL" else if (is(drug_era_end_datetime, "subQuery")) paste0(" = (", as.character(drug_era_end_datetime), ")") else paste0(" = '", as.character(drug_era_end_datetime), "'"))
  }

  if (!missing(drug_exposure_count)) {
    fields <- c(fields, "drug_exposure_count")
    values <- c(values, if (is.null(drug_exposure_count)) " IS NULL" else if (is(drug_exposure_count, "subQuery")) paste0(" = (", as.character(drug_exposure_count), ")") else paste0(" = '", as.character(drug_exposure_count), "'"))
  }

  if (!missing(gap_days)) {
    fields <- c(fields, "gap_days")
    values <- c(values, if (is.null(gap_days)) " IS NULL" else if (is(gap_days, "subQuery")) paste0(" = (", as.character(gap_days), ")") else paste0(" = '", as.character(gap_days), "'"))
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 1, table = "drug_era", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_no_dose_era <- function(dose_era_id, person_id, drug_concept_id, unit_concept_id, dose_value, dose_era_start_datetime, dose_era_end_datetime) {
  fields <- c()
  values <- c()
  if (!missing(dose_era_id)) {
    fields <- c(fields, "dose_era_id")
    values <- c(values, if (is.null(dose_era_id)) " IS NULL" else if (is(dose_era_id, "subQuery")) paste0(" = (", as.character(dose_era_id), ")") else paste0(" = '", as.character(dose_era_id), "'"))
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
  }

  if (!missing(drug_concept_id)) {
    fields <- c(fields, "drug_concept_id")
    values <- c(values, if (is.null(drug_concept_id)) " IS NULL" else if (is(drug_concept_id, "subQuery")) paste0(" = (", as.character(drug_concept_id), ")") else paste0(" = '", as.character(drug_concept_id), "'"))
  }

  if (!missing(unit_concept_id)) {
    fields <- c(fields, "unit_concept_id")
    values <- c(values, if (is.null(unit_concept_id)) " IS NULL" else if (is(unit_concept_id, "subQuery")) paste0(" = (", as.character(unit_concept_id), ")") else paste0(" = '", as.character(unit_concept_id), "'"))
  }

  if (!missing(dose_value)) {
    fields <- c(fields, "dose_value")
    values <- c(values, if (is.null(dose_value)) " IS NULL" else if (is(dose_value, "subQuery")) paste0(" = (", as.character(dose_value), ")") else paste0(" = '", as.character(dose_value), "'"))
  }

  if (!missing(dose_era_start_datetime)) {
    fields <- c(fields, "dose_era_start_datetime")
    values <- c(values, if (is.null(dose_era_start_datetime)) " IS NULL" else if (is(dose_era_start_datetime, "subQuery")) paste0(" = (", as.character(dose_era_start_datetime), ")") else paste0(" = '", as.character(dose_era_start_datetime), "'"))
  }

  if (!missing(dose_era_end_datetime)) {
    fields <- c(fields, "dose_era_end_datetime")
    values <- c(values, if (is.null(dose_era_end_datetime)) " IS NULL" else if (is(dose_era_end_datetime, "subQuery")) paste0(" = (", as.character(dose_era_end_datetime), ")") else paste0(" = '", as.character(dose_era_end_datetime), "'"))
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 1, table = "dose_era", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_no_condition_era <- function(condition_era_id, person_id, condition_concept_id, condition_era_start_datetime, condition_era_end_datetime, condition_occurrence_count) {
  fields <- c()
  values <- c()
  if (!missing(condition_era_id)) {
    fields <- c(fields, "condition_era_id")
    values <- c(values, if (is.null(condition_era_id)) " IS NULL" else if (is(condition_era_id, "subQuery")) paste0(" = (", as.character(condition_era_id), ")") else paste0(" = '", as.character(condition_era_id), "'"))
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
  }

  if (!missing(condition_concept_id)) {
    fields <- c(fields, "condition_concept_id")
    values <- c(values, if (is.null(condition_concept_id)) " IS NULL" else if (is(condition_concept_id, "subQuery")) paste0(" = (", as.character(condition_concept_id), ")") else paste0(" = '", as.character(condition_concept_id), "'"))
  }

  if (!missing(condition_era_start_datetime)) {
    fields <- c(fields, "condition_era_start_datetime")
    values <- c(values, if (is.null(condition_era_start_datetime)) " IS NULL" else if (is(condition_era_start_datetime, "subQuery")) paste0(" = (", as.character(condition_era_start_datetime), ")") else paste0(" = '", as.character(condition_era_start_datetime), "'"))
  }

  if (!missing(condition_era_end_datetime)) {
    fields <- c(fields, "condition_era_end_datetime")
    values <- c(values, if (is.null(condition_era_end_datetime)) " IS NULL" else if (is(condition_era_end_datetime, "subQuery")) paste0(" = (", as.character(condition_era_end_datetime), ")") else paste0(" = '", as.character(condition_era_end_datetime), "'"))
  }

  if (!missing(condition_occurrence_count)) {
    fields <- c(fields, "condition_occurrence_count")
    values <- c(values, if (is.null(condition_occurrence_count)) " IS NULL" else if (is(condition_occurrence_count, "subQuery")) paste0(" = (", as.character(condition_occurrence_count), ")") else paste0(" = '", as.character(condition_occurrence_count), "'"))
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 1, table = "condition_era", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_no_location <- function(location_id, address_1, address_2, city, state, zip, county, country, location_source_value, latitude, longitude) {
  fields <- c()
  values <- c()
  if (!missing(location_id)) {
    fields <- c(fields, "location_id")
    values <- c(values, if (is.null(location_id)) " IS NULL" else if (is(location_id, "subQuery")) paste0(" = (", as.character(location_id), ")") else paste0(" = '", as.character(location_id), "'"))
  }

  if (!missing(address_1)) {
    fields <- c(fields, "address_1")
    values <- c(values, if (is.null(address_1)) " IS NULL" else if (is(address_1, "subQuery")) paste0(" = (", as.character(address_1), ")") else paste0(" = '", as.character(address_1), "'"))
  }

  if (!missing(address_2)) {
    fields <- c(fields, "address_2")
    values <- c(values, if (is.null(address_2)) " IS NULL" else if (is(address_2, "subQuery")) paste0(" = (", as.character(address_2), ")") else paste0(" = '", as.character(address_2), "'"))
  }

  if (!missing(city)) {
    fields <- c(fields, "city")
    values <- c(values, if (is.null(city)) " IS NULL" else if (is(city, "subQuery")) paste0(" = (", as.character(city), ")") else paste0(" = '", as.character(city), "'"))
  }

  if (!missing(state)) {
    fields <- c(fields, "state")
    values <- c(values, if (is.null(state)) " IS NULL" else if (is(state, "subQuery")) paste0(" = (", as.character(state), ")") else paste0(" = '", as.character(state), "'"))
  }

  if (!missing(zip)) {
    fields <- c(fields, "zip")
    values <- c(values, if (is.null(zip)) " IS NULL" else if (is(zip, "subQuery")) paste0(" = (", as.character(zip), ")") else paste0(" = '", as.character(zip), "'"))
  }

  if (!missing(county)) {
    fields <- c(fields, "county")
    values <- c(values, if (is.null(county)) " IS NULL" else if (is(county, "subQuery")) paste0(" = (", as.character(county), ")") else paste0(" = '", as.character(county), "'"))
  }

  if (!missing(country)) {
    fields <- c(fields, "country")
    values <- c(values, if (is.null(country)) " IS NULL" else if (is(country, "subQuery")) paste0(" = (", as.character(country), ")") else paste0(" = '", as.character(country), "'"))
  }

  if (!missing(location_source_value)) {
    fields <- c(fields, "location_source_value")
    values <- c(values, if (is.null(location_source_value)) " IS NULL" else if (is(location_source_value, "subQuery")) paste0(" = (", as.character(location_source_value), ")") else paste0(" = '", as.character(location_source_value), "'"))
  }

  if (!missing(latitude)) {
    fields <- c(fields, "latitude")
    values <- c(values, if (is.null(latitude)) " IS NULL" else if (is(latitude, "subQuery")) paste0(" = (", as.character(latitude), ")") else paste0(" = '", as.character(latitude), "'"))
  }

  if (!missing(longitude)) {
    fields <- c(fields, "longitude")
    values <- c(values, if (is.null(longitude)) " IS NULL" else if (is(longitude, "subQuery")) paste0(" = (", as.character(longitude), ")") else paste0(" = '", as.character(longitude), "'"))
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 1, table = "location", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_no_location_history <- function(location_id, relationship_type_concept_id, domain_id, entity_id, start_date, end_date) {
  fields <- c()
  values <- c()
  if (!missing(location_id)) {
    fields <- c(fields, "location_id")
    values <- c(values, if (is.null(location_id)) " IS NULL" else if (is(location_id, "subQuery")) paste0(" = (", as.character(location_id), ")") else paste0(" = '", as.character(location_id), "'"))
  }

  if (!missing(relationship_type_concept_id)) {
    fields <- c(fields, "relationship_type_concept_id")
    values <- c(values, if (is.null(relationship_type_concept_id)) " IS NULL" else if (is(relationship_type_concept_id, "subQuery")) paste0(" = (", as.character(relationship_type_concept_id), ")") else paste0(" = '", as.character(relationship_type_concept_id), "'"))
  }

  if (!missing(domain_id)) {
    fields <- c(fields, "domain_id")
    values <- c(values, if (is.null(domain_id)) " IS NULL" else if (is(domain_id, "subQuery")) paste0(" = (", as.character(domain_id), ")") else paste0(" = '", as.character(domain_id), "'"))
  }

  if (!missing(entity_id)) {
    fields <- c(fields, "entity_id")
    values <- c(values, if (is.null(entity_id)) " IS NULL" else if (is(entity_id, "subQuery")) paste0(" = (", as.character(entity_id), ")") else paste0(" = '", as.character(entity_id), "'"))
  }

  if (!missing(start_date)) {
    fields <- c(fields, "start_date")
    values <- c(values, if (is.null(start_date)) " IS NULL" else if (is(start_date, "subQuery")) paste0(" = (", as.character(start_date), ")") else paste0(" = '", as.character(start_date), "'"))
  }

  if (!missing(end_date)) {
    fields <- c(fields, "end_date")
    values <- c(values, if (is.null(end_date)) " IS NULL" else if (is(end_date, "subQuery")) paste0(" = (", as.character(end_date), ")") else paste0(" = '", as.character(end_date), "'"))
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 1, table = "location_history", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_no_provider <- function(provider_id, provider_name, npi, dea, specialty_concept_id, care_site_id, year_of_birth, gender_concept_id, provider_source_value, specialty_source_value, specialty_source_concept_id, gender_source_value, gender_source_concept_id) {
  fields <- c()
  values <- c()
  if (!missing(provider_id)) {
    fields <- c(fields, "provider_id")
    values <- c(values, if (is.null(provider_id)) " IS NULL" else if (is(provider_id, "subQuery")) paste0(" = (", as.character(provider_id), ")") else paste0(" = '", as.character(provider_id), "'"))
  }

  if (!missing(provider_name)) {
    fields <- c(fields, "provider_name")
    values <- c(values, if (is.null(provider_name)) " IS NULL" else if (is(provider_name, "subQuery")) paste0(" = (", as.character(provider_name), ")") else paste0(" = '", as.character(provider_name), "'"))
  }

  if (!missing(npi)) {
    fields <- c(fields, "npi")
    values <- c(values, if (is.null(npi)) " IS NULL" else if (is(npi, "subQuery")) paste0(" = (", as.character(npi), ")") else paste0(" = '", as.character(npi), "'"))
  }

  if (!missing(dea)) {
    fields <- c(fields, "dea")
    values <- c(values, if (is.null(dea)) " IS NULL" else if (is(dea, "subQuery")) paste0(" = (", as.character(dea), ")") else paste0(" = '", as.character(dea), "'"))
  }

  if (!missing(specialty_concept_id)) {
    fields <- c(fields, "specialty_concept_id")
    values <- c(values, if (is.null(specialty_concept_id)) " IS NULL" else if (is(specialty_concept_id, "subQuery")) paste0(" = (", as.character(specialty_concept_id), ")") else paste0(" = '", as.character(specialty_concept_id), "'"))
  }

  if (!missing(care_site_id)) {
    fields <- c(fields, "care_site_id")
    values <- c(values, if (is.null(care_site_id)) " IS NULL" else if (is(care_site_id, "subQuery")) paste0(" = (", as.character(care_site_id), ")") else paste0(" = '", as.character(care_site_id), "'"))
  }

  if (!missing(year_of_birth)) {
    fields <- c(fields, "year_of_birth")
    values <- c(values, if (is.null(year_of_birth)) " IS NULL" else if (is(year_of_birth, "subQuery")) paste0(" = (", as.character(year_of_birth), ")") else paste0(" = '", as.character(year_of_birth), "'"))
  }

  if (!missing(gender_concept_id)) {
    fields <- c(fields, "gender_concept_id")
    values <- c(values, if (is.null(gender_concept_id)) " IS NULL" else if (is(gender_concept_id, "subQuery")) paste0(" = (", as.character(gender_concept_id), ")") else paste0(" = '", as.character(gender_concept_id), "'"))
  }

  if (!missing(provider_source_value)) {
    fields <- c(fields, "provider_source_value")
    values <- c(values, if (is.null(provider_source_value)) " IS NULL" else if (is(provider_source_value, "subQuery")) paste0(" = (", as.character(provider_source_value), ")") else paste0(" = '", as.character(provider_source_value), "'"))
  }

  if (!missing(specialty_source_value)) {
    fields <- c(fields, "specialty_source_value")
    values <- c(values, if (is.null(specialty_source_value)) " IS NULL" else if (is(specialty_source_value, "subQuery")) paste0(" = (", as.character(specialty_source_value), ")") else paste0(" = '", as.character(specialty_source_value), "'"))
  }

  if (!missing(specialty_source_concept_id)) {
    fields <- c(fields, "specialty_source_concept_id")
    values <- c(values, if (is.null(specialty_source_concept_id)) " IS NULL" else if (is(specialty_source_concept_id, "subQuery")) paste0(" = (", as.character(specialty_source_concept_id), ")") else paste0(" = '", as.character(specialty_source_concept_id), "'"))
  }

  if (!missing(gender_source_value)) {
    fields <- c(fields, "gender_source_value")
    values <- c(values, if (is.null(gender_source_value)) " IS NULL" else if (is(gender_source_value, "subQuery")) paste0(" = (", as.character(gender_source_value), ")") else paste0(" = '", as.character(gender_source_value), "'"))
  }

  if (!missing(gender_source_concept_id)) {
    fields <- c(fields, "gender_source_concept_id")
    values <- c(values, if (is.null(gender_source_concept_id)) " IS NULL" else if (is(gender_source_concept_id, "subQuery")) paste0(" = (", as.character(gender_source_concept_id), ")") else paste0(" = '", as.character(gender_source_concept_id), "'"))
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 1, table = "provider", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_no_care_site <- function(care_site_id, care_site_name, place_of_service_concept_id, location_id, care_site_source_value, place_of_service_source_value) {
  fields <- c()
  values <- c()
  if (!missing(care_site_id)) {
    fields <- c(fields, "care_site_id")
    values <- c(values, if (is.null(care_site_id)) " IS NULL" else if (is(care_site_id, "subQuery")) paste0(" = (", as.character(care_site_id), ")") else paste0(" = '", as.character(care_site_id), "'"))
  }

  if (!missing(care_site_name)) {
    fields <- c(fields, "care_site_name")
    values <- c(values, if (is.null(care_site_name)) " IS NULL" else if (is(care_site_name, "subQuery")) paste0(" = (", as.character(care_site_name), ")") else paste0(" = '", as.character(care_site_name), "'"))
  }

  if (!missing(place_of_service_concept_id)) {
    fields <- c(fields, "place_of_service_concept_id")
    values <- c(values, if (is.null(place_of_service_concept_id)) " IS NULL" else if (is(place_of_service_concept_id, "subQuery")) paste0(" = (", as.character(place_of_service_concept_id), ")") else paste0(" = '", as.character(place_of_service_concept_id), "'"))
  }

  if (!missing(location_id)) {
    fields <- c(fields, "location_id")
    values <- c(values, if (is.null(location_id)) " IS NULL" else if (is(location_id, "subQuery")) paste0(" = (", as.character(location_id), ")") else paste0(" = '", as.character(location_id), "'"))
  }

  if (!missing(care_site_source_value)) {
    fields <- c(fields, "care_site_source_value")
    values <- c(values, if (is.null(care_site_source_value)) " IS NULL" else if (is(care_site_source_value, "subQuery")) paste0(" = (", as.character(care_site_source_value), ")") else paste0(" = '", as.character(care_site_source_value), "'"))
  }

  if (!missing(place_of_service_source_value)) {
    fields <- c(fields, "place_of_service_source_value")
    values <- c(values, if (is.null(place_of_service_source_value)) " IS NULL" else if (is(place_of_service_source_value, "subQuery")) paste0(" = (", as.character(place_of_service_source_value), ")") else paste0(" = '", as.character(place_of_service_source_value), "'"))
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 1, table = "care_site", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_no_cdm_source <- function(cdm_source_name, cdm_source_abbreviation, cdm_holder, source_description, source_documentation_reference, cdm_etl_reference, source_release_date, cdm_release_date, cdm_version, vocabulary_version) {
  fields <- c()
  values <- c()
  if (!missing(cdm_source_name)) {
    fields <- c(fields, "cdm_source_name")
    values <- c(values, if (is.null(cdm_source_name)) " IS NULL" else if (is(cdm_source_name, "subQuery")) paste0(" = (", as.character(cdm_source_name), ")") else paste0(" = '", as.character(cdm_source_name), "'"))
  }

  if (!missing(cdm_source_abbreviation)) {
    fields <- c(fields, "cdm_source_abbreviation")
    values <- c(values, if (is.null(cdm_source_abbreviation)) " IS NULL" else if (is(cdm_source_abbreviation, "subQuery")) paste0(" = (", as.character(cdm_source_abbreviation), ")") else paste0(" = '", as.character(cdm_source_abbreviation), "'"))
  }

  if (!missing(cdm_holder)) {
    fields <- c(fields, "cdm_holder")
    values <- c(values, if (is.null(cdm_holder)) " IS NULL" else if (is(cdm_holder, "subQuery")) paste0(" = (", as.character(cdm_holder), ")") else paste0(" = '", as.character(cdm_holder), "'"))
  }

  if (!missing(source_description)) {
    fields <- c(fields, "source_description")
    values <- c(values, if (is.null(source_description)) " IS NULL" else if (is(source_description, "subQuery")) paste0(" = (", as.character(source_description), ")") else paste0(" = '", as.character(source_description), "'"))
  }

  if (!missing(source_documentation_reference)) {
    fields <- c(fields, "source_documentation_reference")
    values <- c(values, if (is.null(source_documentation_reference)) " IS NULL" else if (is(source_documentation_reference, "subQuery")) paste0(" = (", as.character(source_documentation_reference), ")") else paste0(" = '", as.character(source_documentation_reference), "'"))
  }

  if (!missing(cdm_etl_reference)) {
    fields <- c(fields, "cdm_etl_reference")
    values <- c(values, if (is.null(cdm_etl_reference)) " IS NULL" else if (is(cdm_etl_reference, "subQuery")) paste0(" = (", as.character(cdm_etl_reference), ")") else paste0(" = '", as.character(cdm_etl_reference), "'"))
  }

  if (!missing(source_release_date)) {
    fields <- c(fields, "source_release_date")
    values <- c(values, if (is.null(source_release_date)) " IS NULL" else if (is(source_release_date, "subQuery")) paste0(" = (", as.character(source_release_date), ")") else paste0(" = '", as.character(source_release_date), "'"))
  }

  if (!missing(cdm_release_date)) {
    fields <- c(fields, "cdm_release_date")
    values <- c(values, if (is.null(cdm_release_date)) " IS NULL" else if (is(cdm_release_date, "subQuery")) paste0(" = (", as.character(cdm_release_date), ")") else paste0(" = '", as.character(cdm_release_date), "'"))
  }

  if (!missing(cdm_version)) {
    fields <- c(fields, "cdm_version")
    values <- c(values, if (is.null(cdm_version)) " IS NULL" else if (is(cdm_version, "subQuery")) paste0(" = (", as.character(cdm_version), ")") else paste0(" = '", as.character(cdm_version), "'"))
  }

  if (!missing(vocabulary_version)) {
    fields <- c(fields, "vocabulary_version")
    values <- c(values, if (is.null(vocabulary_version)) " IS NULL" else if (is(vocabulary_version, "subQuery")) paste0(" = (", as.character(vocabulary_version), ")") else paste0(" = '", as.character(vocabulary_version), "'"))
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 1, table = "cdm_source", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_no_metadata <- function(metadata_concept_id, metadata_type_concept_id, name, value_as_string, value_as_concept_id, metadata_date, metadata_datetime) {
  fields <- c()
  values <- c()
  if (!missing(metadata_concept_id)) {
    fields <- c(fields, "metadata_concept_id")
    values <- c(values, if (is.null(metadata_concept_id)) " IS NULL" else if (is(metadata_concept_id, "subQuery")) paste0(" = (", as.character(metadata_concept_id), ")") else paste0(" = '", as.character(metadata_concept_id), "'"))
  }

  if (!missing(metadata_type_concept_id)) {
    fields <- c(fields, "metadata_type_concept_id")
    values <- c(values, if (is.null(metadata_type_concept_id)) " IS NULL" else if (is(metadata_type_concept_id, "subQuery")) paste0(" = (", as.character(metadata_type_concept_id), ")") else paste0(" = '", as.character(metadata_type_concept_id), "'"))
  }

  if (!missing(name)) {
    fields <- c(fields, "name")
    values <- c(values, if (is.null(name)) " IS NULL" else if (is(name, "subQuery")) paste0(" = (", as.character(name), ")") else paste0(" = '", as.character(name), "'"))
  }

  if (!missing(value_as_string)) {
    fields <- c(fields, "value_as_string")
    values <- c(values, if (is.null(value_as_string)) " IS NULL" else if (is(value_as_string, "subQuery")) paste0(" = (", as.character(value_as_string), ")") else paste0(" = '", as.character(value_as_string), "'"))
  }

  if (!missing(value_as_concept_id)) {
    fields <- c(fields, "value_as_concept_id")
    values <- c(values, if (is.null(value_as_concept_id)) " IS NULL" else if (is(value_as_concept_id, "subQuery")) paste0(" = (", as.character(value_as_concept_id), ")") else paste0(" = '", as.character(value_as_concept_id), "'"))
  }

  if (!missing(metadata_date)) {
    fields <- c(fields, "[metadata date]")
    values <- c(values, if (is.null(metadata_date)) " IS NULL" else if (is(metadata_date, "subQuery")) paste0(" = (", as.character(metadata_date), ")") else paste0(" = '", as.character(metadata_date), "'"))
  }

  if (!missing(metadata_datetime)) {
    fields <- c(fields, "metadata_datetime")
    values <- c(values, if (is.null(metadata_datetime)) " IS NULL" else if (is(metadata_datetime, "subQuery")) paste0(" = (", as.character(metadata_datetime), ")") else paste0(" = '", as.character(metadata_datetime), "'"))
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 1, table = "metadata", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_no_fact_relationship <- function(domain_concept_id_1, fact_id_1, domain_concept_id_2, fact_id_2, relationship_concept_id) {
  fields <- c()
  values <- c()
  if (!missing(domain_concept_id_1)) {
    fields <- c(fields, "domain_concept_id_1")
    values <- c(values, if (is.null(domain_concept_id_1)) " IS NULL" else if (is(domain_concept_id_1, "subQuery")) paste0(" = (", as.character(domain_concept_id_1), ")") else paste0(" = '", as.character(domain_concept_id_1), "'"))
  }

  if (!missing(fact_id_1)) {
    fields <- c(fields, "fact_id_1")
    values <- c(values, if (is.null(fact_id_1)) " IS NULL" else if (is(fact_id_1, "subQuery")) paste0(" = (", as.character(fact_id_1), ")") else paste0(" = '", as.character(fact_id_1), "'"))
  }

  if (!missing(domain_concept_id_2)) {
    fields <- c(fields, "domain_concept_id_2")
    values <- c(values, if (is.null(domain_concept_id_2)) " IS NULL" else if (is(domain_concept_id_2, "subQuery")) paste0(" = (", as.character(domain_concept_id_2), ")") else paste0(" = '", as.character(domain_concept_id_2), "'"))
  }

  if (!missing(fact_id_2)) {
    fields <- c(fields, "fact_id_2")
    values <- c(values, if (is.null(fact_id_2)) " IS NULL" else if (is(fact_id_2, "subQuery")) paste0(" = (", as.character(fact_id_2), ")") else paste0(" = '", as.character(fact_id_2), "'"))
  }

  if (!missing(relationship_concept_id)) {
    fields <- c(fields, "relationship_concept_id")
    values <- c(values, if (is.null(relationship_concept_id)) " IS NULL" else if (is(relationship_concept_id, "subQuery")) paste0(" = (", as.character(relationship_concept_id), ")") else paste0(" = '", as.character(relationship_concept_id), "'"))
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 1, table = "fact_relationship", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}
expect_no_death <- function(person_id, death_date, death_datetime, death_type_concept_id, cause_concept_id, cause_source_value, cause_source_concept_id) {
  fields <- c()
  values <- c()
  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
  }

  if (!missing(death_date)) {
    fields <- c(fields, "death_date")
    values <- c(values, if (is.null(death_date)) " IS NULL" else if (is(death_date, "subQuery")) paste0(" = (", as.character(death_date), ")") else paste0(" = '", as.character(death_date), "'"))
  }

  if (!missing(death_datetime)) {
    fields <- c(fields, "death_datetime")
    values <- c(values, if (is.null(death_datetime)) " IS NULL" else if (is(death_datetime, "subQuery")) paste0(" = (", as.character(death_datetime), ")") else paste0(" = '", as.character(death_datetime), "'"))
  }

  if (!missing(death_type_concept_id)) {
    fields <- c(fields, "death_type_concept_id")
    values <- c(values, if (is.null(death_type_concept_id)) " IS NULL" else if (is(death_type_concept_id, "subQuery")) paste0(" = (", as.character(death_type_concept_id), ")") else paste0(" = '", as.character(death_type_concept_id), "'"))
  }

  if (!missing(cause_concept_id)) {
    fields <- c(fields, "cause_concept_id")
    values <- c(values, if (is.null(cause_concept_id)) " IS NULL" else if (is(cause_concept_id, "subQuery")) paste0(" = (", as.character(cause_concept_id), ")") else paste0(" = '", as.character(cause_concept_id), "'"))
  }

  if (!missing(cause_source_value)) {
    fields <- c(fields, "cause_source_value")
    values <- c(values, if (is.null(cause_source_value)) " IS NULL" else if (is(cause_source_value, "subQuery")) paste0(" = (", as.character(cause_source_value), ")") else paste0(" = '", as.character(cause_source_value), "'"))
  }

  if (!missing(cause_source_concept_id)) {
    fields <- c(fields, "cause_source_concept_id")
    values <- c(values, if (is.null(cause_source_concept_id)) " IS NULL" else if (is(cause_source_concept_id, "subQuery")) paste0(" = (", as.character(cause_source_concept_id), ")") else paste0(" = '", as.character(cause_source_concept_id), "'"))
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 1, table = "death", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}


expect_count_person <- function(rowCount, person_id, gender_concept_id, year_of_birth, month_of_birth, day_of_birth, birth_datetime, death_datetime, race_concept_id, ethnicity_concept_id, location_id, provider_id, care_site_id, person_source_value, gender_source_value, gender_source_concept_id, race_source_value, race_source_concept_id, ethnicity_source_value, ethnicity_source_concept_id) {
  fields <- c()
  values <- c()
  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.person_id')
  }

  if (!missing(gender_concept_id)) {
    fields <- c(fields, "gender_concept_id")
    values <- c(values, if (is.null(gender_concept_id)) " IS NULL" else if (is(gender_concept_id, "subQuery")) paste0(" = (", as.character(gender_concept_id), ")") else paste0(" = '", as.character(gender_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.gender_concept_id')
  }

  if (!missing(year_of_birth)) {
    fields <- c(fields, "year_of_birth")
    values <- c(values, if (is.null(year_of_birth)) " IS NULL" else if (is(year_of_birth, "subQuery")) paste0(" = (", as.character(year_of_birth), ")") else paste0(" = '", as.character(year_of_birth), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.year_of_birth')
  }

  if (!missing(month_of_birth)) {
    fields <- c(fields, "month_of_birth")
    values <- c(values, if (is.null(month_of_birth)) " IS NULL" else if (is(month_of_birth, "subQuery")) paste0(" = (", as.character(month_of_birth), ")") else paste0(" = '", as.character(month_of_birth), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.month_of_birth')
  }

  if (!missing(day_of_birth)) {
    fields <- c(fields, "day_of_birth")
    values <- c(values, if (is.null(day_of_birth)) " IS NULL" else if (is(day_of_birth, "subQuery")) paste0(" = (", as.character(day_of_birth), ")") else paste0(" = '", as.character(day_of_birth), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.day_of_birth')
  }

  if (!missing(birth_datetime)) {
    fields <- c(fields, "birth_datetime")
    values <- c(values, if (is.null(birth_datetime)) " IS NULL" else if (is(birth_datetime, "subQuery")) paste0(" = (", as.character(birth_datetime), ")") else paste0(" = '", as.character(birth_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.birth_datetime')
  }

  if (!missing(death_datetime)) {
    fields <- c(fields, "death_datetime")
    values <- c(values, if (is.null(death_datetime)) " IS NULL" else if (is(death_datetime, "subQuery")) paste0(" = (", as.character(death_datetime), ")") else paste0(" = '", as.character(death_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.death_datetime')
  }

  if (!missing(race_concept_id)) {
    fields <- c(fields, "race_concept_id")
    values <- c(values, if (is.null(race_concept_id)) " IS NULL" else if (is(race_concept_id, "subQuery")) paste0(" = (", as.character(race_concept_id), ")") else paste0(" = '", as.character(race_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.race_concept_id')
  }

  if (!missing(ethnicity_concept_id)) {
    fields <- c(fields, "ethnicity_concept_id")
    values <- c(values, if (is.null(ethnicity_concept_id)) " IS NULL" else if (is(ethnicity_concept_id, "subQuery")) paste0(" = (", as.character(ethnicity_concept_id), ")") else paste0(" = '", as.character(ethnicity_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.ethnicity_concept_id')
  }

  if (!missing(location_id)) {
    fields <- c(fields, "location_id")
    values <- c(values, if (is.null(location_id)) " IS NULL" else if (is(location_id, "subQuery")) paste0(" = (", as.character(location_id), ")") else paste0(" = '", as.character(location_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.location_id')
  }

  if (!missing(provider_id)) {
    fields <- c(fields, "provider_id")
    values <- c(values, if (is.null(provider_id)) " IS NULL" else if (is(provider_id, "subQuery")) paste0(" = (", as.character(provider_id), ")") else paste0(" = '", as.character(provider_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.provider_id')
  }

  if (!missing(care_site_id)) {
    fields <- c(fields, "care_site_id")
    values <- c(values, if (is.null(care_site_id)) " IS NULL" else if (is(care_site_id, "subQuery")) paste0(" = (", as.character(care_site_id), ")") else paste0(" = '", as.character(care_site_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.care_site_id')
  }

  if (!missing(person_source_value)) {
    fields <- c(fields, "person_source_value")
    values <- c(values, if (is.null(person_source_value)) " IS NULL" else if (is(person_source_value, "subQuery")) paste0(" = (", as.character(person_source_value), ")") else paste0(" = '", as.character(person_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.person_source_value')
  }

  if (!missing(gender_source_value)) {
    fields <- c(fields, "gender_source_value")
    values <- c(values, if (is.null(gender_source_value)) " IS NULL" else if (is(gender_source_value, "subQuery")) paste0(" = (", as.character(gender_source_value), ")") else paste0(" = '", as.character(gender_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.gender_source_value')
  }

  if (!missing(gender_source_concept_id)) {
    fields <- c(fields, "gender_source_concept_id")
    values <- c(values, if (is.null(gender_source_concept_id)) " IS NULL" else if (is(gender_source_concept_id, "subQuery")) paste0(" = (", as.character(gender_source_concept_id), ")") else paste0(" = '", as.character(gender_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.gender_source_concept_id')
  }

  if (!missing(race_source_value)) {
    fields <- c(fields, "race_source_value")
    values <- c(values, if (is.null(race_source_value)) " IS NULL" else if (is(race_source_value, "subQuery")) paste0(" = (", as.character(race_source_value), ")") else paste0(" = '", as.character(race_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.race_source_value')
  }

  if (!missing(race_source_concept_id)) {
    fields <- c(fields, "race_source_concept_id")
    values <- c(values, if (is.null(race_source_concept_id)) " IS NULL" else if (is(race_source_concept_id, "subQuery")) paste0(" = (", as.character(race_source_concept_id), ")") else paste0(" = '", as.character(race_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.race_source_concept_id')
  }

  if (!missing(ethnicity_source_value)) {
    fields <- c(fields, "ethnicity_source_value")
    values <- c(values, if (is.null(ethnicity_source_value)) " IS NULL" else if (is(ethnicity_source_value, "subQuery")) paste0(" = (", as.character(ethnicity_source_value), ")") else paste0(" = '", as.character(ethnicity_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.ethnicity_source_value')
  }

  if (!missing(ethnicity_source_concept_id)) {
    fields <- c(fields, "ethnicity_source_concept_id")
    values <- c(values, if (is.null(ethnicity_source_concept_id)) " IS NULL" else if (is(ethnicity_source_concept_id, "subQuery")) paste0(" = (", as.character(ethnicity_source_concept_id), ")") else paste0(" = '", as.character(ethnicity_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.ethnicity_source_concept_id')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 2, table = "person", fields = fields, values = values)
  expects$rowCount = rowCount
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_count_observation_period <- function(rowCount, observation_period_id, person_id, observation_period_start_date, observation_period_end_date, period_type_concept_id) {
  fields <- c()
  values <- c()
  if (!missing(observation_period_id)) {
    fields <- c(fields, "observation_period_id")
    values <- c(values, if (is.null(observation_period_id)) " IS NULL" else if (is(observation_period_id, "subQuery")) paste0(" = (", as.character(observation_period_id), ")") else paste0(" = '", as.character(observation_period_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation_period.observation_period_id')
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation_period.person_id')
  }

  if (!missing(observation_period_start_date)) {
    fields <- c(fields, "observation_period_start_date")
    values <- c(values, if (is.null(observation_period_start_date)) " IS NULL" else if (is(observation_period_start_date, "subQuery")) paste0(" = (", as.character(observation_period_start_date), ")") else paste0(" = '", as.character(observation_period_start_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation_period.observation_period_start_date')
  }

  if (!missing(observation_period_end_date)) {
    fields <- c(fields, "observation_period_end_date")
    values <- c(values, if (is.null(observation_period_end_date)) " IS NULL" else if (is(observation_period_end_date, "subQuery")) paste0(" = (", as.character(observation_period_end_date), ")") else paste0(" = '", as.character(observation_period_end_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation_period.observation_period_end_date')
  }

  if (!missing(period_type_concept_id)) {
    fields <- c(fields, "period_type_concept_id")
    values <- c(values, if (is.null(period_type_concept_id)) " IS NULL" else if (is(period_type_concept_id, "subQuery")) paste0(" = (", as.character(period_type_concept_id), ")") else paste0(" = '", as.character(period_type_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation_period.period_type_concept_id')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 2, table = "observation_period", fields = fields, values = values)
  expects$rowCount = rowCount
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_count_visit_occurrence <- function(rowCount, visit_occurrence_id, person_id, visit_concept_id, visit_start_date, visit_start_datetime, visit_end_date, visit_end_datetime, visit_type_concept_id, provider_id, care_site_id, visit_source_value, visit_source_concept_id, admitting_source_concept_id, admitting_source_value, discharge_to_concept_id, discharge_to_source_value, preceding_visit_occurrence_id) {
  fields <- c()
  values <- c()
  if (!missing(visit_occurrence_id)) {
    fields <- c(fields, "visit_occurrence_id")
    values <- c(values, if (is.null(visit_occurrence_id)) " IS NULL" else if (is(visit_occurrence_id, "subQuery")) paste0(" = (", as.character(visit_occurrence_id), ")") else paste0(" = '", as.character(visit_occurrence_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_occurrence.visit_occurrence_id')
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_occurrence.person_id')
  }

  if (!missing(visit_concept_id)) {
    fields <- c(fields, "visit_concept_id")
    values <- c(values, if (is.null(visit_concept_id)) " IS NULL" else if (is(visit_concept_id, "subQuery")) paste0(" = (", as.character(visit_concept_id), ")") else paste0(" = '", as.character(visit_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_occurrence.visit_concept_id')
  }

  if (!missing(visit_start_date)) {
    fields <- c(fields, "visit_start_date")
    values <- c(values, if (is.null(visit_start_date)) " IS NULL" else if (is(visit_start_date, "subQuery")) paste0(" = (", as.character(visit_start_date), ")") else paste0(" = '", as.character(visit_start_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_occurrence.visit_start_date')
  }

  if (!missing(visit_start_datetime)) {
    fields <- c(fields, "visit_start_datetime")
    values <- c(values, if (is.null(visit_start_datetime)) " IS NULL" else if (is(visit_start_datetime, "subQuery")) paste0(" = (", as.character(visit_start_datetime), ")") else paste0(" = '", as.character(visit_start_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_occurrence.visit_start_datetime')
  }

  if (!missing(visit_end_date)) {
    fields <- c(fields, "visit_end_date")
    values <- c(values, if (is.null(visit_end_date)) " IS NULL" else if (is(visit_end_date, "subQuery")) paste0(" = (", as.character(visit_end_date), ")") else paste0(" = '", as.character(visit_end_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_occurrence.visit_end_date')
  }

  if (!missing(visit_end_datetime)) {
    fields <- c(fields, "visit_end_datetime")
    values <- c(values, if (is.null(visit_end_datetime)) " IS NULL" else if (is(visit_end_datetime, "subQuery")) paste0(" = (", as.character(visit_end_datetime), ")") else paste0(" = '", as.character(visit_end_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_occurrence.visit_end_datetime')
  }

  if (!missing(visit_type_concept_id)) {
    fields <- c(fields, "visit_type_concept_id")
    values <- c(values, if (is.null(visit_type_concept_id)) " IS NULL" else if (is(visit_type_concept_id, "subQuery")) paste0(" = (", as.character(visit_type_concept_id), ")") else paste0(" = '", as.character(visit_type_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_occurrence.visit_type_concept_id')
  }

  if (!missing(provider_id)) {
    fields <- c(fields, "provider_id")
    values <- c(values, if (is.null(provider_id)) " IS NULL" else if (is(provider_id, "subQuery")) paste0(" = (", as.character(provider_id), ")") else paste0(" = '", as.character(provider_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_occurrence.provider_id')
  }

  if (!missing(care_site_id)) {
    fields <- c(fields, "care_site_id")
    values <- c(values, if (is.null(care_site_id)) " IS NULL" else if (is(care_site_id, "subQuery")) paste0(" = (", as.character(care_site_id), ")") else paste0(" = '", as.character(care_site_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_occurrence.care_site_id')
  }

  if (!missing(visit_source_value)) {
    fields <- c(fields, "visit_source_value")
    values <- c(values, if (is.null(visit_source_value)) " IS NULL" else if (is(visit_source_value, "subQuery")) paste0(" = (", as.character(visit_source_value), ")") else paste0(" = '", as.character(visit_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_occurrence.visit_source_value')
  }

  if (!missing(visit_source_concept_id)) {
    fields <- c(fields, "visit_source_concept_id")
    values <- c(values, if (is.null(visit_source_concept_id)) " IS NULL" else if (is(visit_source_concept_id, "subQuery")) paste0(" = (", as.character(visit_source_concept_id), ")") else paste0(" = '", as.character(visit_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_occurrence.visit_source_concept_id')
  }

  if (!missing(admitting_source_concept_id)) {
    fields <- c(fields, "admitting_source_concept_id")
    values <- c(values, if (is.null(admitting_source_concept_id)) " IS NULL" else if (is(admitting_source_concept_id, "subQuery")) paste0(" = (", as.character(admitting_source_concept_id), ")") else paste0(" = '", as.character(admitting_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_occurrence.admitting_source_concept_id')
  }

  if (!missing(admitting_source_value)) {
    fields <- c(fields, "admitting_source_value")
    values <- c(values, if (is.null(admitting_source_value)) " IS NULL" else if (is(admitting_source_value, "subQuery")) paste0(" = (", as.character(admitting_source_value), ")") else paste0(" = '", as.character(admitting_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_occurrence.admitting_source_value')
  }

  if (!missing(discharge_to_concept_id)) {
    fields <- c(fields, "discharge_to_concept_id")
    values <- c(values, if (is.null(discharge_to_concept_id)) " IS NULL" else if (is(discharge_to_concept_id, "subQuery")) paste0(" = (", as.character(discharge_to_concept_id), ")") else paste0(" = '", as.character(discharge_to_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_occurrence.discharge_to_concept_id')
  }

  if (!missing(discharge_to_source_value)) {
    fields <- c(fields, "discharge_to_source_value")
    values <- c(values, if (is.null(discharge_to_source_value)) " IS NULL" else if (is(discharge_to_source_value, "subQuery")) paste0(" = (", as.character(discharge_to_source_value), ")") else paste0(" = '", as.character(discharge_to_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_occurrence.discharge_to_source_value')
  }

  if (!missing(preceding_visit_occurrence_id)) {
    fields <- c(fields, "preceding_visit_occurrence_id")
    values <- c(values, if (is.null(preceding_visit_occurrence_id)) " IS NULL" else if (is(preceding_visit_occurrence_id, "subQuery")) paste0(" = (", as.character(preceding_visit_occurrence_id), ")") else paste0(" = '", as.character(preceding_visit_occurrence_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_occurrence.preceding_visit_occurrence_id')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 2, table = "visit_occurrence", fields = fields, values = values)
  expects$rowCount = rowCount
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_count_visit_detail <- function(rowCount, visit_detail_id, person_id, visit_detail_concept_id, visit_detail_start_date, visit_detail_start_datetime, visit_detail_end_date, visit_detail_end_datetime, visit_detail_type_concept_id, provider_id, care_site_id, visit_detail_source_value, visit_detail_source_concept_id, admitted_from_source_value, admitted_from_concept_id, discharge_to_source_value, discharge_to_concept_id, preceding_visit_detail_id, visit_detail_parent_id, visit_occurrence_id) {
  fields <- c()
  values <- c()
  if (!missing(visit_detail_id)) {
    fields <- c(fields, "visit_detail_id")
    values <- c(values, if (is.null(visit_detail_id)) " IS NULL" else if (is(visit_detail_id, "subQuery")) paste0(" = (", as.character(visit_detail_id), ")") else paste0(" = '", as.character(visit_detail_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.visit_detail_id')
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.person_id')
  }

  if (!missing(visit_detail_concept_id)) {
    fields <- c(fields, "visit_detail_concept_id")
    values <- c(values, if (is.null(visit_detail_concept_id)) " IS NULL" else if (is(visit_detail_concept_id, "subQuery")) paste0(" = (", as.character(visit_detail_concept_id), ")") else paste0(" = '", as.character(visit_detail_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.visit_detail_concept_id')
  }

  if (!missing(visit_detail_start_date)) {
    fields <- c(fields, "visit_detail_start_date")
    values <- c(values, if (is.null(visit_detail_start_date)) " IS NULL" else if (is(visit_detail_start_date, "subQuery")) paste0(" = (", as.character(visit_detail_start_date), ")") else paste0(" = '", as.character(visit_detail_start_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.visit_detail_start_date')
  }

  if (!missing(visit_detail_start_datetime)) {
    fields <- c(fields, "visit_detail_start_datetime")
    values <- c(values, if (is.null(visit_detail_start_datetime)) " IS NULL" else if (is(visit_detail_start_datetime, "subQuery")) paste0(" = (", as.character(visit_detail_start_datetime), ")") else paste0(" = '", as.character(visit_detail_start_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.visit_detail_start_datetime')
  }

  if (!missing(visit_detail_end_date)) {
    fields <- c(fields, "visit_detail_end_date")
    values <- c(values, if (is.null(visit_detail_end_date)) " IS NULL" else if (is(visit_detail_end_date, "subQuery")) paste0(" = (", as.character(visit_detail_end_date), ")") else paste0(" = '", as.character(visit_detail_end_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.visit_detail_end_date')
  }

  if (!missing(visit_detail_end_datetime)) {
    fields <- c(fields, "visit_detail_end_datetime")
    values <- c(values, if (is.null(visit_detail_end_datetime)) " IS NULL" else if (is(visit_detail_end_datetime, "subQuery")) paste0(" = (", as.character(visit_detail_end_datetime), ")") else paste0(" = '", as.character(visit_detail_end_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.visit_detail_end_datetime')
  }

  if (!missing(visit_detail_type_concept_id)) {
    fields <- c(fields, "visit_detail_type_concept_id")
    values <- c(values, if (is.null(visit_detail_type_concept_id)) " IS NULL" else if (is(visit_detail_type_concept_id, "subQuery")) paste0(" = (", as.character(visit_detail_type_concept_id), ")") else paste0(" = '", as.character(visit_detail_type_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.visit_detail_type_concept_id')
  }

  if (!missing(provider_id)) {
    fields <- c(fields, "provider_id")
    values <- c(values, if (is.null(provider_id)) " IS NULL" else if (is(provider_id, "subQuery")) paste0(" = (", as.character(provider_id), ")") else paste0(" = '", as.character(provider_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.provider_id')
  }

  if (!missing(care_site_id)) {
    fields <- c(fields, "care_site_id")
    values <- c(values, if (is.null(care_site_id)) " IS NULL" else if (is(care_site_id, "subQuery")) paste0(" = (", as.character(care_site_id), ")") else paste0(" = '", as.character(care_site_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.care_site_id')
  }

  if (!missing(visit_detail_source_value)) {
    fields <- c(fields, "visit_detail_source_value")
    values <- c(values, if (is.null(visit_detail_source_value)) " IS NULL" else if (is(visit_detail_source_value, "subQuery")) paste0(" = (", as.character(visit_detail_source_value), ")") else paste0(" = '", as.character(visit_detail_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.visit_detail_source_value')
  }

  if (!missing(visit_detail_source_concept_id)) {
    fields <- c(fields, "visit_detail_source_concept_id")
    values <- c(values, if (is.null(visit_detail_source_concept_id)) " IS NULL" else if (is(visit_detail_source_concept_id, "subQuery")) paste0(" = (", as.character(visit_detail_source_concept_id), ")") else paste0(" = '", as.character(visit_detail_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.visit_detail_source_concept_id')
  }

  if (!missing(admitted_from_source_value)) {
    fields <- c(fields, "admitted_from_source_value")
    values <- c(values, if (is.null(admitted_from_source_value)) " IS NULL" else if (is(admitted_from_source_value, "subQuery")) paste0(" = (", as.character(admitted_from_source_value), ")") else paste0(" = '", as.character(admitted_from_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.admitted_from_source_value')
  }

  if (!missing(admitted_from_concept_id)) {
    fields <- c(fields, "admitted_from_concept_id")
    values <- c(values, if (is.null(admitted_from_concept_id)) " IS NULL" else if (is(admitted_from_concept_id, "subQuery")) paste0(" = (", as.character(admitted_from_concept_id), ")") else paste0(" = '", as.character(admitted_from_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.admitted_from_concept_id')
  }

  if (!missing(discharge_to_source_value)) {
    fields <- c(fields, "discharge_to_source_value")
    values <- c(values, if (is.null(discharge_to_source_value)) " IS NULL" else if (is(discharge_to_source_value, "subQuery")) paste0(" = (", as.character(discharge_to_source_value), ")") else paste0(" = '", as.character(discharge_to_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.discharge_to_source_value')
  }

  if (!missing(discharge_to_concept_id)) {
    fields <- c(fields, "discharge_to_concept_id")
    values <- c(values, if (is.null(discharge_to_concept_id)) " IS NULL" else if (is(discharge_to_concept_id, "subQuery")) paste0(" = (", as.character(discharge_to_concept_id), ")") else paste0(" = '", as.character(discharge_to_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.discharge_to_concept_id')
  }

  if (!missing(preceding_visit_detail_id)) {
    fields <- c(fields, "preceding_visit_detail_id")
    values <- c(values, if (is.null(preceding_visit_detail_id)) " IS NULL" else if (is(preceding_visit_detail_id, "subQuery")) paste0(" = (", as.character(preceding_visit_detail_id), ")") else paste0(" = '", as.character(preceding_visit_detail_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.preceding_visit_detail_id')
  }

  if (!missing(visit_detail_parent_id)) {
    fields <- c(fields, "visit_detail_parent_id")
    values <- c(values, if (is.null(visit_detail_parent_id)) " IS NULL" else if (is(visit_detail_parent_id, "subQuery")) paste0(" = (", as.character(visit_detail_parent_id), ")") else paste0(" = '", as.character(visit_detail_parent_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.visit_detail_parent_id')
  }

  if (!missing(visit_occurrence_id)) {
    fields <- c(fields, "visit_occurrence_id")
    values <- c(values, if (is.null(visit_occurrence_id)) " IS NULL" else if (is(visit_occurrence_id, "subQuery")) paste0(" = (", as.character(visit_occurrence_id), ")") else paste0(" = '", as.character(visit_occurrence_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.visit_occurrence_id')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 2, table = "visit_detail", fields = fields, values = values)
  expects$rowCount = rowCount
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_count_condition_occurrence <- function(rowCount, condition_occurrence_id, person_id, condition_concept_id, condition_start_date, condition_start_datetime, condition_end_date, condition_end_datetime, condition_type_concept_id, condition_status_concept_id, stop_reason, provider_id, visit_occurrence_id, visit_detail_id, condition_source_value, condition_source_concept_id, condition_status_source_value) {
  fields <- c()
  values <- c()
  if (!missing(condition_occurrence_id)) {
    fields <- c(fields, "condition_occurrence_id")
    values <- c(values, if (is.null(condition_occurrence_id)) " IS NULL" else if (is(condition_occurrence_id, "subQuery")) paste0(" = (", as.character(condition_occurrence_id), ")") else paste0(" = '", as.character(condition_occurrence_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_occurrence.condition_occurrence_id')
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_occurrence.person_id')
  }

  if (!missing(condition_concept_id)) {
    fields <- c(fields, "condition_concept_id")
    values <- c(values, if (is.null(condition_concept_id)) " IS NULL" else if (is(condition_concept_id, "subQuery")) paste0(" = (", as.character(condition_concept_id), ")") else paste0(" = '", as.character(condition_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_occurrence.condition_concept_id')
  }

  if (!missing(condition_start_date)) {
    fields <- c(fields, "condition_start_date")
    values <- c(values, if (is.null(condition_start_date)) " IS NULL" else if (is(condition_start_date, "subQuery")) paste0(" = (", as.character(condition_start_date), ")") else paste0(" = '", as.character(condition_start_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_occurrence.condition_start_date')
  }

  if (!missing(condition_start_datetime)) {
    fields <- c(fields, "condition_start_datetime")
    values <- c(values, if (is.null(condition_start_datetime)) " IS NULL" else if (is(condition_start_datetime, "subQuery")) paste0(" = (", as.character(condition_start_datetime), ")") else paste0(" = '", as.character(condition_start_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_occurrence.condition_start_datetime')
  }

  if (!missing(condition_end_date)) {
    fields <- c(fields, "condition_end_date")
    values <- c(values, if (is.null(condition_end_date)) " IS NULL" else if (is(condition_end_date, "subQuery")) paste0(" = (", as.character(condition_end_date), ")") else paste0(" = '", as.character(condition_end_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_occurrence.condition_end_date')
  }

  if (!missing(condition_end_datetime)) {
    fields <- c(fields, "condition_end_datetime")
    values <- c(values, if (is.null(condition_end_datetime)) " IS NULL" else if (is(condition_end_datetime, "subQuery")) paste0(" = (", as.character(condition_end_datetime), ")") else paste0(" = '", as.character(condition_end_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_occurrence.condition_end_datetime')
  }

  if (!missing(condition_type_concept_id)) {
    fields <- c(fields, "condition_type_concept_id")
    values <- c(values, if (is.null(condition_type_concept_id)) " IS NULL" else if (is(condition_type_concept_id, "subQuery")) paste0(" = (", as.character(condition_type_concept_id), ")") else paste0(" = '", as.character(condition_type_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_occurrence.condition_type_concept_id')
  }

  if (!missing(condition_status_concept_id)) {
    fields <- c(fields, "condition_status_concept_id")
    values <- c(values, if (is.null(condition_status_concept_id)) " IS NULL" else if (is(condition_status_concept_id, "subQuery")) paste0(" = (", as.character(condition_status_concept_id), ")") else paste0(" = '", as.character(condition_status_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_occurrence.condition_status_concept_id')
  }

  if (!missing(stop_reason)) {
    fields <- c(fields, "stop_reason")
    values <- c(values, if (is.null(stop_reason)) " IS NULL" else if (is(stop_reason, "subQuery")) paste0(" = (", as.character(stop_reason), ")") else paste0(" = '", as.character(stop_reason), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_occurrence.stop_reason')
  }

  if (!missing(provider_id)) {
    fields <- c(fields, "provider_id")
    values <- c(values, if (is.null(provider_id)) " IS NULL" else if (is(provider_id, "subQuery")) paste0(" = (", as.character(provider_id), ")") else paste0(" = '", as.character(provider_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_occurrence.provider_id')
  }

  if (!missing(visit_occurrence_id)) {
    fields <- c(fields, "visit_occurrence_id")
    values <- c(values, if (is.null(visit_occurrence_id)) " IS NULL" else if (is(visit_occurrence_id, "subQuery")) paste0(" = (", as.character(visit_occurrence_id), ")") else paste0(" = '", as.character(visit_occurrence_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_occurrence.visit_occurrence_id')
  }

  if (!missing(visit_detail_id)) {
    fields <- c(fields, "visit_detail_id")
    values <- c(values, if (is.null(visit_detail_id)) " IS NULL" else if (is(visit_detail_id, "subQuery")) paste0(" = (", as.character(visit_detail_id), ")") else paste0(" = '", as.character(visit_detail_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_occurrence.visit_detail_id')
  }

  if (!missing(condition_source_value)) {
    fields <- c(fields, "condition_source_value")
    values <- c(values, if (is.null(condition_source_value)) " IS NULL" else if (is(condition_source_value, "subQuery")) paste0(" = (", as.character(condition_source_value), ")") else paste0(" = '", as.character(condition_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_occurrence.condition_source_value')
  }

  if (!missing(condition_source_concept_id)) {
    fields <- c(fields, "condition_source_concept_id")
    values <- c(values, if (is.null(condition_source_concept_id)) " IS NULL" else if (is(condition_source_concept_id, "subQuery")) paste0(" = (", as.character(condition_source_concept_id), ")") else paste0(" = '", as.character(condition_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_occurrence.condition_source_concept_id')
  }

  if (!missing(condition_status_source_value)) {
    fields <- c(fields, "condition_status_source_value")
    values <- c(values, if (is.null(condition_status_source_value)) " IS NULL" else if (is(condition_status_source_value, "subQuery")) paste0(" = (", as.character(condition_status_source_value), ")") else paste0(" = '", as.character(condition_status_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_occurrence.condition_status_source_value')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 2, table = "condition_occurrence", fields = fields, values = values)
  expects$rowCount = rowCount
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_count_procedure_occurrence <- function(rowCount, procedure_occurrence_id, person_id, procedure_concept_id, procedure_date, procedure_datetime, procedure_type_concept_id, modifier_concept_id, quantity, provider_id, visit_occurrence_id, visit_detail_id, procedure_source_value, procedure_source_concept_id, modifier_source_value) {
  fields <- c()
  values <- c()
  if (!missing(procedure_occurrence_id)) {
    fields <- c(fields, "procedure_occurrence_id")
    values <- c(values, if (is.null(procedure_occurrence_id)) " IS NULL" else if (is(procedure_occurrence_id, "subQuery")) paste0(" = (", as.character(procedure_occurrence_id), ")") else paste0(" = '", as.character(procedure_occurrence_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'procedure_occurrence.procedure_occurrence_id')
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'procedure_occurrence.person_id')
  }

  if (!missing(procedure_concept_id)) {
    fields <- c(fields, "procedure_concept_id")
    values <- c(values, if (is.null(procedure_concept_id)) " IS NULL" else if (is(procedure_concept_id, "subQuery")) paste0(" = (", as.character(procedure_concept_id), ")") else paste0(" = '", as.character(procedure_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'procedure_occurrence.procedure_concept_id')
  }

  if (!missing(procedure_date)) {
    fields <- c(fields, "procedure_date")
    values <- c(values, if (is.null(procedure_date)) " IS NULL" else if (is(procedure_date, "subQuery")) paste0(" = (", as.character(procedure_date), ")") else paste0(" = '", as.character(procedure_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'procedure_occurrence.procedure_date')
  }

  if (!missing(procedure_datetime)) {
    fields <- c(fields, "procedure_datetime")
    values <- c(values, if (is.null(procedure_datetime)) " IS NULL" else if (is(procedure_datetime, "subQuery")) paste0(" = (", as.character(procedure_datetime), ")") else paste0(" = '", as.character(procedure_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'procedure_occurrence.procedure_datetime')
  }

  if (!missing(procedure_type_concept_id)) {
    fields <- c(fields, "procedure_type_concept_id")
    values <- c(values, if (is.null(procedure_type_concept_id)) " IS NULL" else if (is(procedure_type_concept_id, "subQuery")) paste0(" = (", as.character(procedure_type_concept_id), ")") else paste0(" = '", as.character(procedure_type_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'procedure_occurrence.procedure_type_concept_id')
  }

  if (!missing(modifier_concept_id)) {
    fields <- c(fields, "modifier_concept_id")
    values <- c(values, if (is.null(modifier_concept_id)) " IS NULL" else if (is(modifier_concept_id, "subQuery")) paste0(" = (", as.character(modifier_concept_id), ")") else paste0(" = '", as.character(modifier_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'procedure_occurrence.modifier_concept_id')
  }

  if (!missing(quantity)) {
    fields <- c(fields, "quantity")
    values <- c(values, if (is.null(quantity)) " IS NULL" else if (is(quantity, "subQuery")) paste0(" = (", as.character(quantity), ")") else paste0(" = '", as.character(quantity), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'procedure_occurrence.quantity')
  }

  if (!missing(provider_id)) {
    fields <- c(fields, "provider_id")
    values <- c(values, if (is.null(provider_id)) " IS NULL" else if (is(provider_id, "subQuery")) paste0(" = (", as.character(provider_id), ")") else paste0(" = '", as.character(provider_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'procedure_occurrence.provider_id')
  }

  if (!missing(visit_occurrence_id)) {
    fields <- c(fields, "visit_occurrence_id")
    values <- c(values, if (is.null(visit_occurrence_id)) " IS NULL" else if (is(visit_occurrence_id, "subQuery")) paste0(" = (", as.character(visit_occurrence_id), ")") else paste0(" = '", as.character(visit_occurrence_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'procedure_occurrence.visit_occurrence_id')
  }

  if (!missing(visit_detail_id)) {
    fields <- c(fields, "visit_detail_id")
    values <- c(values, if (is.null(visit_detail_id)) " IS NULL" else if (is(visit_detail_id, "subQuery")) paste0(" = (", as.character(visit_detail_id), ")") else paste0(" = '", as.character(visit_detail_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'procedure_occurrence.visit_detail_id')
  }

  if (!missing(procedure_source_value)) {
    fields <- c(fields, "procedure_source_value")
    values <- c(values, if (is.null(procedure_source_value)) " IS NULL" else if (is(procedure_source_value, "subQuery")) paste0(" = (", as.character(procedure_source_value), ")") else paste0(" = '", as.character(procedure_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'procedure_occurrence.procedure_source_value')
  }

  if (!missing(procedure_source_concept_id)) {
    fields <- c(fields, "procedure_source_concept_id")
    values <- c(values, if (is.null(procedure_source_concept_id)) " IS NULL" else if (is(procedure_source_concept_id, "subQuery")) paste0(" = (", as.character(procedure_source_concept_id), ")") else paste0(" = '", as.character(procedure_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'procedure_occurrence.procedure_source_concept_id')
  }

  if (!missing(modifier_source_value)) {
    fields <- c(fields, "modifier_source_value")
    values <- c(values, if (is.null(modifier_source_value)) " IS NULL" else if (is(modifier_source_value, "subQuery")) paste0(" = (", as.character(modifier_source_value), ")") else paste0(" = '", as.character(modifier_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'procedure_occurrence.modifier_source_value')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 2, table = "procedure_occurrence", fields = fields, values = values)
  expects$rowCount = rowCount
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_count_drug_exposure <- function(rowCount, drug_exposure_id, person_id, drug_concept_id, drug_exposure_start_date, drug_exposure_start_datetime, drug_exposure_end_date, drug_exposure_end_datetime, verbatim_end_date, drug_type_concept_id, stop_reason, refills, quantity, days_supply, sig, route_concept_id, lot_number, provider_id, visit_occurrence_id, visit_detail_id, drug_source_value, drug_source_concept_id, route_source_value, dose_unit_source_value) {
  fields <- c()
  values <- c()
  if (!missing(drug_exposure_id)) {
    fields <- c(fields, "drug_exposure_id")
    values <- c(values, if (is.null(drug_exposure_id)) " IS NULL" else if (is(drug_exposure_id, "subQuery")) paste0(" = (", as.character(drug_exposure_id), ")") else paste0(" = '", as.character(drug_exposure_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.drug_exposure_id')
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.person_id')
  }

  if (!missing(drug_concept_id)) {
    fields <- c(fields, "drug_concept_id")
    values <- c(values, if (is.null(drug_concept_id)) " IS NULL" else if (is(drug_concept_id, "subQuery")) paste0(" = (", as.character(drug_concept_id), ")") else paste0(" = '", as.character(drug_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.drug_concept_id')
  }

  if (!missing(drug_exposure_start_date)) {
    fields <- c(fields, "drug_exposure_start_date")
    values <- c(values, if (is.null(drug_exposure_start_date)) " IS NULL" else if (is(drug_exposure_start_date, "subQuery")) paste0(" = (", as.character(drug_exposure_start_date), ")") else paste0(" = '", as.character(drug_exposure_start_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.drug_exposure_start_date')
  }

  if (!missing(drug_exposure_start_datetime)) {
    fields <- c(fields, "drug_exposure_start_datetime")
    values <- c(values, if (is.null(drug_exposure_start_datetime)) " IS NULL" else if (is(drug_exposure_start_datetime, "subQuery")) paste0(" = (", as.character(drug_exposure_start_datetime), ")") else paste0(" = '", as.character(drug_exposure_start_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.drug_exposure_start_datetime')
  }

  if (!missing(drug_exposure_end_date)) {
    fields <- c(fields, "drug_exposure_end_date")
    values <- c(values, if (is.null(drug_exposure_end_date)) " IS NULL" else if (is(drug_exposure_end_date, "subQuery")) paste0(" = (", as.character(drug_exposure_end_date), ")") else paste0(" = '", as.character(drug_exposure_end_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.drug_exposure_end_date')
  }

  if (!missing(drug_exposure_end_datetime)) {
    fields <- c(fields, "drug_exposure_end_datetime")
    values <- c(values, if (is.null(drug_exposure_end_datetime)) " IS NULL" else if (is(drug_exposure_end_datetime, "subQuery")) paste0(" = (", as.character(drug_exposure_end_datetime), ")") else paste0(" = '", as.character(drug_exposure_end_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.drug_exposure_end_datetime')
  }

  if (!missing(verbatim_end_date)) {
    fields <- c(fields, "verbatim_end_date")
    values <- c(values, if (is.null(verbatim_end_date)) " IS NULL" else if (is(verbatim_end_date, "subQuery")) paste0(" = (", as.character(verbatim_end_date), ")") else paste0(" = '", as.character(verbatim_end_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.verbatim_end_date')
  }

  if (!missing(drug_type_concept_id)) {
    fields <- c(fields, "drug_type_concept_id")
    values <- c(values, if (is.null(drug_type_concept_id)) " IS NULL" else if (is(drug_type_concept_id, "subQuery")) paste0(" = (", as.character(drug_type_concept_id), ")") else paste0(" = '", as.character(drug_type_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.drug_type_concept_id')
  }

  if (!missing(stop_reason)) {
    fields <- c(fields, "stop_reason")
    values <- c(values, if (is.null(stop_reason)) " IS NULL" else if (is(stop_reason, "subQuery")) paste0(" = (", as.character(stop_reason), ")") else paste0(" = '", as.character(stop_reason), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.stop_reason')
  }

  if (!missing(refills)) {
    fields <- c(fields, "refills")
    values <- c(values, if (is.null(refills)) " IS NULL" else if (is(refills, "subQuery")) paste0(" = (", as.character(refills), ")") else paste0(" = '", as.character(refills), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.refills')
  }

  if (!missing(quantity)) {
    fields <- c(fields, "quantity")
    values <- c(values, if (is.null(quantity)) " IS NULL" else if (is(quantity, "subQuery")) paste0(" = (", as.character(quantity), ")") else paste0(" = '", as.character(quantity), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.quantity')
  }

  if (!missing(days_supply)) {
    fields <- c(fields, "days_supply")
    values <- c(values, if (is.null(days_supply)) " IS NULL" else if (is(days_supply, "subQuery")) paste0(" = (", as.character(days_supply), ")") else paste0(" = '", as.character(days_supply), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.days_supply')
  }

  if (!missing(sig)) {
    fields <- c(fields, "sig")
    values <- c(values, if (is.null(sig)) " IS NULL" else if (is(sig, "subQuery")) paste0(" = (", as.character(sig), ")") else paste0(" = '", as.character(sig), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.sig')
  }

  if (!missing(route_concept_id)) {
    fields <- c(fields, "route_concept_id")
    values <- c(values, if (is.null(route_concept_id)) " IS NULL" else if (is(route_concept_id, "subQuery")) paste0(" = (", as.character(route_concept_id), ")") else paste0(" = '", as.character(route_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.route_concept_id')
  }

  if (!missing(lot_number)) {
    fields <- c(fields, "lot_number")
    values <- c(values, if (is.null(lot_number)) " IS NULL" else if (is(lot_number, "subQuery")) paste0(" = (", as.character(lot_number), ")") else paste0(" = '", as.character(lot_number), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.lot_number')
  }

  if (!missing(provider_id)) {
    fields <- c(fields, "provider_id")
    values <- c(values, if (is.null(provider_id)) " IS NULL" else if (is(provider_id, "subQuery")) paste0(" = (", as.character(provider_id), ")") else paste0(" = '", as.character(provider_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.provider_id')
  }

  if (!missing(visit_occurrence_id)) {
    fields <- c(fields, "visit_occurrence_id")
    values <- c(values, if (is.null(visit_occurrence_id)) " IS NULL" else if (is(visit_occurrence_id, "subQuery")) paste0(" = (", as.character(visit_occurrence_id), ")") else paste0(" = '", as.character(visit_occurrence_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.visit_occurrence_id')
  }

  if (!missing(visit_detail_id)) {
    fields <- c(fields, "visit_detail_id")
    values <- c(values, if (is.null(visit_detail_id)) " IS NULL" else if (is(visit_detail_id, "subQuery")) paste0(" = (", as.character(visit_detail_id), ")") else paste0(" = '", as.character(visit_detail_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.visit_detail_id')
  }

  if (!missing(drug_source_value)) {
    fields <- c(fields, "drug_source_value")
    values <- c(values, if (is.null(drug_source_value)) " IS NULL" else if (is(drug_source_value, "subQuery")) paste0(" = (", as.character(drug_source_value), ")") else paste0(" = '", as.character(drug_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.drug_source_value')
  }

  if (!missing(drug_source_concept_id)) {
    fields <- c(fields, "drug_source_concept_id")
    values <- c(values, if (is.null(drug_source_concept_id)) " IS NULL" else if (is(drug_source_concept_id, "subQuery")) paste0(" = (", as.character(drug_source_concept_id), ")") else paste0(" = '", as.character(drug_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.drug_source_concept_id')
  }

  if (!missing(route_source_value)) {
    fields <- c(fields, "route_source_value")
    values <- c(values, if (is.null(route_source_value)) " IS NULL" else if (is(route_source_value, "subQuery")) paste0(" = (", as.character(route_source_value), ")") else paste0(" = '", as.character(route_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.route_source_value')
  }

  if (!missing(dose_unit_source_value)) {
    fields <- c(fields, "dose_unit_source_value")
    values <- c(values, if (is.null(dose_unit_source_value)) " IS NULL" else if (is(dose_unit_source_value, "subQuery")) paste0(" = (", as.character(dose_unit_source_value), ")") else paste0(" = '", as.character(dose_unit_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.dose_unit_source_value')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 2, table = "drug_exposure", fields = fields, values = values)
  expects$rowCount = rowCount
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_count_device_exposure <- function(rowCount, device_exposure_id, person_id, device_concept_id, device_exposure_start_date, device_exposure_start_datetime, device_exposure_end_date, device_exposure_end_datetime, device_type_concept_id, unique_device_id, quantity, provider_id, visit_occurrence_id, visit_detail_id, device_source_value, device_source_concept_id) {
  fields <- c()
  values <- c()
  if (!missing(device_exposure_id)) {
    fields <- c(fields, "device_exposure_id")
    values <- c(values, if (is.null(device_exposure_id)) " IS NULL" else if (is(device_exposure_id, "subQuery")) paste0(" = (", as.character(device_exposure_id), ")") else paste0(" = '", as.character(device_exposure_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'device_exposure.device_exposure_id')
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'device_exposure.person_id')
  }

  if (!missing(device_concept_id)) {
    fields <- c(fields, "device_concept_id")
    values <- c(values, if (is.null(device_concept_id)) " IS NULL" else if (is(device_concept_id, "subQuery")) paste0(" = (", as.character(device_concept_id), ")") else paste0(" = '", as.character(device_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'device_exposure.device_concept_id')
  }

  if (!missing(device_exposure_start_date)) {
    fields <- c(fields, "device_exposure_start_date")
    values <- c(values, if (is.null(device_exposure_start_date)) " IS NULL" else if (is(device_exposure_start_date, "subQuery")) paste0(" = (", as.character(device_exposure_start_date), ")") else paste0(" = '", as.character(device_exposure_start_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'device_exposure.device_exposure_start_date')
  }

  if (!missing(device_exposure_start_datetime)) {
    fields <- c(fields, "device_exposure_start_datetime")
    values <- c(values, if (is.null(device_exposure_start_datetime)) " IS NULL" else if (is(device_exposure_start_datetime, "subQuery")) paste0(" = (", as.character(device_exposure_start_datetime), ")") else paste0(" = '", as.character(device_exposure_start_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'device_exposure.device_exposure_start_datetime')
  }

  if (!missing(device_exposure_end_date)) {
    fields <- c(fields, "device_exposure_end_date")
    values <- c(values, if (is.null(device_exposure_end_date)) " IS NULL" else if (is(device_exposure_end_date, "subQuery")) paste0(" = (", as.character(device_exposure_end_date), ")") else paste0(" = '", as.character(device_exposure_end_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'device_exposure.device_exposure_end_date')
  }

  if (!missing(device_exposure_end_datetime)) {
    fields <- c(fields, "device_exposure_end_datetime")
    values <- c(values, if (is.null(device_exposure_end_datetime)) " IS NULL" else if (is(device_exposure_end_datetime, "subQuery")) paste0(" = (", as.character(device_exposure_end_datetime), ")") else paste0(" = '", as.character(device_exposure_end_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'device_exposure.device_exposure_end_datetime')
  }

  if (!missing(device_type_concept_id)) {
    fields <- c(fields, "device_type_concept_id")
    values <- c(values, if (is.null(device_type_concept_id)) " IS NULL" else if (is(device_type_concept_id, "subQuery")) paste0(" = (", as.character(device_type_concept_id), ")") else paste0(" = '", as.character(device_type_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'device_exposure.device_type_concept_id')
  }

  if (!missing(unique_device_id)) {
    fields <- c(fields, "unique_device_id")
    values <- c(values, if (is.null(unique_device_id)) " IS NULL" else if (is(unique_device_id, "subQuery")) paste0(" = (", as.character(unique_device_id), ")") else paste0(" = '", as.character(unique_device_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'device_exposure.unique_device_id')
  }

  if (!missing(quantity)) {
    fields <- c(fields, "quantity")
    values <- c(values, if (is.null(quantity)) " IS NULL" else if (is(quantity, "subQuery")) paste0(" = (", as.character(quantity), ")") else paste0(" = '", as.character(quantity), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'device_exposure.quantity')
  }

  if (!missing(provider_id)) {
    fields <- c(fields, "provider_id")
    values <- c(values, if (is.null(provider_id)) " IS NULL" else if (is(provider_id, "subQuery")) paste0(" = (", as.character(provider_id), ")") else paste0(" = '", as.character(provider_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'device_exposure.provider_id')
  }

  if (!missing(visit_occurrence_id)) {
    fields <- c(fields, "visit_occurrence_id")
    values <- c(values, if (is.null(visit_occurrence_id)) " IS NULL" else if (is(visit_occurrence_id, "subQuery")) paste0(" = (", as.character(visit_occurrence_id), ")") else paste0(" = '", as.character(visit_occurrence_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'device_exposure.visit_occurrence_id')
  }

  if (!missing(visit_detail_id)) {
    fields <- c(fields, "visit_detail_id")
    values <- c(values, if (is.null(visit_detail_id)) " IS NULL" else if (is(visit_detail_id, "subQuery")) paste0(" = (", as.character(visit_detail_id), ")") else paste0(" = '", as.character(visit_detail_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'device_exposure.visit_detail_id')
  }

  if (!missing(device_source_value)) {
    fields <- c(fields, "device_source_value")
    values <- c(values, if (is.null(device_source_value)) " IS NULL" else if (is(device_source_value, "subQuery")) paste0(" = (", as.character(device_source_value), ")") else paste0(" = '", as.character(device_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'device_exposure.device_source_value')
  }

  if (!missing(device_source_concept_id)) {
    fields <- c(fields, "device_source_concept_id")
    values <- c(values, if (is.null(device_source_concept_id)) " IS NULL" else if (is(device_source_concept_id, "subQuery")) paste0(" = (", as.character(device_source_concept_id), ")") else paste0(" = '", as.character(device_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'device_exposure.device_source_concept_id')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 2, table = "device_exposure", fields = fields, values = values)
  expects$rowCount = rowCount
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_count_measurement <- function(rowCount, measurement_id, person_id, measurement_concept_id, measurement_date, measurement_datetime, measurement_time, measurement_type_concept_id, operator_concept_id, value_as_number, value_as_concept_id, unit_concept_id, range_low, range_high, provider_id, visit_occurrence_id, visit_detail_id, measurement_source_value, measurement_source_concept_id, unit_source_value, value_source_value) {
  fields <- c()
  values <- c()
  if (!missing(measurement_id)) {
    fields <- c(fields, "measurement_id")
    values <- c(values, if (is.null(measurement_id)) " IS NULL" else if (is(measurement_id, "subQuery")) paste0(" = (", as.character(measurement_id), ")") else paste0(" = '", as.character(measurement_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.measurement_id')
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.person_id')
  }

  if (!missing(measurement_concept_id)) {
    fields <- c(fields, "measurement_concept_id")
    values <- c(values, if (is.null(measurement_concept_id)) " IS NULL" else if (is(measurement_concept_id, "subQuery")) paste0(" = (", as.character(measurement_concept_id), ")") else paste0(" = '", as.character(measurement_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.measurement_concept_id')
  }

  if (!missing(measurement_date)) {
    fields <- c(fields, "measurement_date")
    values <- c(values, if (is.null(measurement_date)) " IS NULL" else if (is(measurement_date, "subQuery")) paste0(" = (", as.character(measurement_date), ")") else paste0(" = '", as.character(measurement_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.measurement_date')
  }

  if (!missing(measurement_datetime)) {
    fields <- c(fields, "measurement_datetime")
    values <- c(values, if (is.null(measurement_datetime)) " IS NULL" else if (is(measurement_datetime, "subQuery")) paste0(" = (", as.character(measurement_datetime), ")") else paste0(" = '", as.character(measurement_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.measurement_datetime')
  }

  if (!missing(measurement_time)) {
    fields <- c(fields, "measurement_time")
    values <- c(values, if (is.null(measurement_time)) " IS NULL" else if (is(measurement_time, "subQuery")) paste0(" = (", as.character(measurement_time), ")") else paste0(" = '", as.character(measurement_time), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.measurement_time')
  }

  if (!missing(measurement_type_concept_id)) {
    fields <- c(fields, "measurement_type_concept_id")
    values <- c(values, if (is.null(measurement_type_concept_id)) " IS NULL" else if (is(measurement_type_concept_id, "subQuery")) paste0(" = (", as.character(measurement_type_concept_id), ")") else paste0(" = '", as.character(measurement_type_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.measurement_type_concept_id')
  }

  if (!missing(operator_concept_id)) {
    fields <- c(fields, "operator_concept_id")
    values <- c(values, if (is.null(operator_concept_id)) " IS NULL" else if (is(operator_concept_id, "subQuery")) paste0(" = (", as.character(operator_concept_id), ")") else paste0(" = '", as.character(operator_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.operator_concept_id')
  }

  if (!missing(value_as_number)) {
    fields <- c(fields, "value_as_number")
    values <- c(values, if (is.null(value_as_number)) " IS NULL" else if (is(value_as_number, "subQuery")) paste0(" = (", as.character(value_as_number), ")") else paste0(" = '", as.character(value_as_number), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.value_as_number')
  }

  if (!missing(value_as_concept_id)) {
    fields <- c(fields, "value_as_concept_id")
    values <- c(values, if (is.null(value_as_concept_id)) " IS NULL" else if (is(value_as_concept_id, "subQuery")) paste0(" = (", as.character(value_as_concept_id), ")") else paste0(" = '", as.character(value_as_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.value_as_concept_id')
  }

  if (!missing(unit_concept_id)) {
    fields <- c(fields, "unit_concept_id")
    values <- c(values, if (is.null(unit_concept_id)) " IS NULL" else if (is(unit_concept_id, "subQuery")) paste0(" = (", as.character(unit_concept_id), ")") else paste0(" = '", as.character(unit_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.unit_concept_id')
  }

  if (!missing(range_low)) {
    fields <- c(fields, "range_low")
    values <- c(values, if (is.null(range_low)) " IS NULL" else if (is(range_low, "subQuery")) paste0(" = (", as.character(range_low), ")") else paste0(" = '", as.character(range_low), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.range_low')
  }

  if (!missing(range_high)) {
    fields <- c(fields, "range_high")
    values <- c(values, if (is.null(range_high)) " IS NULL" else if (is(range_high, "subQuery")) paste0(" = (", as.character(range_high), ")") else paste0(" = '", as.character(range_high), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.range_high')
  }

  if (!missing(provider_id)) {
    fields <- c(fields, "provider_id")
    values <- c(values, if (is.null(provider_id)) " IS NULL" else if (is(provider_id, "subQuery")) paste0(" = (", as.character(provider_id), ")") else paste0(" = '", as.character(provider_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.provider_id')
  }

  if (!missing(visit_occurrence_id)) {
    fields <- c(fields, "visit_occurrence_id")
    values <- c(values, if (is.null(visit_occurrence_id)) " IS NULL" else if (is(visit_occurrence_id, "subQuery")) paste0(" = (", as.character(visit_occurrence_id), ")") else paste0(" = '", as.character(visit_occurrence_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.visit_occurrence_id')
  }

  if (!missing(visit_detail_id)) {
    fields <- c(fields, "visit_detail_id")
    values <- c(values, if (is.null(visit_detail_id)) " IS NULL" else if (is(visit_detail_id, "subQuery")) paste0(" = (", as.character(visit_detail_id), ")") else paste0(" = '", as.character(visit_detail_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.visit_detail_id')
  }

  if (!missing(measurement_source_value)) {
    fields <- c(fields, "measurement_source_value")
    values <- c(values, if (is.null(measurement_source_value)) " IS NULL" else if (is(measurement_source_value, "subQuery")) paste0(" = (", as.character(measurement_source_value), ")") else paste0(" = '", as.character(measurement_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.measurement_source_value')
  }

  if (!missing(measurement_source_concept_id)) {
    fields <- c(fields, "measurement_source_concept_id")
    values <- c(values, if (is.null(measurement_source_concept_id)) " IS NULL" else if (is(measurement_source_concept_id, "subQuery")) paste0(" = (", as.character(measurement_source_concept_id), ")") else paste0(" = '", as.character(measurement_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.measurement_source_concept_id')
  }

  if (!missing(unit_source_value)) {
    fields <- c(fields, "unit_source_value")
    values <- c(values, if (is.null(unit_source_value)) " IS NULL" else if (is(unit_source_value, "subQuery")) paste0(" = (", as.character(unit_source_value), ")") else paste0(" = '", as.character(unit_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.unit_source_value')
  }

  if (!missing(value_source_value)) {
    fields <- c(fields, "value_source_value")
    values <- c(values, if (is.null(value_source_value)) " IS NULL" else if (is(value_source_value, "subQuery")) paste0(" = (", as.character(value_source_value), ")") else paste0(" = '", as.character(value_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.value_source_value')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 2, table = "measurement", fields = fields, values = values)
  expects$rowCount = rowCount
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_count_observation <- function(rowCount, observation_id, person_id, observation_concept_id, observation_date, observation_datetime, observation_type_concept_id, value_as_number, value_as_string, value_as_concept_id, qualifier_concept_id, unit_concept_id, provider_id, visit_occurrence_id, visit_detail_id, observation_source_value, observation_source_concept_id, unit_source_value, qualifier_source_value, observation_event_id, obs_event_field_concept_id, value_as_datetime) {
  fields <- c()
  values <- c()
  if (!missing(observation_id)) {
    fields <- c(fields, "observation_id")
    values <- c(values, if (is.null(observation_id)) " IS NULL" else if (is(observation_id, "subQuery")) paste0(" = (", as.character(observation_id), ")") else paste0(" = '", as.character(observation_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.observation_id')
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.person_id')
  }

  if (!missing(observation_concept_id)) {
    fields <- c(fields, "observation_concept_id")
    values <- c(values, if (is.null(observation_concept_id)) " IS NULL" else if (is(observation_concept_id, "subQuery")) paste0(" = (", as.character(observation_concept_id), ")") else paste0(" = '", as.character(observation_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.observation_concept_id')
  }

  if (!missing(observation_date)) {
    fields <- c(fields, "observation_date")
    values <- c(values, if (is.null(observation_date)) " IS NULL" else if (is(observation_date, "subQuery")) paste0(" = (", as.character(observation_date), ")") else paste0(" = '", as.character(observation_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.observation_date')
  }

  if (!missing(observation_datetime)) {
    fields <- c(fields, "observation_datetime")
    values <- c(values, if (is.null(observation_datetime)) " IS NULL" else if (is(observation_datetime, "subQuery")) paste0(" = (", as.character(observation_datetime), ")") else paste0(" = '", as.character(observation_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.observation_datetime')
  }

  if (!missing(observation_type_concept_id)) {
    fields <- c(fields, "observation_type_concept_id")
    values <- c(values, if (is.null(observation_type_concept_id)) " IS NULL" else if (is(observation_type_concept_id, "subQuery")) paste0(" = (", as.character(observation_type_concept_id), ")") else paste0(" = '", as.character(observation_type_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.observation_type_concept_id')
  }

  if (!missing(value_as_number)) {
    fields <- c(fields, "value_as_number")
    values <- c(values, if (is.null(value_as_number)) " IS NULL" else if (is(value_as_number, "subQuery")) paste0(" = (", as.character(value_as_number), ")") else paste0(" = '", as.character(value_as_number), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.value_as_number')
  }

  if (!missing(value_as_string)) {
    fields <- c(fields, "value_as_string")
    values <- c(values, if (is.null(value_as_string)) " IS NULL" else if (is(value_as_string, "subQuery")) paste0(" = (", as.character(value_as_string), ")") else paste0(" = '", as.character(value_as_string), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.value_as_string')
  }

  if (!missing(value_as_concept_id)) {
    fields <- c(fields, "value_as_concept_id")
    values <- c(values, if (is.null(value_as_concept_id)) " IS NULL" else if (is(value_as_concept_id, "subQuery")) paste0(" = (", as.character(value_as_concept_id), ")") else paste0(" = '", as.character(value_as_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.value_as_concept_id')
  }

  if (!missing(qualifier_concept_id)) {
    fields <- c(fields, "qualifier_concept_id")
    values <- c(values, if (is.null(qualifier_concept_id)) " IS NULL" else if (is(qualifier_concept_id, "subQuery")) paste0(" = (", as.character(qualifier_concept_id), ")") else paste0(" = '", as.character(qualifier_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.qualifier_concept_id')
  }

  if (!missing(unit_concept_id)) {
    fields <- c(fields, "unit_concept_id")
    values <- c(values, if (is.null(unit_concept_id)) " IS NULL" else if (is(unit_concept_id, "subQuery")) paste0(" = (", as.character(unit_concept_id), ")") else paste0(" = '", as.character(unit_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.unit_concept_id')
  }

  if (!missing(provider_id)) {
    fields <- c(fields, "provider_id")
    values <- c(values, if (is.null(provider_id)) " IS NULL" else if (is(provider_id, "subQuery")) paste0(" = (", as.character(provider_id), ")") else paste0(" = '", as.character(provider_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.provider_id')
  }

  if (!missing(visit_occurrence_id)) {
    fields <- c(fields, "visit_occurrence_id")
    values <- c(values, if (is.null(visit_occurrence_id)) " IS NULL" else if (is(visit_occurrence_id, "subQuery")) paste0(" = (", as.character(visit_occurrence_id), ")") else paste0(" = '", as.character(visit_occurrence_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.visit_occurrence_id')
  }

  if (!missing(visit_detail_id)) {
    fields <- c(fields, "visit_detail_id")
    values <- c(values, if (is.null(visit_detail_id)) " IS NULL" else if (is(visit_detail_id, "subQuery")) paste0(" = (", as.character(visit_detail_id), ")") else paste0(" = '", as.character(visit_detail_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.visit_detail_id')
  }

  if (!missing(observation_source_value)) {
    fields <- c(fields, "observation_source_value")
    values <- c(values, if (is.null(observation_source_value)) " IS NULL" else if (is(observation_source_value, "subQuery")) paste0(" = (", as.character(observation_source_value), ")") else paste0(" = '", as.character(observation_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.observation_source_value')
  }

  if (!missing(observation_source_concept_id)) {
    fields <- c(fields, "observation_source_concept_id")
    values <- c(values, if (is.null(observation_source_concept_id)) " IS NULL" else if (is(observation_source_concept_id, "subQuery")) paste0(" = (", as.character(observation_source_concept_id), ")") else paste0(" = '", as.character(observation_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.observation_source_concept_id')
  }

  if (!missing(unit_source_value)) {
    fields <- c(fields, "unit_source_value")
    values <- c(values, if (is.null(unit_source_value)) " IS NULL" else if (is(unit_source_value, "subQuery")) paste0(" = (", as.character(unit_source_value), ")") else paste0(" = '", as.character(unit_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.unit_source_value')
  }

  if (!missing(qualifier_source_value)) {
    fields <- c(fields, "qualifier_source_value")
    values <- c(values, if (is.null(qualifier_source_value)) " IS NULL" else if (is(qualifier_source_value, "subQuery")) paste0(" = (", as.character(qualifier_source_value), ")") else paste0(" = '", as.character(qualifier_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.qualifier_source_value')
  }

  if (!missing(observation_event_id)) {
    fields <- c(fields, "observation_event_id")
    values <- c(values, if (is.null(observation_event_id)) " IS NULL" else if (is(observation_event_id, "subQuery")) paste0(" = (", as.character(observation_event_id), ")") else paste0(" = '", as.character(observation_event_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.observation_event_id')
  }

  if (!missing(obs_event_field_concept_id)) {
    fields <- c(fields, "obs_event_field_concept_id")
    values <- c(values, if (is.null(obs_event_field_concept_id)) " IS NULL" else if (is(obs_event_field_concept_id, "subQuery")) paste0(" = (", as.character(obs_event_field_concept_id), ")") else paste0(" = '", as.character(obs_event_field_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.obs_event_field_concept_id')
  }

  if (!missing(value_as_datetime)) {
    fields <- c(fields, "value_as_datetime")
    values <- c(values, if (is.null(value_as_datetime)) " IS NULL" else if (is(value_as_datetime, "subQuery")) paste0(" = (", as.character(value_as_datetime), ")") else paste0(" = '", as.character(value_as_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.value_as_datetime')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 2, table = "observation", fields = fields, values = values)
  expects$rowCount = rowCount
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_count_specimen <- function(rowCount, specimen_id, person_id, specimen_concept_id, specimen_type_concept_id, specimen_date, specimen_datetime, quantity, unit_concept_id, anatomic_site_concept_id, disease_status_concept_id, specimen_source_id, specimen_source_value, unit_source_value, anatomic_site_source_value, disease_status_source_value) {
  fields <- c()
  values <- c()
  if (!missing(specimen_id)) {
    fields <- c(fields, "specimen_id")
    values <- c(values, if (is.null(specimen_id)) " IS NULL" else if (is(specimen_id, "subQuery")) paste0(" = (", as.character(specimen_id), ")") else paste0(" = '", as.character(specimen_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'specimen.specimen_id')
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'specimen.person_id')
  }

  if (!missing(specimen_concept_id)) {
    fields <- c(fields, "specimen_concept_id")
    values <- c(values, if (is.null(specimen_concept_id)) " IS NULL" else if (is(specimen_concept_id, "subQuery")) paste0(" = (", as.character(specimen_concept_id), ")") else paste0(" = '", as.character(specimen_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'specimen.specimen_concept_id')
  }

  if (!missing(specimen_type_concept_id)) {
    fields <- c(fields, "specimen_type_concept_id")
    values <- c(values, if (is.null(specimen_type_concept_id)) " IS NULL" else if (is(specimen_type_concept_id, "subQuery")) paste0(" = (", as.character(specimen_type_concept_id), ")") else paste0(" = '", as.character(specimen_type_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'specimen.specimen_type_concept_id')
  }

  if (!missing(specimen_date)) {
    fields <- c(fields, "specimen_date")
    values <- c(values, if (is.null(specimen_date)) " IS NULL" else if (is(specimen_date, "subQuery")) paste0(" = (", as.character(specimen_date), ")") else paste0(" = '", as.character(specimen_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'specimen.specimen_date')
  }

  if (!missing(specimen_datetime)) {
    fields <- c(fields, "specimen_datetime")
    values <- c(values, if (is.null(specimen_datetime)) " IS NULL" else if (is(specimen_datetime, "subQuery")) paste0(" = (", as.character(specimen_datetime), ")") else paste0(" = '", as.character(specimen_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'specimen.specimen_datetime')
  }

  if (!missing(quantity)) {
    fields <- c(fields, "quantity")
    values <- c(values, if (is.null(quantity)) " IS NULL" else if (is(quantity, "subQuery")) paste0(" = (", as.character(quantity), ")") else paste0(" = '", as.character(quantity), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'specimen.quantity')
  }

  if (!missing(unit_concept_id)) {
    fields <- c(fields, "unit_concept_id")
    values <- c(values, if (is.null(unit_concept_id)) " IS NULL" else if (is(unit_concept_id, "subQuery")) paste0(" = (", as.character(unit_concept_id), ")") else paste0(" = '", as.character(unit_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'specimen.unit_concept_id')
  }

  if (!missing(anatomic_site_concept_id)) {
    fields <- c(fields, "anatomic_site_concept_id")
    values <- c(values, if (is.null(anatomic_site_concept_id)) " IS NULL" else if (is(anatomic_site_concept_id, "subQuery")) paste0(" = (", as.character(anatomic_site_concept_id), ")") else paste0(" = '", as.character(anatomic_site_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'specimen.anatomic_site_concept_id')
  }

  if (!missing(disease_status_concept_id)) {
    fields <- c(fields, "disease_status_concept_id")
    values <- c(values, if (is.null(disease_status_concept_id)) " IS NULL" else if (is(disease_status_concept_id, "subQuery")) paste0(" = (", as.character(disease_status_concept_id), ")") else paste0(" = '", as.character(disease_status_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'specimen.disease_status_concept_id')
  }

  if (!missing(specimen_source_id)) {
    fields <- c(fields, "specimen_source_id")
    values <- c(values, if (is.null(specimen_source_id)) " IS NULL" else if (is(specimen_source_id, "subQuery")) paste0(" = (", as.character(specimen_source_id), ")") else paste0(" = '", as.character(specimen_source_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'specimen.specimen_source_id')
  }

  if (!missing(specimen_source_value)) {
    fields <- c(fields, "specimen_source_value")
    values <- c(values, if (is.null(specimen_source_value)) " IS NULL" else if (is(specimen_source_value, "subQuery")) paste0(" = (", as.character(specimen_source_value), ")") else paste0(" = '", as.character(specimen_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'specimen.specimen_source_value')
  }

  if (!missing(unit_source_value)) {
    fields <- c(fields, "unit_source_value")
    values <- c(values, if (is.null(unit_source_value)) " IS NULL" else if (is(unit_source_value, "subQuery")) paste0(" = (", as.character(unit_source_value), ")") else paste0(" = '", as.character(unit_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'specimen.unit_source_value')
  }

  if (!missing(anatomic_site_source_value)) {
    fields <- c(fields, "anatomic_site_source_value")
    values <- c(values, if (is.null(anatomic_site_source_value)) " IS NULL" else if (is(anatomic_site_source_value, "subQuery")) paste0(" = (", as.character(anatomic_site_source_value), ")") else paste0(" = '", as.character(anatomic_site_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'specimen.anatomic_site_source_value')
  }

  if (!missing(disease_status_source_value)) {
    fields <- c(fields, "disease_status_source_value")
    values <- c(values, if (is.null(disease_status_source_value)) " IS NULL" else if (is(disease_status_source_value, "subQuery")) paste0(" = (", as.character(disease_status_source_value), ")") else paste0(" = '", as.character(disease_status_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'specimen.disease_status_source_value')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 2, table = "specimen", fields = fields, values = values)
  expects$rowCount = rowCount
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_count_note <- function(rowCount, note_id, person_id, note_event_id, note_event_field_concept_id, note_date, note_datetime, note_type_concept_id, note_class_concept_id, note_title, note_text, encoding_concept_id, language_concept_id, provider_id, visit_occurrence_id, visit_detail_id, note_source_value) {
  fields <- c()
  values <- c()
  if (!missing(note_id)) {
    fields <- c(fields, "note_id")
    values <- c(values, if (is.null(note_id)) " IS NULL" else if (is(note_id, "subQuery")) paste0(" = (", as.character(note_id), ")") else paste0(" = '", as.character(note_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note.note_id')
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note.person_id')
  }

  if (!missing(note_event_id)) {
    fields <- c(fields, "note_event_id")
    values <- c(values, if (is.null(note_event_id)) " IS NULL" else if (is(note_event_id, "subQuery")) paste0(" = (", as.character(note_event_id), ")") else paste0(" = '", as.character(note_event_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note.note_event_id')
  }

  if (!missing(note_event_field_concept_id)) {
    fields <- c(fields, "note_event_field_concept_id")
    values <- c(values, if (is.null(note_event_field_concept_id)) " IS NULL" else if (is(note_event_field_concept_id, "subQuery")) paste0(" = (", as.character(note_event_field_concept_id), ")") else paste0(" = '", as.character(note_event_field_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note.note_event_field_concept_id')
  }

  if (!missing(note_date)) {
    fields <- c(fields, "note_date")
    values <- c(values, if (is.null(note_date)) " IS NULL" else if (is(note_date, "subQuery")) paste0(" = (", as.character(note_date), ")") else paste0(" = '", as.character(note_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note.note_date')
  }

  if (!missing(note_datetime)) {
    fields <- c(fields, "note_datetime")
    values <- c(values, if (is.null(note_datetime)) " IS NULL" else if (is(note_datetime, "subQuery")) paste0(" = (", as.character(note_datetime), ")") else paste0(" = '", as.character(note_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note.note_datetime')
  }

  if (!missing(note_type_concept_id)) {
    fields <- c(fields, "note_type_concept_id")
    values <- c(values, if (is.null(note_type_concept_id)) " IS NULL" else if (is(note_type_concept_id, "subQuery")) paste0(" = (", as.character(note_type_concept_id), ")") else paste0(" = '", as.character(note_type_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note.note_type_concept_id')
  }

  if (!missing(note_class_concept_id)) {
    fields <- c(fields, "note_class_concept_id")
    values <- c(values, if (is.null(note_class_concept_id)) " IS NULL" else if (is(note_class_concept_id, "subQuery")) paste0(" = (", as.character(note_class_concept_id), ")") else paste0(" = '", as.character(note_class_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note.note_class_concept_id')
  }

  if (!missing(note_title)) {
    fields <- c(fields, "note_title")
    values <- c(values, if (is.null(note_title)) " IS NULL" else if (is(note_title, "subQuery")) paste0(" = (", as.character(note_title), ")") else paste0(" = '", as.character(note_title), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note.note_title')
  }

  if (!missing(note_text)) {
    fields <- c(fields, "note_text")
    values <- c(values, if (is.null(note_text)) " IS NULL" else if (is(note_text, "subQuery")) paste0(" = (", as.character(note_text), ")") else paste0(" = '", as.character(note_text), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note.note_text')
  }

  if (!missing(encoding_concept_id)) {
    fields <- c(fields, "encoding_concept_id")
    values <- c(values, if (is.null(encoding_concept_id)) " IS NULL" else if (is(encoding_concept_id, "subQuery")) paste0(" = (", as.character(encoding_concept_id), ")") else paste0(" = '", as.character(encoding_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note.encoding_concept_id')
  }

  if (!missing(language_concept_id)) {
    fields <- c(fields, "language_concept_id")
    values <- c(values, if (is.null(language_concept_id)) " IS NULL" else if (is(language_concept_id, "subQuery")) paste0(" = (", as.character(language_concept_id), ")") else paste0(" = '", as.character(language_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note.language_concept_id')
  }

  if (!missing(provider_id)) {
    fields <- c(fields, "provider_id")
    values <- c(values, if (is.null(provider_id)) " IS NULL" else if (is(provider_id, "subQuery")) paste0(" = (", as.character(provider_id), ")") else paste0(" = '", as.character(provider_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note.provider_id')
  }

  if (!missing(visit_occurrence_id)) {
    fields <- c(fields, "visit_occurrence_id")
    values <- c(values, if (is.null(visit_occurrence_id)) " IS NULL" else if (is(visit_occurrence_id, "subQuery")) paste0(" = (", as.character(visit_occurrence_id), ")") else paste0(" = '", as.character(visit_occurrence_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note.visit_occurrence_id')
  }

  if (!missing(visit_detail_id)) {
    fields <- c(fields, "visit_detail_id")
    values <- c(values, if (is.null(visit_detail_id)) " IS NULL" else if (is(visit_detail_id, "subQuery")) paste0(" = (", as.character(visit_detail_id), ")") else paste0(" = '", as.character(visit_detail_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note.visit_detail_id')
  }

  if (!missing(note_source_value)) {
    fields <- c(fields, "note_source_value")
    values <- c(values, if (is.null(note_source_value)) " IS NULL" else if (is(note_source_value, "subQuery")) paste0(" = (", as.character(note_source_value), ")") else paste0(" = '", as.character(note_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note.note_source_value')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 2, table = "note", fields = fields, values = values)
  expects$rowCount = rowCount
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_count_note_nlp <- function(rowCount, note_nlp_id, note_id, section_concept_id, snippet, offset, lexical_variant, note_nlp_concept_id, note_nlp_source_concept_id, nlp_system, nlp_date, nlp_datetime, term_exists, term_temporal, term_modifiers) {
  fields <- c()
  values <- c()
  if (!missing(note_nlp_id)) {
    fields <- c(fields, "note_nlp_id")
    values <- c(values, if (is.null(note_nlp_id)) " IS NULL" else if (is(note_nlp_id, "subQuery")) paste0(" = (", as.character(note_nlp_id), ")") else paste0(" = '", as.character(note_nlp_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note_nlp.note_nlp_id')
  }

  if (!missing(note_id)) {
    fields <- c(fields, "note_id")
    values <- c(values, if (is.null(note_id)) " IS NULL" else if (is(note_id, "subQuery")) paste0(" = (", as.character(note_id), ")") else paste0(" = '", as.character(note_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note_nlp.note_id')
  }

  if (!missing(section_concept_id)) {
    fields <- c(fields, "section_concept_id")
    values <- c(values, if (is.null(section_concept_id)) " IS NULL" else if (is(section_concept_id, "subQuery")) paste0(" = (", as.character(section_concept_id), ")") else paste0(" = '", as.character(section_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note_nlp.section_concept_id')
  }

  if (!missing(snippet)) {
    fields <- c(fields, "snippet")
    values <- c(values, if (is.null(snippet)) " IS NULL" else if (is(snippet, "subQuery")) paste0(" = (", as.character(snippet), ")") else paste0(" = '", as.character(snippet), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note_nlp.snippet')
  }

  if (!missing(offset)) {
    fields <- c(fields, "offset")
    values <- c(values, if (is.null(offset)) " IS NULL" else if (is(offset, "subQuery")) paste0(" = (", as.character(offset), ")") else paste0(" = '", as.character(offset), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note_nlp.offset')
  }

  if (!missing(lexical_variant)) {
    fields <- c(fields, "lexical_variant")
    values <- c(values, if (is.null(lexical_variant)) " IS NULL" else if (is(lexical_variant, "subQuery")) paste0(" = (", as.character(lexical_variant), ")") else paste0(" = '", as.character(lexical_variant), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note_nlp.lexical_variant')
  }

  if (!missing(note_nlp_concept_id)) {
    fields <- c(fields, "note_nlp_concept_id")
    values <- c(values, if (is.null(note_nlp_concept_id)) " IS NULL" else if (is(note_nlp_concept_id, "subQuery")) paste0(" = (", as.character(note_nlp_concept_id), ")") else paste0(" = '", as.character(note_nlp_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note_nlp.note_nlp_concept_id')
  }

  if (!missing(note_nlp_source_concept_id)) {
    fields <- c(fields, "note_nlp_source_concept_id")
    values <- c(values, if (is.null(note_nlp_source_concept_id)) " IS NULL" else if (is(note_nlp_source_concept_id, "subQuery")) paste0(" = (", as.character(note_nlp_source_concept_id), ")") else paste0(" = '", as.character(note_nlp_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note_nlp.note_nlp_source_concept_id')
  }

  if (!missing(nlp_system)) {
    fields <- c(fields, "nlp_system")
    values <- c(values, if (is.null(nlp_system)) " IS NULL" else if (is(nlp_system, "subQuery")) paste0(" = (", as.character(nlp_system), ")") else paste0(" = '", as.character(nlp_system), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note_nlp.nlp_system')
  }

  if (!missing(nlp_date)) {
    fields <- c(fields, "nlp_date")
    values <- c(values, if (is.null(nlp_date)) " IS NULL" else if (is(nlp_date, "subQuery")) paste0(" = (", as.character(nlp_date), ")") else paste0(" = '", as.character(nlp_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note_nlp.nlp_date')
  }

  if (!missing(nlp_datetime)) {
    fields <- c(fields, "nlp_datetime")
    values <- c(values, if (is.null(nlp_datetime)) " IS NULL" else if (is(nlp_datetime, "subQuery")) paste0(" = (", as.character(nlp_datetime), ")") else paste0(" = '", as.character(nlp_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note_nlp.nlp_datetime')
  }

  if (!missing(term_exists)) {
    fields <- c(fields, "term_exists")
    values <- c(values, if (is.null(term_exists)) " IS NULL" else if (is(term_exists, "subQuery")) paste0(" = (", as.character(term_exists), ")") else paste0(" = '", as.character(term_exists), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note_nlp.term_exists')
  }

  if (!missing(term_temporal)) {
    fields <- c(fields, "term_temporal")
    values <- c(values, if (is.null(term_temporal)) " IS NULL" else if (is(term_temporal, "subQuery")) paste0(" = (", as.character(term_temporal), ")") else paste0(" = '", as.character(term_temporal), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note_nlp.term_temporal')
  }

  if (!missing(term_modifiers)) {
    fields <- c(fields, "term_modifiers")
    values <- c(values, if (is.null(term_modifiers)) " IS NULL" else if (is(term_modifiers, "subQuery")) paste0(" = (", as.character(term_modifiers), ")") else paste0(" = '", as.character(term_modifiers), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note_nlp.term_modifiers')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 2, table = "note_nlp", fields = fields, values = values)
  expects$rowCount = rowCount
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_count_survey_conduct <- function(rowCount, survey_conduct_id, person_id, survey_concept_id, survey_start_date, survey_start_datetime, survey_end_date, survey_end_datetime, provider_id, assisted_concept_id, respondent_type_concept_id, timing_concept_id, collection_method_concept_id, assisted_source_value, respondent_type_source_value, timing_source_value, collection_method_source_value, survey_source_value, survey_source_concept_id, survey_source_identifier, validated_survey_concept_id, validated_survey_source_value, survey_version_number, visit_occurrence_id, response_visit_occurrence_id) {
  fields <- c()
  values <- c()
  if (!missing(survey_conduct_id)) {
    fields <- c(fields, "survey_conduct_id")
    values <- c(values, if (is.null(survey_conduct_id)) " IS NULL" else if (is(survey_conduct_id, "subQuery")) paste0(" = (", as.character(survey_conduct_id), ")") else paste0(" = '", as.character(survey_conduct_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.survey_conduct_id')
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.person_id')
  }

  if (!missing(survey_concept_id)) {
    fields <- c(fields, "survey_concept_id")
    values <- c(values, if (is.null(survey_concept_id)) " IS NULL" else if (is(survey_concept_id, "subQuery")) paste0(" = (", as.character(survey_concept_id), ")") else paste0(" = '", as.character(survey_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.survey_concept_id')
  }

  if (!missing(survey_start_date)) {
    fields <- c(fields, "survey_start_date")
    values <- c(values, if (is.null(survey_start_date)) " IS NULL" else if (is(survey_start_date, "subQuery")) paste0(" = (", as.character(survey_start_date), ")") else paste0(" = '", as.character(survey_start_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.survey_start_date')
  }

  if (!missing(survey_start_datetime)) {
    fields <- c(fields, "survey_start_datetime")
    values <- c(values, if (is.null(survey_start_datetime)) " IS NULL" else if (is(survey_start_datetime, "subQuery")) paste0(" = (", as.character(survey_start_datetime), ")") else paste0(" = '", as.character(survey_start_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.survey_start_datetime')
  }

  if (!missing(survey_end_date)) {
    fields <- c(fields, "survey_end_date")
    values <- c(values, if (is.null(survey_end_date)) " IS NULL" else if (is(survey_end_date, "subQuery")) paste0(" = (", as.character(survey_end_date), ")") else paste0(" = '", as.character(survey_end_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.survey_end_date')
  }

  if (!missing(survey_end_datetime)) {
    fields <- c(fields, "survey_end_datetime")
    values <- c(values, if (is.null(survey_end_datetime)) " IS NULL" else if (is(survey_end_datetime, "subQuery")) paste0(" = (", as.character(survey_end_datetime), ")") else paste0(" = '", as.character(survey_end_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.survey_end_datetime')
  }

  if (!missing(provider_id)) {
    fields <- c(fields, "provider_id")
    values <- c(values, if (is.null(provider_id)) " IS NULL" else if (is(provider_id, "subQuery")) paste0(" = (", as.character(provider_id), ")") else paste0(" = '", as.character(provider_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.provider_id')
  }

  if (!missing(assisted_concept_id)) {
    fields <- c(fields, "assisted_concept_id")
    values <- c(values, if (is.null(assisted_concept_id)) " IS NULL" else if (is(assisted_concept_id, "subQuery")) paste0(" = (", as.character(assisted_concept_id), ")") else paste0(" = '", as.character(assisted_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.assisted_concept_id')
  }

  if (!missing(respondent_type_concept_id)) {
    fields <- c(fields, "respondent_type_concept_id")
    values <- c(values, if (is.null(respondent_type_concept_id)) " IS NULL" else if (is(respondent_type_concept_id, "subQuery")) paste0(" = (", as.character(respondent_type_concept_id), ")") else paste0(" = '", as.character(respondent_type_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.respondent_type_concept_id')
  }

  if (!missing(timing_concept_id)) {
    fields <- c(fields, "timing_concept_id")
    values <- c(values, if (is.null(timing_concept_id)) " IS NULL" else if (is(timing_concept_id, "subQuery")) paste0(" = (", as.character(timing_concept_id), ")") else paste0(" = '", as.character(timing_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.timing_concept_id')
  }

  if (!missing(collection_method_concept_id)) {
    fields <- c(fields, "collection_method_concept_id")
    values <- c(values, if (is.null(collection_method_concept_id)) " IS NULL" else if (is(collection_method_concept_id, "subQuery")) paste0(" = (", as.character(collection_method_concept_id), ")") else paste0(" = '", as.character(collection_method_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.collection_method_concept_id')
  }

  if (!missing(assisted_source_value)) {
    fields <- c(fields, "assisted_source_value")
    values <- c(values, if (is.null(assisted_source_value)) " IS NULL" else if (is(assisted_source_value, "subQuery")) paste0(" = (", as.character(assisted_source_value), ")") else paste0(" = '", as.character(assisted_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.assisted_source_value')
  }

  if (!missing(respondent_type_source_value)) {
    fields <- c(fields, "respondent_type_source_value")
    values <- c(values, if (is.null(respondent_type_source_value)) " IS NULL" else if (is(respondent_type_source_value, "subQuery")) paste0(" = (", as.character(respondent_type_source_value), ")") else paste0(" = '", as.character(respondent_type_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.respondent_type_source_value')
  }

  if (!missing(timing_source_value)) {
    fields <- c(fields, "timing_source_value")
    values <- c(values, if (is.null(timing_source_value)) " IS NULL" else if (is(timing_source_value, "subQuery")) paste0(" = (", as.character(timing_source_value), ")") else paste0(" = '", as.character(timing_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.timing_source_value')
  }

  if (!missing(collection_method_source_value)) {
    fields <- c(fields, "collection_method_source_value")
    values <- c(values, if (is.null(collection_method_source_value)) " IS NULL" else if (is(collection_method_source_value, "subQuery")) paste0(" = (", as.character(collection_method_source_value), ")") else paste0(" = '", as.character(collection_method_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.collection_method_source_value')
  }

  if (!missing(survey_source_value)) {
    fields <- c(fields, "survey_source_value")
    values <- c(values, if (is.null(survey_source_value)) " IS NULL" else if (is(survey_source_value, "subQuery")) paste0(" = (", as.character(survey_source_value), ")") else paste0(" = '", as.character(survey_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.survey_source_value')
  }

  if (!missing(survey_source_concept_id)) {
    fields <- c(fields, "survey_source_concept_id")
    values <- c(values, if (is.null(survey_source_concept_id)) " IS NULL" else if (is(survey_source_concept_id, "subQuery")) paste0(" = (", as.character(survey_source_concept_id), ")") else paste0(" = '", as.character(survey_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.survey_source_concept_id')
  }

  if (!missing(survey_source_identifier)) {
    fields <- c(fields, "survey_source_identifier")
    values <- c(values, if (is.null(survey_source_identifier)) " IS NULL" else if (is(survey_source_identifier, "subQuery")) paste0(" = (", as.character(survey_source_identifier), ")") else paste0(" = '", as.character(survey_source_identifier), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.survey_source_identifier')
  }

  if (!missing(validated_survey_concept_id)) {
    fields <- c(fields, "validated_survey_concept_id")
    values <- c(values, if (is.null(validated_survey_concept_id)) " IS NULL" else if (is(validated_survey_concept_id, "subQuery")) paste0(" = (", as.character(validated_survey_concept_id), ")") else paste0(" = '", as.character(validated_survey_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.validated_survey_concept_id')
  }

  if (!missing(validated_survey_source_value)) {
    fields <- c(fields, "validated_survey_source_value")
    values <- c(values, if (is.null(validated_survey_source_value)) " IS NULL" else if (is(validated_survey_source_value, "subQuery")) paste0(" = (", as.character(validated_survey_source_value), ")") else paste0(" = '", as.character(validated_survey_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.validated_survey_source_value')
  }

  if (!missing(survey_version_number)) {
    fields <- c(fields, "survey_version_number")
    values <- c(values, if (is.null(survey_version_number)) " IS NULL" else if (is(survey_version_number, "subQuery")) paste0(" = (", as.character(survey_version_number), ")") else paste0(" = '", as.character(survey_version_number), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.survey_version_number')
  }

  if (!missing(visit_occurrence_id)) {
    fields <- c(fields, "visit_occurrence_id")
    values <- c(values, if (is.null(visit_occurrence_id)) " IS NULL" else if (is(visit_occurrence_id, "subQuery")) paste0(" = (", as.character(visit_occurrence_id), ")") else paste0(" = '", as.character(visit_occurrence_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.visit_occurrence_id')
  }

  if (!missing(response_visit_occurrence_id)) {
    fields <- c(fields, "response_visit_occurrence_id")
    values <- c(values, if (is.null(response_visit_occurrence_id)) " IS NULL" else if (is(response_visit_occurrence_id, "subQuery")) paste0(" = (", as.character(response_visit_occurrence_id), ")") else paste0(" = '", as.character(response_visit_occurrence_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.response_visit_occurrence_id')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 2, table = "survey_conduct", fields = fields, values = values)
  expects$rowCount = rowCount
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_count_cost <- function(rowCount, cost_id, person_id, cost_event_id, cost_event_field_concept_id, cost_concept_id, cost_type_concept_id, cost_source_concept_id, cost_source_value, currency_concept_id, cost, incurred_date, billed_date, paid_date, revenue_code_concept_id, drg_concept_id, revenue_code_source_value, drg_source_value, payer_plan_period_id) {
  fields <- c()
  values <- c()
  if (!missing(cost_id)) {
    fields <- c(fields, "cost_id")
    values <- c(values, if (is.null(cost_id)) " IS NULL" else if (is(cost_id, "subQuery")) paste0(" = (", as.character(cost_id), ")") else paste0(" = '", as.character(cost_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cost.cost_id')
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cost.person_id')
  }

  if (!missing(cost_event_id)) {
    fields <- c(fields, "cost_event_id")
    values <- c(values, if (is.null(cost_event_id)) " IS NULL" else if (is(cost_event_id, "subQuery")) paste0(" = (", as.character(cost_event_id), ")") else paste0(" = '", as.character(cost_event_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cost.cost_event_id')
  }

  if (!missing(cost_event_field_concept_id)) {
    fields <- c(fields, "cost_event_field_concept_id")
    values <- c(values, if (is.null(cost_event_field_concept_id)) " IS NULL" else if (is(cost_event_field_concept_id, "subQuery")) paste0(" = (", as.character(cost_event_field_concept_id), ")") else paste0(" = '", as.character(cost_event_field_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cost.cost_event_field_concept_id')
  }

  if (!missing(cost_concept_id)) {
    fields <- c(fields, "cost_concept_id")
    values <- c(values, if (is.null(cost_concept_id)) " IS NULL" else if (is(cost_concept_id, "subQuery")) paste0(" = (", as.character(cost_concept_id), ")") else paste0(" = '", as.character(cost_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cost.cost_concept_id')
  }

  if (!missing(cost_type_concept_id)) {
    fields <- c(fields, "cost_type_concept_id")
    values <- c(values, if (is.null(cost_type_concept_id)) " IS NULL" else if (is(cost_type_concept_id, "subQuery")) paste0(" = (", as.character(cost_type_concept_id), ")") else paste0(" = '", as.character(cost_type_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cost.cost_type_concept_id')
  }

  if (!missing(cost_source_concept_id)) {
    fields <- c(fields, "cost_source_concept_id")
    values <- c(values, if (is.null(cost_source_concept_id)) " IS NULL" else if (is(cost_source_concept_id, "subQuery")) paste0(" = (", as.character(cost_source_concept_id), ")") else paste0(" = '", as.character(cost_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cost.cost_source_concept_id')
  }

  if (!missing(cost_source_value)) {
    fields <- c(fields, "cost_source_value")
    values <- c(values, if (is.null(cost_source_value)) " IS NULL" else if (is(cost_source_value, "subQuery")) paste0(" = (", as.character(cost_source_value), ")") else paste0(" = '", as.character(cost_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cost.cost_source_value')
  }

  if (!missing(currency_concept_id)) {
    fields <- c(fields, "currency_concept_id")
    values <- c(values, if (is.null(currency_concept_id)) " IS NULL" else if (is(currency_concept_id, "subQuery")) paste0(" = (", as.character(currency_concept_id), ")") else paste0(" = '", as.character(currency_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cost.currency_concept_id')
  }

  if (!missing(cost)) {
    fields <- c(fields, "cost")
    values <- c(values, if (is.null(cost)) " IS NULL" else if (is(cost, "subQuery")) paste0(" = (", as.character(cost), ")") else paste0(" = '", as.character(cost), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cost.cost')
  }

  if (!missing(incurred_date)) {
    fields <- c(fields, "incurred_date")
    values <- c(values, if (is.null(incurred_date)) " IS NULL" else if (is(incurred_date, "subQuery")) paste0(" = (", as.character(incurred_date), ")") else paste0(" = '", as.character(incurred_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cost.incurred_date')
  }

  if (!missing(billed_date)) {
    fields <- c(fields, "billed_date")
    values <- c(values, if (is.null(billed_date)) " IS NULL" else if (is(billed_date, "subQuery")) paste0(" = (", as.character(billed_date), ")") else paste0(" = '", as.character(billed_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cost.billed_date')
  }

  if (!missing(paid_date)) {
    fields <- c(fields, "paid_date")
    values <- c(values, if (is.null(paid_date)) " IS NULL" else if (is(paid_date, "subQuery")) paste0(" = (", as.character(paid_date), ")") else paste0(" = '", as.character(paid_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cost.paid_date')
  }

  if (!missing(revenue_code_concept_id)) {
    fields <- c(fields, "revenue_code_concept_id")
    values <- c(values, if (is.null(revenue_code_concept_id)) " IS NULL" else if (is(revenue_code_concept_id, "subQuery")) paste0(" = (", as.character(revenue_code_concept_id), ")") else paste0(" = '", as.character(revenue_code_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cost.revenue_code_concept_id')
  }

  if (!missing(drg_concept_id)) {
    fields <- c(fields, "drg_concept_id")
    values <- c(values, if (is.null(drg_concept_id)) " IS NULL" else if (is(drg_concept_id, "subQuery")) paste0(" = (", as.character(drg_concept_id), ")") else paste0(" = '", as.character(drg_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cost.drg_concept_id')
  }

  if (!missing(revenue_code_source_value)) {
    fields <- c(fields, "revenue_code_source_value")
    values <- c(values, if (is.null(revenue_code_source_value)) " IS NULL" else if (is(revenue_code_source_value, "subQuery")) paste0(" = (", as.character(revenue_code_source_value), ")") else paste0(" = '", as.character(revenue_code_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cost.revenue_code_source_value')
  }

  if (!missing(drg_source_value)) {
    fields <- c(fields, "drg_source_value")
    values <- c(values, if (is.null(drg_source_value)) " IS NULL" else if (is(drg_source_value, "subQuery")) paste0(" = (", as.character(drg_source_value), ")") else paste0(" = '", as.character(drg_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cost.drg_source_value')
  }

  if (!missing(payer_plan_period_id)) {
    fields <- c(fields, "payer_plan_period_id")
    values <- c(values, if (is.null(payer_plan_period_id)) " IS NULL" else if (is(payer_plan_period_id, "subQuery")) paste0(" = (", as.character(payer_plan_period_id), ")") else paste0(" = '", as.character(payer_plan_period_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cost.payer_plan_period_id')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 2, table = "cost", fields = fields, values = values)
  expects$rowCount = rowCount
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_count_payer_plan_period <- function(rowCount, payer_plan_period_id, person_id, contract_person_id, payer_plan_period_start_date, payer_plan_period_end_date, payer_concept_id, payer_source_value, payer_source_concept_id, plan_concept_id, plan_source_value, plan_source_concept_id, contract_concept_id, contract_source_value, contract_source_concept_id, sponsor_concept_id, sponsor_source_value, sponsor_source_concept_id, family_source_value, stop_reason_concept_id, stop_reason_source_value, stop_reason_source_concept_id) {
  fields <- c()
  values <- c()
  if (!missing(payer_plan_period_id)) {
    fields <- c(fields, "payer_plan_period_id")
    values <- c(values, if (is.null(payer_plan_period_id)) " IS NULL" else if (is(payer_plan_period_id, "subQuery")) paste0(" = (", as.character(payer_plan_period_id), ")") else paste0(" = '", as.character(payer_plan_period_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.payer_plan_period_id')
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.person_id')
  }

  if (!missing(contract_person_id)) {
    fields <- c(fields, "contract_person_id")
    values <- c(values, if (is.null(contract_person_id)) " IS NULL" else if (is(contract_person_id, "subQuery")) paste0(" = (", as.character(contract_person_id), ")") else paste0(" = '", as.character(contract_person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.contract_person_id')
  }

  if (!missing(payer_plan_period_start_date)) {
    fields <- c(fields, "payer_plan_period_start_date")
    values <- c(values, if (is.null(payer_plan_period_start_date)) " IS NULL" else if (is(payer_plan_period_start_date, "subQuery")) paste0(" = (", as.character(payer_plan_period_start_date), ")") else paste0(" = '", as.character(payer_plan_period_start_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.payer_plan_period_start_date')
  }

  if (!missing(payer_plan_period_end_date)) {
    fields <- c(fields, "payer_plan_period_end_date")
    values <- c(values, if (is.null(payer_plan_period_end_date)) " IS NULL" else if (is(payer_plan_period_end_date, "subQuery")) paste0(" = (", as.character(payer_plan_period_end_date), ")") else paste0(" = '", as.character(payer_plan_period_end_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.payer_plan_period_end_date')
  }

  if (!missing(payer_concept_id)) {
    fields <- c(fields, "payer_concept_id")
    values <- c(values, if (is.null(payer_concept_id)) " IS NULL" else if (is(payer_concept_id, "subQuery")) paste0(" = (", as.character(payer_concept_id), ")") else paste0(" = '", as.character(payer_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.payer_concept_id')
  }

  if (!missing(payer_source_value)) {
    fields <- c(fields, "payer_source_value")
    values <- c(values, if (is.null(payer_source_value)) " IS NULL" else if (is(payer_source_value, "subQuery")) paste0(" = (", as.character(payer_source_value), ")") else paste0(" = '", as.character(payer_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.payer_source_value')
  }

  if (!missing(payer_source_concept_id)) {
    fields <- c(fields, "payer_source_concept_id")
    values <- c(values, if (is.null(payer_source_concept_id)) " IS NULL" else if (is(payer_source_concept_id, "subQuery")) paste0(" = (", as.character(payer_source_concept_id), ")") else paste0(" = '", as.character(payer_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.payer_source_concept_id')
  }

  if (!missing(plan_concept_id)) {
    fields <- c(fields, "plan_concept_id")
    values <- c(values, if (is.null(plan_concept_id)) " IS NULL" else if (is(plan_concept_id, "subQuery")) paste0(" = (", as.character(plan_concept_id), ")") else paste0(" = '", as.character(plan_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.plan_concept_id')
  }

  if (!missing(plan_source_value)) {
    fields <- c(fields, "plan_source_value")
    values <- c(values, if (is.null(plan_source_value)) " IS NULL" else if (is(plan_source_value, "subQuery")) paste0(" = (", as.character(plan_source_value), ")") else paste0(" = '", as.character(plan_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.plan_source_value')
  }

  if (!missing(plan_source_concept_id)) {
    fields <- c(fields, "plan_source_concept_id")
    values <- c(values, if (is.null(plan_source_concept_id)) " IS NULL" else if (is(plan_source_concept_id, "subQuery")) paste0(" = (", as.character(plan_source_concept_id), ")") else paste0(" = '", as.character(plan_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.plan_source_concept_id')
  }

  if (!missing(contract_concept_id)) {
    fields <- c(fields, "contract_concept_id")
    values <- c(values, if (is.null(contract_concept_id)) " IS NULL" else if (is(contract_concept_id, "subQuery")) paste0(" = (", as.character(contract_concept_id), ")") else paste0(" = '", as.character(contract_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.contract_concept_id')
  }

  if (!missing(contract_source_value)) {
    fields <- c(fields, "contract_source_value")
    values <- c(values, if (is.null(contract_source_value)) " IS NULL" else if (is(contract_source_value, "subQuery")) paste0(" = (", as.character(contract_source_value), ")") else paste0(" = '", as.character(contract_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.contract_source_value')
  }

  if (!missing(contract_source_concept_id)) {
    fields <- c(fields, "contract_source_concept_id")
    values <- c(values, if (is.null(contract_source_concept_id)) " IS NULL" else if (is(contract_source_concept_id, "subQuery")) paste0(" = (", as.character(contract_source_concept_id), ")") else paste0(" = '", as.character(contract_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.contract_source_concept_id')
  }

  if (!missing(sponsor_concept_id)) {
    fields <- c(fields, "sponsor_concept_id")
    values <- c(values, if (is.null(sponsor_concept_id)) " IS NULL" else if (is(sponsor_concept_id, "subQuery")) paste0(" = (", as.character(sponsor_concept_id), ")") else paste0(" = '", as.character(sponsor_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.sponsor_concept_id')
  }

  if (!missing(sponsor_source_value)) {
    fields <- c(fields, "sponsor_source_value")
    values <- c(values, if (is.null(sponsor_source_value)) " IS NULL" else if (is(sponsor_source_value, "subQuery")) paste0(" = (", as.character(sponsor_source_value), ")") else paste0(" = '", as.character(sponsor_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.sponsor_source_value')
  }

  if (!missing(sponsor_source_concept_id)) {
    fields <- c(fields, "sponsor_source_concept_id")
    values <- c(values, if (is.null(sponsor_source_concept_id)) " IS NULL" else if (is(sponsor_source_concept_id, "subQuery")) paste0(" = (", as.character(sponsor_source_concept_id), ")") else paste0(" = '", as.character(sponsor_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.sponsor_source_concept_id')
  }

  if (!missing(family_source_value)) {
    fields <- c(fields, "family_source_value")
    values <- c(values, if (is.null(family_source_value)) " IS NULL" else if (is(family_source_value, "subQuery")) paste0(" = (", as.character(family_source_value), ")") else paste0(" = '", as.character(family_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.family_source_value')
  }

  if (!missing(stop_reason_concept_id)) {
    fields <- c(fields, "stop_reason_concept_id")
    values <- c(values, if (is.null(stop_reason_concept_id)) " IS NULL" else if (is(stop_reason_concept_id, "subQuery")) paste0(" = (", as.character(stop_reason_concept_id), ")") else paste0(" = '", as.character(stop_reason_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.stop_reason_concept_id')
  }

  if (!missing(stop_reason_source_value)) {
    fields <- c(fields, "stop_reason_source_value")
    values <- c(values, if (is.null(stop_reason_source_value)) " IS NULL" else if (is(stop_reason_source_value, "subQuery")) paste0(" = (", as.character(stop_reason_source_value), ")") else paste0(" = '", as.character(stop_reason_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.stop_reason_source_value')
  }

  if (!missing(stop_reason_source_concept_id)) {
    fields <- c(fields, "stop_reason_source_concept_id")
    values <- c(values, if (is.null(stop_reason_source_concept_id)) " IS NULL" else if (is(stop_reason_source_concept_id, "subQuery")) paste0(" = (", as.character(stop_reason_source_concept_id), ")") else paste0(" = '", as.character(stop_reason_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.stop_reason_source_concept_id')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 2, table = "payer_plan_period", fields = fields, values = values)
  expects$rowCount = rowCount
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_count_drug_era <- function(rowCount, drug_era_id, person_id, drug_concept_id, drug_era_start_datetime, drug_era_end_datetime, drug_exposure_count, gap_days) {
  fields <- c()
  values <- c()
  if (!missing(drug_era_id)) {
    fields <- c(fields, "drug_era_id")
    values <- c(values, if (is.null(drug_era_id)) " IS NULL" else if (is(drug_era_id, "subQuery")) paste0(" = (", as.character(drug_era_id), ")") else paste0(" = '", as.character(drug_era_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_era.drug_era_id')
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_era.person_id')
  }

  if (!missing(drug_concept_id)) {
    fields <- c(fields, "drug_concept_id")
    values <- c(values, if (is.null(drug_concept_id)) " IS NULL" else if (is(drug_concept_id, "subQuery")) paste0(" = (", as.character(drug_concept_id), ")") else paste0(" = '", as.character(drug_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_era.drug_concept_id')
  }

  if (!missing(drug_era_start_datetime)) {
    fields <- c(fields, "drug_era_start_datetime")
    values <- c(values, if (is.null(drug_era_start_datetime)) " IS NULL" else if (is(drug_era_start_datetime, "subQuery")) paste0(" = (", as.character(drug_era_start_datetime), ")") else paste0(" = '", as.character(drug_era_start_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_era.drug_era_start_datetime')
  }

  if (!missing(drug_era_end_datetime)) {
    fields <- c(fields, "drug_era_end_datetime")
    values <- c(values, if (is.null(drug_era_end_datetime)) " IS NULL" else if (is(drug_era_end_datetime, "subQuery")) paste0(" = (", as.character(drug_era_end_datetime), ")") else paste0(" = '", as.character(drug_era_end_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_era.drug_era_end_datetime')
  }

  if (!missing(drug_exposure_count)) {
    fields <- c(fields, "drug_exposure_count")
    values <- c(values, if (is.null(drug_exposure_count)) " IS NULL" else if (is(drug_exposure_count, "subQuery")) paste0(" = (", as.character(drug_exposure_count), ")") else paste0(" = '", as.character(drug_exposure_count), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_era.drug_exposure_count')
  }

  if (!missing(gap_days)) {
    fields <- c(fields, "gap_days")
    values <- c(values, if (is.null(gap_days)) " IS NULL" else if (is(gap_days, "subQuery")) paste0(" = (", as.character(gap_days), ")") else paste0(" = '", as.character(gap_days), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_era.gap_days')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 2, table = "drug_era", fields = fields, values = values)
  expects$rowCount = rowCount
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_count_dose_era <- function(rowCount, dose_era_id, person_id, drug_concept_id, unit_concept_id, dose_value, dose_era_start_datetime, dose_era_end_datetime) {
  fields <- c()
  values <- c()
  if (!missing(dose_era_id)) {
    fields <- c(fields, "dose_era_id")
    values <- c(values, if (is.null(dose_era_id)) " IS NULL" else if (is(dose_era_id, "subQuery")) paste0(" = (", as.character(dose_era_id), ")") else paste0(" = '", as.character(dose_era_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'dose_era.dose_era_id')
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'dose_era.person_id')
  }

  if (!missing(drug_concept_id)) {
    fields <- c(fields, "drug_concept_id")
    values <- c(values, if (is.null(drug_concept_id)) " IS NULL" else if (is(drug_concept_id, "subQuery")) paste0(" = (", as.character(drug_concept_id), ")") else paste0(" = '", as.character(drug_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'dose_era.drug_concept_id')
  }

  if (!missing(unit_concept_id)) {
    fields <- c(fields, "unit_concept_id")
    values <- c(values, if (is.null(unit_concept_id)) " IS NULL" else if (is(unit_concept_id, "subQuery")) paste0(" = (", as.character(unit_concept_id), ")") else paste0(" = '", as.character(unit_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'dose_era.unit_concept_id')
  }

  if (!missing(dose_value)) {
    fields <- c(fields, "dose_value")
    values <- c(values, if (is.null(dose_value)) " IS NULL" else if (is(dose_value, "subQuery")) paste0(" = (", as.character(dose_value), ")") else paste0(" = '", as.character(dose_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'dose_era.dose_value')
  }

  if (!missing(dose_era_start_datetime)) {
    fields <- c(fields, "dose_era_start_datetime")
    values <- c(values, if (is.null(dose_era_start_datetime)) " IS NULL" else if (is(dose_era_start_datetime, "subQuery")) paste0(" = (", as.character(dose_era_start_datetime), ")") else paste0(" = '", as.character(dose_era_start_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'dose_era.dose_era_start_datetime')
  }

  if (!missing(dose_era_end_datetime)) {
    fields <- c(fields, "dose_era_end_datetime")
    values <- c(values, if (is.null(dose_era_end_datetime)) " IS NULL" else if (is(dose_era_end_datetime, "subQuery")) paste0(" = (", as.character(dose_era_end_datetime), ")") else paste0(" = '", as.character(dose_era_end_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'dose_era.dose_era_end_datetime')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 2, table = "dose_era", fields = fields, values = values)
  expects$rowCount = rowCount
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_count_condition_era <- function(rowCount, condition_era_id, person_id, condition_concept_id, condition_era_start_datetime, condition_era_end_datetime, condition_occurrence_count) {
  fields <- c()
  values <- c()
  if (!missing(condition_era_id)) {
    fields <- c(fields, "condition_era_id")
    values <- c(values, if (is.null(condition_era_id)) " IS NULL" else if (is(condition_era_id, "subQuery")) paste0(" = (", as.character(condition_era_id), ")") else paste0(" = '", as.character(condition_era_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_era.condition_era_id')
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_era.person_id')
  }

  if (!missing(condition_concept_id)) {
    fields <- c(fields, "condition_concept_id")
    values <- c(values, if (is.null(condition_concept_id)) " IS NULL" else if (is(condition_concept_id, "subQuery")) paste0(" = (", as.character(condition_concept_id), ")") else paste0(" = '", as.character(condition_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_era.condition_concept_id')
  }

  if (!missing(condition_era_start_datetime)) {
    fields <- c(fields, "condition_era_start_datetime")
    values <- c(values, if (is.null(condition_era_start_datetime)) " IS NULL" else if (is(condition_era_start_datetime, "subQuery")) paste0(" = (", as.character(condition_era_start_datetime), ")") else paste0(" = '", as.character(condition_era_start_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_era.condition_era_start_datetime')
  }

  if (!missing(condition_era_end_datetime)) {
    fields <- c(fields, "condition_era_end_datetime")
    values <- c(values, if (is.null(condition_era_end_datetime)) " IS NULL" else if (is(condition_era_end_datetime, "subQuery")) paste0(" = (", as.character(condition_era_end_datetime), ")") else paste0(" = '", as.character(condition_era_end_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_era.condition_era_end_datetime')
  }

  if (!missing(condition_occurrence_count)) {
    fields <- c(fields, "condition_occurrence_count")
    values <- c(values, if (is.null(condition_occurrence_count)) " IS NULL" else if (is(condition_occurrence_count, "subQuery")) paste0(" = (", as.character(condition_occurrence_count), ")") else paste0(" = '", as.character(condition_occurrence_count), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_era.condition_occurrence_count')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 2, table = "condition_era", fields = fields, values = values)
  expects$rowCount = rowCount
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_count_location <- function(rowCount, location_id, address_1, address_2, city, state, zip, county, country, location_source_value, latitude, longitude) {
  fields <- c()
  values <- c()
  if (!missing(location_id)) {
    fields <- c(fields, "location_id")
    values <- c(values, if (is.null(location_id)) " IS NULL" else if (is(location_id, "subQuery")) paste0(" = (", as.character(location_id), ")") else paste0(" = '", as.character(location_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'location.location_id')
  }

  if (!missing(address_1)) {
    fields <- c(fields, "address_1")
    values <- c(values, if (is.null(address_1)) " IS NULL" else if (is(address_1, "subQuery")) paste0(" = (", as.character(address_1), ")") else paste0(" = '", as.character(address_1), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'location.address_1')
  }

  if (!missing(address_2)) {
    fields <- c(fields, "address_2")
    values <- c(values, if (is.null(address_2)) " IS NULL" else if (is(address_2, "subQuery")) paste0(" = (", as.character(address_2), ")") else paste0(" = '", as.character(address_2), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'location.address_2')
  }

  if (!missing(city)) {
    fields <- c(fields, "city")
    values <- c(values, if (is.null(city)) " IS NULL" else if (is(city, "subQuery")) paste0(" = (", as.character(city), ")") else paste0(" = '", as.character(city), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'location.city')
  }

  if (!missing(state)) {
    fields <- c(fields, "state")
    values <- c(values, if (is.null(state)) " IS NULL" else if (is(state, "subQuery")) paste0(" = (", as.character(state), ")") else paste0(" = '", as.character(state), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'location.state')
  }

  if (!missing(zip)) {
    fields <- c(fields, "zip")
    values <- c(values, if (is.null(zip)) " IS NULL" else if (is(zip, "subQuery")) paste0(" = (", as.character(zip), ")") else paste0(" = '", as.character(zip), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'location.zip')
  }

  if (!missing(county)) {
    fields <- c(fields, "county")
    values <- c(values, if (is.null(county)) " IS NULL" else if (is(county, "subQuery")) paste0(" = (", as.character(county), ")") else paste0(" = '", as.character(county), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'location.county')
  }

  if (!missing(country)) {
    fields <- c(fields, "country")
    values <- c(values, if (is.null(country)) " IS NULL" else if (is(country, "subQuery")) paste0(" = (", as.character(country), ")") else paste0(" = '", as.character(country), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'location.country')
  }

  if (!missing(location_source_value)) {
    fields <- c(fields, "location_source_value")
    values <- c(values, if (is.null(location_source_value)) " IS NULL" else if (is(location_source_value, "subQuery")) paste0(" = (", as.character(location_source_value), ")") else paste0(" = '", as.character(location_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'location.location_source_value')
  }

  if (!missing(latitude)) {
    fields <- c(fields, "latitude")
    values <- c(values, if (is.null(latitude)) " IS NULL" else if (is(latitude, "subQuery")) paste0(" = (", as.character(latitude), ")") else paste0(" = '", as.character(latitude), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'location.latitude')
  }

  if (!missing(longitude)) {
    fields <- c(fields, "longitude")
    values <- c(values, if (is.null(longitude)) " IS NULL" else if (is(longitude, "subQuery")) paste0(" = (", as.character(longitude), ")") else paste0(" = '", as.character(longitude), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'location.longitude')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 2, table = "location", fields = fields, values = values)
  expects$rowCount = rowCount
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_count_location_history <- function(rowCount, location_id, relationship_type_concept_id, domain_id, entity_id, start_date, end_date) {
  fields <- c()
  values <- c()
  if (!missing(location_id)) {
    fields <- c(fields, "location_id")
    values <- c(values, if (is.null(location_id)) " IS NULL" else if (is(location_id, "subQuery")) paste0(" = (", as.character(location_id), ")") else paste0(" = '", as.character(location_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'location_history.location_id')
  }

  if (!missing(relationship_type_concept_id)) {
    fields <- c(fields, "relationship_type_concept_id")
    values <- c(values, if (is.null(relationship_type_concept_id)) " IS NULL" else if (is(relationship_type_concept_id, "subQuery")) paste0(" = (", as.character(relationship_type_concept_id), ")") else paste0(" = '", as.character(relationship_type_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'location_history.relationship_type_concept_id')
  }

  if (!missing(domain_id)) {
    fields <- c(fields, "domain_id")
    values <- c(values, if (is.null(domain_id)) " IS NULL" else if (is(domain_id, "subQuery")) paste0(" = (", as.character(domain_id), ")") else paste0(" = '", as.character(domain_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'location_history.domain_id')
  }

  if (!missing(entity_id)) {
    fields <- c(fields, "entity_id")
    values <- c(values, if (is.null(entity_id)) " IS NULL" else if (is(entity_id, "subQuery")) paste0(" = (", as.character(entity_id), ")") else paste0(" = '", as.character(entity_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'location_history.entity_id')
  }

  if (!missing(start_date)) {
    fields <- c(fields, "start_date")
    values <- c(values, if (is.null(start_date)) " IS NULL" else if (is(start_date, "subQuery")) paste0(" = (", as.character(start_date), ")") else paste0(" = '", as.character(start_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'location_history.start_date')
  }

  if (!missing(end_date)) {
    fields <- c(fields, "end_date")
    values <- c(values, if (is.null(end_date)) " IS NULL" else if (is(end_date, "subQuery")) paste0(" = (", as.character(end_date), ")") else paste0(" = '", as.character(end_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'location_history.end_date')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 2, table = "location_history", fields = fields, values = values)
  expects$rowCount = rowCount
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_count_provider <- function(rowCount, provider_id, provider_name, npi, dea, specialty_concept_id, care_site_id, year_of_birth, gender_concept_id, provider_source_value, specialty_source_value, specialty_source_concept_id, gender_source_value, gender_source_concept_id) {
  fields <- c()
  values <- c()
  if (!missing(provider_id)) {
    fields <- c(fields, "provider_id")
    values <- c(values, if (is.null(provider_id)) " IS NULL" else if (is(provider_id, "subQuery")) paste0(" = (", as.character(provider_id), ")") else paste0(" = '", as.character(provider_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'provider.provider_id')
  }

  if (!missing(provider_name)) {
    fields <- c(fields, "provider_name")
    values <- c(values, if (is.null(provider_name)) " IS NULL" else if (is(provider_name, "subQuery")) paste0(" = (", as.character(provider_name), ")") else paste0(" = '", as.character(provider_name), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'provider.provider_name')
  }

  if (!missing(npi)) {
    fields <- c(fields, "npi")
    values <- c(values, if (is.null(npi)) " IS NULL" else if (is(npi, "subQuery")) paste0(" = (", as.character(npi), ")") else paste0(" = '", as.character(npi), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'provider.npi')
  }

  if (!missing(dea)) {
    fields <- c(fields, "dea")
    values <- c(values, if (is.null(dea)) " IS NULL" else if (is(dea, "subQuery")) paste0(" = (", as.character(dea), ")") else paste0(" = '", as.character(dea), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'provider.dea')
  }

  if (!missing(specialty_concept_id)) {
    fields <- c(fields, "specialty_concept_id")
    values <- c(values, if (is.null(specialty_concept_id)) " IS NULL" else if (is(specialty_concept_id, "subQuery")) paste0(" = (", as.character(specialty_concept_id), ")") else paste0(" = '", as.character(specialty_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'provider.specialty_concept_id')
  }

  if (!missing(care_site_id)) {
    fields <- c(fields, "care_site_id")
    values <- c(values, if (is.null(care_site_id)) " IS NULL" else if (is(care_site_id, "subQuery")) paste0(" = (", as.character(care_site_id), ")") else paste0(" = '", as.character(care_site_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'provider.care_site_id')
  }

  if (!missing(year_of_birth)) {
    fields <- c(fields, "year_of_birth")
    values <- c(values, if (is.null(year_of_birth)) " IS NULL" else if (is(year_of_birth, "subQuery")) paste0(" = (", as.character(year_of_birth), ")") else paste0(" = '", as.character(year_of_birth), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'provider.year_of_birth')
  }

  if (!missing(gender_concept_id)) {
    fields <- c(fields, "gender_concept_id")
    values <- c(values, if (is.null(gender_concept_id)) " IS NULL" else if (is(gender_concept_id, "subQuery")) paste0(" = (", as.character(gender_concept_id), ")") else paste0(" = '", as.character(gender_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'provider.gender_concept_id')
  }

  if (!missing(provider_source_value)) {
    fields <- c(fields, "provider_source_value")
    values <- c(values, if (is.null(provider_source_value)) " IS NULL" else if (is(provider_source_value, "subQuery")) paste0(" = (", as.character(provider_source_value), ")") else paste0(" = '", as.character(provider_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'provider.provider_source_value')
  }

  if (!missing(specialty_source_value)) {
    fields <- c(fields, "specialty_source_value")
    values <- c(values, if (is.null(specialty_source_value)) " IS NULL" else if (is(specialty_source_value, "subQuery")) paste0(" = (", as.character(specialty_source_value), ")") else paste0(" = '", as.character(specialty_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'provider.specialty_source_value')
  }

  if (!missing(specialty_source_concept_id)) {
    fields <- c(fields, "specialty_source_concept_id")
    values <- c(values, if (is.null(specialty_source_concept_id)) " IS NULL" else if (is(specialty_source_concept_id, "subQuery")) paste0(" = (", as.character(specialty_source_concept_id), ")") else paste0(" = '", as.character(specialty_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'provider.specialty_source_concept_id')
  }

  if (!missing(gender_source_value)) {
    fields <- c(fields, "gender_source_value")
    values <- c(values, if (is.null(gender_source_value)) " IS NULL" else if (is(gender_source_value, "subQuery")) paste0(" = (", as.character(gender_source_value), ")") else paste0(" = '", as.character(gender_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'provider.gender_source_value')
  }

  if (!missing(gender_source_concept_id)) {
    fields <- c(fields, "gender_source_concept_id")
    values <- c(values, if (is.null(gender_source_concept_id)) " IS NULL" else if (is(gender_source_concept_id, "subQuery")) paste0(" = (", as.character(gender_source_concept_id), ")") else paste0(" = '", as.character(gender_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'provider.gender_source_concept_id')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 2, table = "provider", fields = fields, values = values)
  expects$rowCount = rowCount
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_count_care_site <- function(rowCount, care_site_id, care_site_name, place_of_service_concept_id, location_id, care_site_source_value, place_of_service_source_value) {
  fields <- c()
  values <- c()
  if (!missing(care_site_id)) {
    fields <- c(fields, "care_site_id")
    values <- c(values, if (is.null(care_site_id)) " IS NULL" else if (is(care_site_id, "subQuery")) paste0(" = (", as.character(care_site_id), ")") else paste0(" = '", as.character(care_site_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'care_site.care_site_id')
  }

  if (!missing(care_site_name)) {
    fields <- c(fields, "care_site_name")
    values <- c(values, if (is.null(care_site_name)) " IS NULL" else if (is(care_site_name, "subQuery")) paste0(" = (", as.character(care_site_name), ")") else paste0(" = '", as.character(care_site_name), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'care_site.care_site_name')
  }

  if (!missing(place_of_service_concept_id)) {
    fields <- c(fields, "place_of_service_concept_id")
    values <- c(values, if (is.null(place_of_service_concept_id)) " IS NULL" else if (is(place_of_service_concept_id, "subQuery")) paste0(" = (", as.character(place_of_service_concept_id), ")") else paste0(" = '", as.character(place_of_service_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'care_site.place_of_service_concept_id')
  }

  if (!missing(location_id)) {
    fields <- c(fields, "location_id")
    values <- c(values, if (is.null(location_id)) " IS NULL" else if (is(location_id, "subQuery")) paste0(" = (", as.character(location_id), ")") else paste0(" = '", as.character(location_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'care_site.location_id')
  }

  if (!missing(care_site_source_value)) {
    fields <- c(fields, "care_site_source_value")
    values <- c(values, if (is.null(care_site_source_value)) " IS NULL" else if (is(care_site_source_value, "subQuery")) paste0(" = (", as.character(care_site_source_value), ")") else paste0(" = '", as.character(care_site_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'care_site.care_site_source_value')
  }

  if (!missing(place_of_service_source_value)) {
    fields <- c(fields, "place_of_service_source_value")
    values <- c(values, if (is.null(place_of_service_source_value)) " IS NULL" else if (is(place_of_service_source_value, "subQuery")) paste0(" = (", as.character(place_of_service_source_value), ")") else paste0(" = '", as.character(place_of_service_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'care_site.place_of_service_source_value')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 2, table = "care_site", fields = fields, values = values)
  expects$rowCount = rowCount
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_count_cdm_source <- function(rowCount, cdm_source_name, cdm_source_abbreviation, cdm_holder, source_description, source_documentation_reference, cdm_etl_reference, source_release_date, cdm_release_date, cdm_version, vocabulary_version) {
  fields <- c()
  values <- c()
  if (!missing(cdm_source_name)) {
    fields <- c(fields, "cdm_source_name")
    values <- c(values, if (is.null(cdm_source_name)) " IS NULL" else if (is(cdm_source_name, "subQuery")) paste0(" = (", as.character(cdm_source_name), ")") else paste0(" = '", as.character(cdm_source_name), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cdm_source.cdm_source_name')
  }

  if (!missing(cdm_source_abbreviation)) {
    fields <- c(fields, "cdm_source_abbreviation")
    values <- c(values, if (is.null(cdm_source_abbreviation)) " IS NULL" else if (is(cdm_source_abbreviation, "subQuery")) paste0(" = (", as.character(cdm_source_abbreviation), ")") else paste0(" = '", as.character(cdm_source_abbreviation), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cdm_source.cdm_source_abbreviation')
  }

  if (!missing(cdm_holder)) {
    fields <- c(fields, "cdm_holder")
    values <- c(values, if (is.null(cdm_holder)) " IS NULL" else if (is(cdm_holder, "subQuery")) paste0(" = (", as.character(cdm_holder), ")") else paste0(" = '", as.character(cdm_holder), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cdm_source.cdm_holder')
  }

  if (!missing(source_description)) {
    fields <- c(fields, "source_description")
    values <- c(values, if (is.null(source_description)) " IS NULL" else if (is(source_description, "subQuery")) paste0(" = (", as.character(source_description), ")") else paste0(" = '", as.character(source_description), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cdm_source.source_description')
  }

  if (!missing(source_documentation_reference)) {
    fields <- c(fields, "source_documentation_reference")
    values <- c(values, if (is.null(source_documentation_reference)) " IS NULL" else if (is(source_documentation_reference, "subQuery")) paste0(" = (", as.character(source_documentation_reference), ")") else paste0(" = '", as.character(source_documentation_reference), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cdm_source.source_documentation_reference')
  }

  if (!missing(cdm_etl_reference)) {
    fields <- c(fields, "cdm_etl_reference")
    values <- c(values, if (is.null(cdm_etl_reference)) " IS NULL" else if (is(cdm_etl_reference, "subQuery")) paste0(" = (", as.character(cdm_etl_reference), ")") else paste0(" = '", as.character(cdm_etl_reference), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cdm_source.cdm_etl_reference')
  }

  if (!missing(source_release_date)) {
    fields <- c(fields, "source_release_date")
    values <- c(values, if (is.null(source_release_date)) " IS NULL" else if (is(source_release_date, "subQuery")) paste0(" = (", as.character(source_release_date), ")") else paste0(" = '", as.character(source_release_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cdm_source.source_release_date')
  }

  if (!missing(cdm_release_date)) {
    fields <- c(fields, "cdm_release_date")
    values <- c(values, if (is.null(cdm_release_date)) " IS NULL" else if (is(cdm_release_date, "subQuery")) paste0(" = (", as.character(cdm_release_date), ")") else paste0(" = '", as.character(cdm_release_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cdm_source.cdm_release_date')
  }

  if (!missing(cdm_version)) {
    fields <- c(fields, "cdm_version")
    values <- c(values, if (is.null(cdm_version)) " IS NULL" else if (is(cdm_version, "subQuery")) paste0(" = (", as.character(cdm_version), ")") else paste0(" = '", as.character(cdm_version), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cdm_source.cdm_version')
  }

  if (!missing(vocabulary_version)) {
    fields <- c(fields, "vocabulary_version")
    values <- c(values, if (is.null(vocabulary_version)) " IS NULL" else if (is(vocabulary_version, "subQuery")) paste0(" = (", as.character(vocabulary_version), ")") else paste0(" = '", as.character(vocabulary_version), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cdm_source.vocabulary_version')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 2, table = "cdm_source", fields = fields, values = values)
  expects$rowCount = rowCount
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_count_metadata <- function(rowCount, metadata_concept_id, metadata_type_concept_id, name, value_as_string, value_as_concept_id, metadata_date, metadata_datetime) {
  fields <- c()
  values <- c()
  if (!missing(metadata_concept_id)) {
    fields <- c(fields, "metadata_concept_id")
    values <- c(values, if (is.null(metadata_concept_id)) " IS NULL" else if (is(metadata_concept_id, "subQuery")) paste0(" = (", as.character(metadata_concept_id), ")") else paste0(" = '", as.character(metadata_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'metadata.metadata_concept_id')
  }

  if (!missing(metadata_type_concept_id)) {
    fields <- c(fields, "metadata_type_concept_id")
    values <- c(values, if (is.null(metadata_type_concept_id)) " IS NULL" else if (is(metadata_type_concept_id, "subQuery")) paste0(" = (", as.character(metadata_type_concept_id), ")") else paste0(" = '", as.character(metadata_type_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'metadata.metadata_type_concept_id')
  }

  if (!missing(name)) {
    fields <- c(fields, "name")
    values <- c(values, if (is.null(name)) " IS NULL" else if (is(name, "subQuery")) paste0(" = (", as.character(name), ")") else paste0(" = '", as.character(name), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'metadata.name')
  }

  if (!missing(value_as_string)) {
    fields <- c(fields, "value_as_string")
    values <- c(values, if (is.null(value_as_string)) " IS NULL" else if (is(value_as_string, "subQuery")) paste0(" = (", as.character(value_as_string), ")") else paste0(" = '", as.character(value_as_string), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'metadata.value_as_string')
  }

  if (!missing(value_as_concept_id)) {
    fields <- c(fields, "value_as_concept_id")
    values <- c(values, if (is.null(value_as_concept_id)) " IS NULL" else if (is(value_as_concept_id, "subQuery")) paste0(" = (", as.character(value_as_concept_id), ")") else paste0(" = '", as.character(value_as_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'metadata.value_as_concept_id')
  }

  if (!missing(metadata_date)) {
    fields <- c(fields, "[metadata date]")
    values <- c(values, if (is.null(metadata_date)) " IS NULL" else if (is(metadata_date, "subQuery")) paste0(" = (", as.character(metadata_date), ")") else paste0(" = '", as.character(metadata_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'metadata.metadata_date')
  }

  if (!missing(metadata_datetime)) {
    fields <- c(fields, "metadata_datetime")
    values <- c(values, if (is.null(metadata_datetime)) " IS NULL" else if (is(metadata_datetime, "subQuery")) paste0(" = (", as.character(metadata_datetime), ")") else paste0(" = '", as.character(metadata_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'metadata.metadata_datetime')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 2, table = "metadata", fields = fields, values = values)
  expects$rowCount = rowCount
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_count_fact_relationship <- function(rowCount, domain_concept_id_1, fact_id_1, domain_concept_id_2, fact_id_2, relationship_concept_id) {
  fields <- c()
  values <- c()
  if (!missing(domain_concept_id_1)) {
    fields <- c(fields, "domain_concept_id_1")
    values <- c(values, if (is.null(domain_concept_id_1)) " IS NULL" else if (is(domain_concept_id_1, "subQuery")) paste0(" = (", as.character(domain_concept_id_1), ")") else paste0(" = '", as.character(domain_concept_id_1), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'fact_relationship.domain_concept_id_1')
  }

  if (!missing(fact_id_1)) {
    fields <- c(fields, "fact_id_1")
    values <- c(values, if (is.null(fact_id_1)) " IS NULL" else if (is(fact_id_1, "subQuery")) paste0(" = (", as.character(fact_id_1), ")") else paste0(" = '", as.character(fact_id_1), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'fact_relationship.fact_id_1')
  }

  if (!missing(domain_concept_id_2)) {
    fields <- c(fields, "domain_concept_id_2")
    values <- c(values, if (is.null(domain_concept_id_2)) " IS NULL" else if (is(domain_concept_id_2, "subQuery")) paste0(" = (", as.character(domain_concept_id_2), ")") else paste0(" = '", as.character(domain_concept_id_2), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'fact_relationship.domain_concept_id_2')
  }

  if (!missing(fact_id_2)) {
    fields <- c(fields, "fact_id_2")
    values <- c(values, if (is.null(fact_id_2)) " IS NULL" else if (is(fact_id_2, "subQuery")) paste0(" = (", as.character(fact_id_2), ")") else paste0(" = '", as.character(fact_id_2), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'fact_relationship.fact_id_2')
  }

  if (!missing(relationship_concept_id)) {
    fields <- c(fields, "relationship_concept_id")
    values <- c(values, if (is.null(relationship_concept_id)) " IS NULL" else if (is(relationship_concept_id, "subQuery")) paste0(" = (", as.character(relationship_concept_id), ")") else paste0(" = '", as.character(relationship_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'fact_relationship.relationship_concept_id')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 2, table = "fact_relationship", fields = fields, values = values)
  expects$rowCount = rowCount
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}
expect_count_death <- function(rowCount, person_id, death_date, death_datetime, death_type_concept_id, cause_concept_id, cause_source_value, cause_source_concept_id) {
  fields <- c()
  values <- c()
  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'death.person_id')
  }

  if (!missing(death_date)) {
    fields <- c(fields, "death_date")
    values <- c(values, if (is.null(death_date)) " IS NULL" else if (is(death_date, "subQuery")) paste0(" = (", as.character(death_date), ")") else paste0(" = '", as.character(death_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'death.death_date')
  }

  if (!missing(death_datetime)) {
    fields <- c(fields, "death_datetime")
    values <- c(values, if (is.null(death_datetime)) " IS NULL" else if (is(death_datetime, "subQuery")) paste0(" = (", as.character(death_datetime), ")") else paste0(" = '", as.character(death_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'death.death_datetime')
  }

  if (!missing(death_type_concept_id)) {
    fields <- c(fields, "death_type_concept_id")
    values <- c(values, if (is.null(death_type_concept_id)) " IS NULL" else if (is(death_type_concept_id, "subQuery")) paste0(" = (", as.character(death_type_concept_id), ")") else paste0(" = '", as.character(death_type_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'death.death_type_concept_id')
  }

  if (!missing(cause_concept_id)) {
    fields <- c(fields, "cause_concept_id")
    values <- c(values, if (is.null(cause_concept_id)) " IS NULL" else if (is(cause_concept_id, "subQuery")) paste0(" = (", as.character(cause_concept_id), ")") else paste0(" = '", as.character(cause_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'death.cause_concept_id')
  }

  if (!missing(cause_source_value)) {
    fields <- c(fields, "cause_source_value")
    values <- c(values, if (is.null(cause_source_value)) " IS NULL" else if (is(cause_source_value, "subQuery")) paste0(" = (", as.character(cause_source_value), ")") else paste0(" = '", as.character(cause_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'death.cause_source_value')
  }

  if (!missing(cause_source_concept_id)) {
    fields <- c(fields, "cause_source_concept_id")
    values <- c(values, if (is.null(cause_source_concept_id)) " IS NULL" else if (is(cause_source_concept_id, "subQuery")) paste0(" = (", as.character(cause_source_concept_id), ")") else paste0(" = '", as.character(cause_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'death.cause_source_concept_id')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 2, table = "death", fields = fields, values = values)
  expects$rowCount = rowCount
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}


lookup_person <- function(fetchField, person_id, gender_concept_id, year_of_birth, month_of_birth, day_of_birth, birth_datetime, death_datetime, race_concept_id, ethnicity_concept_id, location_id, provider_id, care_site_id, person_source_value, gender_source_value, gender_source_concept_id, race_source_value, race_source_concept_id, ethnicity_source_value, ethnicity_source_concept_id) {
  statement <- paste0('SELECT ', fetchField , ' FROM @cdm_database_schema.person WHERE')
  first <- TRUE
  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " person_id",if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
  }

  if (!missing(gender_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " gender_concept_id",if (is.null(gender_concept_id)) " IS NULL" else if (is(gender_concept_id, "subQuery")) paste0(" = (", as.character(gender_concept_id), ")") else paste0(" = '", as.character(gender_concept_id), "'"))
  }

  if (!missing(year_of_birth)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " year_of_birth",if (is.null(year_of_birth)) " IS NULL" else if (is(year_of_birth, "subQuery")) paste0(" = (", as.character(year_of_birth), ")") else paste0(" = '", as.character(year_of_birth), "'"))
  }

  if (!missing(month_of_birth)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " month_of_birth",if (is.null(month_of_birth)) " IS NULL" else if (is(month_of_birth, "subQuery")) paste0(" = (", as.character(month_of_birth), ")") else paste0(" = '", as.character(month_of_birth), "'"))
  }

  if (!missing(day_of_birth)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " day_of_birth",if (is.null(day_of_birth)) " IS NULL" else if (is(day_of_birth, "subQuery")) paste0(" = (", as.character(day_of_birth), ")") else paste0(" = '", as.character(day_of_birth), "'"))
  }

  if (!missing(birth_datetime)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " birth_datetime",if (is.null(birth_datetime)) " IS NULL" else if (is(birth_datetime, "subQuery")) paste0(" = (", as.character(birth_datetime), ")") else paste0(" = '", as.character(birth_datetime), "'"))
  }

  if (!missing(death_datetime)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " death_datetime",if (is.null(death_datetime)) " IS NULL" else if (is(death_datetime, "subQuery")) paste0(" = (", as.character(death_datetime), ")") else paste0(" = '", as.character(death_datetime), "'"))
  }

  if (!missing(race_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " race_concept_id",if (is.null(race_concept_id)) " IS NULL" else if (is(race_concept_id, "subQuery")) paste0(" = (", as.character(race_concept_id), ")") else paste0(" = '", as.character(race_concept_id), "'"))
  }

  if (!missing(ethnicity_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " ethnicity_concept_id",if (is.null(ethnicity_concept_id)) " IS NULL" else if (is(ethnicity_concept_id, "subQuery")) paste0(" = (", as.character(ethnicity_concept_id), ")") else paste0(" = '", as.character(ethnicity_concept_id), "'"))
  }

  if (!missing(location_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " location_id",if (is.null(location_id)) " IS NULL" else if (is(location_id, "subQuery")) paste0(" = (", as.character(location_id), ")") else paste0(" = '", as.character(location_id), "'"))
  }

  if (!missing(provider_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " provider_id",if (is.null(provider_id)) " IS NULL" else if (is(provider_id, "subQuery")) paste0(" = (", as.character(provider_id), ")") else paste0(" = '", as.character(provider_id), "'"))
  }

  if (!missing(care_site_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " care_site_id",if (is.null(care_site_id)) " IS NULL" else if (is(care_site_id, "subQuery")) paste0(" = (", as.character(care_site_id), ")") else paste0(" = '", as.character(care_site_id), "'"))
  }

  if (!missing(person_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " person_source_value",if (is.null(person_source_value)) " IS NULL" else if (is(person_source_value, "subQuery")) paste0(" = (", as.character(person_source_value), ")") else paste0(" = '", as.character(person_source_value), "'"))
  }

  if (!missing(gender_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " gender_source_value",if (is.null(gender_source_value)) " IS NULL" else if (is(gender_source_value, "subQuery")) paste0(" = (", as.character(gender_source_value), ")") else paste0(" = '", as.character(gender_source_value), "'"))
  }

  if (!missing(gender_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " gender_source_concept_id",if (is.null(gender_source_concept_id)) " IS NULL" else if (is(gender_source_concept_id, "subQuery")) paste0(" = (", as.character(gender_source_concept_id), ")") else paste0(" = '", as.character(gender_source_concept_id), "'"))
  }

  if (!missing(race_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " race_source_value",if (is.null(race_source_value)) " IS NULL" else if (is(race_source_value, "subQuery")) paste0(" = (", as.character(race_source_value), ")") else paste0(" = '", as.character(race_source_value), "'"))
  }

  if (!missing(race_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " race_source_concept_id",if (is.null(race_source_concept_id)) " IS NULL" else if (is(race_source_concept_id, "subQuery")) paste0(" = (", as.character(race_source_concept_id), ")") else paste0(" = '", as.character(race_source_concept_id), "'"))
  }

  if (!missing(ethnicity_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " ethnicity_source_value",if (is.null(ethnicity_source_value)) " IS NULL" else if (is(ethnicity_source_value, "subQuery")) paste0(" = (", as.character(ethnicity_source_value), ")") else paste0(" = '", as.character(ethnicity_source_value), "'"))
  }

  if (!missing(ethnicity_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " ethnicity_source_concept_id",if (is.null(ethnicity_source_concept_id)) " IS NULL" else if (is(ethnicity_source_concept_id, "subQuery")) paste0(" = (", as.character(ethnicity_source_concept_id), ")") else paste0(" = '", as.character(ethnicity_source_concept_id), "'"))
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_observation_period <- function(fetchField, observation_period_id, person_id, observation_period_start_date, observation_period_end_date, period_type_concept_id) {
  statement <- paste0('SELECT ', fetchField , ' FROM @cdm_database_schema.observation_period WHERE')
  first <- TRUE
  if (!missing(observation_period_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " observation_period_id",if (is.null(observation_period_id)) " IS NULL" else if (is(observation_period_id, "subQuery")) paste0(" = (", as.character(observation_period_id), ")") else paste0(" = '", as.character(observation_period_id), "'"))
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " person_id",if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
  }

  if (!missing(observation_period_start_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " observation_period_start_date",if (is.null(observation_period_start_date)) " IS NULL" else if (is(observation_period_start_date, "subQuery")) paste0(" = (", as.character(observation_period_start_date), ")") else paste0(" = '", as.character(observation_period_start_date), "'"))
  }

  if (!missing(observation_period_end_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " observation_period_end_date",if (is.null(observation_period_end_date)) " IS NULL" else if (is(observation_period_end_date, "subQuery")) paste0(" = (", as.character(observation_period_end_date), ")") else paste0(" = '", as.character(observation_period_end_date), "'"))
  }

  if (!missing(period_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " period_type_concept_id",if (is.null(period_type_concept_id)) " IS NULL" else if (is(period_type_concept_id, "subQuery")) paste0(" = (", as.character(period_type_concept_id), ")") else paste0(" = '", as.character(period_type_concept_id), "'"))
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_visit_occurrence <- function(fetchField, visit_occurrence_id, person_id, visit_concept_id, visit_start_date, visit_start_datetime, visit_end_date, visit_end_datetime, visit_type_concept_id, provider_id, care_site_id, visit_source_value, visit_source_concept_id, admitting_source_concept_id, admitting_source_value, discharge_to_concept_id, discharge_to_source_value, preceding_visit_occurrence_id) {
  statement <- paste0('SELECT ', fetchField , ' FROM @cdm_database_schema.visit_occurrence WHERE')
  first <- TRUE
  if (!missing(visit_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " visit_occurrence_id",if (is.null(visit_occurrence_id)) " IS NULL" else if (is(visit_occurrence_id, "subQuery")) paste0(" = (", as.character(visit_occurrence_id), ")") else paste0(" = '", as.character(visit_occurrence_id), "'"))
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " person_id",if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
  }

  if (!missing(visit_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " visit_concept_id",if (is.null(visit_concept_id)) " IS NULL" else if (is(visit_concept_id, "subQuery")) paste0(" = (", as.character(visit_concept_id), ")") else paste0(" = '", as.character(visit_concept_id), "'"))
  }

  if (!missing(visit_start_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " visit_start_date",if (is.null(visit_start_date)) " IS NULL" else if (is(visit_start_date, "subQuery")) paste0(" = (", as.character(visit_start_date), ")") else paste0(" = '", as.character(visit_start_date), "'"))
  }

  if (!missing(visit_start_datetime)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " visit_start_datetime",if (is.null(visit_start_datetime)) " IS NULL" else if (is(visit_start_datetime, "subQuery")) paste0(" = (", as.character(visit_start_datetime), ")") else paste0(" = '", as.character(visit_start_datetime), "'"))
  }

  if (!missing(visit_end_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " visit_end_date",if (is.null(visit_end_date)) " IS NULL" else if (is(visit_end_date, "subQuery")) paste0(" = (", as.character(visit_end_date), ")") else paste0(" = '", as.character(visit_end_date), "'"))
  }

  if (!missing(visit_end_datetime)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " visit_end_datetime",if (is.null(visit_end_datetime)) " IS NULL" else if (is(visit_end_datetime, "subQuery")) paste0(" = (", as.character(visit_end_datetime), ")") else paste0(" = '", as.character(visit_end_datetime), "'"))
  }

  if (!missing(visit_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " visit_type_concept_id",if (is.null(visit_type_concept_id)) " IS NULL" else if (is(visit_type_concept_id, "subQuery")) paste0(" = (", as.character(visit_type_concept_id), ")") else paste0(" = '", as.character(visit_type_concept_id), "'"))
  }

  if (!missing(provider_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " provider_id",if (is.null(provider_id)) " IS NULL" else if (is(provider_id, "subQuery")) paste0(" = (", as.character(provider_id), ")") else paste0(" = '", as.character(provider_id), "'"))
  }

  if (!missing(care_site_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " care_site_id",if (is.null(care_site_id)) " IS NULL" else if (is(care_site_id, "subQuery")) paste0(" = (", as.character(care_site_id), ")") else paste0(" = '", as.character(care_site_id), "'"))
  }

  if (!missing(visit_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " visit_source_value",if (is.null(visit_source_value)) " IS NULL" else if (is(visit_source_value, "subQuery")) paste0(" = (", as.character(visit_source_value), ")") else paste0(" = '", as.character(visit_source_value), "'"))
  }

  if (!missing(visit_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " visit_source_concept_id",if (is.null(visit_source_concept_id)) " IS NULL" else if (is(visit_source_concept_id, "subQuery")) paste0(" = (", as.character(visit_source_concept_id), ")") else paste0(" = '", as.character(visit_source_concept_id), "'"))
  }

  if (!missing(admitting_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " admitting_source_concept_id",if (is.null(admitting_source_concept_id)) " IS NULL" else if (is(admitting_source_concept_id, "subQuery")) paste0(" = (", as.character(admitting_source_concept_id), ")") else paste0(" = '", as.character(admitting_source_concept_id), "'"))
  }

  if (!missing(admitting_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " admitting_source_value",if (is.null(admitting_source_value)) " IS NULL" else if (is(admitting_source_value, "subQuery")) paste0(" = (", as.character(admitting_source_value), ")") else paste0(" = '", as.character(admitting_source_value), "'"))
  }

  if (!missing(discharge_to_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " discharge_to_concept_id",if (is.null(discharge_to_concept_id)) " IS NULL" else if (is(discharge_to_concept_id, "subQuery")) paste0(" = (", as.character(discharge_to_concept_id), ")") else paste0(" = '", as.character(discharge_to_concept_id), "'"))
  }

  if (!missing(discharge_to_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " discharge_to_source_value",if (is.null(discharge_to_source_value)) " IS NULL" else if (is(discharge_to_source_value, "subQuery")) paste0(" = (", as.character(discharge_to_source_value), ")") else paste0(" = '", as.character(discharge_to_source_value), "'"))
  }

  if (!missing(preceding_visit_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " preceding_visit_occurrence_id",if (is.null(preceding_visit_occurrence_id)) " IS NULL" else if (is(preceding_visit_occurrence_id, "subQuery")) paste0(" = (", as.character(preceding_visit_occurrence_id), ")") else paste0(" = '", as.character(preceding_visit_occurrence_id), "'"))
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_visit_detail <- function(fetchField, visit_detail_id, person_id, visit_detail_concept_id, visit_detail_start_date, visit_detail_start_datetime, visit_detail_end_date, visit_detail_end_datetime, visit_detail_type_concept_id, provider_id, care_site_id, visit_detail_source_value, visit_detail_source_concept_id, admitted_from_source_value, admitted_from_concept_id, discharge_to_source_value, discharge_to_concept_id, preceding_visit_detail_id, visit_detail_parent_id, visit_occurrence_id) {
  statement <- paste0('SELECT ', fetchField , ' FROM @cdm_database_schema.visit_detail WHERE')
  first <- TRUE
  if (!missing(visit_detail_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " visit_detail_id",if (is.null(visit_detail_id)) " IS NULL" else if (is(visit_detail_id, "subQuery")) paste0(" = (", as.character(visit_detail_id), ")") else paste0(" = '", as.character(visit_detail_id), "'"))
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " person_id",if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
  }

  if (!missing(visit_detail_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " visit_detail_concept_id",if (is.null(visit_detail_concept_id)) " IS NULL" else if (is(visit_detail_concept_id, "subQuery")) paste0(" = (", as.character(visit_detail_concept_id), ")") else paste0(" = '", as.character(visit_detail_concept_id), "'"))
  }

  if (!missing(visit_detail_start_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " visit_detail_start_date",if (is.null(visit_detail_start_date)) " IS NULL" else if (is(visit_detail_start_date, "subQuery")) paste0(" = (", as.character(visit_detail_start_date), ")") else paste0(" = '", as.character(visit_detail_start_date), "'"))
  }

  if (!missing(visit_detail_start_datetime)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " visit_detail_start_datetime",if (is.null(visit_detail_start_datetime)) " IS NULL" else if (is(visit_detail_start_datetime, "subQuery")) paste0(" = (", as.character(visit_detail_start_datetime), ")") else paste0(" = '", as.character(visit_detail_start_datetime), "'"))
  }

  if (!missing(visit_detail_end_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " visit_detail_end_date",if (is.null(visit_detail_end_date)) " IS NULL" else if (is(visit_detail_end_date, "subQuery")) paste0(" = (", as.character(visit_detail_end_date), ")") else paste0(" = '", as.character(visit_detail_end_date), "'"))
  }

  if (!missing(visit_detail_end_datetime)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " visit_detail_end_datetime",if (is.null(visit_detail_end_datetime)) " IS NULL" else if (is(visit_detail_end_datetime, "subQuery")) paste0(" = (", as.character(visit_detail_end_datetime), ")") else paste0(" = '", as.character(visit_detail_end_datetime), "'"))
  }

  if (!missing(visit_detail_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " visit_detail_type_concept_id",if (is.null(visit_detail_type_concept_id)) " IS NULL" else if (is(visit_detail_type_concept_id, "subQuery")) paste0(" = (", as.character(visit_detail_type_concept_id), ")") else paste0(" = '", as.character(visit_detail_type_concept_id), "'"))
  }

  if (!missing(provider_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " provider_id",if (is.null(provider_id)) " IS NULL" else if (is(provider_id, "subQuery")) paste0(" = (", as.character(provider_id), ")") else paste0(" = '", as.character(provider_id), "'"))
  }

  if (!missing(care_site_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " care_site_id",if (is.null(care_site_id)) " IS NULL" else if (is(care_site_id, "subQuery")) paste0(" = (", as.character(care_site_id), ")") else paste0(" = '", as.character(care_site_id), "'"))
  }

  if (!missing(visit_detail_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " visit_detail_source_value",if (is.null(visit_detail_source_value)) " IS NULL" else if (is(visit_detail_source_value, "subQuery")) paste0(" = (", as.character(visit_detail_source_value), ")") else paste0(" = '", as.character(visit_detail_source_value), "'"))
  }

  if (!missing(visit_detail_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " visit_detail_source_concept_id",if (is.null(visit_detail_source_concept_id)) " IS NULL" else if (is(visit_detail_source_concept_id, "subQuery")) paste0(" = (", as.character(visit_detail_source_concept_id), ")") else paste0(" = '", as.character(visit_detail_source_concept_id), "'"))
  }

  if (!missing(admitted_from_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " admitted_from_source_value",if (is.null(admitted_from_source_value)) " IS NULL" else if (is(admitted_from_source_value, "subQuery")) paste0(" = (", as.character(admitted_from_source_value), ")") else paste0(" = '", as.character(admitted_from_source_value), "'"))
  }

  if (!missing(admitted_from_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " admitted_from_concept_id",if (is.null(admitted_from_concept_id)) " IS NULL" else if (is(admitted_from_concept_id, "subQuery")) paste0(" = (", as.character(admitted_from_concept_id), ")") else paste0(" = '", as.character(admitted_from_concept_id), "'"))
  }

  if (!missing(discharge_to_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " discharge_to_source_value",if (is.null(discharge_to_source_value)) " IS NULL" else if (is(discharge_to_source_value, "subQuery")) paste0(" = (", as.character(discharge_to_source_value), ")") else paste0(" = '", as.character(discharge_to_source_value), "'"))
  }

  if (!missing(discharge_to_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " discharge_to_concept_id",if (is.null(discharge_to_concept_id)) " IS NULL" else if (is(discharge_to_concept_id, "subQuery")) paste0(" = (", as.character(discharge_to_concept_id), ")") else paste0(" = '", as.character(discharge_to_concept_id), "'"))
  }

  if (!missing(preceding_visit_detail_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " preceding_visit_detail_id",if (is.null(preceding_visit_detail_id)) " IS NULL" else if (is(preceding_visit_detail_id, "subQuery")) paste0(" = (", as.character(preceding_visit_detail_id), ")") else paste0(" = '", as.character(preceding_visit_detail_id), "'"))
  }

  if (!missing(visit_detail_parent_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " visit_detail_parent_id",if (is.null(visit_detail_parent_id)) " IS NULL" else if (is(visit_detail_parent_id, "subQuery")) paste0(" = (", as.character(visit_detail_parent_id), ")") else paste0(" = '", as.character(visit_detail_parent_id), "'"))
  }

  if (!missing(visit_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " visit_occurrence_id",if (is.null(visit_occurrence_id)) " IS NULL" else if (is(visit_occurrence_id, "subQuery")) paste0(" = (", as.character(visit_occurrence_id), ")") else paste0(" = '", as.character(visit_occurrence_id), "'"))
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_condition_occurrence <- function(fetchField, condition_occurrence_id, person_id, condition_concept_id, condition_start_date, condition_start_datetime, condition_end_date, condition_end_datetime, condition_type_concept_id, condition_status_concept_id, stop_reason, provider_id, visit_occurrence_id, visit_detail_id, condition_source_value, condition_source_concept_id, condition_status_source_value) {
  statement <- paste0('SELECT ', fetchField , ' FROM @cdm_database_schema.condition_occurrence WHERE')
  first <- TRUE
  if (!missing(condition_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " condition_occurrence_id",if (is.null(condition_occurrence_id)) " IS NULL" else if (is(condition_occurrence_id, "subQuery")) paste0(" = (", as.character(condition_occurrence_id), ")") else paste0(" = '", as.character(condition_occurrence_id), "'"))
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " person_id",if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
  }

  if (!missing(condition_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " condition_concept_id",if (is.null(condition_concept_id)) " IS NULL" else if (is(condition_concept_id, "subQuery")) paste0(" = (", as.character(condition_concept_id), ")") else paste0(" = '", as.character(condition_concept_id), "'"))
  }

  if (!missing(condition_start_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " condition_start_date",if (is.null(condition_start_date)) " IS NULL" else if (is(condition_start_date, "subQuery")) paste0(" = (", as.character(condition_start_date), ")") else paste0(" = '", as.character(condition_start_date), "'"))
  }

  if (!missing(condition_start_datetime)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " condition_start_datetime",if (is.null(condition_start_datetime)) " IS NULL" else if (is(condition_start_datetime, "subQuery")) paste0(" = (", as.character(condition_start_datetime), ")") else paste0(" = '", as.character(condition_start_datetime), "'"))
  }

  if (!missing(condition_end_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " condition_end_date",if (is.null(condition_end_date)) " IS NULL" else if (is(condition_end_date, "subQuery")) paste0(" = (", as.character(condition_end_date), ")") else paste0(" = '", as.character(condition_end_date), "'"))
  }

  if (!missing(condition_end_datetime)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " condition_end_datetime",if (is.null(condition_end_datetime)) " IS NULL" else if (is(condition_end_datetime, "subQuery")) paste0(" = (", as.character(condition_end_datetime), ")") else paste0(" = '", as.character(condition_end_datetime), "'"))
  }

  if (!missing(condition_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " condition_type_concept_id",if (is.null(condition_type_concept_id)) " IS NULL" else if (is(condition_type_concept_id, "subQuery")) paste0(" = (", as.character(condition_type_concept_id), ")") else paste0(" = '", as.character(condition_type_concept_id), "'"))
  }

  if (!missing(condition_status_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " condition_status_concept_id",if (is.null(condition_status_concept_id)) " IS NULL" else if (is(condition_status_concept_id, "subQuery")) paste0(" = (", as.character(condition_status_concept_id), ")") else paste0(" = '", as.character(condition_status_concept_id), "'"))
  }

  if (!missing(stop_reason)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " stop_reason",if (is.null(stop_reason)) " IS NULL" else if (is(stop_reason, "subQuery")) paste0(" = (", as.character(stop_reason), ")") else paste0(" = '", as.character(stop_reason), "'"))
  }

  if (!missing(provider_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " provider_id",if (is.null(provider_id)) " IS NULL" else if (is(provider_id, "subQuery")) paste0(" = (", as.character(provider_id), ")") else paste0(" = '", as.character(provider_id), "'"))
  }

  if (!missing(visit_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " visit_occurrence_id",if (is.null(visit_occurrence_id)) " IS NULL" else if (is(visit_occurrence_id, "subQuery")) paste0(" = (", as.character(visit_occurrence_id), ")") else paste0(" = '", as.character(visit_occurrence_id), "'"))
  }

  if (!missing(visit_detail_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " visit_detail_id",if (is.null(visit_detail_id)) " IS NULL" else if (is(visit_detail_id, "subQuery")) paste0(" = (", as.character(visit_detail_id), ")") else paste0(" = '", as.character(visit_detail_id), "'"))
  }

  if (!missing(condition_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " condition_source_value",if (is.null(condition_source_value)) " IS NULL" else if (is(condition_source_value, "subQuery")) paste0(" = (", as.character(condition_source_value), ")") else paste0(" = '", as.character(condition_source_value), "'"))
  }

  if (!missing(condition_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " condition_source_concept_id",if (is.null(condition_source_concept_id)) " IS NULL" else if (is(condition_source_concept_id, "subQuery")) paste0(" = (", as.character(condition_source_concept_id), ")") else paste0(" = '", as.character(condition_source_concept_id), "'"))
  }

  if (!missing(condition_status_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " condition_status_source_value",if (is.null(condition_status_source_value)) " IS NULL" else if (is(condition_status_source_value, "subQuery")) paste0(" = (", as.character(condition_status_source_value), ")") else paste0(" = '", as.character(condition_status_source_value), "'"))
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_procedure_occurrence <- function(fetchField, procedure_occurrence_id, person_id, procedure_concept_id, procedure_date, procedure_datetime, procedure_type_concept_id, modifier_concept_id, quantity, provider_id, visit_occurrence_id, visit_detail_id, procedure_source_value, procedure_source_concept_id, modifier_source_value) {
  statement <- paste0('SELECT ', fetchField , ' FROM @cdm_database_schema.procedure_occurrence WHERE')
  first <- TRUE
  if (!missing(procedure_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " procedure_occurrence_id",if (is.null(procedure_occurrence_id)) " IS NULL" else if (is(procedure_occurrence_id, "subQuery")) paste0(" = (", as.character(procedure_occurrence_id), ")") else paste0(" = '", as.character(procedure_occurrence_id), "'"))
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " person_id",if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
  }

  if (!missing(procedure_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " procedure_concept_id",if (is.null(procedure_concept_id)) " IS NULL" else if (is(procedure_concept_id, "subQuery")) paste0(" = (", as.character(procedure_concept_id), ")") else paste0(" = '", as.character(procedure_concept_id), "'"))
  }

  if (!missing(procedure_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " procedure_date",if (is.null(procedure_date)) " IS NULL" else if (is(procedure_date, "subQuery")) paste0(" = (", as.character(procedure_date), ")") else paste0(" = '", as.character(procedure_date), "'"))
  }

  if (!missing(procedure_datetime)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " procedure_datetime",if (is.null(procedure_datetime)) " IS NULL" else if (is(procedure_datetime, "subQuery")) paste0(" = (", as.character(procedure_datetime), ")") else paste0(" = '", as.character(procedure_datetime), "'"))
  }

  if (!missing(procedure_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " procedure_type_concept_id",if (is.null(procedure_type_concept_id)) " IS NULL" else if (is(procedure_type_concept_id, "subQuery")) paste0(" = (", as.character(procedure_type_concept_id), ")") else paste0(" = '", as.character(procedure_type_concept_id), "'"))
  }

  if (!missing(modifier_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " modifier_concept_id",if (is.null(modifier_concept_id)) " IS NULL" else if (is(modifier_concept_id, "subQuery")) paste0(" = (", as.character(modifier_concept_id), ")") else paste0(" = '", as.character(modifier_concept_id), "'"))
  }

  if (!missing(quantity)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " quantity",if (is.null(quantity)) " IS NULL" else if (is(quantity, "subQuery")) paste0(" = (", as.character(quantity), ")") else paste0(" = '", as.character(quantity), "'"))
  }

  if (!missing(provider_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " provider_id",if (is.null(provider_id)) " IS NULL" else if (is(provider_id, "subQuery")) paste0(" = (", as.character(provider_id), ")") else paste0(" = '", as.character(provider_id), "'"))
  }

  if (!missing(visit_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " visit_occurrence_id",if (is.null(visit_occurrence_id)) " IS NULL" else if (is(visit_occurrence_id, "subQuery")) paste0(" = (", as.character(visit_occurrence_id), ")") else paste0(" = '", as.character(visit_occurrence_id), "'"))
  }

  if (!missing(visit_detail_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " visit_detail_id",if (is.null(visit_detail_id)) " IS NULL" else if (is(visit_detail_id, "subQuery")) paste0(" = (", as.character(visit_detail_id), ")") else paste0(" = '", as.character(visit_detail_id), "'"))
  }

  if (!missing(procedure_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " procedure_source_value",if (is.null(procedure_source_value)) " IS NULL" else if (is(procedure_source_value, "subQuery")) paste0(" = (", as.character(procedure_source_value), ")") else paste0(" = '", as.character(procedure_source_value), "'"))
  }

  if (!missing(procedure_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " procedure_source_concept_id",if (is.null(procedure_source_concept_id)) " IS NULL" else if (is(procedure_source_concept_id, "subQuery")) paste0(" = (", as.character(procedure_source_concept_id), ")") else paste0(" = '", as.character(procedure_source_concept_id), "'"))
  }

  if (!missing(modifier_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " modifier_source_value",if (is.null(modifier_source_value)) " IS NULL" else if (is(modifier_source_value, "subQuery")) paste0(" = (", as.character(modifier_source_value), ")") else paste0(" = '", as.character(modifier_source_value), "'"))
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_drug_exposure <- function(fetchField, drug_exposure_id, person_id, drug_concept_id, drug_exposure_start_date, drug_exposure_start_datetime, drug_exposure_end_date, drug_exposure_end_datetime, verbatim_end_date, drug_type_concept_id, stop_reason, refills, quantity, days_supply, sig, route_concept_id, lot_number, provider_id, visit_occurrence_id, visit_detail_id, drug_source_value, drug_source_concept_id, route_source_value, dose_unit_source_value) {
  statement <- paste0('SELECT ', fetchField , ' FROM @cdm_database_schema.drug_exposure WHERE')
  first <- TRUE
  if (!missing(drug_exposure_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " drug_exposure_id",if (is.null(drug_exposure_id)) " IS NULL" else if (is(drug_exposure_id, "subQuery")) paste0(" = (", as.character(drug_exposure_id), ")") else paste0(" = '", as.character(drug_exposure_id), "'"))
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " person_id",if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
  }

  if (!missing(drug_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " drug_concept_id",if (is.null(drug_concept_id)) " IS NULL" else if (is(drug_concept_id, "subQuery")) paste0(" = (", as.character(drug_concept_id), ")") else paste0(" = '", as.character(drug_concept_id), "'"))
  }

  if (!missing(drug_exposure_start_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " drug_exposure_start_date",if (is.null(drug_exposure_start_date)) " IS NULL" else if (is(drug_exposure_start_date, "subQuery")) paste0(" = (", as.character(drug_exposure_start_date), ")") else paste0(" = '", as.character(drug_exposure_start_date), "'"))
  }

  if (!missing(drug_exposure_start_datetime)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " drug_exposure_start_datetime",if (is.null(drug_exposure_start_datetime)) " IS NULL" else if (is(drug_exposure_start_datetime, "subQuery")) paste0(" = (", as.character(drug_exposure_start_datetime), ")") else paste0(" = '", as.character(drug_exposure_start_datetime), "'"))
  }

  if (!missing(drug_exposure_end_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " drug_exposure_end_date",if (is.null(drug_exposure_end_date)) " IS NULL" else if (is(drug_exposure_end_date, "subQuery")) paste0(" = (", as.character(drug_exposure_end_date), ")") else paste0(" = '", as.character(drug_exposure_end_date), "'"))
  }

  if (!missing(drug_exposure_end_datetime)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " drug_exposure_end_datetime",if (is.null(drug_exposure_end_datetime)) " IS NULL" else if (is(drug_exposure_end_datetime, "subQuery")) paste0(" = (", as.character(drug_exposure_end_datetime), ")") else paste0(" = '", as.character(drug_exposure_end_datetime), "'"))
  }

  if (!missing(verbatim_end_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " verbatim_end_date",if (is.null(verbatim_end_date)) " IS NULL" else if (is(verbatim_end_date, "subQuery")) paste0(" = (", as.character(verbatim_end_date), ")") else paste0(" = '", as.character(verbatim_end_date), "'"))
  }

  if (!missing(drug_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " drug_type_concept_id",if (is.null(drug_type_concept_id)) " IS NULL" else if (is(drug_type_concept_id, "subQuery")) paste0(" = (", as.character(drug_type_concept_id), ")") else paste0(" = '", as.character(drug_type_concept_id), "'"))
  }

  if (!missing(stop_reason)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " stop_reason",if (is.null(stop_reason)) " IS NULL" else if (is(stop_reason, "subQuery")) paste0(" = (", as.character(stop_reason), ")") else paste0(" = '", as.character(stop_reason), "'"))
  }

  if (!missing(refills)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " refills",if (is.null(refills)) " IS NULL" else if (is(refills, "subQuery")) paste0(" = (", as.character(refills), ")") else paste0(" = '", as.character(refills), "'"))
  }

  if (!missing(quantity)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " quantity",if (is.null(quantity)) " IS NULL" else if (is(quantity, "subQuery")) paste0(" = (", as.character(quantity), ")") else paste0(" = '", as.character(quantity), "'"))
  }

  if (!missing(days_supply)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " days_supply",if (is.null(days_supply)) " IS NULL" else if (is(days_supply, "subQuery")) paste0(" = (", as.character(days_supply), ")") else paste0(" = '", as.character(days_supply), "'"))
  }

  if (!missing(sig)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " sig",if (is.null(sig)) " IS NULL" else if (is(sig, "subQuery")) paste0(" = (", as.character(sig), ")") else paste0(" = '", as.character(sig), "'"))
  }

  if (!missing(route_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " route_concept_id",if (is.null(route_concept_id)) " IS NULL" else if (is(route_concept_id, "subQuery")) paste0(" = (", as.character(route_concept_id), ")") else paste0(" = '", as.character(route_concept_id), "'"))
  }

  if (!missing(lot_number)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " lot_number",if (is.null(lot_number)) " IS NULL" else if (is(lot_number, "subQuery")) paste0(" = (", as.character(lot_number), ")") else paste0(" = '", as.character(lot_number), "'"))
  }

  if (!missing(provider_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " provider_id",if (is.null(provider_id)) " IS NULL" else if (is(provider_id, "subQuery")) paste0(" = (", as.character(provider_id), ")") else paste0(" = '", as.character(provider_id), "'"))
  }

  if (!missing(visit_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " visit_occurrence_id",if (is.null(visit_occurrence_id)) " IS NULL" else if (is(visit_occurrence_id, "subQuery")) paste0(" = (", as.character(visit_occurrence_id), ")") else paste0(" = '", as.character(visit_occurrence_id), "'"))
  }

  if (!missing(visit_detail_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " visit_detail_id",if (is.null(visit_detail_id)) " IS NULL" else if (is(visit_detail_id, "subQuery")) paste0(" = (", as.character(visit_detail_id), ")") else paste0(" = '", as.character(visit_detail_id), "'"))
  }

  if (!missing(drug_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " drug_source_value",if (is.null(drug_source_value)) " IS NULL" else if (is(drug_source_value, "subQuery")) paste0(" = (", as.character(drug_source_value), ")") else paste0(" = '", as.character(drug_source_value), "'"))
  }

  if (!missing(drug_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " drug_source_concept_id",if (is.null(drug_source_concept_id)) " IS NULL" else if (is(drug_source_concept_id, "subQuery")) paste0(" = (", as.character(drug_source_concept_id), ")") else paste0(" = '", as.character(drug_source_concept_id), "'"))
  }

  if (!missing(route_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " route_source_value",if (is.null(route_source_value)) " IS NULL" else if (is(route_source_value, "subQuery")) paste0(" = (", as.character(route_source_value), ")") else paste0(" = '", as.character(route_source_value), "'"))
  }

  if (!missing(dose_unit_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " dose_unit_source_value",if (is.null(dose_unit_source_value)) " IS NULL" else if (is(dose_unit_source_value, "subQuery")) paste0(" = (", as.character(dose_unit_source_value), ")") else paste0(" = '", as.character(dose_unit_source_value), "'"))
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_device_exposure <- function(fetchField, device_exposure_id, person_id, device_concept_id, device_exposure_start_date, device_exposure_start_datetime, device_exposure_end_date, device_exposure_end_datetime, device_type_concept_id, unique_device_id, quantity, provider_id, visit_occurrence_id, visit_detail_id, device_source_value, device_source_concept_id) {
  statement <- paste0('SELECT ', fetchField , ' FROM @cdm_database_schema.device_exposure WHERE')
  first <- TRUE
  if (!missing(device_exposure_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " device_exposure_id",if (is.null(device_exposure_id)) " IS NULL" else if (is(device_exposure_id, "subQuery")) paste0(" = (", as.character(device_exposure_id), ")") else paste0(" = '", as.character(device_exposure_id), "'"))
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " person_id",if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
  }

  if (!missing(device_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " device_concept_id",if (is.null(device_concept_id)) " IS NULL" else if (is(device_concept_id, "subQuery")) paste0(" = (", as.character(device_concept_id), ")") else paste0(" = '", as.character(device_concept_id), "'"))
  }

  if (!missing(device_exposure_start_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " device_exposure_start_date",if (is.null(device_exposure_start_date)) " IS NULL" else if (is(device_exposure_start_date, "subQuery")) paste0(" = (", as.character(device_exposure_start_date), ")") else paste0(" = '", as.character(device_exposure_start_date), "'"))
  }

  if (!missing(device_exposure_start_datetime)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " device_exposure_start_datetime",if (is.null(device_exposure_start_datetime)) " IS NULL" else if (is(device_exposure_start_datetime, "subQuery")) paste0(" = (", as.character(device_exposure_start_datetime), ")") else paste0(" = '", as.character(device_exposure_start_datetime), "'"))
  }

  if (!missing(device_exposure_end_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " device_exposure_end_date",if (is.null(device_exposure_end_date)) " IS NULL" else if (is(device_exposure_end_date, "subQuery")) paste0(" = (", as.character(device_exposure_end_date), ")") else paste0(" = '", as.character(device_exposure_end_date), "'"))
  }

  if (!missing(device_exposure_end_datetime)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " device_exposure_end_datetime",if (is.null(device_exposure_end_datetime)) " IS NULL" else if (is(device_exposure_end_datetime, "subQuery")) paste0(" = (", as.character(device_exposure_end_datetime), ")") else paste0(" = '", as.character(device_exposure_end_datetime), "'"))
  }

  if (!missing(device_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " device_type_concept_id",if (is.null(device_type_concept_id)) " IS NULL" else if (is(device_type_concept_id, "subQuery")) paste0(" = (", as.character(device_type_concept_id), ")") else paste0(" = '", as.character(device_type_concept_id), "'"))
  }

  if (!missing(unique_device_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " unique_device_id",if (is.null(unique_device_id)) " IS NULL" else if (is(unique_device_id, "subQuery")) paste0(" = (", as.character(unique_device_id), ")") else paste0(" = '", as.character(unique_device_id), "'"))
  }

  if (!missing(quantity)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " quantity",if (is.null(quantity)) " IS NULL" else if (is(quantity, "subQuery")) paste0(" = (", as.character(quantity), ")") else paste0(" = '", as.character(quantity), "'"))
  }

  if (!missing(provider_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " provider_id",if (is.null(provider_id)) " IS NULL" else if (is(provider_id, "subQuery")) paste0(" = (", as.character(provider_id), ")") else paste0(" = '", as.character(provider_id), "'"))
  }

  if (!missing(visit_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " visit_occurrence_id",if (is.null(visit_occurrence_id)) " IS NULL" else if (is(visit_occurrence_id, "subQuery")) paste0(" = (", as.character(visit_occurrence_id), ")") else paste0(" = '", as.character(visit_occurrence_id), "'"))
  }

  if (!missing(visit_detail_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " visit_detail_id",if (is.null(visit_detail_id)) " IS NULL" else if (is(visit_detail_id, "subQuery")) paste0(" = (", as.character(visit_detail_id), ")") else paste0(" = '", as.character(visit_detail_id), "'"))
  }

  if (!missing(device_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " device_source_value",if (is.null(device_source_value)) " IS NULL" else if (is(device_source_value, "subQuery")) paste0(" = (", as.character(device_source_value), ")") else paste0(" = '", as.character(device_source_value), "'"))
  }

  if (!missing(device_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " device_source_concept_id",if (is.null(device_source_concept_id)) " IS NULL" else if (is(device_source_concept_id, "subQuery")) paste0(" = (", as.character(device_source_concept_id), ")") else paste0(" = '", as.character(device_source_concept_id), "'"))
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_measurement <- function(fetchField, measurement_id, person_id, measurement_concept_id, measurement_date, measurement_datetime, measurement_time, measurement_type_concept_id, operator_concept_id, value_as_number, value_as_concept_id, unit_concept_id, range_low, range_high, provider_id, visit_occurrence_id, visit_detail_id, measurement_source_value, measurement_source_concept_id, unit_source_value, value_source_value) {
  statement <- paste0('SELECT ', fetchField , ' FROM @cdm_database_schema.measurement WHERE')
  first <- TRUE
  if (!missing(measurement_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " measurement_id",if (is.null(measurement_id)) " IS NULL" else if (is(measurement_id, "subQuery")) paste0(" = (", as.character(measurement_id), ")") else paste0(" = '", as.character(measurement_id), "'"))
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " person_id",if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
  }

  if (!missing(measurement_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " measurement_concept_id",if (is.null(measurement_concept_id)) " IS NULL" else if (is(measurement_concept_id, "subQuery")) paste0(" = (", as.character(measurement_concept_id), ")") else paste0(" = '", as.character(measurement_concept_id), "'"))
  }

  if (!missing(measurement_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " measurement_date",if (is.null(measurement_date)) " IS NULL" else if (is(measurement_date, "subQuery")) paste0(" = (", as.character(measurement_date), ")") else paste0(" = '", as.character(measurement_date), "'"))
  }

  if (!missing(measurement_datetime)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " measurement_datetime",if (is.null(measurement_datetime)) " IS NULL" else if (is(measurement_datetime, "subQuery")) paste0(" = (", as.character(measurement_datetime), ")") else paste0(" = '", as.character(measurement_datetime), "'"))
  }

  if (!missing(measurement_time)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " measurement_time",if (is.null(measurement_time)) " IS NULL" else if (is(measurement_time, "subQuery")) paste0(" = (", as.character(measurement_time), ")") else paste0(" = '", as.character(measurement_time), "'"))
  }

  if (!missing(measurement_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " measurement_type_concept_id",if (is.null(measurement_type_concept_id)) " IS NULL" else if (is(measurement_type_concept_id, "subQuery")) paste0(" = (", as.character(measurement_type_concept_id), ")") else paste0(" = '", as.character(measurement_type_concept_id), "'"))
  }

  if (!missing(operator_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " operator_concept_id",if (is.null(operator_concept_id)) " IS NULL" else if (is(operator_concept_id, "subQuery")) paste0(" = (", as.character(operator_concept_id), ")") else paste0(" = '", as.character(operator_concept_id), "'"))
  }

  if (!missing(value_as_number)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " value_as_number",if (is.null(value_as_number)) " IS NULL" else if (is(value_as_number, "subQuery")) paste0(" = (", as.character(value_as_number), ")") else paste0(" = '", as.character(value_as_number), "'"))
  }

  if (!missing(value_as_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " value_as_concept_id",if (is.null(value_as_concept_id)) " IS NULL" else if (is(value_as_concept_id, "subQuery")) paste0(" = (", as.character(value_as_concept_id), ")") else paste0(" = '", as.character(value_as_concept_id), "'"))
  }

  if (!missing(unit_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " unit_concept_id",if (is.null(unit_concept_id)) " IS NULL" else if (is(unit_concept_id, "subQuery")) paste0(" = (", as.character(unit_concept_id), ")") else paste0(" = '", as.character(unit_concept_id), "'"))
  }

  if (!missing(range_low)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " range_low",if (is.null(range_low)) " IS NULL" else if (is(range_low, "subQuery")) paste0(" = (", as.character(range_low), ")") else paste0(" = '", as.character(range_low), "'"))
  }

  if (!missing(range_high)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " range_high",if (is.null(range_high)) " IS NULL" else if (is(range_high, "subQuery")) paste0(" = (", as.character(range_high), ")") else paste0(" = '", as.character(range_high), "'"))
  }

  if (!missing(provider_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " provider_id",if (is.null(provider_id)) " IS NULL" else if (is(provider_id, "subQuery")) paste0(" = (", as.character(provider_id), ")") else paste0(" = '", as.character(provider_id), "'"))
  }

  if (!missing(visit_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " visit_occurrence_id",if (is.null(visit_occurrence_id)) " IS NULL" else if (is(visit_occurrence_id, "subQuery")) paste0(" = (", as.character(visit_occurrence_id), ")") else paste0(" = '", as.character(visit_occurrence_id), "'"))
  }

  if (!missing(visit_detail_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " visit_detail_id",if (is.null(visit_detail_id)) " IS NULL" else if (is(visit_detail_id, "subQuery")) paste0(" = (", as.character(visit_detail_id), ")") else paste0(" = '", as.character(visit_detail_id), "'"))
  }

  if (!missing(measurement_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " measurement_source_value",if (is.null(measurement_source_value)) " IS NULL" else if (is(measurement_source_value, "subQuery")) paste0(" = (", as.character(measurement_source_value), ")") else paste0(" = '", as.character(measurement_source_value), "'"))
  }

  if (!missing(measurement_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " measurement_source_concept_id",if (is.null(measurement_source_concept_id)) " IS NULL" else if (is(measurement_source_concept_id, "subQuery")) paste0(" = (", as.character(measurement_source_concept_id), ")") else paste0(" = '", as.character(measurement_source_concept_id), "'"))
  }

  if (!missing(unit_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " unit_source_value",if (is.null(unit_source_value)) " IS NULL" else if (is(unit_source_value, "subQuery")) paste0(" = (", as.character(unit_source_value), ")") else paste0(" = '", as.character(unit_source_value), "'"))
  }

  if (!missing(value_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " value_source_value",if (is.null(value_source_value)) " IS NULL" else if (is(value_source_value, "subQuery")) paste0(" = (", as.character(value_source_value), ")") else paste0(" = '", as.character(value_source_value), "'"))
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_observation <- function(fetchField, observation_id, person_id, observation_concept_id, observation_date, observation_datetime, observation_type_concept_id, value_as_number, value_as_string, value_as_concept_id, qualifier_concept_id, unit_concept_id, provider_id, visit_occurrence_id, visit_detail_id, observation_source_value, observation_source_concept_id, unit_source_value, qualifier_source_value, observation_event_id, obs_event_field_concept_id, value_as_datetime) {
  statement <- paste0('SELECT ', fetchField , ' FROM @cdm_database_schema.observation WHERE')
  first <- TRUE
  if (!missing(observation_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " observation_id",if (is.null(observation_id)) " IS NULL" else if (is(observation_id, "subQuery")) paste0(" = (", as.character(observation_id), ")") else paste0(" = '", as.character(observation_id), "'"))
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " person_id",if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
  }

  if (!missing(observation_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " observation_concept_id",if (is.null(observation_concept_id)) " IS NULL" else if (is(observation_concept_id, "subQuery")) paste0(" = (", as.character(observation_concept_id), ")") else paste0(" = '", as.character(observation_concept_id), "'"))
  }

  if (!missing(observation_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " observation_date",if (is.null(observation_date)) " IS NULL" else if (is(observation_date, "subQuery")) paste0(" = (", as.character(observation_date), ")") else paste0(" = '", as.character(observation_date), "'"))
  }

  if (!missing(observation_datetime)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " observation_datetime",if (is.null(observation_datetime)) " IS NULL" else if (is(observation_datetime, "subQuery")) paste0(" = (", as.character(observation_datetime), ")") else paste0(" = '", as.character(observation_datetime), "'"))
  }

  if (!missing(observation_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " observation_type_concept_id",if (is.null(observation_type_concept_id)) " IS NULL" else if (is(observation_type_concept_id, "subQuery")) paste0(" = (", as.character(observation_type_concept_id), ")") else paste0(" = '", as.character(observation_type_concept_id), "'"))
  }

  if (!missing(value_as_number)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " value_as_number",if (is.null(value_as_number)) " IS NULL" else if (is(value_as_number, "subQuery")) paste0(" = (", as.character(value_as_number), ")") else paste0(" = '", as.character(value_as_number), "'"))
  }

  if (!missing(value_as_string)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " value_as_string",if (is.null(value_as_string)) " IS NULL" else if (is(value_as_string, "subQuery")) paste0(" = (", as.character(value_as_string), ")") else paste0(" = '", as.character(value_as_string), "'"))
  }

  if (!missing(value_as_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " value_as_concept_id",if (is.null(value_as_concept_id)) " IS NULL" else if (is(value_as_concept_id, "subQuery")) paste0(" = (", as.character(value_as_concept_id), ")") else paste0(" = '", as.character(value_as_concept_id), "'"))
  }

  if (!missing(qualifier_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " qualifier_concept_id",if (is.null(qualifier_concept_id)) " IS NULL" else if (is(qualifier_concept_id, "subQuery")) paste0(" = (", as.character(qualifier_concept_id), ")") else paste0(" = '", as.character(qualifier_concept_id), "'"))
  }

  if (!missing(unit_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " unit_concept_id",if (is.null(unit_concept_id)) " IS NULL" else if (is(unit_concept_id, "subQuery")) paste0(" = (", as.character(unit_concept_id), ")") else paste0(" = '", as.character(unit_concept_id), "'"))
  }

  if (!missing(provider_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " provider_id",if (is.null(provider_id)) " IS NULL" else if (is(provider_id, "subQuery")) paste0(" = (", as.character(provider_id), ")") else paste0(" = '", as.character(provider_id), "'"))
  }

  if (!missing(visit_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " visit_occurrence_id",if (is.null(visit_occurrence_id)) " IS NULL" else if (is(visit_occurrence_id, "subQuery")) paste0(" = (", as.character(visit_occurrence_id), ")") else paste0(" = '", as.character(visit_occurrence_id), "'"))
  }

  if (!missing(visit_detail_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " visit_detail_id",if (is.null(visit_detail_id)) " IS NULL" else if (is(visit_detail_id, "subQuery")) paste0(" = (", as.character(visit_detail_id), ")") else paste0(" = '", as.character(visit_detail_id), "'"))
  }

  if (!missing(observation_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " observation_source_value",if (is.null(observation_source_value)) " IS NULL" else if (is(observation_source_value, "subQuery")) paste0(" = (", as.character(observation_source_value), ")") else paste0(" = '", as.character(observation_source_value), "'"))
  }

  if (!missing(observation_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " observation_source_concept_id",if (is.null(observation_source_concept_id)) " IS NULL" else if (is(observation_source_concept_id, "subQuery")) paste0(" = (", as.character(observation_source_concept_id), ")") else paste0(" = '", as.character(observation_source_concept_id), "'"))
  }

  if (!missing(unit_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " unit_source_value",if (is.null(unit_source_value)) " IS NULL" else if (is(unit_source_value, "subQuery")) paste0(" = (", as.character(unit_source_value), ")") else paste0(" = '", as.character(unit_source_value), "'"))
  }

  if (!missing(qualifier_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " qualifier_source_value",if (is.null(qualifier_source_value)) " IS NULL" else if (is(qualifier_source_value, "subQuery")) paste0(" = (", as.character(qualifier_source_value), ")") else paste0(" = '", as.character(qualifier_source_value), "'"))
  }

  if (!missing(observation_event_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " observation_event_id",if (is.null(observation_event_id)) " IS NULL" else if (is(observation_event_id, "subQuery")) paste0(" = (", as.character(observation_event_id), ")") else paste0(" = '", as.character(observation_event_id), "'"))
  }

  if (!missing(obs_event_field_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " obs_event_field_concept_id",if (is.null(obs_event_field_concept_id)) " IS NULL" else if (is(obs_event_field_concept_id, "subQuery")) paste0(" = (", as.character(obs_event_field_concept_id), ")") else paste0(" = '", as.character(obs_event_field_concept_id), "'"))
  }

  if (!missing(value_as_datetime)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " value_as_datetime",if (is.null(value_as_datetime)) " IS NULL" else if (is(value_as_datetime, "subQuery")) paste0(" = (", as.character(value_as_datetime), ")") else paste0(" = '", as.character(value_as_datetime), "'"))
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_specimen <- function(fetchField, specimen_id, person_id, specimen_concept_id, specimen_type_concept_id, specimen_date, specimen_datetime, quantity, unit_concept_id, anatomic_site_concept_id, disease_status_concept_id, specimen_source_id, specimen_source_value, unit_source_value, anatomic_site_source_value, disease_status_source_value) {
  statement <- paste0('SELECT ', fetchField , ' FROM @cdm_database_schema.specimen WHERE')
  first <- TRUE
  if (!missing(specimen_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " specimen_id",if (is.null(specimen_id)) " IS NULL" else if (is(specimen_id, "subQuery")) paste0(" = (", as.character(specimen_id), ")") else paste0(" = '", as.character(specimen_id), "'"))
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " person_id",if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
  }

  if (!missing(specimen_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " specimen_concept_id",if (is.null(specimen_concept_id)) " IS NULL" else if (is(specimen_concept_id, "subQuery")) paste0(" = (", as.character(specimen_concept_id), ")") else paste0(" = '", as.character(specimen_concept_id), "'"))
  }

  if (!missing(specimen_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " specimen_type_concept_id",if (is.null(specimen_type_concept_id)) " IS NULL" else if (is(specimen_type_concept_id, "subQuery")) paste0(" = (", as.character(specimen_type_concept_id), ")") else paste0(" = '", as.character(specimen_type_concept_id), "'"))
  }

  if (!missing(specimen_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " specimen_date",if (is.null(specimen_date)) " IS NULL" else if (is(specimen_date, "subQuery")) paste0(" = (", as.character(specimen_date), ")") else paste0(" = '", as.character(specimen_date), "'"))
  }

  if (!missing(specimen_datetime)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " specimen_datetime",if (is.null(specimen_datetime)) " IS NULL" else if (is(specimen_datetime, "subQuery")) paste0(" = (", as.character(specimen_datetime), ")") else paste0(" = '", as.character(specimen_datetime), "'"))
  }

  if (!missing(quantity)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " quantity",if (is.null(quantity)) " IS NULL" else if (is(quantity, "subQuery")) paste0(" = (", as.character(quantity), ")") else paste0(" = '", as.character(quantity), "'"))
  }

  if (!missing(unit_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " unit_concept_id",if (is.null(unit_concept_id)) " IS NULL" else if (is(unit_concept_id, "subQuery")) paste0(" = (", as.character(unit_concept_id), ")") else paste0(" = '", as.character(unit_concept_id), "'"))
  }

  if (!missing(anatomic_site_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " anatomic_site_concept_id",if (is.null(anatomic_site_concept_id)) " IS NULL" else if (is(anatomic_site_concept_id, "subQuery")) paste0(" = (", as.character(anatomic_site_concept_id), ")") else paste0(" = '", as.character(anatomic_site_concept_id), "'"))
  }

  if (!missing(disease_status_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " disease_status_concept_id",if (is.null(disease_status_concept_id)) " IS NULL" else if (is(disease_status_concept_id, "subQuery")) paste0(" = (", as.character(disease_status_concept_id), ")") else paste0(" = '", as.character(disease_status_concept_id), "'"))
  }

  if (!missing(specimen_source_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " specimen_source_id",if (is.null(specimen_source_id)) " IS NULL" else if (is(specimen_source_id, "subQuery")) paste0(" = (", as.character(specimen_source_id), ")") else paste0(" = '", as.character(specimen_source_id), "'"))
  }

  if (!missing(specimen_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " specimen_source_value",if (is.null(specimen_source_value)) " IS NULL" else if (is(specimen_source_value, "subQuery")) paste0(" = (", as.character(specimen_source_value), ")") else paste0(" = '", as.character(specimen_source_value), "'"))
  }

  if (!missing(unit_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " unit_source_value",if (is.null(unit_source_value)) " IS NULL" else if (is(unit_source_value, "subQuery")) paste0(" = (", as.character(unit_source_value), ")") else paste0(" = '", as.character(unit_source_value), "'"))
  }

  if (!missing(anatomic_site_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " anatomic_site_source_value",if (is.null(anatomic_site_source_value)) " IS NULL" else if (is(anatomic_site_source_value, "subQuery")) paste0(" = (", as.character(anatomic_site_source_value), ")") else paste0(" = '", as.character(anatomic_site_source_value), "'"))
  }

  if (!missing(disease_status_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " disease_status_source_value",if (is.null(disease_status_source_value)) " IS NULL" else if (is(disease_status_source_value, "subQuery")) paste0(" = (", as.character(disease_status_source_value), ")") else paste0(" = '", as.character(disease_status_source_value), "'"))
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_note <- function(fetchField, note_id, person_id, note_event_id, note_event_field_concept_id, note_date, note_datetime, note_type_concept_id, note_class_concept_id, note_title, note_text, encoding_concept_id, language_concept_id, provider_id, visit_occurrence_id, visit_detail_id, note_source_value) {
  statement <- paste0('SELECT ', fetchField , ' FROM @cdm_database_schema.note WHERE')
  first <- TRUE
  if (!missing(note_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " note_id",if (is.null(note_id)) " IS NULL" else if (is(note_id, "subQuery")) paste0(" = (", as.character(note_id), ")") else paste0(" = '", as.character(note_id), "'"))
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " person_id",if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
  }

  if (!missing(note_event_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " note_event_id",if (is.null(note_event_id)) " IS NULL" else if (is(note_event_id, "subQuery")) paste0(" = (", as.character(note_event_id), ")") else paste0(" = '", as.character(note_event_id), "'"))
  }

  if (!missing(note_event_field_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " note_event_field_concept_id",if (is.null(note_event_field_concept_id)) " IS NULL" else if (is(note_event_field_concept_id, "subQuery")) paste0(" = (", as.character(note_event_field_concept_id), ")") else paste0(" = '", as.character(note_event_field_concept_id), "'"))
  }

  if (!missing(note_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " note_date",if (is.null(note_date)) " IS NULL" else if (is(note_date, "subQuery")) paste0(" = (", as.character(note_date), ")") else paste0(" = '", as.character(note_date), "'"))
  }

  if (!missing(note_datetime)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " note_datetime",if (is.null(note_datetime)) " IS NULL" else if (is(note_datetime, "subQuery")) paste0(" = (", as.character(note_datetime), ")") else paste0(" = '", as.character(note_datetime), "'"))
  }

  if (!missing(note_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " note_type_concept_id",if (is.null(note_type_concept_id)) " IS NULL" else if (is(note_type_concept_id, "subQuery")) paste0(" = (", as.character(note_type_concept_id), ")") else paste0(" = '", as.character(note_type_concept_id), "'"))
  }

  if (!missing(note_class_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " note_class_concept_id",if (is.null(note_class_concept_id)) " IS NULL" else if (is(note_class_concept_id, "subQuery")) paste0(" = (", as.character(note_class_concept_id), ")") else paste0(" = '", as.character(note_class_concept_id), "'"))
  }

  if (!missing(note_title)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " note_title",if (is.null(note_title)) " IS NULL" else if (is(note_title, "subQuery")) paste0(" = (", as.character(note_title), ")") else paste0(" = '", as.character(note_title), "'"))
  }

  if (!missing(note_text)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " note_text",if (is.null(note_text)) " IS NULL" else if (is(note_text, "subQuery")) paste0(" = (", as.character(note_text), ")") else paste0(" = '", as.character(note_text), "'"))
  }

  if (!missing(encoding_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " encoding_concept_id",if (is.null(encoding_concept_id)) " IS NULL" else if (is(encoding_concept_id, "subQuery")) paste0(" = (", as.character(encoding_concept_id), ")") else paste0(" = '", as.character(encoding_concept_id), "'"))
  }

  if (!missing(language_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " language_concept_id",if (is.null(language_concept_id)) " IS NULL" else if (is(language_concept_id, "subQuery")) paste0(" = (", as.character(language_concept_id), ")") else paste0(" = '", as.character(language_concept_id), "'"))
  }

  if (!missing(provider_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " provider_id",if (is.null(provider_id)) " IS NULL" else if (is(provider_id, "subQuery")) paste0(" = (", as.character(provider_id), ")") else paste0(" = '", as.character(provider_id), "'"))
  }

  if (!missing(visit_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " visit_occurrence_id",if (is.null(visit_occurrence_id)) " IS NULL" else if (is(visit_occurrence_id, "subQuery")) paste0(" = (", as.character(visit_occurrence_id), ")") else paste0(" = '", as.character(visit_occurrence_id), "'"))
  }

  if (!missing(visit_detail_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " visit_detail_id",if (is.null(visit_detail_id)) " IS NULL" else if (is(visit_detail_id, "subQuery")) paste0(" = (", as.character(visit_detail_id), ")") else paste0(" = '", as.character(visit_detail_id), "'"))
  }

  if (!missing(note_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " note_source_value",if (is.null(note_source_value)) " IS NULL" else if (is(note_source_value, "subQuery")) paste0(" = (", as.character(note_source_value), ")") else paste0(" = '", as.character(note_source_value), "'"))
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_note_nlp <- function(fetchField, note_nlp_id, note_id, section_concept_id, snippet, offset, lexical_variant, note_nlp_concept_id, note_nlp_source_concept_id, nlp_system, nlp_date, nlp_datetime, term_exists, term_temporal, term_modifiers) {
  statement <- paste0('SELECT ', fetchField , ' FROM @cdm_database_schema.note_nlp WHERE')
  first <- TRUE
  if (!missing(note_nlp_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " note_nlp_id",if (is.null(note_nlp_id)) " IS NULL" else if (is(note_nlp_id, "subQuery")) paste0(" = (", as.character(note_nlp_id), ")") else paste0(" = '", as.character(note_nlp_id), "'"))
  }

  if (!missing(note_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " note_id",if (is.null(note_id)) " IS NULL" else if (is(note_id, "subQuery")) paste0(" = (", as.character(note_id), ")") else paste0(" = '", as.character(note_id), "'"))
  }

  if (!missing(section_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " section_concept_id",if (is.null(section_concept_id)) " IS NULL" else if (is(section_concept_id, "subQuery")) paste0(" = (", as.character(section_concept_id), ")") else paste0(" = '", as.character(section_concept_id), "'"))
  }

  if (!missing(snippet)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " snippet",if (is.null(snippet)) " IS NULL" else if (is(snippet, "subQuery")) paste0(" = (", as.character(snippet), ")") else paste0(" = '", as.character(snippet), "'"))
  }

  if (!missing(offset)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " offset",if (is.null(offset)) " IS NULL" else if (is(offset, "subQuery")) paste0(" = (", as.character(offset), ")") else paste0(" = '", as.character(offset), "'"))
  }

  if (!missing(lexical_variant)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " lexical_variant",if (is.null(lexical_variant)) " IS NULL" else if (is(lexical_variant, "subQuery")) paste0(" = (", as.character(lexical_variant), ")") else paste0(" = '", as.character(lexical_variant), "'"))
  }

  if (!missing(note_nlp_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " note_nlp_concept_id",if (is.null(note_nlp_concept_id)) " IS NULL" else if (is(note_nlp_concept_id, "subQuery")) paste0(" = (", as.character(note_nlp_concept_id), ")") else paste0(" = '", as.character(note_nlp_concept_id), "'"))
  }

  if (!missing(note_nlp_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " note_nlp_source_concept_id",if (is.null(note_nlp_source_concept_id)) " IS NULL" else if (is(note_nlp_source_concept_id, "subQuery")) paste0(" = (", as.character(note_nlp_source_concept_id), ")") else paste0(" = '", as.character(note_nlp_source_concept_id), "'"))
  }

  if (!missing(nlp_system)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " nlp_system",if (is.null(nlp_system)) " IS NULL" else if (is(nlp_system, "subQuery")) paste0(" = (", as.character(nlp_system), ")") else paste0(" = '", as.character(nlp_system), "'"))
  }

  if (!missing(nlp_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " nlp_date",if (is.null(nlp_date)) " IS NULL" else if (is(nlp_date, "subQuery")) paste0(" = (", as.character(nlp_date), ")") else paste0(" = '", as.character(nlp_date), "'"))
  }

  if (!missing(nlp_datetime)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " nlp_datetime",if (is.null(nlp_datetime)) " IS NULL" else if (is(nlp_datetime, "subQuery")) paste0(" = (", as.character(nlp_datetime), ")") else paste0(" = '", as.character(nlp_datetime), "'"))
  }

  if (!missing(term_exists)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " term_exists",if (is.null(term_exists)) " IS NULL" else if (is(term_exists, "subQuery")) paste0(" = (", as.character(term_exists), ")") else paste0(" = '", as.character(term_exists), "'"))
  }

  if (!missing(term_temporal)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " term_temporal",if (is.null(term_temporal)) " IS NULL" else if (is(term_temporal, "subQuery")) paste0(" = (", as.character(term_temporal), ")") else paste0(" = '", as.character(term_temporal), "'"))
  }

  if (!missing(term_modifiers)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " term_modifiers",if (is.null(term_modifiers)) " IS NULL" else if (is(term_modifiers, "subQuery")) paste0(" = (", as.character(term_modifiers), ")") else paste0(" = '", as.character(term_modifiers), "'"))
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_survey_conduct <- function(fetchField, survey_conduct_id, person_id, survey_concept_id, survey_start_date, survey_start_datetime, survey_end_date, survey_end_datetime, provider_id, assisted_concept_id, respondent_type_concept_id, timing_concept_id, collection_method_concept_id, assisted_source_value, respondent_type_source_value, timing_source_value, collection_method_source_value, survey_source_value, survey_source_concept_id, survey_source_identifier, validated_survey_concept_id, validated_survey_source_value, survey_version_number, visit_occurrence_id, response_visit_occurrence_id) {
  statement <- paste0('SELECT ', fetchField , ' FROM @cdm_database_schema.survey_conduct WHERE')
  first <- TRUE
  if (!missing(survey_conduct_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " survey_conduct_id",if (is.null(survey_conduct_id)) " IS NULL" else if (is(survey_conduct_id, "subQuery")) paste0(" = (", as.character(survey_conduct_id), ")") else paste0(" = '", as.character(survey_conduct_id), "'"))
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " person_id",if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
  }

  if (!missing(survey_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " survey_concept_id",if (is.null(survey_concept_id)) " IS NULL" else if (is(survey_concept_id, "subQuery")) paste0(" = (", as.character(survey_concept_id), ")") else paste0(" = '", as.character(survey_concept_id), "'"))
  }

  if (!missing(survey_start_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " survey_start_date",if (is.null(survey_start_date)) " IS NULL" else if (is(survey_start_date, "subQuery")) paste0(" = (", as.character(survey_start_date), ")") else paste0(" = '", as.character(survey_start_date), "'"))
  }

  if (!missing(survey_start_datetime)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " survey_start_datetime",if (is.null(survey_start_datetime)) " IS NULL" else if (is(survey_start_datetime, "subQuery")) paste0(" = (", as.character(survey_start_datetime), ")") else paste0(" = '", as.character(survey_start_datetime), "'"))
  }

  if (!missing(survey_end_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " survey_end_date",if (is.null(survey_end_date)) " IS NULL" else if (is(survey_end_date, "subQuery")) paste0(" = (", as.character(survey_end_date), ")") else paste0(" = '", as.character(survey_end_date), "'"))
  }

  if (!missing(survey_end_datetime)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " survey_end_datetime",if (is.null(survey_end_datetime)) " IS NULL" else if (is(survey_end_datetime, "subQuery")) paste0(" = (", as.character(survey_end_datetime), ")") else paste0(" = '", as.character(survey_end_datetime), "'"))
  }

  if (!missing(provider_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " provider_id",if (is.null(provider_id)) " IS NULL" else if (is(provider_id, "subQuery")) paste0(" = (", as.character(provider_id), ")") else paste0(" = '", as.character(provider_id), "'"))
  }

  if (!missing(assisted_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " assisted_concept_id",if (is.null(assisted_concept_id)) " IS NULL" else if (is(assisted_concept_id, "subQuery")) paste0(" = (", as.character(assisted_concept_id), ")") else paste0(" = '", as.character(assisted_concept_id), "'"))
  }

  if (!missing(respondent_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " respondent_type_concept_id",if (is.null(respondent_type_concept_id)) " IS NULL" else if (is(respondent_type_concept_id, "subQuery")) paste0(" = (", as.character(respondent_type_concept_id), ")") else paste0(" = '", as.character(respondent_type_concept_id), "'"))
  }

  if (!missing(timing_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " timing_concept_id",if (is.null(timing_concept_id)) " IS NULL" else if (is(timing_concept_id, "subQuery")) paste0(" = (", as.character(timing_concept_id), ")") else paste0(" = '", as.character(timing_concept_id), "'"))
  }

  if (!missing(collection_method_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " collection_method_concept_id",if (is.null(collection_method_concept_id)) " IS NULL" else if (is(collection_method_concept_id, "subQuery")) paste0(" = (", as.character(collection_method_concept_id), ")") else paste0(" = '", as.character(collection_method_concept_id), "'"))
  }

  if (!missing(assisted_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " assisted_source_value",if (is.null(assisted_source_value)) " IS NULL" else if (is(assisted_source_value, "subQuery")) paste0(" = (", as.character(assisted_source_value), ")") else paste0(" = '", as.character(assisted_source_value), "'"))
  }

  if (!missing(respondent_type_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " respondent_type_source_value",if (is.null(respondent_type_source_value)) " IS NULL" else if (is(respondent_type_source_value, "subQuery")) paste0(" = (", as.character(respondent_type_source_value), ")") else paste0(" = '", as.character(respondent_type_source_value), "'"))
  }

  if (!missing(timing_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " timing_source_value",if (is.null(timing_source_value)) " IS NULL" else if (is(timing_source_value, "subQuery")) paste0(" = (", as.character(timing_source_value), ")") else paste0(" = '", as.character(timing_source_value), "'"))
  }

  if (!missing(collection_method_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " collection_method_source_value",if (is.null(collection_method_source_value)) " IS NULL" else if (is(collection_method_source_value, "subQuery")) paste0(" = (", as.character(collection_method_source_value), ")") else paste0(" = '", as.character(collection_method_source_value), "'"))
  }

  if (!missing(survey_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " survey_source_value",if (is.null(survey_source_value)) " IS NULL" else if (is(survey_source_value, "subQuery")) paste0(" = (", as.character(survey_source_value), ")") else paste0(" = '", as.character(survey_source_value), "'"))
  }

  if (!missing(survey_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " survey_source_concept_id",if (is.null(survey_source_concept_id)) " IS NULL" else if (is(survey_source_concept_id, "subQuery")) paste0(" = (", as.character(survey_source_concept_id), ")") else paste0(" = '", as.character(survey_source_concept_id), "'"))
  }

  if (!missing(survey_source_identifier)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " survey_source_identifier",if (is.null(survey_source_identifier)) " IS NULL" else if (is(survey_source_identifier, "subQuery")) paste0(" = (", as.character(survey_source_identifier), ")") else paste0(" = '", as.character(survey_source_identifier), "'"))
  }

  if (!missing(validated_survey_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " validated_survey_concept_id",if (is.null(validated_survey_concept_id)) " IS NULL" else if (is(validated_survey_concept_id, "subQuery")) paste0(" = (", as.character(validated_survey_concept_id), ")") else paste0(" = '", as.character(validated_survey_concept_id), "'"))
  }

  if (!missing(validated_survey_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " validated_survey_source_value",if (is.null(validated_survey_source_value)) " IS NULL" else if (is(validated_survey_source_value, "subQuery")) paste0(" = (", as.character(validated_survey_source_value), ")") else paste0(" = '", as.character(validated_survey_source_value), "'"))
  }

  if (!missing(survey_version_number)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " survey_version_number",if (is.null(survey_version_number)) " IS NULL" else if (is(survey_version_number, "subQuery")) paste0(" = (", as.character(survey_version_number), ")") else paste0(" = '", as.character(survey_version_number), "'"))
  }

  if (!missing(visit_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " visit_occurrence_id",if (is.null(visit_occurrence_id)) " IS NULL" else if (is(visit_occurrence_id, "subQuery")) paste0(" = (", as.character(visit_occurrence_id), ")") else paste0(" = '", as.character(visit_occurrence_id), "'"))
  }

  if (!missing(response_visit_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " response_visit_occurrence_id",if (is.null(response_visit_occurrence_id)) " IS NULL" else if (is(response_visit_occurrence_id, "subQuery")) paste0(" = (", as.character(response_visit_occurrence_id), ")") else paste0(" = '", as.character(response_visit_occurrence_id), "'"))
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_cost <- function(fetchField, cost_id, person_id, cost_event_id, cost_event_field_concept_id, cost_concept_id, cost_type_concept_id, cost_source_concept_id, cost_source_value, currency_concept_id, cost, incurred_date, billed_date, paid_date, revenue_code_concept_id, drg_concept_id, revenue_code_source_value, drg_source_value, payer_plan_period_id) {
  statement <- paste0('SELECT ', fetchField , ' FROM @cdm_database_schema.cost WHERE')
  first <- TRUE
  if (!missing(cost_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " cost_id",if (is.null(cost_id)) " IS NULL" else if (is(cost_id, "subQuery")) paste0(" = (", as.character(cost_id), ")") else paste0(" = '", as.character(cost_id), "'"))
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " person_id",if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
  }

  if (!missing(cost_event_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " cost_event_id",if (is.null(cost_event_id)) " IS NULL" else if (is(cost_event_id, "subQuery")) paste0(" = (", as.character(cost_event_id), ")") else paste0(" = '", as.character(cost_event_id), "'"))
  }

  if (!missing(cost_event_field_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " cost_event_field_concept_id",if (is.null(cost_event_field_concept_id)) " IS NULL" else if (is(cost_event_field_concept_id, "subQuery")) paste0(" = (", as.character(cost_event_field_concept_id), ")") else paste0(" = '", as.character(cost_event_field_concept_id), "'"))
  }

  if (!missing(cost_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " cost_concept_id",if (is.null(cost_concept_id)) " IS NULL" else if (is(cost_concept_id, "subQuery")) paste0(" = (", as.character(cost_concept_id), ")") else paste0(" = '", as.character(cost_concept_id), "'"))
  }

  if (!missing(cost_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " cost_type_concept_id",if (is.null(cost_type_concept_id)) " IS NULL" else if (is(cost_type_concept_id, "subQuery")) paste0(" = (", as.character(cost_type_concept_id), ")") else paste0(" = '", as.character(cost_type_concept_id), "'"))
  }

  if (!missing(cost_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " cost_source_concept_id",if (is.null(cost_source_concept_id)) " IS NULL" else if (is(cost_source_concept_id, "subQuery")) paste0(" = (", as.character(cost_source_concept_id), ")") else paste0(" = '", as.character(cost_source_concept_id), "'"))
  }

  if (!missing(cost_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " cost_source_value",if (is.null(cost_source_value)) " IS NULL" else if (is(cost_source_value, "subQuery")) paste0(" = (", as.character(cost_source_value), ")") else paste0(" = '", as.character(cost_source_value), "'"))
  }

  if (!missing(currency_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " currency_concept_id",if (is.null(currency_concept_id)) " IS NULL" else if (is(currency_concept_id, "subQuery")) paste0(" = (", as.character(currency_concept_id), ")") else paste0(" = '", as.character(currency_concept_id), "'"))
  }

  if (!missing(cost)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " cost",if (is.null(cost)) " IS NULL" else if (is(cost, "subQuery")) paste0(" = (", as.character(cost), ")") else paste0(" = '", as.character(cost), "'"))
  }

  if (!missing(incurred_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " incurred_date",if (is.null(incurred_date)) " IS NULL" else if (is(incurred_date, "subQuery")) paste0(" = (", as.character(incurred_date), ")") else paste0(" = '", as.character(incurred_date), "'"))
  }

  if (!missing(billed_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " billed_date",if (is.null(billed_date)) " IS NULL" else if (is(billed_date, "subQuery")) paste0(" = (", as.character(billed_date), ")") else paste0(" = '", as.character(billed_date), "'"))
  }

  if (!missing(paid_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " paid_date",if (is.null(paid_date)) " IS NULL" else if (is(paid_date, "subQuery")) paste0(" = (", as.character(paid_date), ")") else paste0(" = '", as.character(paid_date), "'"))
  }

  if (!missing(revenue_code_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " revenue_code_concept_id",if (is.null(revenue_code_concept_id)) " IS NULL" else if (is(revenue_code_concept_id, "subQuery")) paste0(" = (", as.character(revenue_code_concept_id), ")") else paste0(" = '", as.character(revenue_code_concept_id), "'"))
  }

  if (!missing(drg_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " drg_concept_id",if (is.null(drg_concept_id)) " IS NULL" else if (is(drg_concept_id, "subQuery")) paste0(" = (", as.character(drg_concept_id), ")") else paste0(" = '", as.character(drg_concept_id), "'"))
  }

  if (!missing(revenue_code_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " revenue_code_source_value",if (is.null(revenue_code_source_value)) " IS NULL" else if (is(revenue_code_source_value, "subQuery")) paste0(" = (", as.character(revenue_code_source_value), ")") else paste0(" = '", as.character(revenue_code_source_value), "'"))
  }

  if (!missing(drg_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " drg_source_value",if (is.null(drg_source_value)) " IS NULL" else if (is(drg_source_value, "subQuery")) paste0(" = (", as.character(drg_source_value), ")") else paste0(" = '", as.character(drg_source_value), "'"))
  }

  if (!missing(payer_plan_period_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " payer_plan_period_id",if (is.null(payer_plan_period_id)) " IS NULL" else if (is(payer_plan_period_id, "subQuery")) paste0(" = (", as.character(payer_plan_period_id), ")") else paste0(" = '", as.character(payer_plan_period_id), "'"))
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_payer_plan_period <- function(fetchField, payer_plan_period_id, person_id, contract_person_id, payer_plan_period_start_date, payer_plan_period_end_date, payer_concept_id, payer_source_value, payer_source_concept_id, plan_concept_id, plan_source_value, plan_source_concept_id, contract_concept_id, contract_source_value, contract_source_concept_id, sponsor_concept_id, sponsor_source_value, sponsor_source_concept_id, family_source_value, stop_reason_concept_id, stop_reason_source_value, stop_reason_source_concept_id) {
  statement <- paste0('SELECT ', fetchField , ' FROM @cdm_database_schema.payer_plan_period WHERE')
  first <- TRUE
  if (!missing(payer_plan_period_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " payer_plan_period_id",if (is.null(payer_plan_period_id)) " IS NULL" else if (is(payer_plan_period_id, "subQuery")) paste0(" = (", as.character(payer_plan_period_id), ")") else paste0(" = '", as.character(payer_plan_period_id), "'"))
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " person_id",if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
  }

  if (!missing(contract_person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " contract_person_id",if (is.null(contract_person_id)) " IS NULL" else if (is(contract_person_id, "subQuery")) paste0(" = (", as.character(contract_person_id), ")") else paste0(" = '", as.character(contract_person_id), "'"))
  }

  if (!missing(payer_plan_period_start_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " payer_plan_period_start_date",if (is.null(payer_plan_period_start_date)) " IS NULL" else if (is(payer_plan_period_start_date, "subQuery")) paste0(" = (", as.character(payer_plan_period_start_date), ")") else paste0(" = '", as.character(payer_plan_period_start_date), "'"))
  }

  if (!missing(payer_plan_period_end_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " payer_plan_period_end_date",if (is.null(payer_plan_period_end_date)) " IS NULL" else if (is(payer_plan_period_end_date, "subQuery")) paste0(" = (", as.character(payer_plan_period_end_date), ")") else paste0(" = '", as.character(payer_plan_period_end_date), "'"))
  }

  if (!missing(payer_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " payer_concept_id",if (is.null(payer_concept_id)) " IS NULL" else if (is(payer_concept_id, "subQuery")) paste0(" = (", as.character(payer_concept_id), ")") else paste0(" = '", as.character(payer_concept_id), "'"))
  }

  if (!missing(payer_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " payer_source_value",if (is.null(payer_source_value)) " IS NULL" else if (is(payer_source_value, "subQuery")) paste0(" = (", as.character(payer_source_value), ")") else paste0(" = '", as.character(payer_source_value), "'"))
  }

  if (!missing(payer_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " payer_source_concept_id",if (is.null(payer_source_concept_id)) " IS NULL" else if (is(payer_source_concept_id, "subQuery")) paste0(" = (", as.character(payer_source_concept_id), ")") else paste0(" = '", as.character(payer_source_concept_id), "'"))
  }

  if (!missing(plan_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " plan_concept_id",if (is.null(plan_concept_id)) " IS NULL" else if (is(plan_concept_id, "subQuery")) paste0(" = (", as.character(plan_concept_id), ")") else paste0(" = '", as.character(plan_concept_id), "'"))
  }

  if (!missing(plan_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " plan_source_value",if (is.null(plan_source_value)) " IS NULL" else if (is(plan_source_value, "subQuery")) paste0(" = (", as.character(plan_source_value), ")") else paste0(" = '", as.character(plan_source_value), "'"))
  }

  if (!missing(plan_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " plan_source_concept_id",if (is.null(plan_source_concept_id)) " IS NULL" else if (is(plan_source_concept_id, "subQuery")) paste0(" = (", as.character(plan_source_concept_id), ")") else paste0(" = '", as.character(plan_source_concept_id), "'"))
  }

  if (!missing(contract_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " contract_concept_id",if (is.null(contract_concept_id)) " IS NULL" else if (is(contract_concept_id, "subQuery")) paste0(" = (", as.character(contract_concept_id), ")") else paste0(" = '", as.character(contract_concept_id), "'"))
  }

  if (!missing(contract_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " contract_source_value",if (is.null(contract_source_value)) " IS NULL" else if (is(contract_source_value, "subQuery")) paste0(" = (", as.character(contract_source_value), ")") else paste0(" = '", as.character(contract_source_value), "'"))
  }

  if (!missing(contract_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " contract_source_concept_id",if (is.null(contract_source_concept_id)) " IS NULL" else if (is(contract_source_concept_id, "subQuery")) paste0(" = (", as.character(contract_source_concept_id), ")") else paste0(" = '", as.character(contract_source_concept_id), "'"))
  }

  if (!missing(sponsor_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " sponsor_concept_id",if (is.null(sponsor_concept_id)) " IS NULL" else if (is(sponsor_concept_id, "subQuery")) paste0(" = (", as.character(sponsor_concept_id), ")") else paste0(" = '", as.character(sponsor_concept_id), "'"))
  }

  if (!missing(sponsor_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " sponsor_source_value",if (is.null(sponsor_source_value)) " IS NULL" else if (is(sponsor_source_value, "subQuery")) paste0(" = (", as.character(sponsor_source_value), ")") else paste0(" = '", as.character(sponsor_source_value), "'"))
  }

  if (!missing(sponsor_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " sponsor_source_concept_id",if (is.null(sponsor_source_concept_id)) " IS NULL" else if (is(sponsor_source_concept_id, "subQuery")) paste0(" = (", as.character(sponsor_source_concept_id), ")") else paste0(" = '", as.character(sponsor_source_concept_id), "'"))
  }

  if (!missing(family_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " family_source_value",if (is.null(family_source_value)) " IS NULL" else if (is(family_source_value, "subQuery")) paste0(" = (", as.character(family_source_value), ")") else paste0(" = '", as.character(family_source_value), "'"))
  }

  if (!missing(stop_reason_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " stop_reason_concept_id",if (is.null(stop_reason_concept_id)) " IS NULL" else if (is(stop_reason_concept_id, "subQuery")) paste0(" = (", as.character(stop_reason_concept_id), ")") else paste0(" = '", as.character(stop_reason_concept_id), "'"))
  }

  if (!missing(stop_reason_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " stop_reason_source_value",if (is.null(stop_reason_source_value)) " IS NULL" else if (is(stop_reason_source_value, "subQuery")) paste0(" = (", as.character(stop_reason_source_value), ")") else paste0(" = '", as.character(stop_reason_source_value), "'"))
  }

  if (!missing(stop_reason_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " stop_reason_source_concept_id",if (is.null(stop_reason_source_concept_id)) " IS NULL" else if (is(stop_reason_source_concept_id, "subQuery")) paste0(" = (", as.character(stop_reason_source_concept_id), ")") else paste0(" = '", as.character(stop_reason_source_concept_id), "'"))
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_drug_era <- function(fetchField, drug_era_id, person_id, drug_concept_id, drug_era_start_datetime, drug_era_end_datetime, drug_exposure_count, gap_days) {
  statement <- paste0('SELECT ', fetchField , ' FROM @cdm_database_schema.drug_era WHERE')
  first <- TRUE
  if (!missing(drug_era_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " drug_era_id",if (is.null(drug_era_id)) " IS NULL" else if (is(drug_era_id, "subQuery")) paste0(" = (", as.character(drug_era_id), ")") else paste0(" = '", as.character(drug_era_id), "'"))
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " person_id",if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
  }

  if (!missing(drug_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " drug_concept_id",if (is.null(drug_concept_id)) " IS NULL" else if (is(drug_concept_id, "subQuery")) paste0(" = (", as.character(drug_concept_id), ")") else paste0(" = '", as.character(drug_concept_id), "'"))
  }

  if (!missing(drug_era_start_datetime)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " drug_era_start_datetime",if (is.null(drug_era_start_datetime)) " IS NULL" else if (is(drug_era_start_datetime, "subQuery")) paste0(" = (", as.character(drug_era_start_datetime), ")") else paste0(" = '", as.character(drug_era_start_datetime), "'"))
  }

  if (!missing(drug_era_end_datetime)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " drug_era_end_datetime",if (is.null(drug_era_end_datetime)) " IS NULL" else if (is(drug_era_end_datetime, "subQuery")) paste0(" = (", as.character(drug_era_end_datetime), ")") else paste0(" = '", as.character(drug_era_end_datetime), "'"))
  }

  if (!missing(drug_exposure_count)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " drug_exposure_count",if (is.null(drug_exposure_count)) " IS NULL" else if (is(drug_exposure_count, "subQuery")) paste0(" = (", as.character(drug_exposure_count), ")") else paste0(" = '", as.character(drug_exposure_count), "'"))
  }

  if (!missing(gap_days)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " gap_days",if (is.null(gap_days)) " IS NULL" else if (is(gap_days, "subQuery")) paste0(" = (", as.character(gap_days), ")") else paste0(" = '", as.character(gap_days), "'"))
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_dose_era <- function(fetchField, dose_era_id, person_id, drug_concept_id, unit_concept_id, dose_value, dose_era_start_datetime, dose_era_end_datetime) {
  statement <- paste0('SELECT ', fetchField , ' FROM @cdm_database_schema.dose_era WHERE')
  first <- TRUE
  if (!missing(dose_era_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " dose_era_id",if (is.null(dose_era_id)) " IS NULL" else if (is(dose_era_id, "subQuery")) paste0(" = (", as.character(dose_era_id), ")") else paste0(" = '", as.character(dose_era_id), "'"))
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " person_id",if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
  }

  if (!missing(drug_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " drug_concept_id",if (is.null(drug_concept_id)) " IS NULL" else if (is(drug_concept_id, "subQuery")) paste0(" = (", as.character(drug_concept_id), ")") else paste0(" = '", as.character(drug_concept_id), "'"))
  }

  if (!missing(unit_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " unit_concept_id",if (is.null(unit_concept_id)) " IS NULL" else if (is(unit_concept_id, "subQuery")) paste0(" = (", as.character(unit_concept_id), ")") else paste0(" = '", as.character(unit_concept_id), "'"))
  }

  if (!missing(dose_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " dose_value",if (is.null(dose_value)) " IS NULL" else if (is(dose_value, "subQuery")) paste0(" = (", as.character(dose_value), ")") else paste0(" = '", as.character(dose_value), "'"))
  }

  if (!missing(dose_era_start_datetime)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " dose_era_start_datetime",if (is.null(dose_era_start_datetime)) " IS NULL" else if (is(dose_era_start_datetime, "subQuery")) paste0(" = (", as.character(dose_era_start_datetime), ")") else paste0(" = '", as.character(dose_era_start_datetime), "'"))
  }

  if (!missing(dose_era_end_datetime)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " dose_era_end_datetime",if (is.null(dose_era_end_datetime)) " IS NULL" else if (is(dose_era_end_datetime, "subQuery")) paste0(" = (", as.character(dose_era_end_datetime), ")") else paste0(" = '", as.character(dose_era_end_datetime), "'"))
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_condition_era <- function(fetchField, condition_era_id, person_id, condition_concept_id, condition_era_start_datetime, condition_era_end_datetime, condition_occurrence_count) {
  statement <- paste0('SELECT ', fetchField , ' FROM @cdm_database_schema.condition_era WHERE')
  first <- TRUE
  if (!missing(condition_era_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " condition_era_id",if (is.null(condition_era_id)) " IS NULL" else if (is(condition_era_id, "subQuery")) paste0(" = (", as.character(condition_era_id), ")") else paste0(" = '", as.character(condition_era_id), "'"))
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " person_id",if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
  }

  if (!missing(condition_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " condition_concept_id",if (is.null(condition_concept_id)) " IS NULL" else if (is(condition_concept_id, "subQuery")) paste0(" = (", as.character(condition_concept_id), ")") else paste0(" = '", as.character(condition_concept_id), "'"))
  }

  if (!missing(condition_era_start_datetime)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " condition_era_start_datetime",if (is.null(condition_era_start_datetime)) " IS NULL" else if (is(condition_era_start_datetime, "subQuery")) paste0(" = (", as.character(condition_era_start_datetime), ")") else paste0(" = '", as.character(condition_era_start_datetime), "'"))
  }

  if (!missing(condition_era_end_datetime)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " condition_era_end_datetime",if (is.null(condition_era_end_datetime)) " IS NULL" else if (is(condition_era_end_datetime, "subQuery")) paste0(" = (", as.character(condition_era_end_datetime), ")") else paste0(" = '", as.character(condition_era_end_datetime), "'"))
  }

  if (!missing(condition_occurrence_count)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " condition_occurrence_count",if (is.null(condition_occurrence_count)) " IS NULL" else if (is(condition_occurrence_count, "subQuery")) paste0(" = (", as.character(condition_occurrence_count), ")") else paste0(" = '", as.character(condition_occurrence_count), "'"))
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_location <- function(fetchField, location_id, address_1, address_2, city, state, zip, county, country, location_source_value, latitude, longitude) {
  statement <- paste0('SELECT ', fetchField , ' FROM @cdm_database_schema.location WHERE')
  first <- TRUE
  if (!missing(location_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " location_id",if (is.null(location_id)) " IS NULL" else if (is(location_id, "subQuery")) paste0(" = (", as.character(location_id), ")") else paste0(" = '", as.character(location_id), "'"))
  }

  if (!missing(address_1)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " address_1",if (is.null(address_1)) " IS NULL" else if (is(address_1, "subQuery")) paste0(" = (", as.character(address_1), ")") else paste0(" = '", as.character(address_1), "'"))
  }

  if (!missing(address_2)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " address_2",if (is.null(address_2)) " IS NULL" else if (is(address_2, "subQuery")) paste0(" = (", as.character(address_2), ")") else paste0(" = '", as.character(address_2), "'"))
  }

  if (!missing(city)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " city",if (is.null(city)) " IS NULL" else if (is(city, "subQuery")) paste0(" = (", as.character(city), ")") else paste0(" = '", as.character(city), "'"))
  }

  if (!missing(state)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " state",if (is.null(state)) " IS NULL" else if (is(state, "subQuery")) paste0(" = (", as.character(state), ")") else paste0(" = '", as.character(state), "'"))
  }

  if (!missing(zip)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " zip",if (is.null(zip)) " IS NULL" else if (is(zip, "subQuery")) paste0(" = (", as.character(zip), ")") else paste0(" = '", as.character(zip), "'"))
  }

  if (!missing(county)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " county",if (is.null(county)) " IS NULL" else if (is(county, "subQuery")) paste0(" = (", as.character(county), ")") else paste0(" = '", as.character(county), "'"))
  }

  if (!missing(country)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " country",if (is.null(country)) " IS NULL" else if (is(country, "subQuery")) paste0(" = (", as.character(country), ")") else paste0(" = '", as.character(country), "'"))
  }

  if (!missing(location_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " location_source_value",if (is.null(location_source_value)) " IS NULL" else if (is(location_source_value, "subQuery")) paste0(" = (", as.character(location_source_value), ")") else paste0(" = '", as.character(location_source_value), "'"))
  }

  if (!missing(latitude)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " latitude",if (is.null(latitude)) " IS NULL" else if (is(latitude, "subQuery")) paste0(" = (", as.character(latitude), ")") else paste0(" = '", as.character(latitude), "'"))
  }

  if (!missing(longitude)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " longitude",if (is.null(longitude)) " IS NULL" else if (is(longitude, "subQuery")) paste0(" = (", as.character(longitude), ")") else paste0(" = '", as.character(longitude), "'"))
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_location_history <- function(fetchField, location_id, relationship_type_concept_id, domain_id, entity_id, start_date, end_date) {
  statement <- paste0('SELECT ', fetchField , ' FROM @cdm_database_schema.location_history WHERE')
  first <- TRUE
  if (!missing(location_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " location_id",if (is.null(location_id)) " IS NULL" else if (is(location_id, "subQuery")) paste0(" = (", as.character(location_id), ")") else paste0(" = '", as.character(location_id), "'"))
  }

  if (!missing(relationship_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " relationship_type_concept_id",if (is.null(relationship_type_concept_id)) " IS NULL" else if (is(relationship_type_concept_id, "subQuery")) paste0(" = (", as.character(relationship_type_concept_id), ")") else paste0(" = '", as.character(relationship_type_concept_id), "'"))
  }

  if (!missing(domain_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " domain_id",if (is.null(domain_id)) " IS NULL" else if (is(domain_id, "subQuery")) paste0(" = (", as.character(domain_id), ")") else paste0(" = '", as.character(domain_id), "'"))
  }

  if (!missing(entity_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " entity_id",if (is.null(entity_id)) " IS NULL" else if (is(entity_id, "subQuery")) paste0(" = (", as.character(entity_id), ")") else paste0(" = '", as.character(entity_id), "'"))
  }

  if (!missing(start_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " start_date",if (is.null(start_date)) " IS NULL" else if (is(start_date, "subQuery")) paste0(" = (", as.character(start_date), ")") else paste0(" = '", as.character(start_date), "'"))
  }

  if (!missing(end_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " end_date",if (is.null(end_date)) " IS NULL" else if (is(end_date, "subQuery")) paste0(" = (", as.character(end_date), ")") else paste0(" = '", as.character(end_date), "'"))
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_provider <- function(fetchField, provider_id, provider_name, npi, dea, specialty_concept_id, care_site_id, year_of_birth, gender_concept_id, provider_source_value, specialty_source_value, specialty_source_concept_id, gender_source_value, gender_source_concept_id) {
  statement <- paste0('SELECT ', fetchField , ' FROM @cdm_database_schema.provider WHERE')
  first <- TRUE
  if (!missing(provider_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " provider_id",if (is.null(provider_id)) " IS NULL" else if (is(provider_id, "subQuery")) paste0(" = (", as.character(provider_id), ")") else paste0(" = '", as.character(provider_id), "'"))
  }

  if (!missing(provider_name)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " provider_name",if (is.null(provider_name)) " IS NULL" else if (is(provider_name, "subQuery")) paste0(" = (", as.character(provider_name), ")") else paste0(" = '", as.character(provider_name), "'"))
  }

  if (!missing(npi)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " npi",if (is.null(npi)) " IS NULL" else if (is(npi, "subQuery")) paste0(" = (", as.character(npi), ")") else paste0(" = '", as.character(npi), "'"))
  }

  if (!missing(dea)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " dea",if (is.null(dea)) " IS NULL" else if (is(dea, "subQuery")) paste0(" = (", as.character(dea), ")") else paste0(" = '", as.character(dea), "'"))
  }

  if (!missing(specialty_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " specialty_concept_id",if (is.null(specialty_concept_id)) " IS NULL" else if (is(specialty_concept_id, "subQuery")) paste0(" = (", as.character(specialty_concept_id), ")") else paste0(" = '", as.character(specialty_concept_id), "'"))
  }

  if (!missing(care_site_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " care_site_id",if (is.null(care_site_id)) " IS NULL" else if (is(care_site_id, "subQuery")) paste0(" = (", as.character(care_site_id), ")") else paste0(" = '", as.character(care_site_id), "'"))
  }

  if (!missing(year_of_birth)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " year_of_birth",if (is.null(year_of_birth)) " IS NULL" else if (is(year_of_birth, "subQuery")) paste0(" = (", as.character(year_of_birth), ")") else paste0(" = '", as.character(year_of_birth), "'"))
  }

  if (!missing(gender_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " gender_concept_id",if (is.null(gender_concept_id)) " IS NULL" else if (is(gender_concept_id, "subQuery")) paste0(" = (", as.character(gender_concept_id), ")") else paste0(" = '", as.character(gender_concept_id), "'"))
  }

  if (!missing(provider_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " provider_source_value",if (is.null(provider_source_value)) " IS NULL" else if (is(provider_source_value, "subQuery")) paste0(" = (", as.character(provider_source_value), ")") else paste0(" = '", as.character(provider_source_value), "'"))
  }

  if (!missing(specialty_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " specialty_source_value",if (is.null(specialty_source_value)) " IS NULL" else if (is(specialty_source_value, "subQuery")) paste0(" = (", as.character(specialty_source_value), ")") else paste0(" = '", as.character(specialty_source_value), "'"))
  }

  if (!missing(specialty_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " specialty_source_concept_id",if (is.null(specialty_source_concept_id)) " IS NULL" else if (is(specialty_source_concept_id, "subQuery")) paste0(" = (", as.character(specialty_source_concept_id), ")") else paste0(" = '", as.character(specialty_source_concept_id), "'"))
  }

  if (!missing(gender_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " gender_source_value",if (is.null(gender_source_value)) " IS NULL" else if (is(gender_source_value, "subQuery")) paste0(" = (", as.character(gender_source_value), ")") else paste0(" = '", as.character(gender_source_value), "'"))
  }

  if (!missing(gender_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " gender_source_concept_id",if (is.null(gender_source_concept_id)) " IS NULL" else if (is(gender_source_concept_id, "subQuery")) paste0(" = (", as.character(gender_source_concept_id), ")") else paste0(" = '", as.character(gender_source_concept_id), "'"))
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_care_site <- function(fetchField, care_site_id, care_site_name, place_of_service_concept_id, location_id, care_site_source_value, place_of_service_source_value) {
  statement <- paste0('SELECT ', fetchField , ' FROM @cdm_database_schema.care_site WHERE')
  first <- TRUE
  if (!missing(care_site_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " care_site_id",if (is.null(care_site_id)) " IS NULL" else if (is(care_site_id, "subQuery")) paste0(" = (", as.character(care_site_id), ")") else paste0(" = '", as.character(care_site_id), "'"))
  }

  if (!missing(care_site_name)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " care_site_name",if (is.null(care_site_name)) " IS NULL" else if (is(care_site_name, "subQuery")) paste0(" = (", as.character(care_site_name), ")") else paste0(" = '", as.character(care_site_name), "'"))
  }

  if (!missing(place_of_service_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " place_of_service_concept_id",if (is.null(place_of_service_concept_id)) " IS NULL" else if (is(place_of_service_concept_id, "subQuery")) paste0(" = (", as.character(place_of_service_concept_id), ")") else paste0(" = '", as.character(place_of_service_concept_id), "'"))
  }

  if (!missing(location_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " location_id",if (is.null(location_id)) " IS NULL" else if (is(location_id, "subQuery")) paste0(" = (", as.character(location_id), ")") else paste0(" = '", as.character(location_id), "'"))
  }

  if (!missing(care_site_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " care_site_source_value",if (is.null(care_site_source_value)) " IS NULL" else if (is(care_site_source_value, "subQuery")) paste0(" = (", as.character(care_site_source_value), ")") else paste0(" = '", as.character(care_site_source_value), "'"))
  }

  if (!missing(place_of_service_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " place_of_service_source_value",if (is.null(place_of_service_source_value)) " IS NULL" else if (is(place_of_service_source_value, "subQuery")) paste0(" = (", as.character(place_of_service_source_value), ")") else paste0(" = '", as.character(place_of_service_source_value), "'"))
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_cdm_source <- function(fetchField, cdm_source_name, cdm_source_abbreviation, cdm_holder, source_description, source_documentation_reference, cdm_etl_reference, source_release_date, cdm_release_date, cdm_version, vocabulary_version) {
  statement <- paste0('SELECT ', fetchField , ' FROM @cdm_database_schema.cdm_source WHERE')
  first <- TRUE
  if (!missing(cdm_source_name)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " cdm_source_name",if (is.null(cdm_source_name)) " IS NULL" else if (is(cdm_source_name, "subQuery")) paste0(" = (", as.character(cdm_source_name), ")") else paste0(" = '", as.character(cdm_source_name), "'"))
  }

  if (!missing(cdm_source_abbreviation)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " cdm_source_abbreviation",if (is.null(cdm_source_abbreviation)) " IS NULL" else if (is(cdm_source_abbreviation, "subQuery")) paste0(" = (", as.character(cdm_source_abbreviation), ")") else paste0(" = '", as.character(cdm_source_abbreviation), "'"))
  }

  if (!missing(cdm_holder)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " cdm_holder",if (is.null(cdm_holder)) " IS NULL" else if (is(cdm_holder, "subQuery")) paste0(" = (", as.character(cdm_holder), ")") else paste0(" = '", as.character(cdm_holder), "'"))
  }

  if (!missing(source_description)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " source_description",if (is.null(source_description)) " IS NULL" else if (is(source_description, "subQuery")) paste0(" = (", as.character(source_description), ")") else paste0(" = '", as.character(source_description), "'"))
  }

  if (!missing(source_documentation_reference)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " source_documentation_reference",if (is.null(source_documentation_reference)) " IS NULL" else if (is(source_documentation_reference, "subQuery")) paste0(" = (", as.character(source_documentation_reference), ")") else paste0(" = '", as.character(source_documentation_reference), "'"))
  }

  if (!missing(cdm_etl_reference)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " cdm_etl_reference",if (is.null(cdm_etl_reference)) " IS NULL" else if (is(cdm_etl_reference, "subQuery")) paste0(" = (", as.character(cdm_etl_reference), ")") else paste0(" = '", as.character(cdm_etl_reference), "'"))
  }

  if (!missing(source_release_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " source_release_date",if (is.null(source_release_date)) " IS NULL" else if (is(source_release_date, "subQuery")) paste0(" = (", as.character(source_release_date), ")") else paste0(" = '", as.character(source_release_date), "'"))
  }

  if (!missing(cdm_release_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " cdm_release_date",if (is.null(cdm_release_date)) " IS NULL" else if (is(cdm_release_date, "subQuery")) paste0(" = (", as.character(cdm_release_date), ")") else paste0(" = '", as.character(cdm_release_date), "'"))
  }

  if (!missing(cdm_version)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " cdm_version",if (is.null(cdm_version)) " IS NULL" else if (is(cdm_version, "subQuery")) paste0(" = (", as.character(cdm_version), ")") else paste0(" = '", as.character(cdm_version), "'"))
  }

  if (!missing(vocabulary_version)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " vocabulary_version",if (is.null(vocabulary_version)) " IS NULL" else if (is(vocabulary_version, "subQuery")) paste0(" = (", as.character(vocabulary_version), ")") else paste0(" = '", as.character(vocabulary_version), "'"))
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_metadata <- function(fetchField, metadata_concept_id, metadata_type_concept_id, name, value_as_string, value_as_concept_id, metadata_date, metadata_datetime) {
  statement <- paste0('SELECT ', fetchField , ' FROM @cdm_database_schema.metadata WHERE')
  first <- TRUE
  if (!missing(metadata_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " metadata_concept_id",if (is.null(metadata_concept_id)) " IS NULL" else if (is(metadata_concept_id, "subQuery")) paste0(" = (", as.character(metadata_concept_id), ")") else paste0(" = '", as.character(metadata_concept_id), "'"))
  }

  if (!missing(metadata_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " metadata_type_concept_id",if (is.null(metadata_type_concept_id)) " IS NULL" else if (is(metadata_type_concept_id, "subQuery")) paste0(" = (", as.character(metadata_type_concept_id), ")") else paste0(" = '", as.character(metadata_type_concept_id), "'"))
  }

  if (!missing(name)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " name",if (is.null(name)) " IS NULL" else if (is(name, "subQuery")) paste0(" = (", as.character(name), ")") else paste0(" = '", as.character(name), "'"))
  }

  if (!missing(value_as_string)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " value_as_string",if (is.null(value_as_string)) " IS NULL" else if (is(value_as_string, "subQuery")) paste0(" = (", as.character(value_as_string), ")") else paste0(" = '", as.character(value_as_string), "'"))
  }

  if (!missing(value_as_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " value_as_concept_id",if (is.null(value_as_concept_id)) " IS NULL" else if (is(value_as_concept_id, "subQuery")) paste0(" = (", as.character(value_as_concept_id), ")") else paste0(" = '", as.character(value_as_concept_id), "'"))
  }

  if (!missing(metadata_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " [metadata date]",if (is.null(metadata_date)) " IS NULL" else if (is(metadata_date, "subQuery")) paste0(" = (", as.character(metadata_date), ")") else paste0(" = '", as.character(metadata_date), "'"))
  }

  if (!missing(metadata_datetime)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " metadata_datetime",if (is.null(metadata_datetime)) " IS NULL" else if (is(metadata_datetime, "subQuery")) paste0(" = (", as.character(metadata_datetime), ")") else paste0(" = '", as.character(metadata_datetime), "'"))
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_fact_relationship <- function(fetchField, domain_concept_id_1, fact_id_1, domain_concept_id_2, fact_id_2, relationship_concept_id) {
  statement <- paste0('SELECT ', fetchField , ' FROM @cdm_database_schema.fact_relationship WHERE')
  first <- TRUE
  if (!missing(domain_concept_id_1)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " domain_concept_id_1",if (is.null(domain_concept_id_1)) " IS NULL" else if (is(domain_concept_id_1, "subQuery")) paste0(" = (", as.character(domain_concept_id_1), ")") else paste0(" = '", as.character(domain_concept_id_1), "'"))
  }

  if (!missing(fact_id_1)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " fact_id_1",if (is.null(fact_id_1)) " IS NULL" else if (is(fact_id_1, "subQuery")) paste0(" = (", as.character(fact_id_1), ")") else paste0(" = '", as.character(fact_id_1), "'"))
  }

  if (!missing(domain_concept_id_2)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " domain_concept_id_2",if (is.null(domain_concept_id_2)) " IS NULL" else if (is(domain_concept_id_2, "subQuery")) paste0(" = (", as.character(domain_concept_id_2), ")") else paste0(" = '", as.character(domain_concept_id_2), "'"))
  }

  if (!missing(fact_id_2)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " fact_id_2",if (is.null(fact_id_2)) " IS NULL" else if (is(fact_id_2, "subQuery")) paste0(" = (", as.character(fact_id_2), ")") else paste0(" = '", as.character(fact_id_2), "'"))
  }

  if (!missing(relationship_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " relationship_concept_id",if (is.null(relationship_concept_id)) " IS NULL" else if (is(relationship_concept_id, "subQuery")) paste0(" = (", as.character(relationship_concept_id), ")") else paste0(" = '", as.character(relationship_concept_id), "'"))
  }

  class(statement) <- 'subQuery'
  return(statement)
}
lookup_death <- function(fetchField, person_id, death_date, death_datetime, death_type_concept_id, cause_concept_id, cause_source_value, cause_source_concept_id) {
  statement <- paste0('SELECT ', fetchField , ' FROM @cdm_database_schema.death WHERE')
  first <- TRUE
  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " person_id",if (is.null(person_id)) " IS NULL" else if (is(person_id, "subQuery")) paste0(" = (", as.character(person_id), ")") else paste0(" = '", as.character(person_id), "'"))
  }

  if (!missing(death_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " death_date",if (is.null(death_date)) " IS NULL" else if (is(death_date, "subQuery")) paste0(" = (", as.character(death_date), ")") else paste0(" = '", as.character(death_date), "'"))
  }

  if (!missing(death_datetime)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " death_datetime",if (is.null(death_datetime)) " IS NULL" else if (is(death_datetime, "subQuery")) paste0(" = (", as.character(death_datetime), ")") else paste0(" = '", as.character(death_datetime), "'"))
  }

  if (!missing(death_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " death_type_concept_id",if (is.null(death_type_concept_id)) " IS NULL" else if (is(death_type_concept_id, "subQuery")) paste0(" = (", as.character(death_type_concept_id), ")") else paste0(" = '", as.character(death_type_concept_id), "'"))
  }

  if (!missing(cause_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " cause_concept_id",if (is.null(cause_concept_id)) " IS NULL" else if (is(cause_concept_id, "subQuery")) paste0(" = (", as.character(cause_concept_id), ")") else paste0(" = '", as.character(cause_concept_id), "'"))
  }

  if (!missing(cause_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " cause_source_value",if (is.null(cause_source_value)) " IS NULL" else if (is(cause_source_value, "subQuery")) paste0(" = (", as.character(cause_source_value), ")") else paste0(" = '", as.character(cause_source_value), "'"))
  }

  if (!missing(cause_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " cause_source_concept_id",if (is.null(cause_source_concept_id)) " IS NULL" else if (is(cause_source_concept_id, "subQuery")) paste0(" = (", as.character(cause_source_concept_id), ")") else paste0(" = '", as.character(cause_source_concept_id), "'"))
  }

  class(statement) <- 'subQuery'
  return(statement)
}


generateInsertSql <- function(databaseSchema = NULL) {
  insertSql <- c()
  insertSql <- c(insertSql, "TRUNCATE TABLE @cdm_database_schema.tb_aconadve;")
  insertSql <- c(insertSql, "TRUNCATE TABLE @cdm_database_schema.tb_alergias;")
  insertSql <- c(insertSql, "TRUNCATE TABLE @cdm_database_schema.tb_ante_cmbd;")
  insertSql <- c(insertSql, "TRUNCATE TABLE @cdm_database_schema.tb_antepers;")
  insertSql <- c(insertSql, "TRUNCATE TABLE @cdm_database_schema.tb_cex;")
  insertSql <- c(insertSql, "TRUNCATE TABLE @cdm_database_schema.tb_cie_atc;")
  insertSql <- c(insertSql, "TRUNCATE TABLE @cdm_database_schema.tb_consultas_atp;")
  insertSql <- c(insertSql, "TRUNCATE TABLE @cdm_database_schema.tb_contraind;")
  insertSql <- c(insertSql, "TRUNCATE TABLE @cdm_database_schema.tb_ctdh;")
  insertSql <- c(insertSql, "TRUNCATE TABLE @cdm_database_schema.tb_diag_cmbd;")
  insertSql <- c(insertSql, "TRUNCATE TABLE @cdm_database_schema.tb_diag_juntos;")
  insertSql <- c(insertSql, "TRUNCATE TABLE @cdm_database_schema.tb_duplicid;")
  insertSql <- c(insertSql, "TRUNCATE TABLE @cdm_database_schema.tb_estancia_uci;")
  insertSql <- c(insertSql, "TRUNCATE TABLE @cdm_database_schema.tb_incatemp;")
  insertSql <- c(insertSql, "TRUNCATE TABLE @cdm_database_schema.tb_interacc;")
  insertSql <- c(insertSql, "TRUNCATE TABLE @cdm_database_schema.tb_morbilid;")
  insertSql <- c(insertSql, "TRUNCATE TABLE @cdm_database_schema.tb_posologia;")
  insertSql <- c(insertSql, "TRUNCATE TABLE @cdm_database_schema.tb_prescrip;")
  insertSql <- c(insertSql, "TRUNCATE TABLE @cdm_database_schema.tb_prestaci;")
  insertSql <- c(insertSql, "TRUNCATE TABLE @cdm_database_schema.tb_proc_cmbd;")
  insertSql <- c(insertSql, "TRUNCATE TABLE @cdm_database_schema.tb_rele;")
  insertSql <- c(insertSql, "TRUNCATE TABLE @cdm_database_schema.tb_scp_2012;")
  insertSql <- c(insertSql, "TRUNCATE TABLE @cdm_database_schema.tb_scp_2013;")
  insertSql <- c(insertSql, "TRUNCATE TABLE @cdm_database_schema.tb_scp_2014;")
  insertSql <- c(insertSql, "TRUNCATE TABLE @cdm_database_schema.tb_scp_2015;")
  insertSql <- c(insertSql, "TRUNCATE TABLE @cdm_database_schema.tb_sip_spo;")
  insertSql <- c(insertSql, "TRUNCATE TABLE @cdm_database_schema.tb_sip_spo_resto_2012;")
  insertSql <- c(insertSql, "TRUNCATE TABLE @cdm_database_schema.tb_sip_spo_resto_2015;")
  insertSql <- c(insertSql, "TRUNCATE TABLE @cdm_database_schema.tb_tratamientos;")
  insertSql <- c(insertSql, "TRUNCATE TABLE @cdm_database_schema.tb_urgencias;")
  insertSql <- c(insertSql, "TRUNCATE TABLE @cdm_database_schema.tb_variables;")
  insertSql <- c(insertSql, "TRUNCATE TABLE @cdm_database_schema.tba_atc2;")
  insertSql <- c(insertSql, "TRUNCATE TABLE @cdm_database_schema.tba_atc4;")
  insertSql <- c(insertSql, "TRUNCATE TABLE @cdm_database_schema.tba_cau_alta;")
  insertSql <- c(insertSql, "TRUNCATE TABLE @cdm_database_schema.tba_cau_baja;")
  insertSql <- c(insertSql, "TRUNCATE TABLE @cdm_database_schema.tba_centros;")
  insertSql <- c(insertSql, "TRUNCATE TABLE @cdm_database_schema.tba_centros_asignacion;")
  insertSql <- c(insertSql, "TRUNCATE TABLE @cdm_database_schema.tba_cie9;")
  insertSql <- c(insertSql, "TRUNCATE TABLE @cdm_database_schema.tba_cie9p;")
  insertSql <- c(insertSql, "TRUNCATE TABLE @cdm_database_schema.tba_comunidad_acred;")
  insertSql <- c(insertSql, "TRUNCATE TABLE @cdm_database_schema.tba_crg;")
  insertSql <- c(insertSql, "TRUNCATE TABLE @cdm_database_schema.tba_departamentos;")
  insertSql <- c(insertSql, "TRUNCATE TABLE @cdm_database_schema.tba_est_salud;")
  insertSql <- c(insertSql, "TRUNCATE TABLE @cdm_database_schema.tba_farmacia;")
  insertSql <- c(insertSql, "TRUNCATE TABLE @cdm_database_schema.tba_modalidad;")
  insertSql <- c(insertSql, "TRUNCATE TABLE @cdm_database_schema.tba_mot_cierre;")
  insertSql <- c(insertSql, "TRUNCATE TABLE @cdm_database_schema.tba_mot_urgencia;")
  insertSql <- c(insertSql, "TRUNCATE TABLE @cdm_database_schema.tba_pais_acred;")
  insertSql <- c(insertSql, "TRUNCATE TABLE @cdm_database_schema.tba_presfarma;")
  insertSql <- c(insertSql, "TRUNCATE TABLE @cdm_database_schema.tba_prinactivo;")
  insertSql <- c(insertSql, "TRUNCATE TABLE @cdm_database_schema.tba_raf;")
  insertSql <- c(insertSql, "TRUNCATE TABLE @cdm_database_schema.tba_serv_homologado;")
  insertSql <- c(insertSql, "TRUNCATE TABLE @cdm_database_schema.tba_serv_propio;")
  insertSql <- c(insertSql, "TRUNCATE TABLE @cdm_database_schema.tba_tip_baja;")
  insertSql <- c(insertSql, "TRUNCATE TABLE @cdm_database_schema.tba_tip_prest;")
  insertSql <- c(insertSql, "TRUNCATE TABLE @cdm_database_schema.tba_tip_variables;")
  insertSql <- c(insertSql, "TRUNCATE TABLE @cdm_database_schema.tba_ud_medidas;")
  insertSql <- c(insertSql, "TRUNCATE TABLE @cdm_database_schema.tba_zonas;")
  createInsertStatement <- function(insert, env) {
    s <- c()
    if (env$testId != insert$testId) {
      s <- c(s, paste0('-- ', insert$testId, ': ', insert$testDescription))
      env$testId <- insert$testId
    }
    s <- c(s, paste0("INSERT INTO @cdm_database_schema.",
                     insert$table,
                     "(",
                     paste(insert$fields, collapse = ", "),
                     ") VALUES (",
                     paste(insert$values, collapse = ", "),
                     ");"))
    return(s)
  }
  env <- new.env()
  env$testId <- -1
  insertSql <- c(insertSql, do.call(c, lapply(frameworkContext$inserts, createInsertStatement, env)))
  if (is.null(databaseSchema)) {
    insertSql <- gsub('@cdm_database_schema.', '', insertSql)
  } else {
    insertSql <- gsub('@cdm_database_schema', databaseSchema, insertSql)
  }
  return(insertSql)
}

writeSourceCsv <- function(directory = NULL, separator = ',') {
  clean_value <- function(x) {
    if (x == 'NULL') {
      return('')
    }
    value <- substring(x, 2, nchar(x)-1)
    value <- gsub('"', '""', value)
    if (grepl(separator, value)) {
      return(paste0('"', value, '"'))
    }
    return(value)
  }

  clean_fields <- function(x) {
    if (grepl("^\\[.+?\\]$", x)) {
      return(substring(x, 2, nchar(x)-1))
    }
    return(x)
  }
  dir.create(directory, showWarnings = F)

  seen_tables <- c()
  for (insert in frameworkContext$inserts) {
    filename <- file.path(directory, paste0(insert$table, '.csv'))
    if (!(insert$table %in% seen_tables)) {
      write(paste(sapply(insert$fields, clean_fields), collapse = separator), filename, append=F)
      seen_tables <- c(seen_tables, insert$table)
    }
    write(paste(sapply(insert$values, clean_value), collapse = separator), filename, append=T)
  }

  for (table_name in names(frameworkContext$defaultValues)) {
    if (!(table_name %in% seen_tables)) {
      filename <- file.path(directory, paste0(table_name, '.csv'))
      write(paste(names(frameworkContext$defaultValues[[table_name]]), collapse = separator), filename, append=F)
    }
  }
}

extractTestTypeString <- function(x) {
  if (x$type == 0) {
    return('Expect')
  } else if (x$type==1) {
    return('Expect No')
  } else if (x$type==2) {
    return(paste('Expect', x$rowCount))
  }
}

generateTestSql <- function(databaseSchema = NULL) {
  testSql <- c()
  testSql <- c(testSql, "IF OBJECT_ID('@cdm_database_schema.test_results', 'U') IS NOT NULL DROP TABLE @cdm_database_schema.test_results;")
  testSql <- c(testSql, "CREATE TABLE @cdm_database_schema.test_results (id INT, description VARCHAR(512), test VARCHAR(256), status VARCHAR(5));")
  createExpectStatement <- function(expect, env) {
    s <- c()
    if (env$testId != expect$testId) {
      s <- c(s, paste0('-- ', expect$testId, ': ', expect$testDescription))
      env$testId <- expect$testId
    }
    operators <- rep("=", length(expect$fields))
    operators[expect$values == "NULL"] <- rep("IS", sum(expect$values == "NULL"))
    s <- c(s, paste0("INSERT INTO @cdm_database_schema.test_results SELECT ",
                     expect$testId,
                     " AS id, '",
                     expect$testDescription,
                     "' AS description, '",
                     extractTestTypeString(expect), " ", expect$table,
                     "' AS test, CASE WHEN (SELECT COUNT(*) FROM @cdm_database_schema.",
                     expect$table,
                     " WHERE ",
                     paste(paste(expect$fields, expect$values), collapse = " AND "),
                     ") ",
                     if (expect$type == 0) "= 0" else if (expect$type == 1) "!= 0" else paste("!=", expect$rowCount),
                     " THEN 'FAIL' ELSE 'PASS' END AS status;"))
    return(s)
  }
  env <- new.env()
  env$testId <- -1
  testSql <- c(testSql, do.call(c, lapply(frameworkContext$expects, createExpectStatement, env)))
  if (is.null(databaseSchema)) {
    testSql <- gsub('@cdm_database_schema.', '', testSql)
  } else {
    testSql <- gsub('@cdm_database_schema', databaseSchema, testSql)
  }
  return(testSql)
}

getTestsOverview <- function() {
  df <- data.frame(
    testId = sapply(frameworkContext$expects, function(x) x$testId),
    testDescription = sapply(frameworkContext$expects, function(x) x$testDescription),
    testType = sapply(frameworkContext$expects, extractTestTypeString),
    testTable = sapply(frameworkContext$expects, function(x) x$table)
  )
  return(df)
}

exportTestsOverviewToFile <- function(filename) {
  df <- getTestsOverview()
  write.csv(unique(df), filename, row.names=F)
}

summary.frameworkContext <- function(object, ...) {
  nSourceFieldsTested <- length(intersect(object$sourceFieldsMapped, object$sourceFieldsTested))
  nTargetFieldsTested <- length(intersect(object$targetFieldsMapped, object$targetFieldsTested))
  nTotalSourceFields <- length(object$sourceFieldsMapped)
  nTotalTargetFields <- length(object$targetFieldsMapped)
  summary <- c(
    length(object$expects),
    length(unique(sapply(object$expects, function(x) x$testId))),
    nSourceFieldsTested,
    nTotalSourceFields,
    round(100*nSourceFieldsTested/nTotalSourceFields, 2),
    nTargetFieldsTested,
    nTotalTargetFields,
    round(100*nTargetFieldsTested/nTotalTargetFields, 2)
  )
  names(summary) <- c('n_tests', 'n_cases', 'n_source_fields_tested', 'n_source_fields_mapped_from', 'source_coverage (%)', 'n_target_fields_tested', 'n_target_fields_mapped_to', 'target_coverage (%)')
  return(as.data.frame(summary))
}

summaryTestFramework <- function() {
  return(summary(frameworkContext));
}

getUntestedSourceFields <- function() {
  sort(setdiff(frameworkContext$sourceFieldsMapped, frameworkContext$sourceFieldsTested))
}

getUntestedTargetFields <- function() {
  sort(setdiff(frameworkContext$targetFieldsMapped, frameworkContext$targetFieldsTested))
}

outputTestResultsSummary <- function(connection, databaseSchema = NULL) {
  suppressWarnings(require(DatabaseConnector, quietly = TRUE))
  query = 'SELECT * FROM @cdm_database_schema.test_results;'
  if (is.null(databaseSchema)) {
    query <- gsub('@cdm_database_schema.', '', query)
  } else {
    query <- gsub('@cdm_database_schema', databaseSchema, query)
  }
  df_results <- DatabaseConnector::querySql(connection, query)
  n_tests <- nrow(df_results)
  n_failed_tests <- sum(df_results$'STATUS' == 'FAIL')
  if (n_failed_tests > 0) {
    write(sprintf('FAILED unit tests: %d/%d (%.1f%%)', n_failed_tests, n_tests, n_failed_tests/n_tests * 100), file='')
    print(df_results[df_results$'STATUS' == 'FAIL',])
  } else {
    write(sprintf('All %d tests PASSED', n_tests), file='')
  }
}
