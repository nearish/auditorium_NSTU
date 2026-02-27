--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2
-- Dumped by pg_dump version 17.2

-- Started on 2025-04-22 19:24:06

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

--
-- TOC entry 4 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: pg_database_owner
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO pg_database_owner;

--
-- TOC entry 4968 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: pg_database_owner
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 230 (class 1259 OID 16631)
-- Name: auditorium_lists; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auditorium_lists (
    id integer NOT NULL,
    number character varying(255),
    capacity integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "typeListId" integer
);


ALTER TABLE public.auditorium_lists OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 16630)
-- Name: auditorium_lists_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auditorium_lists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auditorium_lists_id_seq OWNER TO postgres;

--
-- TOC entry 4969 (class 0 OID 0)
-- Dependencies: 229
-- Name: auditorium_lists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auditorium_lists_id_seq OWNED BY public.auditorium_lists.id;


--
-- TOC entry 232 (class 1259 OID 16645)
-- Name: class_schedules; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.class_schedules (
    id integer NOT NULL,
    number integer,
    "firstDate" date,
    period integer,
    "lastDate" date,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "teacherListId" integer,
    "disciplineListId" integer,
    "groupListId" integer,
    "auditoriumListId" integer,
    semester character varying(255),
    year integer
);


ALTER TABLE public.class_schedules OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 16644)
-- Name: class_schedules_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.class_schedules_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.class_schedules_id_seq OWNER TO postgres;

--
-- TOC entry 4970 (class 0 OID 0)
-- Dependencies: 231
-- Name: class_schedules_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.class_schedules_id_seq OWNED BY public.class_schedules.id;


--
-- TOC entry 218 (class 1259 OID 16559)
-- Name: department_lists; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.department_lists (
    id integer NOT NULL,
    name character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.department_lists OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16558)
-- Name: department_lists_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.department_lists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.department_lists_id_seq OWNER TO postgres;

--
-- TOC entry 4971 (class 0 OID 0)
-- Dependencies: 217
-- Name: department_lists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.department_lists_id_seq OWNED BY public.department_lists.id;


--
-- TOC entry 224 (class 1259 OID 16602)
-- Name: discipline_lists; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.discipline_lists (
    id integer NOT NULL,
    name character varying(255),
    short_name character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.discipline_lists OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16601)
-- Name: discipline_lists_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.discipline_lists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.discipline_lists_id_seq OWNER TO postgres;

--
-- TOC entry 4972 (class 0 OID 0)
-- Dependencies: 223
-- Name: discipline_lists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.discipline_lists_id_seq OWNED BY public.discipline_lists.id;


--
-- TOC entry 226 (class 1259 OID 16613)
-- Name: group_lists; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.group_lists (
    id integer NOT NULL,
    name character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.group_lists OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16612)
-- Name: group_lists_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.group_lists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.group_lists_id_seq OWNER TO postgres;

--
-- TOC entry 4973 (class 0 OID 0)
-- Dependencies: 225
-- Name: group_lists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.group_lists_id_seq OWNED BY public.group_lists.id;


--
-- TOC entry 236 (class 1259 OID 16736)
-- Name: init_lists; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.init_lists (
    id integer NOT NULL,
    "startDate" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.init_lists OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 16735)
-- Name: init_lists_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.init_lists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.init_lists_id_seq OWNER TO postgres;

--
-- TOC entry 4974 (class 0 OID 0)
-- Dependencies: 235
-- Name: init_lists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.init_lists_id_seq OWNED BY public.init_lists.id;


--
-- TOC entry 216 (class 1259 OID 16548)
-- Name: position_lists; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.position_lists (
    id integer NOT NULL,
    name character varying(255),
    short_name character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.position_lists OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16547)
-- Name: position_lists_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.position_lists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.position_lists_id_seq OWNER TO postgres;

--
-- TOC entry 4975 (class 0 OID 0)
-- Dependencies: 215
-- Name: position_lists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.position_lists_id_seq OWNED BY public.position_lists.id;


--
-- TOC entry 234 (class 1259 OID 16672)
-- Name: request_lists; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.request_lists (
    id integer NOT NULL,
    number integer,
    "submissionDate" date,
    "firstDate" date,
    period integer,
    "lastDate" date,
    status character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "teacherListId" integer,
    "disciplineListId" integer,
    "groupListId" integer,
    "auditoriumListId" integer
);


ALTER TABLE public.request_lists OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 16671)
-- Name: request_lists_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.request_lists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.request_lists_id_seq OWNER TO postgres;

--
-- TOC entry 4976 (class 0 OID 0)
-- Dependencies: 233
-- Name: request_lists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.request_lists_id_seq OWNED BY public.request_lists.id;


--
-- TOC entry 220 (class 1259 OID 16568)
-- Name: teacher_lists; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.teacher_lists (
    id integer NOT NULL,
    "surname_N_P" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "positionListId" integer,
    "departmentListId" integer
);


ALTER TABLE public.teacher_lists OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16567)
-- Name: teacher_lists_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.teacher_lists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.teacher_lists_id_seq OWNER TO postgres;

--
-- TOC entry 4977 (class 0 OID 0)
-- Dependencies: 219
-- Name: teacher_lists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.teacher_lists_id_seq OWNED BY public.teacher_lists.id;


--
-- TOC entry 228 (class 1259 OID 16622)
-- Name: type_lists; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.type_lists (
    id integer NOT NULL,
    name character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.type_lists OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 16621)
-- Name: type_lists_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.type_lists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.type_lists_id_seq OWNER TO postgres;

--
-- TOC entry 4978 (class 0 OID 0)
-- Dependencies: 227
-- Name: type_lists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.type_lists_id_seq OWNED BY public.type_lists.id;


--
-- TOC entry 222 (class 1259 OID 16585)
-- Name: user_accs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_accs (
    id integer NOT NULL,
    login character varying(255),
    password character varying(255),
    role character varying(255) DEFAULT 'USER'::character varying,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "teacherListId" integer
);


ALTER TABLE public.user_accs OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16584)
-- Name: user_accs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_accs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.user_accs_id_seq OWNER TO postgres;

--
-- TOC entry 4979 (class 0 OID 0)
-- Dependencies: 221
-- Name: user_accs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_accs_id_seq OWNED BY public.user_accs.id;


--
-- TOC entry 4746 (class 2604 OID 16634)
-- Name: auditorium_lists id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auditorium_lists ALTER COLUMN id SET DEFAULT nextval('public.auditorium_lists_id_seq'::regclass);


--
-- TOC entry 4747 (class 2604 OID 16648)
-- Name: class_schedules id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.class_schedules ALTER COLUMN id SET DEFAULT nextval('public.class_schedules_id_seq'::regclass);


--
-- TOC entry 4739 (class 2604 OID 16562)
-- Name: department_lists id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.department_lists ALTER COLUMN id SET DEFAULT nextval('public.department_lists_id_seq'::regclass);


--
-- TOC entry 4743 (class 2604 OID 16605)
-- Name: discipline_lists id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.discipline_lists ALTER COLUMN id SET DEFAULT nextval('public.discipline_lists_id_seq'::regclass);


--
-- TOC entry 4744 (class 2604 OID 16616)
-- Name: group_lists id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.group_lists ALTER COLUMN id SET DEFAULT nextval('public.group_lists_id_seq'::regclass);


--
-- TOC entry 4749 (class 2604 OID 16739)
-- Name: init_lists id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.init_lists ALTER COLUMN id SET DEFAULT nextval('public.init_lists_id_seq'::regclass);


--
-- TOC entry 4738 (class 2604 OID 16551)
-- Name: position_lists id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.position_lists ALTER COLUMN id SET DEFAULT nextval('public.position_lists_id_seq'::regclass);


--
-- TOC entry 4748 (class 2604 OID 16675)
-- Name: request_lists id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.request_lists ALTER COLUMN id SET DEFAULT nextval('public.request_lists_id_seq'::regclass);


--
-- TOC entry 4740 (class 2604 OID 16571)
-- Name: teacher_lists id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teacher_lists ALTER COLUMN id SET DEFAULT nextval('public.teacher_lists_id_seq'::regclass);


--
-- TOC entry 4745 (class 2604 OID 16625)
-- Name: type_lists id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.type_lists ALTER COLUMN id SET DEFAULT nextval('public.type_lists_id_seq'::regclass);


--
-- TOC entry 4741 (class 2604 OID 16588)
-- Name: user_accs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_accs ALTER COLUMN id SET DEFAULT nextval('public.user_accs_id_seq'::regclass);


--
-- TOC entry 4956 (class 0 OID 16631)
-- Dependencies: 230
-- Data for Name: auditorium_lists; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auditorium_lists (id, number, capacity, "createdAt", "updatedAt", "typeListId") FROM stdin;
1	1-204	-1	2024-05-06 11:57:08.534+07	2024-05-06 11:57:08.534+07	2
2	1-203а	-1	2024-05-06 11:57:08.534+07	2024-12-08 15:39:15.291+07	2
3	1-2101	40	2024-12-08 14:36:37.962+07	2025-04-12 11:05:45.25+07	3
\.


--
-- TOC entry 4958 (class 0 OID 16645)
-- Dependencies: 232
-- Data for Name: class_schedules; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.class_schedules (id, number, "firstDate", period, "lastDate", "createdAt", "updatedAt", "teacherListId", "disciplineListId", "groupListId", "auditoriumListId", semester, year) FROM stdin;
3	4	2024-02-05	1	2024-06-03	2024-05-06 11:57:08.534+07	2024-05-06 11:57:08.534+07	118	9	4	2	\N	\N
2	3	2024-02-05	1	2024-06-03	2024-05-06 11:57:08.534+07	2024-05-06 11:57:08.534+07	118	9	5	2	\N	\N
4	1	2024-11-26	1	2024-11-25	2024-12-14 17:29:37.718+07	2024-12-14 17:29:37.718+07	118	26	4	2	\N	\N
\.


--
-- TOC entry 4944 (class 0 OID 16559)
-- Dependencies: 218
-- Data for Name: department_lists; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.department_lists (id, name, "createdAt", "updatedAt") FROM stdin;
5	ВМ	2024-05-06 11:57:08.534+07	2024-05-06 11:57:08.534+07
2	ТПИ	2024-05-06 11:57:08.534+07	2025-03-27 15:25:23.537+07
7	ПМ	2025-03-27 15:22:49.849+07	2025-03-27 15:25:28.266+07
\.


--
-- TOC entry 4950 (class 0 OID 16602)
-- Dependencies: 224
-- Data for Name: discipline_lists; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.discipline_lists (id, name, short_name, "createdAt", "updatedAt") FROM stdin;
26	Уравнения математической физики	УМФ	2024-05-06 11:57:08.534+07	2024-05-06 11:57:08.534+07
9	Структуры данных и алгоритмы	СДиА	2024-05-06 11:57:08.534+07	2024-12-08 13:01:10.321+07
\.


--
-- TOC entry 4952 (class 0 OID 16613)
-- Dependencies: 226
-- Data for Name: group_lists; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.group_lists (id, name, "createdAt", "updatedAt") FROM stdin;
4	ПМ-31	2024-05-06 11:57:08.534+07	2024-05-06 11:57:08.534+07
5	ПМ-32	2024-05-06 11:57:08.534+07	2024-05-06 11:57:08.534+07
18	ПМ-12	2024-05-06 11:57:08.534+07	2024-05-06 11:57:08.534+07
19	ПМ-15	2024-12-08 13:19:25.952+07	2024-12-08 13:19:25.952+07
\.


--
-- TOC entry 4962 (class 0 OID 16736)
-- Dependencies: 236
-- Data for Name: init_lists; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.init_lists (id, "startDate", "createdAt", "updatedAt") FROM stdin;
1	2025-02-10T00:00:00.000Z	2025-03-10 01:33:14.109+07	2025-03-10 01:33:14.109+07
\.


--
-- TOC entry 4942 (class 0 OID 16548)
-- Dependencies: 216
-- Data for Name: position_lists; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.position_lists (id, name, short_name, "createdAt", "updatedAt") FROM stdin;
5	Старший преподаватель	Ст.препод.	2024-05-06 11:57:08.534+07	2024-05-06 11:57:08.534+07
6	Доцент	Доц.	2024-12-14 15:14:18.447+07	2024-12-14 15:14:18.447+07
\.


--
-- TOC entry 4960 (class 0 OID 16672)
-- Dependencies: 234
-- Data for Name: request_lists; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.request_lists (id, number, "submissionDate", "firstDate", period, "lastDate", status, "createdAt", "updatedAt", "teacherListId", "disciplineListId", "groupListId", "auditoriumListId") FROM stdin;
1	2	2024-12-14	2024-12-04	4	2024-11-25	Рассматривается	2024-12-14 15:03:36.967+07	2024-12-14 15:03:36.967+07	118	9	4	2
\.


--
-- TOC entry 4946 (class 0 OID 16568)
-- Dependencies: 220
-- Data for Name: teacher_lists; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.teacher_lists (id, "surname_N_P", "createdAt", "updatedAt", "positionListId", "departmentListId") FROM stdin;
118	Хиценко В.П.	2024-05-06 11:57:08.534+07	2024-05-06 11:57:08.534+07	5	5
1	Кобылянский В.Г.	2024-05-06 11:57:08.534+07	2024-05-06 11:57:08.534+07	6	2
2	Пробный преподаватель	2024-05-06 11:57:08.534+07	2024-05-06 11:57:08.534+07	6	5
\.


--
-- TOC entry 4954 (class 0 OID 16622)
-- Dependencies: 228
-- Data for Name: type_lists; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.type_lists (id, name, "createdAt", "updatedAt") FROM stdin;
3	Лекционная	2024-12-07 20:41:39.554+07	2024-12-07 20:41:39.554+07
2	Компьютерный класс	2024-05-06 11:57:08.534+07	2024-12-14 13:18:17.512+07
\.


--
-- TOC entry 4948 (class 0 OID 16585)
-- Dependencies: 222
-- Data for Name: user_accs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_accs (id, login, password, role, "createdAt", "updatedAt", "teacherListId") FROM stdin;
9	qwerty	$2b$05$mPTYfypOoUAJBoyDxqBPWuAuHSblGh0FhCMygeKV5q9nhJK0EUBvC	USER	2025-04-12 11:05:04.952+07	2025-04-12 11:05:04.952+07	1
1	admin	$2b$05$jpJvM2hxv7o0jFbH1M.v0eipLLKM0Et4njDeJHrfHV5Aa8s9mjACe	ADMIN	2024-12-16 14:24:42.706+07	2025-03-19 13:42:59.538+07	1
8	vika	$2b$05$9NJwrUwrvWz8Ws6ZdNCBWeovvk2EWNcCThoCosvVFRYDeC0NZhGES	USER	2025-03-24 22:55:38.963+07	2025-03-24 23:05:54.849+07	2
\.


--
-- TOC entry 4980 (class 0 OID 0)
-- Dependencies: 229
-- Name: auditorium_lists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auditorium_lists_id_seq', 4, false);


--
-- TOC entry 4981 (class 0 OID 0)
-- Dependencies: 231
-- Name: class_schedules_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.class_schedules_id_seq', 4, true);


--
-- TOC entry 4982 (class 0 OID 0)
-- Dependencies: 217
-- Name: department_lists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.department_lists_id_seq', 8, true);


--
-- TOC entry 4983 (class 0 OID 0)
-- Dependencies: 223
-- Name: discipline_lists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.discipline_lists_id_seq', 27, true);


--
-- TOC entry 4984 (class 0 OID 0)
-- Dependencies: 225
-- Name: group_lists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.group_lists_id_seq', 20, true);


--
-- TOC entry 4985 (class 0 OID 0)
-- Dependencies: 235
-- Name: init_lists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.init_lists_id_seq', 1, false);


--
-- TOC entry 4986 (class 0 OID 0)
-- Dependencies: 215
-- Name: position_lists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.position_lists_id_seq', 7, true);


--
-- TOC entry 4987 (class 0 OID 0)
-- Dependencies: 233
-- Name: request_lists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.request_lists_id_seq', 1, true);


--
-- TOC entry 4988 (class 0 OID 0)
-- Dependencies: 219
-- Name: teacher_lists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.teacher_lists_id_seq', 1, false);


--
-- TOC entry 4989 (class 0 OID 0)
-- Dependencies: 227
-- Name: type_lists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.type_lists_id_seq', 4, true);


--
-- TOC entry 4990 (class 0 OID 0)
-- Dependencies: 221
-- Name: user_accs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_accs_id_seq', 9, true);


--
-- TOC entry 4777 (class 2606 OID 16638)
-- Name: auditorium_lists auditorium_lists_number_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auditorium_lists
    ADD CONSTRAINT auditorium_lists_number_key UNIQUE (number);


--
-- TOC entry 4779 (class 2606 OID 16636)
-- Name: auditorium_lists auditorium_lists_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auditorium_lists
    ADD CONSTRAINT auditorium_lists_pkey PRIMARY KEY (id);


--
-- TOC entry 4781 (class 2606 OID 16650)
-- Name: class_schedules class_schedules_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.class_schedules
    ADD CONSTRAINT class_schedules_pkey PRIMARY KEY (id);


--
-- TOC entry 4755 (class 2606 OID 16566)
-- Name: department_lists department_lists_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.department_lists
    ADD CONSTRAINT department_lists_name_key UNIQUE (name);


--
-- TOC entry 4757 (class 2606 OID 16564)
-- Name: department_lists department_lists_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.department_lists
    ADD CONSTRAINT department_lists_pkey PRIMARY KEY (id);


--
-- TOC entry 4765 (class 2606 OID 16611)
-- Name: discipline_lists discipline_lists_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.discipline_lists
    ADD CONSTRAINT discipline_lists_name_key UNIQUE (name);


--
-- TOC entry 4767 (class 2606 OID 16609)
-- Name: discipline_lists discipline_lists_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.discipline_lists
    ADD CONSTRAINT discipline_lists_pkey PRIMARY KEY (id);


--
-- TOC entry 4769 (class 2606 OID 16620)
-- Name: group_lists group_lists_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.group_lists
    ADD CONSTRAINT group_lists_name_key UNIQUE (name);


--
-- TOC entry 4771 (class 2606 OID 16618)
-- Name: group_lists group_lists_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.group_lists
    ADD CONSTRAINT group_lists_pkey PRIMARY KEY (id);


--
-- TOC entry 4785 (class 2606 OID 16741)
-- Name: init_lists init_lists_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.init_lists
    ADD CONSTRAINT init_lists_pkey PRIMARY KEY (id);


--
-- TOC entry 4751 (class 2606 OID 16557)
-- Name: position_lists position_lists_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.position_lists
    ADD CONSTRAINT position_lists_name_key UNIQUE (name);


--
-- TOC entry 4753 (class 2606 OID 16555)
-- Name: position_lists position_lists_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.position_lists
    ADD CONSTRAINT position_lists_pkey PRIMARY KEY (id);


--
-- TOC entry 4783 (class 2606 OID 16677)
-- Name: request_lists request_lists_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.request_lists
    ADD CONSTRAINT request_lists_pkey PRIMARY KEY (id);


--
-- TOC entry 4759 (class 2606 OID 16573)
-- Name: teacher_lists teacher_lists_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teacher_lists
    ADD CONSTRAINT teacher_lists_pkey PRIMARY KEY (id);


--
-- TOC entry 4773 (class 2606 OID 16629)
-- Name: type_lists type_lists_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.type_lists
    ADD CONSTRAINT type_lists_name_key UNIQUE (name);


--
-- TOC entry 4775 (class 2606 OID 16627)
-- Name: type_lists type_lists_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.type_lists
    ADD CONSTRAINT type_lists_pkey PRIMARY KEY (id);


--
-- TOC entry 4761 (class 2606 OID 16595)
-- Name: user_accs user_accs_login_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_accs
    ADD CONSTRAINT user_accs_login_key UNIQUE (login);


--
-- TOC entry 4763 (class 2606 OID 16593)
-- Name: user_accs user_accs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_accs
    ADD CONSTRAINT user_accs_pkey PRIMARY KEY (id);


--
-- TOC entry 4789 (class 2606 OID 16639)
-- Name: auditorium_lists auditorium_lists_typeListId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auditorium_lists
    ADD CONSTRAINT "auditorium_lists_typeListId_fkey" FOREIGN KEY ("typeListId") REFERENCES public.type_lists(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4790 (class 2606 OID 16666)
-- Name: class_schedules class_schedules_auditoriumListId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.class_schedules
    ADD CONSTRAINT "class_schedules_auditoriumListId_fkey" FOREIGN KEY ("auditoriumListId") REFERENCES public.auditorium_lists(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4791 (class 2606 OID 16656)
-- Name: class_schedules class_schedules_disciplineListId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.class_schedules
    ADD CONSTRAINT "class_schedules_disciplineListId_fkey" FOREIGN KEY ("disciplineListId") REFERENCES public.discipline_lists(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4792 (class 2606 OID 16661)
-- Name: class_schedules class_schedules_groupListId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.class_schedules
    ADD CONSTRAINT "class_schedules_groupListId_fkey" FOREIGN KEY ("groupListId") REFERENCES public.group_lists(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4793 (class 2606 OID 16651)
-- Name: class_schedules class_schedules_teacherListId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.class_schedules
    ADD CONSTRAINT "class_schedules_teacherListId_fkey" FOREIGN KEY ("teacherListId") REFERENCES public.teacher_lists(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4794 (class 2606 OID 16693)
-- Name: request_lists request_lists_auditoriumListId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.request_lists
    ADD CONSTRAINT "request_lists_auditoriumListId_fkey" FOREIGN KEY ("auditoriumListId") REFERENCES public.auditorium_lists(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4795 (class 2606 OID 16683)
-- Name: request_lists request_lists_disciplineListId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.request_lists
    ADD CONSTRAINT "request_lists_disciplineListId_fkey" FOREIGN KEY ("disciplineListId") REFERENCES public.discipline_lists(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4796 (class 2606 OID 16688)
-- Name: request_lists request_lists_groupListId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.request_lists
    ADD CONSTRAINT "request_lists_groupListId_fkey" FOREIGN KEY ("groupListId") REFERENCES public.group_lists(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4797 (class 2606 OID 16678)
-- Name: request_lists request_lists_teacherListId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.request_lists
    ADD CONSTRAINT "request_lists_teacherListId_fkey" FOREIGN KEY ("teacherListId") REFERENCES public.teacher_lists(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4786 (class 2606 OID 16579)
-- Name: teacher_lists teacher_lists_departmentListId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teacher_lists
    ADD CONSTRAINT "teacher_lists_departmentListId_fkey" FOREIGN KEY ("departmentListId") REFERENCES public.department_lists(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4787 (class 2606 OID 16574)
-- Name: teacher_lists teacher_lists_positionListId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teacher_lists
    ADD CONSTRAINT "teacher_lists_positionListId_fkey" FOREIGN KEY ("positionListId") REFERENCES public.position_lists(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4788 (class 2606 OID 16596)
-- Name: user_accs user_accs_teacherListId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_accs
    ADD CONSTRAINT "user_accs_teacherListId_fkey" FOREIGN KEY ("teacherListId") REFERENCES public.teacher_lists(id) ON UPDATE CASCADE ON DELETE CASCADE;


-- Completed on 2025-04-22 19:24:07

--
-- PostgreSQL database dump complete
--

