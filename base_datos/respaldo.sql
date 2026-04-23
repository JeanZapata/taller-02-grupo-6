--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;

--
-- Name: empleados; Type: TABLE; Schema: public; Owner: apiuser
--

CREATE TABLE public.empleados (
    id integer NOT NULL,
    nombre character varying(100),
    departamento character varying(100),
    salario integer
);

ALTER TABLE public.empleados OWNER TO apiuser;

--
-- Name: empleados_id_seq; Type: SEQUENCE; Schema: public; Owner: apiuser
--

CREATE SEQUENCE public.empleados_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER SEQUENCE public.empleados_id_seq OWNER TO apiuser;
ALTER SEQUENCE public.empleados_id_seq OWNED BY public.empleados.id;
ALTER TABLE ONLY public.empleados ALTER COLUMN id SET DEFAULT nextval('public.empleados_id_seq'::regclass);

--
-- Data for Name: empleados; Type: TABLE DATA; Schema: public; Owner: apiuser
--

COPY public.empleados (id, nombre, departamento, salario) FROM stdin;
1	Ana	TI	1200
2	Luis	Finanzas	1500
3	Carlos	Marketing	1100
4	Maria	TI	1400
\.

--
-- Name: empleados_id_seq; Type: SEQUENCE SET; Schema: public; Owner: apiuser
--

SELECT pg_catalog.setval('public.empleados_id_seq', 4, true);

--
-- Name: empleados empleados_pkey; Type: CONSTRAINT; Schema: public; Owner: apiuser
--

ALTER TABLE ONLY public.empleados
    ADD CONSTRAINT empleados_pkey PRIMARY KEY (id);

--
-- Name: TABLE empleados; Type: ACL; Schema: public; Owner: apiuser
--

GRANT ALL ON TABLE public.empleados TO apiuser;

--
-- PostgreSQL database dump complete
--
