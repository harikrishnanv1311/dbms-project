--
-- PostgreSQL database dump
--

-- Dumped from database version 11.1
-- Dumped by pg_dump version 11.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: assign_to; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.assign_to (
    initials character varying(7) NOT NULL,
    sem integer NOT NULL,
    section character(1) NOT NULL,
    room_no character varying(6) NOT NULL,
    day character varying(15) NOT NULL,
    pno integer NOT NULL,
    start_time time without time zone NOT NULL,
    end_time time without time zone NOT NULL
);


ALTER TABLE public.assign_to OWNER TO postgres;

--
-- Name: course; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.course (
    c_code character varying(10) NOT NULL,
    c_name character varying(15) NOT NULL,
    credits integer NOT NULL
);


ALTER TABLE public.course OWNER TO postgres;

--
-- Name: lecturer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lecturer (
    initials character varying(7) NOT NULL,
    name character varying(30) NOT NULL,
    dept character varying(15) NOT NULL,
    c_code character varying(10) NOT NULL
);


ALTER TABLE public.lecturer OWNER TO postgres;

--
-- Name: offers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.offers (
    initials character varying(7) NOT NULL,
    c_code character varying(10) NOT NULL,
    sem integer NOT NULL,
    section character(1) NOT NULL,
    room_no character varying(6) NOT NULL
);


ALTER TABLE public.offers OWNER TO postgres;

--
-- Name: sem_class; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sem_class (
    sem integer NOT NULL,
    section character(1) NOT NULL,
    room_no character varying(6) NOT NULL,
    year integer NOT NULL
);


ALTER TABLE public.sem_class OWNER TO postgres;

--
-- Name: timetable; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.timetable (
    day character varying(15) NOT NULL,
    pno integer NOT NULL,
    start_time time without time zone NOT NULL,
    end_time time without time zone NOT NULL
);


ALTER TABLE public.timetable OWNER TO postgres;

--
-- Data for Name: assign_to; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.assign_to (initials, sem, section, room_no, day, pno, start_time, end_time) FROM stdin;
CGM	4	A	B-102	Monday	1	08:15:00	09:15:00
DS	4	A	B-102	Monday	2	09:15:00	10:15:00
HBM	4	A	B-102	Monday	3	10:45:00	11:45:00
Dr.MHR	4	A	B-102	Monday	4	11:45:00	12:45:00
COP	4	A	B-102	Monday	5	13:30:00	14:30:00
CGM	4	A	B-102	Tuesday	1	08:15:00	09:15:00
DS	4	A	B-102	Tuesday	2	09:15:00	10:15:00
COP	4	A	B-102	Tuesday	3	10:45:00	11:45:00
HBM	4	A	B-102	Tuesday	4	11:45:00	12:45:00
VRB	4	B	B-112	Monday	1	08:15:00	09:15:00
PK	4	B	B-112	Monday	2	09:15:00	10:15:00
NSK	4	B	B-112	Monday	3	10:45:00	11:45:00
NSK	4	B	B-112	Monday	4	11:45:00	12:45:00
Dr.NKS	4	B	B-112	Monday	5	13:30:00	14:30:00
RHB	4	B	B-112	Tuesday	1	08:15:00	09:15:00
RHB	4	B	B-112	Tuesday	2	09:15:00	10:15:00
VRB	4	B	B-112	Tuesday	3	10:45:00	11:45:00
Dr.NKS	4	B	B-112	Tuesday	4	11:45:00	12:45:00
NSK	4	B	B-112	Wednesday	1	08:15:00	09:15:00
NSK	4	B	B-112	Wednesday	2	09:15:00	10:15:00
PK	4	B	B-112	Wednesday	3	10:45:00	11:45:00
PK	4	B	B-112	Wednesday	4	11:45:00	12:45:00
Dr.NKS	4	B	B-112	Thursday	1	08:15:00	09:15:00
Dr.NKS	4	B	B-112	Thursday	2	09:15:00	10:15:00
RHB	4	B	B-112	Thursday	3	10:45:00	11:45:00
VRB	4	B	B-112	Thursday	4	11:45:00	12:45:00
Dr.NKS	4	B	B-112	Friday	1	08:15:00	09:15:00
VRB	4	B	B-112	Friday	2	09:15:00	10:15:00
PK	4	B	B-112	Friday	3	10:45:00	11:45:00
RHB	4	B	B-112	Friday	4	11:45:00	12:45:00
HBM	4	C	B-111	Monday	1	08:15:00	09:15:00
Dr.UD	4	C	B-111	Monday	2	09:15:00	10:15:00
RR	4	C	B-111	Monday	3	10:45:00	11:45:00
RBA	4	C	B-111	Monday	4	11:45:00	12:45:00
CB	4	C	B-111	Monday	5	13:30:00	14:30:00
CB	4	C	B-111	Monday	6	14:30:00	15:30:00
Dr.MHR	4	A	B-102	Wednesday	1	08:15:00	09:15:00
CGM	4	A	B-102	Wednesday	2	09:15:00	10:15:00
DS	4	A	B-102	Wednesday	3	10:45:00	11:45:00
COP	4	A	B-102	Wednesday	4	11:45:00	12:45:00
HBM	4	A	B-102	Thursday	1	08:15:00	09:15:00
HBM	4	A	B-102	Thursday	2	09:15:00	10:15:00
Dr.MHR	4	A	B-102	Thursday	3	10:45:00	11:45:00
DS	4	A	B-102	Thursday	4	11:45:00	12:45:00
CGM	4	A	B-102	Thursday	5	13:30:00	14:30:00
COP	4	A	B-102	Thursday	6	14:30:00	15:30:00
COP	4	A	B-102	Friday	3	10:45:00	11:45:00
COP	4	A	B-102	Friday	4	11:45:00	12:45:00
CB	4	C	B-111	Tuesday	3	10:45:00	11:45:00
RBA	4	C	B-111	Tuesday	4	11:45:00	12:45:00
RR	4	C	B-111	Tuesday	5	13:30:00	14:30:00
Dr.UD	4	C	B-111	Wednesday	1	08:15:00	09:15:00
Dr.UD	4	C	B-111	Wednesday	2	09:15:00	10:15:00
CB	4	C	B-111	Wednesday	3	10:45:00	11:45:00
HBM	4	C	B-111	Wednesday	4	11:45:00	12:45:00
RBA	4	C	B-111	Thursday	1	08:15:00	09:15:00
RR	4	C	B-111	Thursday	2	09:15:00	10:15:00
HBM	4	C	B-111	Thursday	3	10:45:00	11:45:00
Dr.UD	4	C	B-111	Thursday	4	11:45:00	12:45:00
RR	4	C	B-111	Friday	1	08:15:00	09:15:00
HBM	4	C	B-111	Friday	2	09:15:00	10:15:00
RBA	4	C	B-111	Friday	3	10:45:00	11:45:00
Dr.UD	4	C	B-111	Friday	4	11:45:00	12:45:00
DSJ	4	D	B-G12	Monday	1	08:15:00	09:15:00
PP	4	D	B-G12	Monday	2	09:15:00	10:15:00
KP	4	D	B-G12	Monday	5	13:30:00	14:30:00
RR	4	D	B-G12	Monday	6	14:30:00	15:30:00
PP	4	D	B-G12	Tuesday	1	08:15:00	09:15:00
KP	4	D	B-G12	Tuesday	2	09:15:00	10:15:00
RR	4	D	B-G12	Tuesday	3	10:45:00	11:45:00
DSJ	4	D	B-G12	Tuesday	4	11:45:00	12:45:00
Dr.UD	4	D	B-G12	Tuesday	5	13:30:00	14:30:00
Dr.UD	4	D	B-G12	Tuesday	6	14:30:00	15:30:00
PP	4	D	B-G12	Wednesday	1	08:15:00	09:15:00
DSJ	4	D	B-G12	Wednesday	2	09:15:00	10:15:00
KP	4	D	B-G12	Wednesday	3	10:45:00	11:45:00
Dr.UD	4	D	B-G12	Wednesday	4	11:45:00	12:45:00
RR	4	D	B-G12	Thursday	1	08:15:00	09:15:00
Dr.UD	4	D	B-G12	Thursday	2	09:15:00	10:15:00
PP	4	D	B-G12	Thursday	3	10:45:00	11:45:00
DSJ	4	D	B-G12	Thursday	4	11:45:00	12:45:00
Dr.UD	4	D	B-G12	Thursday	5	13:30:00	14:30:00
KP	4	D	B-G12	Friday	1	08:15:00	09:15:00
RR	4	D	B-G12	Friday	2	09:15:00	10:15:00
PB	4	E	B-G11	Monday	1	08:15:00	09:15:00
SVI	4	E	B-G11	Monday	2	09:15:00	10:15:00
ND	4	E	B-G11	Monday	3	10:45:00	11:45:00
ND	4	E	B-G11	Monday	4	11:45:00	12:45:00
Dr.JR	4	E	B-G11	Tuesday	1	08:15:00	09:15:00
Dr.SSS	4	E	B-G11	Tuesday	2	09:15:00	10:15:00
PB	4	E	B-G11	Tuesday	3	10:45:00	11:45:00
ND	4	E	B-G11	Tuesday	4	11:45:00	12:45:00
SVI	4	E	B-G11	Tuesday	5	13:30:00	14:30:00
Dr.JR	4	E	B-G11	Tuesday	6	14:30:00	15:30:00
SVI	4	E	B-G11	Wednesday	1	08:15:00	09:15:00
Dr.JR	4	E	B-G11	Wednesday	2	09:15:00	10:15:00
Dr.SSS	4	E	B-G11	Wednesday	3	10:45:00	11:45:00
PB	4	E	B-G11	Wednesday	4	11:45:00	12:45:00
PB	4	E	B-G11	Thursday	1	08:15:00	09:15:00
Dr.SSS	4	E	B-G11	Thursday	2	09:15:00	10:15:00
SVI	4	E	B-G11	Thursday	5	13:30:00	14:30:00
ND	4	E	B-G11	Friday	1	08:15:00	09:15:00
ND	4	E	B-G11	Friday	2	09:15:00	10:15:00
Dr.SSS	4	E	B-G11	Friday	3	10:45:00	11:45:00
Dr.JR	4	E	B-G11	Friday	4	11:45:00	12:45:00
Dr.NKS	4	F	B-G02	Monday	1	08:15:00	09:15:00
CGM	4	F	B-G02	Monday	2	09:15:00	10:15:00
DS	4	F	B-G02	Monday	3	10:45:00	11:45:00
DSJ	4	F	B-G02	Monday	4	11:45:00	12:45:00
DS	4	F	B-G02	Tuesday	1	08:15:00	09:15:00
DSJ	4	F	B-G02	Tuesday	2	09:15:00	10:15:00
Dr.NKS	4	F	B-G02	Tuesday	3	10:45:00	11:45:00
CGM	4	F	B-G02	Tuesday	4	11:45:00	12:45:00
RBA	4	F	B-G02	Tuesday	5	13:30:00	14:30:00
CGM	4	F	B-G02	Wednesday	1	08:15:00	09:15:00
Dr.NKS	4	F	B-G02	Wednesday	2	09:15:00	10:15:00
RBA	4	F	B-G02	Wednesday	3	10:45:00	11:45:00
DS	4	F	B-G02	Wednesday	4	11:45:00	12:45:00
DS	4	F	B-G02	Thursday	1	08:15:00	09:15:00
CGM	4	F	B-G02	Thursday	2	09:15:00	10:15:00
DSJ	4	F	B-G02	Thursday	3	10:45:00	11:45:00
RBA	4	F	B-G02	Thursday	4	11:45:00	12:45:00
RBA	4	F	B-G02	Friday	1	08:15:00	09:15:00
DSJ	4	F	B-G02	Friday	2	09:15:00	10:15:00
Dr.NKS	4	F	B-G02	Friday	3	10:45:00	11:45:00
Dr.NKS	4	F	B-G02	Friday	4	11:45:00	12:45:00
CBH	4	G	B-G07	Monday	1	08:15:00	09:15:00
Dr.MHR	4	G	B-G07	Monday	2	09:15:00	10:15:00
VRB	4	G	B-G07	Monday	3	10:45:00	11:45:00
SVI	4	G	B-G07	Monday	4	11:45:00	12:45:00
CBH	4	G	B-G07	Monday	5	13:30:00	14:30:00
Dr.MHR	4	G	B-G07	Tuesday	1	08:15:00	09:15:00
Dr.MHR	4	G	B-G07	Tuesday	2	09:15:00	10:15:00
SVI	4	G	B-G07	Tuesday	3	10:45:00	11:45:00
VRB	4	G	B-G07	Tuesday	4	11:45:00	12:45:00
CBH	4	G	B-G07	Wednesday	1	08:15:00	09:15:00
VRB	4	G	B-G07	Wednesday	2	09:15:00	10:15:00
VRB	4	G	B-G07	Thursday	1	08:15:00	09:15:00
SVI	4	G	B-G07	Thursday	2	09:15:00	10:15:00
SK	4	G	B-G07	Thursday	3	10:45:00	11:45:00
SK	4	G	B-G07	Thursday	4	11:45:00	12:45:00
Dr.MHR	4	G	B-G07	Thursday	5	13:30:00	14:30:00
CBH	4	G	B-G07	Thursday	6	14:30:00	15:30:00
SVI	4	G	B-G07	Friday	1	08:15:00	09:15:00
CBH	4	G	B-G07	Friday	2	09:15:00	10:15:00
SK	4	G	B-G07	Friday	3	10:45:00	11:45:00
SK	4	G	B-G07	Friday	4	11:45:00	12:45:00
RJ	4	H	B-G06	Monday	1	08:15:00	09:15:00
VJ	4	H	B-G06	Monday	2	09:15:00	10:15:00
Dr.JR	4	H	B-G06	Monday	3	10:45:00	11:45:00
Dr.NKS	4	H	B-G06	Monday	4	11:45:00	12:45:00
SK	4	H	B-G06	Tuesday	1	08:15:00	09:15:00
SK	4	H	B-G06	Tuesday	2	09:15:00	10:15:00
RJ	4	H	B-G06	Tuesday	3	10:45:00	11:45:00
VJ	4	H	B-G06	Tuesday	4	11:45:00	12:45:00
Dr.JR	4	H	B-G06	Tuesday	5	13:30:00	14:30:00
Dr.NKS	4	H	B-G06	Tuesday	6	14:30:00	15:30:00
Dr.JR	4	H	B-G06	Wednesday	1	08:15:00	09:15:00
RJ	4	H	B-G06	Wednesday	2	09:15:00	10:15:00
Dr.NKS	4	H	B-G06	Wednesday	3	10:45:00	11:45:00
Dr.NKS	4	H	B-G06	Wednesday	4	11:45:00	12:45:00
SK	4	H	B-G06	Thursday	1	08:15:00	09:15:00
SK	4	H	B-G06	Thursday	2	09:15:00	10:15:00
VJ	4	H	B-G06	Thursday	3	10:45:00	11:45:00
RJ	4	H	B-G06	Thursday	4	11:45:00	12:45:00
Dr.NKS	4	H	B-G06	Thursday	5	13:30:00	14:30:00
VJ	4	H	B-G06	Friday	3	10:45:00	11:45:00
Dr.JR	4	H	B-G06	Friday	4	11:45:00	12:45:00
\.


--
-- Data for Name: course; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.course (c_code, c_name, credits) FROM stdin;
UE17MA251	LA	4
UE17CS251	DAA	4
UE17CS252	DBMS	4
UE17CS253	MPCA	4
UE17CS254	TOC	4
UE17CS255	DAA Lab	2
UE17CS256	MPCA Lab	2
\.


--
-- Data for Name: lecturer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.lecturer (initials, name, dept, c_code) FROM stdin;
COP	Prakash C O	CSE	UE17MA251
DS	Dinesh Singh	CSE	UE17CS251
Dr.MHR	Mamatha H R	CSE	UE17CS252
CGM	Chitra G M	CSE	UE17CS253
HBM	H B Mahesh	CSE	UE17CS254
Dr.NKS	Nagegowda K S	CSE	UE17MA251
NSK	N S Kumar	CSE	UE17CS251
RHB	Ramesh H Bhat	CSE	UE17CS252
VRB	V R Badriprasad	CSE	UE17CS253
PK	Preet Kanwal	CSE	UE17CS254
Dr.UD	Uma D	CSE	UE17MA251
CB	Channabankapur	CSE	UE17CS251
RBA	Raghu B A	CSE	UE17CS252
RR	Roopa Ravish	CSE	UE17CS253
PP	Preeti P	CSE	UE17CS251
KP	Kiran P	CSE	UE17CS252
DSJ	Divya S J	CSE	UE17CS253
ND	Nypunya D	CSE	UE17MA251
Dr.SSS	Shylaja S S	CSE	UE17CS251
PB	Priya Badrinath	CSE	UE17CS252
Dr.JR	Jayashree R	CSE	UE17CS253
SVI	Sangeetha V I	CSE	UE17CS254
CBH	Chandravva B Hebbi	CSE	UE17MA251
SK	Shruthi Kaivalya	CSE	UE17CS251
VJ	Vinay Joshi	CSE	UE17CS252
RJ	Jyoti R	CSE	UE17CS254
\.


--
-- Data for Name: offers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.offers (initials, c_code, sem, section, room_no) FROM stdin;
COP	UE17MA251	4	A	B-102
DS	UE17CS251	4	A	B-102
Dr.MHR	UE17CS252	4	A	B-102
CGM	UE17CS253	4	A	B-102
HBM	UE17CS254	4	A	B-102
Dr.NKS	UE17MA251	4	B	B-112
NSK	UE17CS251	4	B	B-112
RHB	UE17CS252	4	B	B-112
VRB	UE17CS253	4	B	B-112
PK	UE17CS254	4	B	B-112
Dr.UD	UE17MA251	4	C	B-111
CB	UE17CS251	4	C	B-111
RBA	UE17CS252	4	C	B-111
RR	UE17CS253	4	C	B-111
HBM	UE17CS254	4	C	B-111
Dr.UD	UE17MA251	4	D	B-G12
PP	UE17CS251	4	D	B-G12
KP	UE17CS252	4	D	B-G12
RR	UE17CS253	4	D	B-G12
DSJ	UE17CS254	4	D	B-G12
ND	UE17MA251	4	E	B-G11
Dr.SSS	UE17CS251	4	E	B-G11
PB	UE17CS252	4	E	B-G11
Dr.JR	UE17CS253	4	E	B-G11
SVI	UE17CS254	4	E	B-G11
Dr.NKS	UE17MA251	4	F	B-G02
DS	UE17CS251	4	F	B-G02
RBA	UE17CS252	4	F	B-G02
CGM	UE17CS253	4	F	B-G02
DSJ	UE17CS254	4	F	B-G02
CBH	UE17MA251	4	G	B-G07
SK	UE17CS251	4	G	B-G07
Dr.MHR	UE17CS252	4	G	B-G07
VRB	UE17CS253	4	G	B-G07
SVI	UE17CS254	4	G	B-G07
Dr.NKS	UE17MA251	4	H	B-G06
SK	UE17CS251	4	H	B-G06
VJ	UE17CS252	4	H	B-G06
Dr.JR	UE17CS253	4	H	B-G06
RJ	UE17CS254	4	H	B-G06
\.


--
-- Data for Name: sem_class; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sem_class (sem, section, room_no, year) FROM stdin;
4	A	B-102	2019
4	B	B-112	2019
4	C	B-111	2019
4	D	B-G12	2019
4	E	B-G11	2019
4	F	B-G02	2019
4	G	B-G07	2019
4	H	B-G06	2019
\.


--
-- Data for Name: timetable; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.timetable (day, pno, start_time, end_time) FROM stdin;
Monday	1	08:15:00	09:15:00
Monday	2	09:15:00	10:15:00
Monday	3	10:45:00	11:45:00
Monday	4	11:45:00	12:45:00
Monday	5	13:30:00	14:30:00
Monday	6	14:30:00	15:30:00
Tuesday	1	08:15:00	09:15:00
Tuesday	2	09:15:00	10:15:00
Tuesday	3	10:45:00	11:45:00
Tuesday	4	11:45:00	12:45:00
Tuesday	5	13:30:00	14:30:00
Tuesday	6	14:30:00	15:30:00
Wednesday	1	08:15:00	09:15:00
Wednesday	2	09:15:00	10:15:00
Wednesday	3	10:45:00	11:45:00
Wednesday	4	11:45:00	12:45:00
Wednesday	5	13:30:00	14:30:00
Wednesday	6	14:30:00	15:30:00
Thursday	1	08:15:00	09:15:00
Thursday	2	09:15:00	10:15:00
Thursday	3	10:45:00	11:45:00
Thursday	4	11:45:00	12:45:00
Thursday	5	13:30:00	14:30:00
Thursday	6	14:30:00	15:30:00
Friday	1	08:15:00	09:15:00
Friday	2	09:15:00	10:15:00
Friday	3	10:45:00	11:45:00
Friday	4	11:45:00	12:45:00
Friday	5	13:30:00	14:30:00
Friday	6	14:30:00	15:30:00
\.


--
-- Name: assign_to assign_to_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.assign_to
    ADD CONSTRAINT assign_to_pkey PRIMARY KEY (initials, sem, section, room_no, day, pno, start_time, end_time);


--
-- Name: course course_c_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.course
    ADD CONSTRAINT course_c_name_key UNIQUE (c_name);


--
-- Name: course course_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.course
    ADD CONSTRAINT course_pkey PRIMARY KEY (c_code);


--
-- Name: lecturer lecturer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lecturer
    ADD CONSTRAINT lecturer_pkey PRIMARY KEY (initials);


--
-- Name: offers offers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.offers
    ADD CONSTRAINT offers_pkey PRIMARY KEY (initials, c_code, sem, section, room_no);


--
-- Name: sem_class sem_class_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sem_class
    ADD CONSTRAINT sem_class_pkey PRIMARY KEY (sem, section, room_no);


--
-- Name: timetable timetable_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.timetable
    ADD CONSTRAINT timetable_pkey PRIMARY KEY (day, pno, start_time, end_time);


--
-- Name: assign_to assign_to_day_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.assign_to
    ADD CONSTRAINT assign_to_day_fkey FOREIGN KEY (day, pno, start_time, end_time) REFERENCES public.timetable(day, pno, start_time, end_time);


--
-- Name: assign_to assign_to_initials_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.assign_to
    ADD CONSTRAINT assign_to_initials_fkey FOREIGN KEY (initials) REFERENCES public.lecturer(initials);


--
-- Name: assign_to assign_to_sem_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.assign_to
    ADD CONSTRAINT assign_to_sem_fkey FOREIGN KEY (sem, section, room_no) REFERENCES public.sem_class(sem, section, room_no);


--
-- Name: lecturer lecturer_c_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lecturer
    ADD CONSTRAINT lecturer_c_code_fkey FOREIGN KEY (c_code) REFERENCES public.course(c_code);


--
-- Name: offers offers_c_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.offers
    ADD CONSTRAINT offers_c_code_fkey FOREIGN KEY (c_code) REFERENCES public.course(c_code);


--
-- Name: offers offers_initials_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.offers
    ADD CONSTRAINT offers_initials_fkey FOREIGN KEY (initials) REFERENCES public.lecturer(initials);


--
-- Name: offers offers_sem_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.offers
    ADD CONSTRAINT offers_sem_fkey FOREIGN KEY (sem, section, room_no) REFERENCES public.sem_class(sem, section, room_no);


--
-- PostgreSQL database dump complete
--

