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
    employee_id text NOT NULL,
    name public.full_name NOT NULL,
    phone_number text NOT NULL,
    email text NOT NULL,
    "position" text NOT NULL
);


--
-- Name: ride_group; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ride_group (
    ride_group_number integer NOT NULL,
    rider_1 public.full_name,
    rider_2 public.full_name,
    rider_3 public.full_name,
    rider_4 public.full_name,
    rider_5 public.full_name,
    rider_6 public.full_name,
    destination text NOT NULL,
    pick_up integer NOT NULL,
    drop_off integer NOT NULL,
    student public.full_name
);


--
-- Name: ride_schedule; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ride_schedule (
    ride_index text,
    hour integer,
    ride_group_number integer,
    van_in_use text,
    driver name
);


--
-- Name: students; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.students (
    lion_mail text NOT NULL,
    phone_number text NOT NULL,
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

COPY public.employees (employee_id, name, phone_number, email, "position") FROM stdin;
Bmsith70	(Benjamin,Smith)	206-548-6865	Bsmith70@lion.lmu.edu	Dispatcher
Ssoto	(Sabrina,Soto)	310-123-4567	Ssoto@lion.lmu.edu	Manager
JHarris69	(Jackson,Harris)	310-234-5678	JHarris69@lion.lmu.edu	Driver
Kbraekman	(Kea,Braekman)	310-400-4655	Kbraekman@lion.lmu.edu	Supervisor
Jmangani	(John,Manganiello)	310-640-1743	jmangani@lion.lmu.edu	Driver
Aweisblat	(Alyssa,Weisblatt)	310-480-5555	aweisblat@lion.lmu.edu	Dispatcher
Adonkers	(Adrianna,Donkers)	310-477-3682	adonkers@lion.lmu.edu	Dispatcher
Etran	(Teddy,Tran)	818-666-1234	etran@lion.lmu.edu	Supervisor
Madmasu	(Miriam,Admasu)	310-588-4820	madmasu@lion.lmu.edu	Driver
Tparrish	(Tyra,Parrish)	310-777-8008	tparrish@lion.lmu.edu	Driver
Erasmus	(Evan,Rasmus)	310-313-7413	erasmus@lion.lmu.edu	Driver
Esmillie	(Ellie,Smillie)	818-321-6195	esmillie@lion.lmu.edu	Dispatcher
Jcastlem	(Justin,Castleman)	626-616-4358	jcastle@lion.lmu.edu	Driver
\.


--
-- Data for Name: ride_group; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.ride_group (ride_group_number, rider_1, rider_2, rider_3, rider_4, rider_5, rider_6, destination, pick_up, drop_off, student) FROM stdin;
1	(Sage,Rogriguez)	\N	\N	\N	\N	\N	LAX	5	5	(Nicholas,Chew)
2	(Sierra,Powell)	\N	\N	\N	\N	\N	Trader Joes	5	6	(Benjamin,Smith)
3	(Hannah,Booth)	(Helen,Schiller)	(Armando,Lytle)	(Clark,Kent)	(Lara,Thomas)	(Andrew,Forney)	Westfield	4	7	(David,Richard)
4	\N	\N	\N	\N	\N	\N	Waterside	6	8	(Valerie,Silva)
\.


--
-- Data for Name: ride_schedule; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.ride_schedule (ride_index, hour, ride_group_number, van_in_use, driver) FROM stdin;
B	5	1	6YHB746	(Jackson,Harris)
C	5	2	6YHB746	(Jackson,Harris)
A	4	3	6YHB746	(Jackson,Harris)
D	6	2	6YHB746	(Miriam,Admasu)
E	6	4	6YHB746	(Miriam,Admasu)
G	8	4	6YHB746	(Tyra,Parrish)
F	7	3	6YHB746	(Miriam,Admasu)
\.


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.students (lion_mail, phone_number, name) FROM stdin;
Nchew3@lion.lmu.edu	510-209-7651	(Nicholas,Chew)
Bsmith70@lion.lmu.edu	206-548-6865	(Benjamin,Smith)
Drichard@lion.lmu.edu	761-906-3452	(David,Richard)
Hbooth@lion.lmu.edu	460-823-8843	(Hannah,Booth)
HSchiller@lion.lmu.edu	925-385-2944	(Helen,Schiller)
Alytle@lion.lmu.edu	293-193-9876	(Armando,Lytle)
Vsilva7@lion.lmu.edu	408-928-3704	(Valerie,Silva)
Romar2@lion.lmu.edu	392-498-6923	(Ryan,Omar)
Ckent32@lion.lmu.edu	382-328-2411	(Clark,Kent)
Lthomas9@lion.lmu.edu	421-849-2423	(Lara,Thomas)
Aforney@lion.lmu.edu	310-472-3800	(Andrew,Forney)
\.


--
-- Data for Name: van; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.van (license_plate, mileage, gas_level, in_use, issues) FROM stdin;
6PMT661	35433	0.5	f	None
6ETV480	73832	0.100000000000000006	f	No Aux
6YHB746	18237	0.949999999999999956	t	None
7BHB339	105222	0.599999999999999978	f	No Key
7GNF394	56728	0.25	f	Battery dead
\.


--
-- Name: employees employees_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (employee_id);


--
-- Name: ride_group ride_group_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ride_group
    ADD CONSTRAINT ride_group_pkey PRIMARY KEY (ride_group_number);


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
