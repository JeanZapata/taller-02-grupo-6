--
-- PostgreSQL database dump
--

\restrict Vf9ffVVUQgt6d4VxN5YmXwwMUyZ1wOuPbFcpGy8KGPrUHThxQjfY1b863BALCXc

-- Dumped from database version 18.3 (Ubuntu 18.3-1)
-- Dumped by pg_dump version 18.3 (Ubuntu 18.3-1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

ALTER TABLE IF EXISTS ONLY public.empleados DROP CONSTRAINT IF EXISTS empleados_pkey;
ALTER TABLE IF EXISTS public.empleados ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE IF EXISTS public.empleados_id_seq;
DROP TABLE IF EXISTS public.empleados;
SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: empleados; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.empleados (
    id integer NOT NULL,
    nombre character varying(100),
    departamento character varying(100),
    salario integer
);


ALTER TABLE public.empleados OWNER TO postgres;

--
-- Name: empleados_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.empleados_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.empleados_id_seq OWNER TO postgres;

--
-- Name: empleados_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.empleados_id_seq OWNED BY public.empleados.id;


--
-- Name: empleados id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empleados ALTER COLUMN id SET DEFAULT nextval('public.empleados_id_seq'::regclass);


--
-- Data for Name: empleados; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.empleados (id, nombre, departamento, salario) FROM stdin;
1	Ana	TI	1200
2	Luis	Finanzas	1500
3	Carlos	Marketing	1100
4	Maria	TI	1400
\.


--
-- Name: empleados_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.empleados_id_seq', 4, true);


--
-- Name: empleados empleados_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empleados
    ADD CONSTRAINT empleados_pkey PRIMARY KEY (id);


--
-- Name: TABLE empleados; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.empleados TO apiuser;


--
-- Name: SEQUENCE empleados_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.empleados_id_seq TO apiuser;


--
-- PostgreSQL database dump complete
--

\unrestrict Vf9ffVVUQgt6d4VxN5YmXwwMUyZ1wOuPbFcpGy8KGPrUHThxQjfY1b863BALCXc

