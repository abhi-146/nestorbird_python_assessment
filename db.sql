--
-- PostgreSQL database dump
--

-- Dumped from database version 15.6 (Homebrew)
-- Dumped by pg_dump version 15.6 (Homebrew)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: courses; Type: TABLE; Schema: public; Owner: zain
--

CREATE TABLE public.courses (
    id integer NOT NULL,
    course_href text,
    course_heading text,
    interested_geeks_count text,
    course_rating text,
    course_price text
);


ALTER TABLE public.courses OWNER TO zain;

--
-- Name: courses_id_seq; Type: SEQUENCE; Schema: public; Owner: zain
--

CREATE SEQUENCE public.courses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.courses_id_seq OWNER TO zain;

--
-- Name: courses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zain
--

ALTER SEQUENCE public.courses_id_seq OWNED BY public.courses.id;


--
-- Name: courses id; Type: DEFAULT; Schema: public; Owner: zain
--

ALTER TABLE ONLY public.courses ALTER COLUMN id SET DEFAULT nextval('public.courses_id_seq'::regclass);


--
-- Data for Name: courses; Type: TABLE DATA; Schema: public; Owner: zain
--

COPY public.courses (id, course_href, course_heading, interested_geeks_count, course_rating, course_price) FROM stdin;
1	DSA to Development: A Complete Guide	https://www.geeksforgeeks.org/courses/dsa-to-development-coding-guide	225k+ interested Geeks	5.0	₹ 19999
2	Full Stack Development with React & Node JS - Live	https://www.geeksforgeeks.org/courses/full-stack-node	228k+ interested Geeks	4.7	₹ 14999
3	GATE Data Science and Artificial Intelligence 2025	https://www.geeksforgeeks.org/courses/gate-ds-and-ai	33k+ interested Geeks	4.6	₹ 9999
4	Complete Machine Learning & Data Science Program	https://www.geeksforgeeks.org/courses/data-science-live	244k+ interested Geeks	4.8	₹ 5999
5	DSA to Development: A Complete Guide	https://www.geeksforgeeks.org/courses/dsa-to-development-coding-guide	225k+ interested Geeks	5.0	₹ 19999
6	Full Stack Development with React & Node JS - Live	https://www.geeksforgeeks.org/courses/full-stack-node	228k+ interested Geeks	4.7	₹ 14999
7	GATE Data Science and Artificial Intelligence 2025	https://www.geeksforgeeks.org/courses/gate-ds-and-ai	33k+ interested Geeks	4.6	₹ 9999
8	Complete Machine Learning & Data Science Program	https://www.geeksforgeeks.org/courses/data-science-live	244k+ interested Geeks	4.8	₹ 5999
9	Master Java Programming - Complete Beginner to Advanced	https://www.geeksforgeeks.org/courses/Java-Programming-basic-to-advanced	193k+ interested Geeks	4.7	₹ 1999
10	Master C++ Programming - Complete Beginner to Advanced	https://www.geeksforgeeks.org/courses/cpp-programming-basic-to-advanced	172k+ interested Geeks	4.7	₹ 1999
11	Master JavaScript - Complete Beginner to Advanced	https://www.geeksforgeeks.org/courses/javascript	51k+ interested Geeks	4.7	₹ 1999
12	Master C Programming with Data Structures	https://www.geeksforgeeks.org/courses/c-Programming-basic-to-advanced	124k+ interested Geeks	4.6	₹ 1999
13	Data Structures & Algorithms in Python - Self Paced	https://www.geeksforgeeks.org/courses/Data-Structures-With-Python	251k+ interested Geeks	4.7	₹ 3999
14	Data Structures and Algorithms - Self Paced	https://www.geeksforgeeks.org/courses/dsa-self-paced	1168k+ interested Geeks	4.7	₹ 3999
15	AWS Cloud Practitioner Certification Course	https://www.geeksforgeeks.org/courses/aws-cloud-practitioner-certification-course	10k+ interested Geeks	4.7	₹ 1999
16	Mastering Data Analytics - Python, SQL, Excel, Tableau	https://www.geeksforgeeks.org/courses/dpa-self-paced	19k+ interested Geeks	5.0	₹ 2499
17	Tech Interview 101 - From DSA to System Design for Working Professionals	https://www.geeksforgeeks.org/courses/interviewe-101-data-structures-algorithm-system-design	276k+ interested Geeks	4.9	₹ 17999
18	Complete Guide to Software Testing and Automation: Master Java, Selenium and Cucumber	https://www.geeksforgeeks.org/courses/complete-guide-to-software-testing-automation	22k+ interested Geeks	4.7	₹ 11999
19	JAVA Backend Development - Live	https://www.geeksforgeeks.org/courses/Java-backend-live	180k+ interested Geeks	4.8	₹ 14999
20	DevOps Engineering - Planning to Production	https://www.geeksforgeeks.org/courses/devops-live	63k+ interested Geeks	4.6	₹ 11999
21	DSA to Development: A Complete Guide	https://www.geeksforgeeks.org/courses/dsa-to-development-coding-guide	225k+ interested Geeks	5.0	₹ 19999
22	Full Stack Development with React & Node JS - Live	https://www.geeksforgeeks.org/courses/full-stack-node	228k+ interested Geeks	4.7	₹ 14999
23	GATE Data Science and Artificial Intelligence 2025	https://www.geeksforgeeks.org/courses/gate-ds-and-ai	33k+ interested Geeks	4.6	₹ 9999
24	Complete Machine Learning & Data Science Program	https://www.geeksforgeeks.org/courses/data-science-live	244k+ interested Geeks	4.8	₹ 5999
25	DSA to Development: A Complete Guide	https://www.geeksforgeeks.org/courses/dsa-to-development-coding-guide	225k+ interested Geeks	5.0	₹ 19999
26	Full Stack Development with React & Node JS - Live	https://www.geeksforgeeks.org/courses/full-stack-node	228k+ interested Geeks	4.7	₹ 14999
27	GATE Data Science and Artificial Intelligence 2025	https://www.geeksforgeeks.org/courses/gate-ds-and-ai	33k+ interested Geeks	4.6	₹ 9999
28	Complete Machine Learning & Data Science Program	https://www.geeksforgeeks.org/courses/data-science-live	244k+ interested Geeks	4.8	₹ 5999
29	Master Java Programming - Complete Beginner to Advanced	https://www.geeksforgeeks.org/courses/Java-Programming-basic-to-advanced	193k+ interested Geeks	4.7	₹ 1999
30	Master C++ Programming - Complete Beginner to Advanced	https://www.geeksforgeeks.org/courses/cpp-programming-basic-to-advanced	172k+ interested Geeks	4.7	₹ 1999
31	Master JavaScript - Complete Beginner to Advanced	https://www.geeksforgeeks.org/courses/javascript	51k+ interested Geeks	4.7	₹ 1999
32	Master C Programming with Data Structures	https://www.geeksforgeeks.org/courses/c-Programming-basic-to-advanced	124k+ interested Geeks	4.6	₹ 1999
33	Data Structures & Algorithms in Python - Self Paced	https://www.geeksforgeeks.org/courses/Data-Structures-With-Python	251k+ interested Geeks	4.7	₹ 3999
34	Data Structures and Algorithms - Self Paced	https://www.geeksforgeeks.org/courses/dsa-self-paced	1168k+ interested Geeks	4.7	₹ 3999
35	AWS Cloud Practitioner Certification Course	https://www.geeksforgeeks.org/courses/aws-cloud-practitioner-certification-course	10k+ interested Geeks	4.7	₹ 1999
36	Mastering Data Analytics - Python, SQL, Excel, Tableau	https://www.geeksforgeeks.org/courses/dpa-self-paced	19k+ interested Geeks	5.0	₹ 2499
37	Tech Interview 101 - From DSA to System Design for Working Professionals	https://www.geeksforgeeks.org/courses/interviewe-101-data-structures-algorithm-system-design	276k+ interested Geeks	4.9	₹ 17999
38	Complete Guide to Software Testing and Automation: Master Java, Selenium and Cucumber	https://www.geeksforgeeks.org/courses/complete-guide-to-software-testing-automation	22k+ interested Geeks	4.7	₹ 11999
39	JAVA Backend Development - Live	https://www.geeksforgeeks.org/courses/Java-backend-live	180k+ interested Geeks	4.8	₹ 14999
40	DevOps Engineering - Planning to Production	https://www.geeksforgeeks.org/courses/devops-live	63k+ interested Geeks	4.6	₹ 11999
\.


--
-- Name: courses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: zain
--

SELECT pg_catalog.setval('public.courses_id_seq', 40, true);


--
-- Name: courses courses_pkey; Type: CONSTRAINT; Schema: public; Owner: zain
--

ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

