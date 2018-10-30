--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5 (Ubuntu 10.5-0ubuntu0.18.04)
-- Dumped by pg_dump version 10.5 (Ubuntu 10.5-0ubuntu0.18.04)

-- Started on 2018-10-17 13:05:54 CEST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_with_oids = false;

--
-- TOC entry 223 (class 1259 OID 17124)
-- Name: tb_aconadve; Type: TABLE; Schema: abucasis_test; Owner: -
--

CREATE TABLE abucasis_test.tb_aconadve (
    id integer NOT NULL,
    num_ac_adversos integer,
    numsipcod character varying(25),
    ano_mes character varying(6),
    cod_crg integer,
    cod_est_salud character varying(10)
);


--
-- TOC entry 222 (class 1259 OID 17122)
-- Name: tb_aconadve_id_seq; Type: SEQUENCE; Schema: abucasis_test; Owner: -
--



--
-- TOC entry 3482 (class 0 OID 0)
-- Dependencies: 222
-- Name: tb_aconadve_id_seq; Type: SEQUENCE OWNED BY; Schema: abucasis_test; Owner: -
--




--
-- TOC entry 229 (class 1259 OID 17185)
-- Name: tb_alergias; Type: TABLE; Schema: abucasis_test; Owner: -
--

CREATE TABLE abucasis_test.tb_alergias (
    id integer NOT NULL,
    num_alergias integer,
    numsipcod character varying(25),
    ano_mes character varying(6),
    cod_crg integer,
    cod_est_salud character varying(10)
);


--
-- TOC entry 228 (class 1259 OID 17183)
-- Name: tb_alergias_id_seq; Type: SEQUENCE; Schema: abucasis_test; Owner: -
--



--
-- TOC entry 3483 (class 0 OID 0)
-- Dependencies: 228
-- Name: tb_alergias_id_seq; Type: SEQUENCE OWNED BY; Schema: abucasis_test; Owner: -
--




--
-- TOC entry 239 (class 1259 OID 17276)
-- Name: tb_ante_cmbd; Type: TABLE; Schema: abucasis_test; Owner: -
--

CREATE TABLE abucasis_test.tb_ante_cmbd (
    id integer NOT NULL,
    tipo_actividad character varying(10),
    numsipcod character varying(25),
    d1 character varying(15),
    d2 character varying(15),
    d3 character varying(15),
    d4 character varying(15),
    d5 character varying(15),
    d6 character varying(15),
    d7 character varying(15),
    d8 character varying(15),
    d9 character varying(15),
    d10 character varying(15),
    d11 character varying(15),
    d12 character varying(15),
    d13 character varying(15),
    d14 character varying(15),
    d15 character varying(15),
    d16 character varying(15),
    d17 character varying(15),
    d18 character varying(15),
    d19 character varying(15),
    d20 character varying(15),
    d21 character varying(15),
    d22 character varying(15),
    d23 character varying(15),
    d24 character varying(15),
    d25 character varying(15),
    d26 character varying(15),
    d27 character varying(15),
    d28 character varying(15),
    d29 character varying(15),
    d30 character varying(15),
    p1 character varying(15),
    p2 character varying(15),
    p3 character varying(15),
    p4 character varying(15),
    p5 character varying(15),
    p6 character varying(15),
    p7 character varying(15),
    p8 character varying(15),
    p9 character varying(15),
    p10 character varying(15),
    p11 character varying(15),
    p12 character varying(15),
    p13 character varying(15),
    p14 character varying(15),
    p15 character varying(15),
    p16 character varying(15),
    p17 character varying(15),
    p18 character varying(15),
    p19 character varying(15),
    p20 character varying(15),
    p21 character varying(15),
    p22 character varying(15),
    p23 character varying(15),
    p24 character varying(15),
    p25 character varying(15),
    p26 character varying(15),
    p27 character varying(15),
    p28 character varying(15),
    p29 character varying(15),
    p30 character varying(15),
    cir_ingreso character varying(10),
    fecha_ingreso date,
    fecha_alta date,
    cir_alta character varying(10),
    grd character varying(10),
    peso_grd numeric(10,2)
);


--
-- TOC entry 238 (class 1259 OID 17274)
-- Name: tb_ante_cmbd_id_seq; Type: SEQUENCE; Schema: abucasis_test; Owner: -
--


--
-- TOC entry 3484 (class 0 OID 0)
-- Dependencies: 238
-- Name: tb_ante_cmbd_id_seq; Type: SEQUENCE OWNED BY; Schema: abucasis_test; Owner: -
--




--
-- TOC entry 235 (class 1259 OID 17246)
-- Name: tb_antepers; Type: TABLE; Schema: abucasis_test; Owner: -
--

CREATE TABLE abucasis_test.tb_antepers (
    id integer NOT NULL,
    numsipcod character(25),
    fecha_inicio date,
    fecha_fin date,
    cod_diagnostico character varying(10),
    estado_morbilidad character varying(50)
);


--
-- TOC entry 234 (class 1259 OID 17244)
-- Name: tb_antepers_id_seq; Type: SEQUENCE; Schema: abucasis_test; Owner: -
--



--
-- TOC entry 3485 (class 0 OID 0)
-- Dependencies: 234
-- Name: tb_antepers_id_seq; Type: SEQUENCE OWNED BY; Schema: abucasis_test; Owner: -
--




--
-- TOC entry 258 (class 1259 OID 17884)
-- Name: tb_cex; Type: TABLE; Schema: abucasis_test; Owner: -
--

CREATE TABLE abucasis_test.tb_cex (
    id integer NOT NULL,
    num_consultas integer,
    numsipcod character varying(25),
    fecha_consulta date,
    cod_serv_homologado character varying(15),
    cod_serv_propio character varying(15)
);


--
-- TOC entry 257 (class 1259 OID 17882)
-- Name: tb_cex_id_seq; Type: SEQUENCE; Schema: abucasis_test; Owner: -
--



--
-- TOC entry 3486 (class 0 OID 0)
-- Dependencies: 257
-- Name: tb_cex_id_seq; Type: SEQUENCE OWNED BY; Schema: abucasis_test; Owner: -
--




--
-- TOC entry 231 (class 1259 OID 17203)
-- Name: tb_cie_atc; Type: TABLE; Schema: abucasis_test; Owner: -
--

CREATE TABLE abucasis_test.tb_cie_atc (
    id integer NOT NULL,
    num_cieatc integer,
    numsipcod character varying(25),
    ano_mes character varying(6),
    cod_crg integer,
    cod_est_salud character varying(10)
);


--
-- TOC entry 230 (class 1259 OID 17201)
-- Name: tb_cie_atc_id_seq; Type: SEQUENCE; Schema: abucasis_test; Owner: -
--


--
-- TOC entry 3487 (class 0 OID 0)
-- Dependencies: 230
-- Name: tb_cie_atc_id_seq; Type: SEQUENCE OWNED BY; Schema: abucasis_test; Owner: -
--




--
-- TOC entry 264 (class 1259 OID 17925)
-- Name: tb_consultas_atp; Type: TABLE; Schema: abucasis_test; Owner: -
--

CREATE TABLE abucasis_test.tb_consultas_atp (
    id integer NOT NULL,
    num_consultas integer,
    numsipcod character varying(25),
    fecha_registro date,
    cod_serv_homologado character varying(15),
    cod_serv_propio character varying(15)
);


--
-- TOC entry 263 (class 1259 OID 17923)
-- Name: tb_consultas_atp_id_seq; Type: SEQUENCE; Schema: abucasis_test; Owner: -
--


--
-- TOC entry 3488 (class 0 OID 0)
-- Dependencies: 263
-- Name: tb_consultas_atp_id_seq; Type: SEQUENCE OWNED BY; Schema: abucasis_test; Owner: -
--



--
-- TOC entry 241 (class 1259 OID 17296)
-- Name: tb_contraind; Type: TABLE; Schema: abucasis_test; Owner: -
--

CREATE TABLE abucasis_test.tb_contraind (
    id integer NOT NULL,
    num_contraindicaciones integer,
    numsipcod character varying(25),
    ano_mes character varying(6),
    cod_crg integer,
    cod_est_salud character varying(10),
    tipo_contraindicacion character varying(5)
);


--
-- TOC entry 240 (class 1259 OID 17294)
-- Name: tb_contraind_id_seq; Type: SEQUENCE; Schema: abucasis_test; Owner: -
--




--
-- TOC entry 3489 (class 0 OID 0)
-- Dependencies: 240
-- Name: tb_contraind_id_seq; Type: SEQUENCE OWNED BY; Schema: abucasis_test; Owner: -
--




--
-- TOC entry 227 (class 1259 OID 17162)
-- Name: tb_ctdh; Type: TABLE; Schema: abucasis_test; Owner: -
--

CREATE TABLE abucasis_test.tb_ctdh (
    id integer NOT NULL,
    num_ctdh integer,
    numsipcod character varying(25),
    ano_mes character varying(6),
    cod_crg integer,
    cod_est_salud character varying(10)
);


--
-- TOC entry 226 (class 1259 OID 17160)
-- Name: tb_ctdh_id_seq; Type: SEQUENCE; Schema: abucasis_test; Owner: -
--


--
-- TOC entry 3490 (class 0 OID 0)
-- Dependencies: 226
-- Name: tb_ctdh_id_seq; Type: SEQUENCE OWNED BY; Schema: abucasis_test; Owner: -
--




--
-- TOC entry 270 (class 1259 OID 18115)
-- Name: tb_diag_cmbd; Type: TABLE; Schema: abucasis_test; Owner: -
--

CREATE TABLE abucasis_test.tb_diag_cmbd (
    id integer NOT NULL,
    tipo_actividad character varying(10),
    numsipcod character varying(25),
    cie9 character varying(15),
    cir_ingreso character varying(10),
    fecha_ingreso date,
    fecha_alta date,
    cir_alta character varying(10),
    grd character varying(10),
    peso_grd numeric(16,2),
    orden integer
);


--
-- TOC entry 269 (class 1259 OID 18113)
-- Name: tb_diag_cmbd_id_seq; Type: SEQUENCE; Schema: abucasis_test; Owner: -
--



--
-- TOC entry 3491 (class 0 OID 0)
-- Dependencies: 269
-- Name: tb_diag_cmbd_id_seq; Type: SEQUENCE OWNED BY; Schema: abucasis_test; Owner: -
--




--
-- TOC entry 300 (class 1259 OID 18321)
-- Name: tb_diag_juntos; Type: TABLE; Schema: abucasis_test; Owner: -
--

CREATE TABLE abucasis_test.tb_diag_juntos (
    id integer NOT NULL,
    numsipcod character varying(25),
    fecha_inicio date,
    fecha_fin date,
    cod_diagnostico character varying(10),
    estado_morbilidad character varying(30),
    tipo_actividad character varying(10),
    cir_ingreso character varying(10),
    cir_alta character varying(10),
    grd character varying(10),
    peso_grd numeric(16,2),
    orden integer,
    origen character(1)
);


--
-- TOC entry 299 (class 1259 OID 18319)
-- Name: tb_diag_juntos_id_seq; Type: SEQUENCE; Schema: abucasis_test; Owner: -
--



--
-- TOC entry 3492 (class 0 OID 0)
-- Dependencies: 299
-- Name: tb_diag_juntos_id_seq; Type: SEQUENCE OWNED BY; Schema: abucasis_test; Owner: -
--




--
-- TOC entry 225 (class 1259 OID 17144)
-- Name: tb_duplicid; Type: TABLE; Schema: abucasis_test; Owner: -
--

CREATE TABLE abucasis_test.tb_duplicid (
    id integer NOT NULL,
    num_duplicidades integer,
    numsipcod character varying(25),
    ano_mes character varying(6),
    cod_crg integer,
    cod_est_salud character varying(10)
);


--
-- TOC entry 224 (class 1259 OID 17142)
-- Name: tb_duplicid_id_seq; Type: SEQUENCE; Schema: abucasis_test; Owner: -
--



--
-- TOC entry 3493 (class 0 OID 0)
-- Dependencies: 224
-- Name: tb_duplicid_id_seq; Type: SEQUENCE OWNED BY; Schema: abucasis_test; Owner: -
--




--
-- TOC entry 342 (class 1259 OID 19097)
-- Name: tb_estancia_uci; Type: TABLE; Schema: abucasis_test; Owner: -
--

CREATE TABLE abucasis_test.tb_estancia_uci (
    id integer NOT NULL,
    numsipcod character varying(25),
    fecha date,
    num_estancia_uci integer
);


--
-- TOC entry 341 (class 1259 OID 19095)
-- Name: tb_estancia_uci_id_seq; Type: SEQUENCE; Schema: abucasis_test; Owner: -
--



--
-- TOC entry 3494 (class 0 OID 0)
-- Dependencies: 341
-- Name: tb_estancia_uci_id_seq; Type: SEQUENCE OWNED BY; Schema: abucasis_test; Owner: -
--




--
-- TOC entry 233 (class 1259 OID 17221)
-- Name: tb_incatemp; Type: TABLE; Schema: abucasis_test; Owner: -
--

CREATE TABLE abucasis_test.tb_incatemp (
    id integer NOT NULL,
    numsipcod character varying(25),
    fecha_registro date,
    fecha_baja date,
    fecha_alta date,
    dias_baja integer,
    cod_causa_alta character varying(15),
    cod_diagnostico character varying(10),
    cod_motivo_cierre character varying(15),
    cod_procedimiento character varying(15),
    cod_tipo_baja character varying(15)
);


--
-- TOC entry 232 (class 1259 OID 17219)
-- Name: tb_incatemp_id_seq; Type: SEQUENCE; Schema: abucasis_test; Owner: -
--



--
-- TOC entry 3495 (class 0 OID 0)
-- Dependencies: 232
-- Name: tb_incatemp_id_seq; Type: SEQUENCE OWNED BY; Schema: abucasis_test; Owner: -
--




--
-- TOC entry 243 (class 1259 OID 17319)
-- Name: tb_interacc; Type: TABLE; Schema: abucasis_test; Owner: -
--

CREATE TABLE abucasis_test.tb_interacc (
    id integer NOT NULL,
    num_interacciones integer,
    numsipcod character varying(25),
    ano_mes character varying(6),
    cod_crg integer,
    cod_est_salud character varying(10),
    gravedad_interaccion character varying(10)
);


--
-- TOC entry 242 (class 1259 OID 17317)
-- Name: tb_interacc_id_seq; Type: SEQUENCE; Schema: abucasis_test; Owner: -
--


--
-- TOC entry 3496 (class 0 OID 0)
-- Dependencies: 242
-- Name: tb_interacc_id_seq; Type: SEQUENCE OWNED BY; Schema: abucasis_test; Owner: -
--




--
-- TOC entry 249 (class 1259 OID 17500)
-- Name: tb_morbilid; Type: TABLE; Schema: abucasis_test; Owner: -
--

CREATE TABLE abucasis_test.tb_morbilid (
    id integer NOT NULL,
    numsipcod character varying(25),
    fecha_inicio date,
    fecha_fin date,
    cod_diagnostico character varying(10),
    estado_morbilidad character varying(30)
);


--
-- TOC entry 248 (class 1259 OID 17498)
-- Name: tb_morbilid_id_seq; Type: SEQUENCE; Schema: abucasis_test; Owner: -
--


--
-- TOC entry 3497 (class 0 OID 0)
-- Dependencies: 248
-- Name: tb_morbilid_id_seq; Type: SEQUENCE OWNED BY; Schema: abucasis_test; Owner: -
--




--
-- TOC entry 237 (class 1259 OID 17264)
-- Name: tb_posologia; Type: TABLE; Schema: abucasis_test; Owner: -
--

CREATE TABLE abucasis_test.tb_posologia (
    id integer NOT NULL,
    num_posologias integer,
    tipo_posologia character varying(5),
    numsipcod character varying(25),
    ano_mes character varying(6),
    cod_crg integer,
    cod_est_salud character varying(10)
);


--
-- TOC entry 236 (class 1259 OID 17262)
-- Name: tb_posologia_id_seq; Type: SEQUENCE; Schema: abucasis_test; Owner: -
--



--
-- TOC entry 3498 (class 0 OID 0)
-- Dependencies: 236
-- Name: tb_posologia_id_seq; Type: SEQUENCE OWNED BY; Schema: abucasis_test; Owner: -
--




--
-- TOC entry 252 (class 1259 OID 17607)
-- Name: tb_prescrip; Type: TABLE; Schema: abucasis_test; Owner: -
--

CREATE TABLE abucasis_test.tb_prescrip (
    id integer NOT NULL,
    numsipcod character varying(25),
    numreceta character varying(30),
    id_tratamiento character varying(60),
    fecha_prescripcion date,
    cod_atc2 character varying(3),
    cod_atc4 character varying(5),
    cod_presfarma character varying(10),
    cod_prinactivo character varying(15)
);


--
-- TOC entry 251 (class 1259 OID 17605)
-- Name: tb_prescrip_id_seq; Type: SEQUENCE; Schema: abucasis_test; Owner: -
--


--
-- TOC entry 3499 (class 0 OID 0)
-- Dependencies: 251
-- Name: tb_prescrip_id_seq; Type: SEQUENCE OWNED BY; Schema: abucasis_test; Owner: -
--




--
-- TOC entry 245 (class 1259 OID 17411)
-- Name: tb_prestaci; Type: TABLE; Schema: abucasis_test; Owner: -
--

CREATE TABLE abucasis_test.tb_prestaci (
    id integer NOT NULL,
    valor_registrado numeric(16,2),
    numsipcod character varying(25),
    fecha_registro date,
    cod_prestacion character varying(25),
    cod_ud_medida character varying(15)
);


--
-- TOC entry 244 (class 1259 OID 17409)
-- Name: tb_prestaci_id_seq; Type: SEQUENCE; Schema: abucasis_test; Owner: -
--



--
-- TOC entry 3500 (class 0 OID 0)
-- Dependencies: 244
-- Name: tb_prestaci_id_seq; Type: SEQUENCE OWNED BY; Schema: abucasis_test; Owner: -
--




--
-- TOC entry 272 (class 1259 OID 18127)
-- Name: tb_proc_cmbd; Type: TABLE; Schema: abucasis_test; Owner: -
--

CREATE TABLE abucasis_test.tb_proc_cmbd (
    id integer NOT NULL,
    tipo_actividad character varying(10),
    numsipcod character varying(25),
    cie9p character(15),
    cir_ingreso character varying(10),
    fecha_ingreso date,
    fecha_alta date,
    cir_alta character varying(10),
    grd character varying(10),
    peso_grd numeric(16,2),
    orden integer
);


--
-- TOC entry 271 (class 1259 OID 18125)
-- Name: tb_proc_cmbd_id_seq; Type: SEQUENCE; Schema: abucasis_test; Owner: -
--



--
-- TOC entry 3501 (class 0 OID 0)
-- Dependencies: 271
-- Name: tb_proc_cmbd_id_seq; Type: SEQUENCE OWNED BY; Schema: abucasis_test; Owner: -
--




--
-- TOC entry 247 (class 1259 OID 17462)
-- Name: tb_rele; Type: TABLE; Schema: abucasis_test; Owner: -
--

CREATE TABLE abucasis_test.tb_rele (
    id integer NOT NULL,
    numsipcod character varying(25),
    numreceta character varying(15),
    anomes_facturacion character varying(6),
    fecha_dispensacion date,
    cod_atc2 character varying(3),
    cod_atc4 character varying(5),
    cod_presfarma character varying(10),
    cod_prinactivo character varying(15)
);


--
-- TOC entry 246 (class 1259 OID 17460)
-- Name: tb_rele_id_seq; Type: SEQUENCE; Schema: abucasis_test; Owner: -
--



--
-- TOC entry 3502 (class 0 OID 0)
-- Dependencies: 246
-- Name: tb_rele_id_seq; Type: SEQUENCE OWNED BY; Schema: abucasis_test; Owner: -
--




--
-- TOC entry 330 (class 1259 OID 18887)
-- Name: tb_scp_2012; Type: TABLE; Schema: abucasis_test; Owner: -
--

CREATE TABLE abucasis_test.tb_scp_2012 (
    id integer NOT NULL,
    numsipcod character varying(25),
    ano_mes character varying(6),
    cod_crg integer,
    cod_est_salud character varying(10)
);


--
-- TOC entry 329 (class 1259 OID 18885)
-- Name: tb_scp_2012_id_seq; Type: SEQUENCE; Schema: abucasis_test; Owner: -
--

--
-- TOC entry 3503 (class 0 OID 0)
-- Dependencies: 329
-- Name: tb_scp_2012_id_seq; Type: SEQUENCE OWNED BY; Schema: abucasis_test; Owner: -
--




--
-- TOC entry 332 (class 1259 OID 18902)
-- Name: tb_scp_2013; Type: TABLE; Schema: abucasis_test; Owner: -
--

CREATE TABLE abucasis_test.tb_scp_2013 (
    id integer NOT NULL,
    numsipcod character varying(25),
    ano_mes character varying(6),
    cod_crg integer,
    cod_est_salud character varying(10)
);


--
-- TOC entry 331 (class 1259 OID 18900)
-- Name: tb_scp_2013_id_seq; Type: SEQUENCE; Schema: abucasis_test; Owner: -
--



--
-- TOC entry 3504 (class 0 OID 0)
-- Dependencies: 331
-- Name: tb_scp_2013_id_seq; Type: SEQUENCE OWNED BY; Schema: abucasis_test; Owner: -
--




--
-- TOC entry 334 (class 1259 OID 18908)
-- Name: tb_scp_2014; Type: TABLE; Schema: abucasis_test; Owner: -
--

CREATE TABLE abucasis_test.tb_scp_2014 (
    id integer NOT NULL,
    numsipcod character varying(25),
    ano_mes character varying(6),
    cod_crg integer,
    cod_est_salud character varying(10)
);


--
-- TOC entry 333 (class 1259 OID 18906)
-- Name: tb_scp_2014_id_seq; Type: SEQUENCE; Schema: abucasis_test; Owner: -
--


--
-- TOC entry 3505 (class 0 OID 0)
-- Dependencies: 333
-- Name: tb_scp_2014_id_seq; Type: SEQUENCE OWNED BY; Schema: abucasis_test; Owner: -
--




--
-- TOC entry 336 (class 1259 OID 18914)
-- Name: tb_scp_2015; Type: TABLE; Schema: abucasis_test; Owner: -
--

CREATE TABLE abucasis_test.tb_scp_2015 (
    id integer NOT NULL,
    numsipcod character varying(25),
    ano_mes character varying(6),
    cod_crg integer,
    cod_est_salud character varying(10)
);


--
-- TOC entry 335 (class 1259 OID 18912)
-- Name: tb_scp_2015_id_seq; Type: SEQUENCE; Schema: abucasis_test; Owner: -
--



--
-- TOC entry 3506 (class 0 OID 0)
-- Dependencies: 335
-- Name: tb_scp_2015_id_seq; Type: SEQUENCE OWNED BY; Schema: abucasis_test; Owner: -
--




--
-- TOC entry 260 (class 1259 OID 17900)
-- Name: tb_sip_spo; Type: TABLE; Schema: abucasis_test; Owner: -
--

CREATE TABLE abucasis_test.tb_sip_spo (
    id integer NOT NULL,
    numsipcod character varying(25),
    sexo character(1),
    fecha_nac date,
    fecha_def date,
    fecha_baja_sip date,
    cod_causa_baja character varying(15)
);


--
-- TOC entry 259 (class 1259 OID 17898)
-- Name: tb_sip_spo_id_seq; Type: SEQUENCE; Schema: abucasis_test; Owner: -
--



--
-- TOC entry 3507 (class 0 OID 0)
-- Dependencies: 259
-- Name: tb_sip_spo_id_seq; Type: SEQUENCE OWNED BY; Schema: abucasis_test; Owner: -
--




--
-- TOC entry 328 (class 1259 OID 18854)
-- Name: tb_sip_spo_resto_2012; Type: TABLE; Schema: abucasis_test; Owner: -
--

CREATE TABLE abucasis_test.tb_sip_spo_resto_2012 (
    id integer NOT NULL,
    numsipcod character varying(25),
    cod_centro_asignacion character varying(250),
    cod_departamento_asignacion character varying(250),
    cod_zona_asignacion character varying(250),
    clave_medica character varying(10),
    codigo_apsig character varying(50),
    fecha_corte date,
    sit_empadronamiento character varying(5),
    nacionalidad_espanola character varying(3),
    cod_modalidad character varying(250),
    derecho_medico character varying(3),
    cod_pais_procedencia_acred character varying(250),
    cod_comunidad_procedencia_acred character varying(250),
    cod_pais_nacimiento character varying(250),
    titular_beneficiario character varying(3),
    cod_raf character varying(250)
);


--
-- TOC entry 327 (class 1259 OID 18852)
-- Name: tb_sip_spo_resto_2012_id_seq; Type: SEQUENCE; Schema: abucasis_test; Owner: -
--


--
-- TOC entry 3508 (class 0 OID 0)
-- Dependencies: 327
-- Name: tb_sip_spo_resto_2012_id_seq; Type: SEQUENCE OWNED BY; Schema: abucasis_test; Owner: -
--




--
-- TOC entry 310 (class 1259 OID 18754)
-- Name: tb_sip_spo_resto_2015; Type: TABLE; Schema: abucasis_test; Owner: -
--

CREATE TABLE abucasis_test.tb_sip_spo_resto_2015 (
    id integer NOT NULL,
    numsipcod character varying(25),
    cod_centro_asignacion character varying(250),
    cod_departamento_asignacion character varying(250),
    cod_zona_asignacion character varying(250),
    clave_medica character varying(10),
    codigo_apsig character varying(50),
    fecha_corte date,
    sit_empadronamiento character varying(5),
    nacionalidad_espanola character varying(3),
    cod_modalidad character varying(250),
    derecho_medico character varying(3),
    cod_pais_procedencia_acred character varying(250),
    cod_comunidad_procedencia_acred character varying(250),
    cod_pais_nacimiento character varying(250),
    titular_beneficiario character varying(3),
    cod_raf character varying(250)
);


--
-- TOC entry 309 (class 1259 OID 18752)
-- Name: tb_sip_spo_resto_id_seq; Type: SEQUENCE; Schema: abucasis_test; Owner: -
--


--
-- TOC entry 3509 (class 0 OID 0)
-- Dependencies: 309
-- Name: tb_sip_spo_resto_id_seq; Type: SEQUENCE OWNED BY; Schema: abucasis_test; Owner: -
--




--
-- TOC entry 306 (class 1259 OID 18392)
-- Name: tb_tratamientos; Type: TABLE; Schema: abucasis_test; Owner: -
--

CREATE TABLE abucasis_test.tb_tratamientos (
    id integer NOT NULL,
    unidades numeric(10,2),
    numsipcod character varying(25),
    dias_tratamiento integer,
    id_tratamiento character varying(50),
    cadencia numeric(10,2),
    fecha_fin_tratamiento date,
    fecha_inicio_tratamiento date,
    cod_atc2 character varying(3),
    cod_atc4 character varying(5),
    cod_presfarma character varying(10),
    cod_prinactivo character varying(15),
    tipo_posologia character varying(50),
    unidad_posologia character varying(50)
);


--
-- TOC entry 305 (class 1259 OID 18390)
-- Name: tb_tratamientos_id_seq; Type: SEQUENCE; Schema: abucasis_test; Owner: -
--



--
-- TOC entry 3510 (class 0 OID 0)
-- Dependencies: 305
-- Name: tb_tratamientos_id_seq; Type: SEQUENCE OWNED BY; Schema: abucasis_test; Owner: -
--




--
-- TOC entry 268 (class 1259 OID 17961)
-- Name: tb_urgencias; Type: TABLE; Schema: abucasis_test; Owner: -
--

CREATE TABLE abucasis_test.tb_urgencias (
    id integer NOT NULL,
    num_urgencias integer,
    numsipcod character varying(25),
    fecha_urgencia date,
    cod_motivo_urg character varying(15)
);


--
-- TOC entry 267 (class 1259 OID 17959)
-- Name: tb_urgencias_id_seq; Type: SEQUENCE; Schema: abucasis_test; Owner: -
--




CREATE TABLE abucasis_test.tb_variables (
    id integer NOT NULL,
    valor_registrado numeric(16,2),
    numsipcod character varying(25),
    fecha_registro date,
    cod_variable_clinic character varying(25),
    cod_ud_medida character varying(15)
);


--
-- TOC entry 337 (class 1259 OID 19006)
-- Name: tb_variables_id_seq; Type: SEQUENCE; Schema: abucasis_test; Owner: -
--

--
-- TOC entry 3280 (class 1259 OID 17130)
-- Name: aconadve_numsipcod; Type: INDEX; Schema: abucasis_test; Owner: -
--



-- Completed on 2018-10-17 13:05:54 CEST

--
-- PostgreSQL database dump complete
--

