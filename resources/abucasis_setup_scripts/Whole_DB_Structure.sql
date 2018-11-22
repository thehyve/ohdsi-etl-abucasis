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
-- Name: tb_aconadve; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tb_aconadve (
    id integer NOT NULL,
    num_ac_adversos integer,
    numsipcod character varying(25),
    ano_mes character varying(6),
    cod_crg integer,
    cod_est_salud character varying(10)
);


--
-- TOC entry 222 (class 1259 OID 17122)
-- Name: tb_aconadve_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tb_aconadve_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3482 (class 0 OID 0)
-- Dependencies: 222
-- Name: tb_aconadve_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tb_aconadve_id_seq OWNED BY public.tb_aconadve.id;


--
-- TOC entry 229 (class 1259 OID 17185)
-- Name: tb_alergias; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tb_alergias (
    id integer NOT NULL,
    num_alergias integer,
    numsipcod character varying(25),
    ano_mes character varying(6),
    cod_crg integer,
    cod_est_salud character varying(10)
);


--
-- TOC entry 228 (class 1259 OID 17183)
-- Name: tb_alergias_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tb_alergias_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3483 (class 0 OID 0)
-- Dependencies: 228
-- Name: tb_alergias_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tb_alergias_id_seq OWNED BY public.tb_alergias.id;


--
-- TOC entry 239 (class 1259 OID 17276)
-- Name: tb_ante_cmbd; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tb_ante_cmbd (
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
-- Name: tb_ante_cmbd_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tb_ante_cmbd_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3484 (class 0 OID 0)
-- Dependencies: 238
-- Name: tb_ante_cmbd_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tb_ante_cmbd_id_seq OWNED BY public.tb_ante_cmbd.id;


--
-- TOC entry 235 (class 1259 OID 17246)
-- Name: tb_antepers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tb_antepers (
    id integer NOT NULL,
    numsipcod character(25),
    fecha_inicio date,
    fecha_fin date,
    cod_diagnostico character varying(10),
    estado_morbilidad character varying(50)
);


--
-- TOC entry 234 (class 1259 OID 17244)
-- Name: tb_antepers_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tb_antepers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3485 (class 0 OID 0)
-- Dependencies: 234
-- Name: tb_antepers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tb_antepers_id_seq OWNED BY public.tb_antepers.id;


--
-- TOC entry 258 (class 1259 OID 17884)
-- Name: tb_cex; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tb_cex (
    id integer NOT NULL,
    num_consultas integer,
    numsipcod character varying(25),
    fecha_consulta date,
    cod_serv_homologado character varying(15),
    cod_serv_propio character varying(15)
);


--
-- TOC entry 257 (class 1259 OID 17882)
-- Name: tb_cex_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tb_cex_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3486 (class 0 OID 0)
-- Dependencies: 257
-- Name: tb_cex_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tb_cex_id_seq OWNED BY public.tb_cex.id;


--
-- TOC entry 231 (class 1259 OID 17203)
-- Name: tb_cie_atc; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tb_cie_atc (
    id integer NOT NULL,
    num_cieatc integer,
    numsipcod character varying(25),
    ano_mes character varying(6),
    cod_crg integer,
    cod_est_salud character varying(10)
);


--
-- TOC entry 230 (class 1259 OID 17201)
-- Name: tb_cie_atc_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tb_cie_atc_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3487 (class 0 OID 0)
-- Dependencies: 230
-- Name: tb_cie_atc_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tb_cie_atc_id_seq OWNED BY public.tb_cie_atc.id;


--
-- TOC entry 264 (class 1259 OID 17925)
-- Name: tb_consultas_atp; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tb_consultas_atp (
    id integer NOT NULL,
    num_consultas integer,
    numsipcod character varying(25),
    fecha_registro date,
    cod_serv_homologado character varying(15),
    cod_serv_propio character varying(15)
);


--
-- TOC entry 263 (class 1259 OID 17923)
-- Name: tb_consultas_atp_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tb_consultas_atp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3488 (class 0 OID 0)
-- Dependencies: 263
-- Name: tb_consultas_atp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tb_consultas_atp_id_seq OWNED BY public.tb_consultas_atp.id;


--
-- TOC entry 241 (class 1259 OID 17296)
-- Name: tb_contraind; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tb_contraind (
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
-- Name: tb_contraind_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tb_contraind_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3489 (class 0 OID 0)
-- Dependencies: 240
-- Name: tb_contraind_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tb_contraind_id_seq OWNED BY public.tb_contraind.id;


--
-- TOC entry 227 (class 1259 OID 17162)
-- Name: tb_ctdh; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tb_ctdh (
    id integer NOT NULL,
    num_ctdh integer,
    numsipcod character varying(25),
    ano_mes character varying(6),
    cod_crg integer,
    cod_est_salud character varying(10)
);


--
-- TOC entry 226 (class 1259 OID 17160)
-- Name: tb_ctdh_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tb_ctdh_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3490 (class 0 OID 0)
-- Dependencies: 226
-- Name: tb_ctdh_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tb_ctdh_id_seq OWNED BY public.tb_ctdh.id;


--
-- TOC entry 270 (class 1259 OID 18115)
-- Name: tb_diag_cmbd; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tb_diag_cmbd (
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
-- Name: tb_diag_cmbd_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tb_diag_cmbd_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3491 (class 0 OID 0)
-- Dependencies: 269
-- Name: tb_diag_cmbd_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tb_diag_cmbd_id_seq OWNED BY public.tb_diag_cmbd.id;


--
-- TOC entry 300 (class 1259 OID 18321)
-- Name: tb_diag_juntos; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tb_diag_juntos (
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
-- Name: tb_diag_juntos_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tb_diag_juntos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3492 (class 0 OID 0)
-- Dependencies: 299
-- Name: tb_diag_juntos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tb_diag_juntos_id_seq OWNED BY public.tb_diag_juntos.id;


--
-- TOC entry 225 (class 1259 OID 17144)
-- Name: tb_duplicid; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tb_duplicid (
    id integer NOT NULL,
    num_duplicidades integer,
    numsipcod character varying(25),
    ano_mes character varying(6),
    cod_crg integer,
    cod_est_salud character varying(10)
);


--
-- TOC entry 224 (class 1259 OID 17142)
-- Name: tb_duplicid_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tb_duplicid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3493 (class 0 OID 0)
-- Dependencies: 224
-- Name: tb_duplicid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tb_duplicid_id_seq OWNED BY public.tb_duplicid.id;


--
-- TOC entry 342 (class 1259 OID 19097)
-- Name: tb_estancia_uci; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tb_estancia_uci (
    id integer NOT NULL,
    numsipcod character varying(25),
    fecha date,
    num_estancia_uci integer
);


--
-- TOC entry 341 (class 1259 OID 19095)
-- Name: tb_estancia_uci_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tb_estancia_uci_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3494 (class 0 OID 0)
-- Dependencies: 341
-- Name: tb_estancia_uci_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tb_estancia_uci_id_seq OWNED BY public.tb_estancia_uci.id;


--
-- TOC entry 233 (class 1259 OID 17221)
-- Name: tb_incatemp; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tb_incatemp (
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
-- Name: tb_incatemp_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tb_incatemp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3495 (class 0 OID 0)
-- Dependencies: 232
-- Name: tb_incatemp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tb_incatemp_id_seq OWNED BY public.tb_incatemp.id;


--
-- TOC entry 243 (class 1259 OID 17319)
-- Name: tb_interacc; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tb_interacc (
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
-- Name: tb_interacc_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tb_interacc_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3496 (class 0 OID 0)
-- Dependencies: 242
-- Name: tb_interacc_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tb_interacc_id_seq OWNED BY public.tb_interacc.id;


--
-- TOC entry 249 (class 1259 OID 17500)
-- Name: tb_morbilid; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tb_morbilid (
    id integer NOT NULL,
    numsipcod character varying(25),
    fecha_inicio date,
    fecha_fin date,
    cod_diagnostico character varying(10),
    estado_morbilidad character varying(30)
);


--
-- TOC entry 248 (class 1259 OID 17498)
-- Name: tb_morbilid_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tb_morbilid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3497 (class 0 OID 0)
-- Dependencies: 248
-- Name: tb_morbilid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tb_morbilid_id_seq OWNED BY public.tb_morbilid.id;


--
-- TOC entry 237 (class 1259 OID 17264)
-- Name: tb_posologia; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tb_posologia (
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
-- Name: tb_posologia_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tb_posologia_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3498 (class 0 OID 0)
-- Dependencies: 236
-- Name: tb_posologia_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tb_posologia_id_seq OWNED BY public.tb_posologia.id;


--
-- TOC entry 252 (class 1259 OID 17607)
-- Name: tb_prescrip; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tb_prescrip (
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
-- Name: tb_prescrip_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tb_prescrip_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3499 (class 0 OID 0)
-- Dependencies: 251
-- Name: tb_prescrip_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tb_prescrip_id_seq OWNED BY public.tb_prescrip.id;


--
-- TOC entry 245 (class 1259 OID 17411)
-- Name: tb_prestaci; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tb_prestaci (
    id integer NOT NULL,
    valor_registrado numeric(16,2),
    numsipcod character varying(25),
    fecha_registro date,
    cod_prestacion character varying(25),
    cod_ud_medida character varying(15)
);


--
-- TOC entry 244 (class 1259 OID 17409)
-- Name: tb_prestaci_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tb_prestaci_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3500 (class 0 OID 0)
-- Dependencies: 244
-- Name: tb_prestaci_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tb_prestaci_id_seq OWNED BY public.tb_prestaci.id;


--
-- TOC entry 272 (class 1259 OID 18127)
-- Name: tb_proc_cmbd; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tb_proc_cmbd (
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
-- Name: tb_proc_cmbd_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tb_proc_cmbd_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3501 (class 0 OID 0)
-- Dependencies: 271
-- Name: tb_proc_cmbd_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tb_proc_cmbd_id_seq OWNED BY public.tb_proc_cmbd.id;


--
-- TOC entry 247 (class 1259 OID 17462)
-- Name: tb_rele; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tb_rele (
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
-- Name: tb_rele_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tb_rele_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3502 (class 0 OID 0)
-- Dependencies: 246
-- Name: tb_rele_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tb_rele_id_seq OWNED BY public.tb_rele.id;


--
-- TOC entry 330 (class 1259 OID 18887)
-- Name: tb_scp_2012; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tb_scp_2012 (
    id integer NOT NULL,
    numsipcod character varying(25),
    ano_mes character varying(6),
    cod_crg integer,
    cod_est_salud character varying(10)
);


--
-- TOC entry 329 (class 1259 OID 18885)
-- Name: tb_scp_2012_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tb_scp_2012_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3503 (class 0 OID 0)
-- Dependencies: 329
-- Name: tb_scp_2012_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tb_scp_2012_id_seq OWNED BY public.tb_scp_2012.id;


--
-- TOC entry 332 (class 1259 OID 18902)
-- Name: tb_scp_2013; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tb_scp_2013 (
    id integer NOT NULL,
    numsipcod character varying(25),
    ano_mes character varying(6),
    cod_crg integer,
    cod_est_salud character varying(10)
);


--
-- TOC entry 331 (class 1259 OID 18900)
-- Name: tb_scp_2013_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tb_scp_2013_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3504 (class 0 OID 0)
-- Dependencies: 331
-- Name: tb_scp_2013_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tb_scp_2013_id_seq OWNED BY public.tb_scp_2013.id;


--
-- TOC entry 334 (class 1259 OID 18908)
-- Name: tb_scp_2014; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tb_scp_2014 (
    id integer NOT NULL,
    numsipcod character varying(25),
    ano_mes character varying(6),
    cod_crg integer,
    cod_est_salud character varying(10)
);


--
-- TOC entry 333 (class 1259 OID 18906)
-- Name: tb_scp_2014_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tb_scp_2014_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3505 (class 0 OID 0)
-- Dependencies: 333
-- Name: tb_scp_2014_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tb_scp_2014_id_seq OWNED BY public.tb_scp_2014.id;


--
-- TOC entry 336 (class 1259 OID 18914)
-- Name: tb_scp_2015; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tb_scp_2015 (
    id integer NOT NULL,
    numsipcod character varying(25),
    ano_mes character varying(6),
    cod_crg integer,
    cod_est_salud character varying(10)
);


--
-- TOC entry 335 (class 1259 OID 18912)
-- Name: tb_scp_2015_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tb_scp_2015_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3506 (class 0 OID 0)
-- Dependencies: 335
-- Name: tb_scp_2015_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tb_scp_2015_id_seq OWNED BY public.tb_scp_2015.id;


--
-- TOC entry 260 (class 1259 OID 17900)
-- Name: tb_sip_spo; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tb_sip_spo (
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
-- Name: tb_sip_spo_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tb_sip_spo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3507 (class 0 OID 0)
-- Dependencies: 259
-- Name: tb_sip_spo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tb_sip_spo_id_seq OWNED BY public.tb_sip_spo.id;


--
-- TOC entry 328 (class 1259 OID 18854)
-- Name: tb_sip_spo_resto_2012; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tb_sip_spo_resto_2012 (
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
-- Name: tb_sip_spo_resto_2012_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tb_sip_spo_resto_2012_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3508 (class 0 OID 0)
-- Dependencies: 327
-- Name: tb_sip_spo_resto_2012_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tb_sip_spo_resto_2012_id_seq OWNED BY public.tb_sip_spo_resto_2012.id;


--
-- TOC entry 310 (class 1259 OID 18754)
-- Name: tb_sip_spo_resto_2015; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tb_sip_spo_resto_2015 (
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
-- Name: tb_sip_spo_resto_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tb_sip_spo_resto_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3509 (class 0 OID 0)
-- Dependencies: 309
-- Name: tb_sip_spo_resto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tb_sip_spo_resto_id_seq OWNED BY public.tb_sip_spo_resto_2015.id;


--
-- TOC entry 306 (class 1259 OID 18392)
-- Name: tb_tratamientos; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tb_tratamientos (
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
-- Name: tb_tratamientos_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tb_tratamientos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3510 (class 0 OID 0)
-- Dependencies: 305
-- Name: tb_tratamientos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tb_tratamientos_id_seq OWNED BY public.tb_tratamientos.id;


--
-- TOC entry 268 (class 1259 OID 17961)
-- Name: tb_urgencias; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tb_urgencias (
    id integer NOT NULL,
    num_urgencias integer,
    numsipcod character varying(25),
    fecha_urgencia date,
    cod_motivo_urg character varying(15)
);


--
-- TOC entry 267 (class 1259 OID 17959)
-- Name: tb_urgencias_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tb_urgencias_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3511 (class 0 OID 0)
-- Dependencies: 267
-- Name: tb_urgencias_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tb_urgencias_id_seq OWNED BY public.tb_urgencias.id;


--
-- TOC entry 338 (class 1259 OID 19008)
-- Name: tb_variables; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tb_variables (
    id integer NOT NULL,
    valor_registrado numeric(16,2),
    numsipcod character varying(25),
    fecha_registro date,
    cod_variable_clinic character varying(25),
    cod_ud_medida character varying(15)
);


--
-- TOC entry 337 (class 1259 OID 19006)
-- Name: tb_variables_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tb_variables_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3512 (class 0 OID 0)
-- Dependencies: 337
-- Name: tb_variables_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tb_variables_id_seq OWNED BY public.tb_variables.id;


--
-- TOC entry 211 (class 1259 OID 17060)
-- Name: tba_atc2; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tba_atc2 (
    id integer NOT NULL,
    cod_atc2 character varying(3) NOT NULL,
    des_atc2 character varying(250)
);


--
-- TOC entry 210 (class 1259 OID 17058)
-- Name: tba_atc2_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tba_atc2_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3513 (class 0 OID 0)
-- Dependencies: 210
-- Name: tba_atc2_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tba_atc2_id_seq OWNED BY public.tba_atc2.id;


--
-- TOC entry 213 (class 1259 OID 17068)
-- Name: tba_atc4; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tba_atc4 (
    id integer NOT NULL,
    cod_atc4 character varying(5) NOT NULL,
    des_atc4 character varying(250)
);


--
-- TOC entry 212 (class 1259 OID 17066)
-- Name: tba_atc4_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tba_atc4_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3514 (class 0 OID 0)
-- Dependencies: 212
-- Name: tba_atc4_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tba_atc4_id_seq OWNED BY public.tba_atc4.id;


--
-- TOC entry 205 (class 1259 OID 17036)
-- Name: tba_cau_alta; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tba_cau_alta (
    id integer NOT NULL,
    cod_causa_alta character varying(10) NOT NULL,
    des_causa_alta character varying(250)
);


--
-- TOC entry 204 (class 1259 OID 17034)
-- Name: tba_cau_alta_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tba_cau_alta_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3515 (class 0 OID 0)
-- Dependencies: 204
-- Name: tba_cau_alta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tba_cau_alta_id_seq OWNED BY public.tba_cau_alta.id;


--
-- TOC entry 262 (class 1259 OID 17908)
-- Name: tba_cau_baja; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tba_cau_baja (
    id integer NOT NULL,
    cod_causa_baja character varying(15) NOT NULL,
    des_causa_baja character varying(250)
);


--
-- TOC entry 261 (class 1259 OID 17906)
-- Name: tba_cau_baja_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tba_cau_baja_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3516 (class 0 OID 0)
-- Dependencies: 261
-- Name: tba_cau_baja_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tba_cau_baja_id_seq OWNED BY public.tba_cau_baja.id;


--
-- TOC entry 318 (class 1259 OID 18796)
-- Name: tba_centros; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tba_centros (
    id integer NOT NULL,
    cod_centro character varying(5) NOT NULL,
    des_centro character varying(250)
);


--
-- TOC entry 316 (class 1259 OID 18788)
-- Name: tba_centros_asignacion; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tba_centros_asignacion (
    id integer NOT NULL,
    cod_centro character varying(5) NOT NULL,
    cod_departamento character varying(5),
    cod_zona character varying(10)
);


--
-- TOC entry 315 (class 1259 OID 18786)
-- Name: tba_centros_asignacion_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tba_centros_asignacion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3517 (class 0 OID 0)
-- Dependencies: 315
-- Name: tba_centros_asignacion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tba_centros_asignacion_id_seq OWNED BY public.tba_centros_asignacion.id;


--
-- TOC entry 317 (class 1259 OID 18794)
-- Name: tba_centros_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tba_centros_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3518 (class 0 OID 0)
-- Dependencies: 317
-- Name: tba_centros_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tba_centros_id_seq OWNED BY public.tba_centros.id;


--
-- TOC entry 197 (class 1259 OID 17004)
-- Name: tba_cie9; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tba_cie9 (
    id integer NOT NULL,
    cod_diagnostico character varying(10) NOT NULL,
    des_diagnostico character varying(250)
);


--
-- TOC entry 196 (class 1259 OID 17002)
-- Name: tba_cie9_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tba_cie9_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3519 (class 0 OID 0)
-- Dependencies: 196
-- Name: tba_cie9_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tba_cie9_id_seq OWNED BY public.tba_cie9.id;


--
-- TOC entry 199 (class 1259 OID 17012)
-- Name: tba_cie9p; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tba_cie9p (
    id integer NOT NULL,
    cod_procedimiento character varying(10) NOT NULL,
    des_procedimiento character varying(250)
);


--
-- TOC entry 198 (class 1259 OID 17010)
-- Name: tba_cie9p_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tba_cie9p_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3520 (class 0 OID 0)
-- Dependencies: 198
-- Name: tba_cie9p_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tba_cie9p_id_seq OWNED BY public.tba_cie9p.id;


--
-- TOC entry 314 (class 1259 OID 18780)
-- Name: tba_comunidad_acred; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tba_comunidad_acred (
    id integer NOT NULL,
    cod_comunidad character varying(10) NOT NULL,
    des_comunidad character varying(250)
);


--
-- TOC entry 313 (class 1259 OID 18778)
-- Name: tba_comunidad_acred_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tba_comunidad_acred_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3521 (class 0 OID 0)
-- Dependencies: 313
-- Name: tba_comunidad_acred_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tba_comunidad_acred_id_seq OWNED BY public.tba_comunidad_acred.id;


--
-- TOC entry 201 (class 1259 OID 17020)
-- Name: tba_crg; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tba_crg (
    id integer NOT NULL,
    cod_crg integer NOT NULL,
    des_crg character varying(250)
);


--
-- TOC entry 200 (class 1259 OID 17018)
-- Name: tba_crg_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tba_crg_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3522 (class 0 OID 0)
-- Dependencies: 200
-- Name: tba_crg_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tba_crg_id_seq OWNED BY public.tba_crg.id;


--
-- TOC entry 320 (class 1259 OID 18804)
-- Name: tba_departamentos; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tba_departamentos (
    id integer NOT NULL,
    cod_departamento character varying(5) NOT NULL,
    des_departamento character varying(250)
);


--
-- TOC entry 319 (class 1259 OID 18802)
-- Name: tba_departamentos_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tba_departamentos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3523 (class 0 OID 0)
-- Dependencies: 319
-- Name: tba_departamentos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tba_departamentos_id_seq OWNED BY public.tba_departamentos.id;


--
-- TOC entry 203 (class 1259 OID 17028)
-- Name: tba_est_salud; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tba_est_salud (
    id integer NOT NULL,
    cod_est_salud character varying(10) NOT NULL,
    des_est_salud character varying(250)
);


--
-- TOC entry 202 (class 1259 OID 17026)
-- Name: tba_est_salud_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tba_est_salud_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3524 (class 0 OID 0)
-- Dependencies: 202
-- Name: tba_est_salud_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tba_est_salud_id_seq OWNED BY public.tba_est_salud.id;


--
-- TOC entry 304 (class 1259 OID 18356)
-- Name: tba_farmacia; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tba_farmacia (
    id integer NOT NULL,
    cod_presfarma character varying(5) NOT NULL,
    des_presfarma character varying(250),
    cod_prinactivo character varying(10),
    des_prinactivo character varying(250),
    cod_atc2 character varying(3),
    des_atc2 character varying(250),
    cod_atc4 character varying(5),
    des_atc4 character varying(250)
);


--
-- TOC entry 303 (class 1259 OID 18354)
-- Name: tba_farmacia_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tba_farmacia_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3525 (class 0 OID 0)
-- Dependencies: 303
-- Name: tba_farmacia_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tba_farmacia_id_seq OWNED BY public.tba_farmacia.id;


--
-- TOC entry 324 (class 1259 OID 18824)
-- Name: tba_modalidad; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tba_modalidad (
    id integer NOT NULL,
    cod_modalidad character varying(15) NOT NULL,
    des_modalidad character varying(250)
);


--
-- TOC entry 323 (class 1259 OID 18822)
-- Name: tba_modalidad_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tba_modalidad_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3526 (class 0 OID 0)
-- Dependencies: 323
-- Name: tba_modalidad_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tba_modalidad_id_seq OWNED BY public.tba_modalidad.id;


--
-- TOC entry 209 (class 1259 OID 17052)
-- Name: tba_mot_cierre; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tba_mot_cierre (
    id integer NOT NULL,
    cod_motivo_cierre character varying(10) NOT NULL,
    des_motivo_cierre character varying(250)
);


--
-- TOC entry 208 (class 1259 OID 17050)
-- Name: tba_mot_cierre_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tba_mot_cierre_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3527 (class 0 OID 0)
-- Dependencies: 208
-- Name: tba_mot_cierre_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tba_mot_cierre_id_seq OWNED BY public.tba_mot_cierre.id;


--
-- TOC entry 266 (class 1259 OID 17947)
-- Name: tba_mot_urgencia; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tba_mot_urgencia (
    id integer NOT NULL,
    cod_motivo_urg character varying(15) NOT NULL,
    des_motivo_urg character varying(250)
);


--
-- TOC entry 265 (class 1259 OID 17945)
-- Name: tba_mot_urgencia_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tba_mot_urgencia_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3528 (class 0 OID 0)
-- Dependencies: 265
-- Name: tba_mot_urgencia_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tba_mot_urgencia_id_seq OWNED BY public.tba_mot_urgencia.id;


--
-- TOC entry 312 (class 1259 OID 18771)
-- Name: tba_pais_acred; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tba_pais_acred (
    id integer NOT NULL,
    cod_pais character varying(10) NOT NULL,
    des_pais character varying(250)
);


--
-- TOC entry 311 (class 1259 OID 18769)
-- Name: tba_pais_acred_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tba_pais_acred_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3529 (class 0 OID 0)
-- Dependencies: 311
-- Name: tba_pais_acred_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tba_pais_acred_id_seq OWNED BY public.tba_pais_acred.id;


--
-- TOC entry 215 (class 1259 OID 17076)
-- Name: tba_presfarma; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tba_presfarma (
    id integer NOT NULL,
    cod_presfarma character varying(5) NOT NULL,
    des_presfarma character varying(250)
);


--
-- TOC entry 214 (class 1259 OID 17074)
-- Name: tba_presfarma_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tba_presfarma_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3530 (class 0 OID 0)
-- Dependencies: 214
-- Name: tba_presfarma_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tba_presfarma_id_seq OWNED BY public.tba_presfarma.id;


--
-- TOC entry 217 (class 1259 OID 17084)
-- Name: tba_prinactivo; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tba_prinactivo (
    id integer NOT NULL,
    cod_prinactivo character varying(10) NOT NULL,
    des_prinactivo character varying(250)
);


--
-- TOC entry 216 (class 1259 OID 17082)
-- Name: tba_prinactivo_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tba_prinactivo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3531 (class 0 OID 0)
-- Dependencies: 216
-- Name: tba_prinactivo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tba_prinactivo_id_seq OWNED BY public.tba_prinactivo.id;


--
-- TOC entry 326 (class 1259 OID 18832)
-- Name: tba_raf; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tba_raf (
    id integer NOT NULL,
    cod_raf character varying(15) NOT NULL,
    des_raf character varying(250)
);


--
-- TOC entry 325 (class 1259 OID 18830)
-- Name: tba_raf_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tba_raf_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3532 (class 0 OID 0)
-- Dependencies: 325
-- Name: tba_raf_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tba_raf_id_seq OWNED BY public.tba_raf.id;


--
-- TOC entry 254 (class 1259 OID 17730)
-- Name: tba_serv_homologado; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tba_serv_homologado (
    id integer NOT NULL,
    cod_serv_homologado character varying(15) NOT NULL,
    des_serv_homologado character varying(250)
);


--
-- TOC entry 253 (class 1259 OID 17728)
-- Name: tba_serv_homologado_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tba_serv_homologado_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3533 (class 0 OID 0)
-- Dependencies: 253
-- Name: tba_serv_homologado_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tba_serv_homologado_id_seq OWNED BY public.tba_serv_homologado.id;


--
-- TOC entry 256 (class 1259 OID 17738)
-- Name: tba_serv_propio; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tba_serv_propio (
    id integer NOT NULL,
    cod_serv_propio character varying(15) NOT NULL,
    des_serv_propio character varying(250)
);


--
-- TOC entry 255 (class 1259 OID 17736)
-- Name: tba_serv_propio_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tba_serv_propio_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3534 (class 0 OID 0)
-- Dependencies: 255
-- Name: tba_serv_propio_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tba_serv_propio_id_seq OWNED BY public.tba_serv_propio.id;


--
-- TOC entry 207 (class 1259 OID 17044)
-- Name: tba_tip_baja; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tba_tip_baja (
    id integer NOT NULL,
    cod_tipo_baja character varying(10) NOT NULL,
    des_tipo_baja character varying(250)
);


--
-- TOC entry 206 (class 1259 OID 17042)
-- Name: tba_tip_baja_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tba_tip_baja_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3535 (class 0 OID 0)
-- Dependencies: 206
-- Name: tba_tip_baja_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tba_tip_baja_id_seq OWNED BY public.tba_tip_baja.id;


--
-- TOC entry 219 (class 1259 OID 17092)
-- Name: tba_tip_prest; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tba_tip_prest (
    id integer NOT NULL,
    cod_prestacion character varying(25) NOT NULL,
    des_prestacion character varying(250)
);


--
-- TOC entry 218 (class 1259 OID 17090)
-- Name: tba_tip_prest_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tba_tip_prest_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3536 (class 0 OID 0)
-- Dependencies: 218
-- Name: tba_tip_prest_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tba_tip_prest_id_seq OWNED BY public.tba_tip_prest.id;


--
-- TOC entry 340 (class 1259 OID 19024)
-- Name: tba_tip_variables; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tba_tip_variables (
    id integer NOT NULL,
    cod_variable_clinic character varying(25) NOT NULL,
    des_variable_clinic character varying(250)
);


--
-- TOC entry 339 (class 1259 OID 19022)
-- Name: tba_tip_variables_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tba_tip_variables_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3537 (class 0 OID 0)
-- Dependencies: 339
-- Name: tba_tip_variables_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tba_tip_variables_id_seq OWNED BY public.tba_tip_variables.id;


--
-- TOC entry 221 (class 1259 OID 17100)
-- Name: tba_ud_medidas; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tba_ud_medidas (
    id integer NOT NULL,
    cod_ud_medida character varying(15) NOT NULL,
    des_ud_medida character varying(250)
);


--
-- TOC entry 220 (class 1259 OID 17098)
-- Name: tba_ud_medidas_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tba_ud_medidas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3538 (class 0 OID 0)
-- Dependencies: 220
-- Name: tba_ud_medidas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tba_ud_medidas_id_seq OWNED BY public.tba_ud_medidas.id;


--
-- TOC entry 322 (class 1259 OID 18812)
-- Name: tba_zonas; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tba_zonas (
    id integer NOT NULL,
    cod_zona character varying(10) NOT NULL,
    des_zona character varying(250)
);


--
-- TOC entry 321 (class 1259 OID 18810)
-- Name: tba_zonas_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tba_zonas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3539 (class 0 OID 0)
-- Dependencies: 321
-- Name: tba_zonas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tba_zonas_id_seq OWNED BY public.tba_zonas.id;


--
-- TOC entry 3211 (class 2604 OID 17127)
-- Name: tb_aconadve id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tb_aconadve ALTER COLUMN id SET DEFAULT nextval('public.tb_aconadve_id_seq'::regclass);


--
-- TOC entry 3214 (class 2604 OID 17188)
-- Name: tb_alergias id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tb_alergias ALTER COLUMN id SET DEFAULT nextval('public.tb_alergias_id_seq'::regclass);


--
-- TOC entry 3219 (class 2604 OID 17279)
-- Name: tb_ante_cmbd id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tb_ante_cmbd ALTER COLUMN id SET DEFAULT nextval('public.tb_ante_cmbd_id_seq'::regclass);


--
-- TOC entry 3217 (class 2604 OID 17249)
-- Name: tb_antepers id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tb_antepers ALTER COLUMN id SET DEFAULT nextval('public.tb_antepers_id_seq'::regclass);


--
-- TOC entry 3228 (class 2604 OID 17887)
-- Name: tb_cex id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tb_cex ALTER COLUMN id SET DEFAULT nextval('public.tb_cex_id_seq'::regclass);


--
-- TOC entry 3215 (class 2604 OID 17206)
-- Name: tb_cie_atc id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tb_cie_atc ALTER COLUMN id SET DEFAULT nextval('public.tb_cie_atc_id_seq'::regclass);


--
-- TOC entry 3231 (class 2604 OID 17928)
-- Name: tb_consultas_atp id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tb_consultas_atp ALTER COLUMN id SET DEFAULT nextval('public.tb_consultas_atp_id_seq'::regclass);


--
-- TOC entry 3220 (class 2604 OID 17299)
-- Name: tb_contraind id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tb_contraind ALTER COLUMN id SET DEFAULT nextval('public.tb_contraind_id_seq'::regclass);


--
-- TOC entry 3213 (class 2604 OID 17165)
-- Name: tb_ctdh id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tb_ctdh ALTER COLUMN id SET DEFAULT nextval('public.tb_ctdh_id_seq'::regclass);


--
-- TOC entry 3234 (class 2604 OID 18118)
-- Name: tb_diag_cmbd id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tb_diag_cmbd ALTER COLUMN id SET DEFAULT nextval('public.tb_diag_cmbd_id_seq'::regclass);


--
-- TOC entry 3236 (class 2604 OID 18324)
-- Name: tb_diag_juntos id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tb_diag_juntos ALTER COLUMN id SET DEFAULT nextval('public.tb_diag_juntos_id_seq'::regclass);


--
-- TOC entry 3212 (class 2604 OID 17147)
-- Name: tb_duplicid id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tb_duplicid ALTER COLUMN id SET DEFAULT nextval('public.tb_duplicid_id_seq'::regclass);


--
-- TOC entry 3255 (class 2604 OID 19100)
-- Name: tb_estancia_uci id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tb_estancia_uci ALTER COLUMN id SET DEFAULT nextval('public.tb_estancia_uci_id_seq'::regclass);


--
-- TOC entry 3216 (class 2604 OID 17224)
-- Name: tb_incatemp id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tb_incatemp ALTER COLUMN id SET DEFAULT nextval('public.tb_incatemp_id_seq'::regclass);


--
-- TOC entry 3221 (class 2604 OID 17322)
-- Name: tb_interacc id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tb_interacc ALTER COLUMN id SET DEFAULT nextval('public.tb_interacc_id_seq'::regclass);


--
-- TOC entry 3224 (class 2604 OID 17503)
-- Name: tb_morbilid id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tb_morbilid ALTER COLUMN id SET DEFAULT nextval('public.tb_morbilid_id_seq'::regclass);


--
-- TOC entry 3218 (class 2604 OID 17267)
-- Name: tb_posologia id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tb_posologia ALTER COLUMN id SET DEFAULT nextval('public.tb_posologia_id_seq'::regclass);


--
-- TOC entry 3225 (class 2604 OID 17610)
-- Name: tb_prescrip id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tb_prescrip ALTER COLUMN id SET DEFAULT nextval('public.tb_prescrip_id_seq'::regclass);


--
-- TOC entry 3222 (class 2604 OID 17414)
-- Name: tb_prestaci id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tb_prestaci ALTER COLUMN id SET DEFAULT nextval('public.tb_prestaci_id_seq'::regclass);


--
-- TOC entry 3235 (class 2604 OID 18130)
-- Name: tb_proc_cmbd id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tb_proc_cmbd ALTER COLUMN id SET DEFAULT nextval('public.tb_proc_cmbd_id_seq'::regclass);


--
-- TOC entry 3223 (class 2604 OID 17465)
-- Name: tb_rele id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tb_rele ALTER COLUMN id SET DEFAULT nextval('public.tb_rele_id_seq'::regclass);


--
-- TOC entry 3249 (class 2604 OID 18890)
-- Name: tb_scp_2012 id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tb_scp_2012 ALTER COLUMN id SET DEFAULT nextval('public.tb_scp_2012_id_seq'::regclass);


--
-- TOC entry 3250 (class 2604 OID 18905)
-- Name: tb_scp_2013 id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tb_scp_2013 ALTER COLUMN id SET DEFAULT nextval('public.tb_scp_2013_id_seq'::regclass);


--
-- TOC entry 3251 (class 2604 OID 18911)
-- Name: tb_scp_2014 id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tb_scp_2014 ALTER COLUMN id SET DEFAULT nextval('public.tb_scp_2014_id_seq'::regclass);


--
-- TOC entry 3252 (class 2604 OID 18917)
-- Name: tb_scp_2015 id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tb_scp_2015 ALTER COLUMN id SET DEFAULT nextval('public.tb_scp_2015_id_seq'::regclass);


--
-- TOC entry 3229 (class 2604 OID 17903)
-- Name: tb_sip_spo id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tb_sip_spo ALTER COLUMN id SET DEFAULT nextval('public.tb_sip_spo_id_seq'::regclass);


--
-- TOC entry 3248 (class 2604 OID 18857)
-- Name: tb_sip_spo_resto_2012 id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tb_sip_spo_resto_2012 ALTER COLUMN id SET DEFAULT nextval('public.tb_sip_spo_resto_2012_id_seq'::regclass);


--
-- TOC entry 3239 (class 2604 OID 18757)
-- Name: tb_sip_spo_resto_2015 id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tb_sip_spo_resto_2015 ALTER COLUMN id SET DEFAULT nextval('public.tb_sip_spo_resto_id_seq'::regclass);


--
-- TOC entry 3238 (class 2604 OID 18395)
-- Name: tb_tratamientos id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tb_tratamientos ALTER COLUMN id SET DEFAULT nextval('public.tb_tratamientos_id_seq'::regclass);


--
-- TOC entry 3233 (class 2604 OID 17964)
-- Name: tb_urgencias id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tb_urgencias ALTER COLUMN id SET DEFAULT nextval('public.tb_urgencias_id_seq'::regclass);


--
-- TOC entry 3253 (class 2604 OID 19011)
-- Name: tb_variables id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tb_variables ALTER COLUMN id SET DEFAULT nextval('public.tb_variables_id_seq'::regclass);


--
-- TOC entry 3205 (class 2604 OID 17063)
-- Name: tba_atc2 id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tba_atc2 ALTER COLUMN id SET DEFAULT nextval('public.tba_atc2_id_seq'::regclass);


--
-- TOC entry 3206 (class 2604 OID 17071)
-- Name: tba_atc4 id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tba_atc4 ALTER COLUMN id SET DEFAULT nextval('public.tba_atc4_id_seq'::regclass);


--
-- TOC entry 3202 (class 2604 OID 17039)
-- Name: tba_cau_alta id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tba_cau_alta ALTER COLUMN id SET DEFAULT nextval('public.tba_cau_alta_id_seq'::regclass);


--
-- TOC entry 3230 (class 2604 OID 17911)
-- Name: tba_cau_baja id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tba_cau_baja ALTER COLUMN id SET DEFAULT nextval('public.tba_cau_baja_id_seq'::regclass);


--
-- TOC entry 3243 (class 2604 OID 18799)
-- Name: tba_centros id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tba_centros ALTER COLUMN id SET DEFAULT nextval('public.tba_centros_id_seq'::regclass);


--
-- TOC entry 3242 (class 2604 OID 18791)
-- Name: tba_centros_asignacion id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tba_centros_asignacion ALTER COLUMN id SET DEFAULT nextval('public.tba_centros_asignacion_id_seq'::regclass);


--
-- TOC entry 3198 (class 2604 OID 17007)
-- Name: tba_cie9 id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tba_cie9 ALTER COLUMN id SET DEFAULT nextval('public.tba_cie9_id_seq'::regclass);


--
-- TOC entry 3199 (class 2604 OID 17015)
-- Name: tba_cie9p id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tba_cie9p ALTER COLUMN id SET DEFAULT nextval('public.tba_cie9p_id_seq'::regclass);


--
-- TOC entry 3241 (class 2604 OID 18783)
-- Name: tba_comunidad_acred id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tba_comunidad_acred ALTER COLUMN id SET DEFAULT nextval('public.tba_comunidad_acred_id_seq'::regclass);


--
-- TOC entry 3200 (class 2604 OID 17023)
-- Name: tba_crg id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tba_crg ALTER COLUMN id SET DEFAULT nextval('public.tba_crg_id_seq'::regclass);


--
-- TOC entry 3244 (class 2604 OID 18807)
-- Name: tba_departamentos id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tba_departamentos ALTER COLUMN id SET DEFAULT nextval('public.tba_departamentos_id_seq'::regclass);


--
-- TOC entry 3201 (class 2604 OID 17031)
-- Name: tba_est_salud id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tba_est_salud ALTER COLUMN id SET DEFAULT nextval('public.tba_est_salud_id_seq'::regclass);


--
-- TOC entry 3237 (class 2604 OID 18359)
-- Name: tba_farmacia id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tba_farmacia ALTER COLUMN id SET DEFAULT nextval('public.tba_farmacia_id_seq'::regclass);


--
-- TOC entry 3246 (class 2604 OID 18827)
-- Name: tba_modalidad id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tba_modalidad ALTER COLUMN id SET DEFAULT nextval('public.tba_modalidad_id_seq'::regclass);


--
-- TOC entry 3204 (class 2604 OID 17055)
-- Name: tba_mot_cierre id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tba_mot_cierre ALTER COLUMN id SET DEFAULT nextval('public.tba_mot_cierre_id_seq'::regclass);


--
-- TOC entry 3232 (class 2604 OID 17950)
-- Name: tba_mot_urgencia id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tba_mot_urgencia ALTER COLUMN id SET DEFAULT nextval('public.tba_mot_urgencia_id_seq'::regclass);


--
-- TOC entry 3240 (class 2604 OID 18774)
-- Name: tba_pais_acred id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tba_pais_acred ALTER COLUMN id SET DEFAULT nextval('public.tba_pais_acred_id_seq'::regclass);


--
-- TOC entry 3207 (class 2604 OID 17079)
-- Name: tba_presfarma id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tba_presfarma ALTER COLUMN id SET DEFAULT nextval('public.tba_presfarma_id_seq'::regclass);


--
-- TOC entry 3208 (class 2604 OID 17087)
-- Name: tba_prinactivo id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tba_prinactivo ALTER COLUMN id SET DEFAULT nextval('public.tba_prinactivo_id_seq'::regclass);


--
-- TOC entry 3247 (class 2604 OID 18835)
-- Name: tba_raf id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tba_raf ALTER COLUMN id SET DEFAULT nextval('public.tba_raf_id_seq'::regclass);


--
-- TOC entry 3226 (class 2604 OID 17733)
-- Name: tba_serv_homologado id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tba_serv_homologado ALTER COLUMN id SET DEFAULT nextval('public.tba_serv_homologado_id_seq'::regclass);


--
-- TOC entry 3227 (class 2604 OID 17741)
-- Name: tba_serv_propio id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tba_serv_propio ALTER COLUMN id SET DEFAULT nextval('public.tba_serv_propio_id_seq'::regclass);


--
-- TOC entry 3203 (class 2604 OID 17047)
-- Name: tba_tip_baja id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tba_tip_baja ALTER COLUMN id SET DEFAULT nextval('public.tba_tip_baja_id_seq'::regclass);


--
-- TOC entry 3209 (class 2604 OID 17095)
-- Name: tba_tip_prest id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tba_tip_prest ALTER COLUMN id SET DEFAULT nextval('public.tba_tip_prest_id_seq'::regclass);


--
-- TOC entry 3254 (class 2604 OID 19027)
-- Name: tba_tip_variables id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tba_tip_variables ALTER COLUMN id SET DEFAULT nextval('public.tba_tip_variables_id_seq'::regclass);


--
-- TOC entry 3210 (class 2604 OID 17103)
-- Name: tba_ud_medidas id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tba_ud_medidas ALTER COLUMN id SET DEFAULT nextval('public.tba_ud_medidas_id_seq'::regclass);


--
-- TOC entry 3245 (class 2604 OID 18815)
-- Name: tba_zonas id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tba_zonas ALTER COLUMN id SET DEFAULT nextval('public.tba_zonas_id_seq'::regclass);


--
-- TOC entry 3282 (class 2606 OID 17129)
-- Name: tb_aconadve tb_aconadve_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tb_aconadve
    ADD CONSTRAINT tb_aconadve_pkey PRIMARY KEY (id);


--
-- TOC entry 3291 (class 2606 OID 17190)
-- Name: tb_alergias tb_alergias_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tb_alergias
    ADD CONSTRAINT tb_alergias_pkey PRIMARY KEY (id);


--
-- TOC entry 3300 (class 2606 OID 17251)
-- Name: tb_antepers tb_antepers_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tb_antepers
    ADD CONSTRAINT tb_antepers_pkey PRIMARY KEY (id);


--
-- TOC entry 3294 (class 2606 OID 17208)
-- Name: tb_cie_atc tb_cieatc_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tb_cie_atc
    ADD CONSTRAINT tb_cieatc_pkey PRIMARY KEY (id);


--
-- TOC entry 3306 (class 2606 OID 17301)
-- Name: tb_contraind tb_contraind_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tb_contraind
    ADD CONSTRAINT tb_contraind_pkey PRIMARY KEY (id);


--
-- TOC entry 3288 (class 2606 OID 17167)
-- Name: tb_ctdh tb_ctdh_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tb_ctdh
    ADD CONSTRAINT tb_ctdh_pkey PRIMARY KEY (id);


--
-- TOC entry 3285 (class 2606 OID 17149)
-- Name: tb_duplicid tb_duplicid_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tb_duplicid
    ADD CONSTRAINT tb_duplicid_pkey PRIMARY KEY (id);


--
-- TOC entry 3297 (class 2606 OID 17226)
-- Name: tb_incatemp tb_incatemp_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tb_incatemp
    ADD CONSTRAINT tb_incatemp_pkey PRIMARY KEY (id);


--
-- TOC entry 3309 (class 2606 OID 17324)
-- Name: tb_interacc tb_interacc_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tb_interacc
    ADD CONSTRAINT tb_interacc_pkey PRIMARY KEY (id);


--
-- TOC entry 3303 (class 2606 OID 17269)
-- Name: tb_posologia tb_posologia_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tb_posologia
    ADD CONSTRAINT tb_posologia_pkey PRIMARY KEY (id);


--
-- TOC entry 3269 (class 2606 OID 17065)
-- Name: tba_atc2 tba_atc2_cod; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tba_atc2
    ADD CONSTRAINT tba_atc2_cod PRIMARY KEY (cod_atc2);


--
-- TOC entry 3271 (class 2606 OID 17073)
-- Name: tba_atc4 tba_atc4_cod; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tba_atc4
    ADD CONSTRAINT tba_atc4_cod PRIMARY KEY (cod_atc4);


--
-- TOC entry 3263 (class 2606 OID 17041)
-- Name: tba_cau_alta tba_cau_alta_cod; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tba_cau_alta
    ADD CONSTRAINT tba_cau_alta_cod PRIMARY KEY (cod_causa_alta);


--
-- TOC entry 3321 (class 2606 OID 17913)
-- Name: tba_cau_baja tba_causa_baja_cod; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tba_cau_baja
    ADD CONSTRAINT tba_causa_baja_cod PRIMARY KEY (cod_causa_baja);


--
-- TOC entry 3336 (class 2606 OID 18793)
-- Name: tba_centros_asignacion tba_centros_asignacion_cod; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tba_centros_asignacion
    ADD CONSTRAINT tba_centros_asignacion_cod PRIMARY KEY (cod_centro);


--
-- TOC entry 3338 (class 2606 OID 18801)
-- Name: tba_centros tba_centros_cod; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tba_centros
    ADD CONSTRAINT tba_centros_cod PRIMARY KEY (cod_centro);


--
-- TOC entry 3257 (class 2606 OID 17009)
-- Name: tba_cie9 tba_cie9_cod; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tba_cie9
    ADD CONSTRAINT tba_cie9_cod PRIMARY KEY (cod_diagnostico);


--
-- TOC entry 3259 (class 2606 OID 17017)
-- Name: tba_cie9p tba_cie9p_cod; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tba_cie9p
    ADD CONSTRAINT tba_cie9p_cod PRIMARY KEY (cod_procedimiento);


--
-- TOC entry 3334 (class 2606 OID 18785)
-- Name: tba_comunidad_acred tba_comunidad_acred_cod; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tba_comunidad_acred
    ADD CONSTRAINT tba_comunidad_acred_cod PRIMARY KEY (cod_comunidad);


--
-- TOC entry 3261 (class 2606 OID 17025)
-- Name: tba_crg tba_crg_cod; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tba_crg
    ADD CONSTRAINT tba_crg_cod PRIMARY KEY (cod_crg);


--
-- TOC entry 3340 (class 2606 OID 18809)
-- Name: tba_departamentos tba_departamentos_cod; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tba_departamentos
    ADD CONSTRAINT tba_departamentos_cod PRIMARY KEY (cod_departamento);


--
-- TOC entry 3328 (class 2606 OID 18364)
-- Name: tba_farmacia tba_farmacia_cod; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tba_farmacia
    ADD CONSTRAINT tba_farmacia_cod PRIMARY KEY (cod_presfarma);


--
-- TOC entry 3344 (class 2606 OID 18829)
-- Name: tba_modalidad tba_modalidad_cod; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tba_modalidad
    ADD CONSTRAINT tba_modalidad_cod PRIMARY KEY (cod_modalidad);


--
-- TOC entry 3267 (class 2606 OID 17057)
-- Name: tba_mot_cierre tba_mot_cierre_cod; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tba_mot_cierre
    ADD CONSTRAINT tba_mot_cierre_cod PRIMARY KEY (cod_motivo_cierre);


--
-- TOC entry 3324 (class 2606 OID 17952)
-- Name: tba_mot_urgencia tba_mot_urgencia_cod; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tba_mot_urgencia
    ADD CONSTRAINT tba_mot_urgencia_cod PRIMARY KEY (cod_motivo_urg);


--
-- TOC entry 3332 (class 2606 OID 18776)
-- Name: tba_pais_acred tba_pais_acred_cod; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tba_pais_acred
    ADD CONSTRAINT tba_pais_acred_cod PRIMARY KEY (cod_pais);


--
-- TOC entry 3273 (class 2606 OID 17081)
-- Name: tba_presfarma tba_presfarma_cod; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tba_presfarma
    ADD CONSTRAINT tba_presfarma_cod PRIMARY KEY (cod_presfarma);


--
-- TOC entry 3275 (class 2606 OID 17089)
-- Name: tba_prinactivo tba_prinactivo_cod; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tba_prinactivo
    ADD CONSTRAINT tba_prinactivo_cod PRIMARY KEY (cod_prinactivo);


--
-- TOC entry 3346 (class 2606 OID 18837)
-- Name: tba_raf tba_raf_cod; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tba_raf
    ADD CONSTRAINT tba_raf_cod PRIMARY KEY (cod_raf);


--
-- TOC entry 3315 (class 2606 OID 17735)
-- Name: tba_serv_homologado tba_serv_homologado_cod; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tba_serv_homologado
    ADD CONSTRAINT tba_serv_homologado_cod PRIMARY KEY (cod_serv_homologado);


--
-- TOC entry 3317 (class 2606 OID 17743)
-- Name: tba_serv_propio tba_serv_propio_cod; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tba_serv_propio
    ADD CONSTRAINT tba_serv_propio_cod PRIMARY KEY (cod_serv_propio);


--
-- TOC entry 3265 (class 2606 OID 17049)
-- Name: tba_tip_baja tba_tip_baja_cod; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tba_tip_baja
    ADD CONSTRAINT tba_tip_baja_cod PRIMARY KEY (cod_tipo_baja);


--
-- TOC entry 3277 (class 2606 OID 17097)
-- Name: tba_tip_prest tba_tip_prest_cod; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tba_tip_prest
    ADD CONSTRAINT tba_tip_prest_cod PRIMARY KEY (cod_prestacion);


--
-- TOC entry 3354 (class 2606 OID 19029)
-- Name: tba_tip_variables tba_tip_variables_cod; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tba_tip_variables
    ADD CONSTRAINT tba_tip_variables_cod PRIMARY KEY (cod_variable_clinic);


--
-- TOC entry 3279 (class 2606 OID 17105)
-- Name: tba_ud_medidas tba_ud_medidas_cod; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tba_ud_medidas
    ADD CONSTRAINT tba_ud_medidas_cod PRIMARY KEY (cod_ud_medida);


--
-- TOC entry 3342 (class 2606 OID 18819)
-- Name: tba_zonas tba_zonas_cod; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tba_zonas
    ADD CONSTRAINT tba_zonas_cod PRIMARY KEY (cod_zona);


--
-- TOC entry 3280 (class 1259 OID 17130)
-- Name: aconadve_numsipcod; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX aconadve_numsipcod ON public.tb_aconadve USING btree (numsipcod);


--
-- TOC entry 3289 (class 1259 OID 17191)
-- Name: alergias_numsipcod; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX alergias_numsipcod ON public.tb_alergias USING btree (numsipcod);


--
-- TOC entry 3298 (class 1259 OID 17252)
-- Name: antepers_numsipcod; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX antepers_numsipcod ON public.tb_antepers USING btree (numsipcod);


--
-- TOC entry 3318 (class 1259 OID 19127)
-- Name: cex_numsipcod; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX cex_numsipcod ON public.tb_cex USING btree (numsipcod);


--
-- TOC entry 3292 (class 1259 OID 18543)
-- Name: cie_atc_numsipcod; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX cie_atc_numsipcod ON public.tb_cie_atc USING btree (numsipcod);


--
-- TOC entry 3304 (class 1259 OID 17302)
-- Name: contraind_numsipcod; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX contraind_numsipcod ON public.tb_contraind USING btree (numsipcod);


--
-- TOC entry 3286 (class 1259 OID 18558)
-- Name: ctdh_numsipcod; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ctdh_numsipcod ON public.tb_ctdh USING btree (numsipcod);


--
-- TOC entry 3326 (class 1259 OID 18325)
-- Name: diag_juntos_numsipcod; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX diag_juntos_numsipcod ON public.tb_diag_juntos USING btree (numsipcod);


--
-- TOC entry 3283 (class 1259 OID 18574)
-- Name: duplicid_numsipcod; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX duplicid_numsipcod ON public.tb_duplicid USING btree (numsipcod);


--
-- TOC entry 3355 (class 1259 OID 19113)
-- Name: estancia_uci_numsipcod; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX estancia_uci_numsipcod ON public.tb_estancia_uci USING btree (numsipcod);


--
-- TOC entry 3295 (class 1259 OID 19151)
-- Name: incatemp_numsipcod; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX incatemp_numsipcod ON public.tb_incatemp USING btree (numsipcod);


--
-- TOC entry 3307 (class 1259 OID 18615)
-- Name: interacc_numsipcod; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX interacc_numsipcod ON public.tb_interacc USING btree (numsipcod);


--
-- TOC entry 3312 (class 1259 OID 17504)
-- Name: morbilid_numsipcod; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX morbilid_numsipcod ON public.tb_morbilid USING btree (numsipcod);


--
-- TOC entry 3301 (class 1259 OID 18631)
-- Name: posologia_numsipcod; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX posologia_numsipcod ON public.tb_posologia USING btree (numsipcod);


--
-- TOC entry 3313 (class 1259 OID 19187)
-- Name: prescrip_numsipcod; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX prescrip_numsipcod ON public.tb_prescrip USING btree (numsipcod);


--
-- TOC entry 3311 (class 1259 OID 18351)
-- Name: rele_numsipcod; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX rele_numsipcod ON public.tb_rele USING btree (numsipcod);


--
-- TOC entry 3348 (class 1259 OID 18922)
-- Name: scp_2012_numsipcod; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX scp_2012_numsipcod ON public.tb_scp_2012 USING btree (numsipcod);


--
-- TOC entry 3349 (class 1259 OID 18952)
-- Name: scp_2013_numsipcod; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX scp_2013_numsipcod ON public.tb_scp_2013 USING btree (numsipcod);


--
-- TOC entry 3350 (class 1259 OID 18977)
-- Name: scp_2014_numsipcod; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX scp_2014_numsipcod ON public.tb_scp_2014 USING btree (numsipcod);


--
-- TOC entry 3351 (class 1259 OID 18976)
-- Name: scp_2015_numsipcod; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX scp_2015_numsipcod ON public.tb_scp_2015 USING btree (numsipcod);


--
-- TOC entry 3319 (class 1259 OID 17904)
-- Name: sip_spo_numsipcod; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX sip_spo_numsipcod ON public.tb_sip_spo USING btree (numsipcod);


--
-- TOC entry 3347 (class 1259 OID 18881)
-- Name: sip_spo_resto_2012_numsipcod; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX sip_spo_resto_2012_numsipcod ON public.tb_sip_spo_resto_2012 USING btree (numsipcod);


--
-- TOC entry 3330 (class 1259 OID 18861)
-- Name: sip_spo_resto_2015_numsipcod; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX sip_spo_resto_2015_numsipcod ON public.tb_sip_spo_resto_2015 USING btree (numsipcod);


--
-- TOC entry 3322 (class 1259 OID 19154)
-- Name: tb_consultas_atp_numsipcod; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX tb_consultas_atp_numsipcod ON public.tb_consultas_atp USING btree (numsipcod);


--
-- TOC entry 3310 (class 1259 OID 19208)
-- Name: tb_prestaci_numsipcod; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX tb_prestaci_numsipcod ON public.tb_prestaci USING btree (numsipcod);


--
-- TOC entry 3329 (class 1259 OID 19005)
-- Name: tb_tratamientos_numsipcod; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX tb_tratamientos_numsipcod ON public.tb_tratamientos USING btree (numsipcod);


--
-- TOC entry 3352 (class 1259 OID 19091)
-- Name: tb_variables_numsipcod; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX tb_variables_numsipcod ON public.tb_variables USING btree (numsipcod);


--
-- TOC entry 3325 (class 1259 OID 19167)
-- Name: urgencias_numsipcod; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX urgencias_numsipcod ON public.tb_urgencias USING btree (numsipcod);


-- Completed on 2018-10-17 13:05:54 CEST

--
-- PostgreSQL database dump complete
--

