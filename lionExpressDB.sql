--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5
-- Dumped by pg_dump version 10.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- Name: full_name; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.full_name AS (
	first text,
	last text
);


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: employees; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.employees (
    employeee_id integer NOT NULL,
    name public.full_name NOT NULL,
    phone_number integer NOT NULL,
    email text NOT NULL,
    "position" text NOT NULL
);


--
-- Name: ride_group; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ride_group (
    ride_group_number integer NOT NULL,
    student text NOT NULL,
    rider_1 public.full_name,
    rider_2 public.full_name,
    rider_3 public.full_name,
    rider_4 public.full_name,
    rider_5 public.full_name,
    rider_6 public.full_name,
    destination text NOT NULL,
    pick_up integer NOT NULL,
    drop_off integer NOT NULL
);


--
-- Name: ride_schedule; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ride_schedule (
    hour integer NOT NULL,
    ride_group_number integer NOT NULL
);


--
-- Name: students; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.students (
    lion_mail text NOT NULL,
    phone_number integer NOT NULL,
    name public.full_name NOT NULL
);


--
-- Name: van; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.van (
    license_plate text NOT NULL,
    mileage integer NOT NULL,
    gas_level double precision NOT NULL,
    in_use boolean NOT NULL,
    issues text
);


--
-- Data for Name: employees; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.employees (employeee_id, name, phone_number, email, "position") FROM stdin;
\.


--
-- Data for Name: ride_group; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.ride_group (ride_group_number, student, rider_1, rider_2, rider_3, rider_4, rider_5, rider_6, destination, pick_up, drop_off) FROM stdin;
\.


--
-- Data for Name: ride_schedule; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.ride_schedule (hour, ride_group_number) FROM stdin;
\.


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.students (lion_mail, phone_number, name) FROM stdin;
\.


--
-- Data for Name: van; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.van (license_plate, mileage, gas_level, in_use, issues) FROM stdin;
\.


--
-- Name: employees employees_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (employeee_id);


--
-- Name: ride_group ride_group_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ride_group
    ADD CONSTRAINT ride_group_pkey PRIMARY KEY (ride_group_number);


--
-- Name: ride_schedule ride_schedule_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ride_schedule
    ADD CONSTRAINT ride_schedule_pkey PRIMARY KEY (hour);


--
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (lion_mail);


--
-- Name: van van_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.van
    ADD CONSTRAINT van_pkey PRIMARY KEY (license_plate);


--
-- PostgreSQL database dump complete
--

