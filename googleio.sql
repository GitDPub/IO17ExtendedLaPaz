--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.6
-- Dumped by pg_dump version 9.5.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE auth_group OWNER TO root;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_id_seq OWNER TO root;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_group_permissions OWNER TO root;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_permissions_id_seq OWNER TO root;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE auth_permission OWNER TO root;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_permission_id_seq OWNER TO root;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    is_superuser boolean NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(75) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE auth_user OWNER TO root;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE auth_user_groups OWNER TO root;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_groups_id_seq OWNER TO root;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_id_seq OWNER TO root;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_user_user_permissions OWNER TO root;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_user_permissions_id_seq OWNER TO root;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE django_admin_log OWNER TO root;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_admin_log_id_seq OWNER TO root;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE django_content_type OWNER TO root;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_content_type_id_seq OWNER TO root;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE django_migrations OWNER TO root;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_migrations_id_seq OWNER TO root;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE django_session OWNER TO root;

--
-- Name: django_site; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE django_site OWNER TO root;

--
-- Name: django_site_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE django_site_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_site_id_seq OWNER TO root;

--
-- Name: django_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE django_site_id_seq OWNED BY django_site.id;


--
-- Name: registro; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE registro (
    id integer NOT NULL,
    nombre character varying(200) NOT NULL,
    apellido character varying(200) NOT NULL,
    celular character varying(15) NOT NULL,
    correo character varying(75) NOT NULL,
    universidad character varying(200) NOT NULL,
    profesional boolean NOT NULL,
    interes character varying(200) NOT NULL,
    horafecha timestamp with time zone NOT NULL
);


ALTER TABLE registro OWNER TO root;

--
-- Name: registro_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE registro_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE registro_id_seq OWNER TO root;

--
-- Name: registro_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE registro_id_seq OWNED BY registro.id;


--
-- Name: zinnia_category; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE zinnia_category (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    slug character varying(255) NOT NULL,
    description text NOT NULL,
    lft integer NOT NULL,
    rght integer NOT NULL,
    tree_id integer NOT NULL,
    level integer NOT NULL,
    parent_id integer,
    CONSTRAINT zinnia_category_level_check CHECK ((level >= 0)),
    CONSTRAINT zinnia_category_lft_check CHECK ((lft >= 0)),
    CONSTRAINT zinnia_category_rght_check CHECK ((rght >= 0)),
    CONSTRAINT zinnia_category_tree_id_check CHECK ((tree_id >= 0))
);


ALTER TABLE zinnia_category OWNER TO root;

--
-- Name: zinnia_category_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE zinnia_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE zinnia_category_id_seq OWNER TO root;

--
-- Name: zinnia_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE zinnia_category_id_seq OWNED BY zinnia_category.id;


--
-- Name: zinnia_entry; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE zinnia_entry (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    slug character varying(255) NOT NULL,
    status integer NOT NULL,
    start_publication timestamp with time zone,
    end_publication timestamp with time zone,
    creation_date timestamp with time zone NOT NULL,
    last_update timestamp with time zone NOT NULL,
    content text NOT NULL,
    comment_enabled boolean NOT NULL,
    pingback_enabled boolean NOT NULL,
    trackback_enabled boolean NOT NULL,
    comment_count integer NOT NULL,
    pingback_count integer NOT NULL,
    trackback_count integer NOT NULL,
    excerpt text NOT NULL,
    image character varying(100) NOT NULL,
    featured boolean NOT NULL,
    tags character varying(255) NOT NULL,
    login_required boolean NOT NULL,
    password character varying(50) NOT NULL,
    content_template character varying(250) NOT NULL,
    detail_template character varying(250) NOT NULL
);


ALTER TABLE zinnia_entry OWNER TO root;

--
-- Name: zinnia_entry_authors; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE zinnia_entry_authors (
    id integer NOT NULL,
    entry_id integer NOT NULL,
    author_id integer NOT NULL
);


ALTER TABLE zinnia_entry_authors OWNER TO root;

--
-- Name: zinnia_entry_authors_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE zinnia_entry_authors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE zinnia_entry_authors_id_seq OWNER TO root;

--
-- Name: zinnia_entry_authors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE zinnia_entry_authors_id_seq OWNED BY zinnia_entry_authors.id;


--
-- Name: zinnia_entry_categories; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE zinnia_entry_categories (
    id integer NOT NULL,
    entry_id integer NOT NULL,
    category_id integer NOT NULL
);


ALTER TABLE zinnia_entry_categories OWNER TO root;

--
-- Name: zinnia_entry_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE zinnia_entry_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE zinnia_entry_categories_id_seq OWNER TO root;

--
-- Name: zinnia_entry_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE zinnia_entry_categories_id_seq OWNED BY zinnia_entry_categories.id;


--
-- Name: zinnia_entry_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE zinnia_entry_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE zinnia_entry_id_seq OWNER TO root;

--
-- Name: zinnia_entry_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE zinnia_entry_id_seq OWNED BY zinnia_entry.id;


--
-- Name: zinnia_entry_related; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE zinnia_entry_related (
    id integer NOT NULL,
    from_entry_id integer NOT NULL,
    to_entry_id integer NOT NULL
);


ALTER TABLE zinnia_entry_related OWNER TO root;

--
-- Name: zinnia_entry_related_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE zinnia_entry_related_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE zinnia_entry_related_id_seq OWNER TO root;

--
-- Name: zinnia_entry_related_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE zinnia_entry_related_id_seq OWNED BY zinnia_entry_related.id;


--
-- Name: zinnia_entry_sites; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE zinnia_entry_sites (
    id integer NOT NULL,
    entry_id integer NOT NULL,
    site_id integer NOT NULL
);


ALTER TABLE zinnia_entry_sites OWNER TO root;

--
-- Name: zinnia_entry_sites_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE zinnia_entry_sites_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE zinnia_entry_sites_id_seq OWNER TO root;

--
-- Name: zinnia_entry_sites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE zinnia_entry_sites_id_seq OWNED BY zinnia_entry_sites.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY django_site ALTER COLUMN id SET DEFAULT nextval('django_site_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY registro ALTER COLUMN id SET DEFAULT nextval('registro_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY zinnia_category ALTER COLUMN id SET DEFAULT nextval('zinnia_category_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY zinnia_entry ALTER COLUMN id SET DEFAULT nextval('zinnia_entry_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY zinnia_entry_authors ALTER COLUMN id SET DEFAULT nextval('zinnia_entry_authors_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY zinnia_entry_categories ALTER COLUMN id SET DEFAULT nextval('zinnia_entry_categories_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY zinnia_entry_related ALTER COLUMN id SET DEFAULT nextval('zinnia_entry_related_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY zinnia_entry_sites ALTER COLUMN id SET DEFAULT nextval('zinnia_entry_sites_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: root
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: root
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: root
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add entry	1	add_entry
2	Can change entry	1	change_entry
3	Can delete entry	1	delete_entry
4	Can view all entries	1	can_view_all
5	Can change status	1	can_change_status
6	Can change author(s)	1	can_change_author
7	Can add category	2	add_category
8	Can change category	2	change_category
9	Can delete category	2	delete_category
10	Can add author	3	add_author
11	Can change author	3	change_author
12	Can delete author	3	delete_author
13	Can add log entry	5	add_logentry
14	Can change log entry	5	change_logentry
15	Can delete log entry	5	delete_logentry
16	Can add site	6	add_site
17	Can change site	6	change_site
18	Can delete site	6	delete_site
19	Can add permission	7	add_permission
20	Can change permission	7	change_permission
21	Can delete permission	7	delete_permission
22	Can add group	8	add_group
23	Can change group	8	change_group
24	Can delete group	8	delete_group
25	Can add user	3	add_user
26	Can change user	3	change_user
27	Can delete user	3	delete_user
28	Can add content type	9	add_contenttype
29	Can change content type	9	change_contenttype
30	Can delete content type	9	delete_contenttype
31	Can add session	10	add_session
32	Can change session	10	change_session
33	Can delete session	10	delete_session
34	Can add Registro	11	add_registro
35	Can change Registro	11	change_registro
36	Can delete Registro	11	delete_registro
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('auth_permission_id_seq', 36, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: root
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$15000$fdz3Ai3jxe51$s6TMWEP8CGda0mnFdHPL4vgB0yV0HH+cTLpdymZZwds=	2017-06-16 17:51:24.388247+00	t	gdg			team@gdglapaz.com	t	t	2017-06-01 03:41:57.723285+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: root
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('auth_user_id_seq', 1, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: root
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: root
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 1, false);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: root
--

COPY django_content_type (id, name, app_label, model) FROM stdin;
1	entry	zinnia	entry
2	category	zinnia	category
3	user	auth	user
4	author	zinnia	author
5	log entry	admin	logentry
6	site	sites	site
7	permission	auth	permission
8	group	auth	group
9	content type	contenttypes	contenttype
10	session	sessions	session
11	Registro	website	registro
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('django_content_type_id_seq', 11, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: root
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2017-05-07 23:12:33.558561+00
2	auth	0001_initial	2017-05-07 23:12:33.670859+00
3	admin	0001_initial	2017-05-07 23:12:33.720722+00
4	sessions	0001_initial	2017-05-07 23:12:33.735823+00
5	sites	0001_initial	2017-05-07 23:12:33.746752+00
6	zinnia	0001_initial	2017-05-07 23:12:34.007303+00
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('django_migrations_id_seq', 6, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: root
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
srbqqvbsn3cbufm3birjrelimau0j9w0	MDQ5ZmNlMjM3MWMwYWViMzhlN2E4MGIwZTJjNjUzZDhlZDNhZjM2ZDp7Il9hdXRoX3VzZXJfaWQiOjEsIl9zZXNzaW9uX3NlY3VyaXR5IjoiMjAxNy0wNi0wN1QxODoyNzo1Ni4wMzgwMjciLCJfYXV0aF91c2VyX2hhc2giOiI2NzllNmM5YTNjNmZmMDAyY2EyZDdlYmYxMzI5YzUwYTQ4NTdiZThhIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==	2017-06-21 22:27:56.041155+00
vetmiwwjdfz4a6h2j38fbf3q6q4vuewz	ZDcwNGRmMjVkYzBiMDk2ZTRjM2NjZmExNWIzNTI4ZmNlOGEwNTdiNTp7Il9hdXRoX3VzZXJfaWQiOjEsIl9zZXNzaW9uX3NlY3VyaXR5IjoiMjAxNy0wNi0xNlQxMjoyNjoxMC41NjUwMDMiLCJfYXV0aF91c2VyX2hhc2giOiI2NzllNmM5YTNjNmZmMDAyY2EyZDdlYmYxMzI5YzUwYTQ4NTdiZThhIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==	2017-06-30 16:26:10.569511+00
ppkveacoz7gyywejq7a0j2v07qjptwbr	N2VkOWJmNWFiOTQ5MDU3NjYwZmUzMjk1NDZmNDU5ZjkyOWQ3NjNkZDp7Il9hdXRoX3VzZXJfaWQiOjEsIl9zZXNzaW9uX3NlY3VyaXR5IjoiMjAxNy0wNi0xMFQwMTo0Njo0Ny40NTQ3MzYiLCJfYXV0aF91c2VyX2hhc2giOiI2NzllNmM5YTNjNmZmMDAyY2EyZDdlYmYxMzI5YzUwYTQ4NTdiZThhIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==	2017-06-24 05:46:47.458982+00
di3cmayd2b1lhhhkq8nvo2wmourvoh6b	OThkNDRiOWUzNzFjMzBmNjE2NGU1YmVjY2U5NGY3YjYwOTg1MTI4ODp7Il9hdXRoX3VzZXJfaWQiOjEsIl9zZXNzaW9uX3NlY3VyaXR5IjoiMjAxNy0wNi0xNlQxMzo1MToyNy4yMTk3NDkiLCJfYXV0aF91c2VyX2hhc2giOiI2NzllNmM5YTNjNmZmMDAyY2EyZDdlYmYxMzI5YzUwYTQ4NTdiZThhIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==	2017-06-30 17:51:27.223684+00
dbj5l7ywjlxit47dimm52wgc0k9dwka7	MDYxNzIwNmFjMTRjYjc5MDg4ZWNiNzU3MTc0ZmU5MDY2Zjk3MzA5YTp7Il9hdXRoX3VzZXJfaWQiOjEsIl9zZXNzaW9uX3NlY3VyaXR5IjoiMjAxNy0wNi0xMlQwMTozNDowMC43MjQ1MjQiLCJfYXV0aF91c2VyX2hhc2giOiI2NzllNmM5YTNjNmZmMDAyY2EyZDdlYmYxMzI5YzUwYTQ4NTdiZThhIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==	2017-06-26 05:34:00.728657+00
uc7gp797b8ns64oajxs2hmswxnjewoee	YjAwNTE2OGFiMGQxYTExNDFkNjc5N2E2M2I2MzY4NjFkNTM3NDg1OTp7fQ==	2017-06-15 19:48:43.022524+00
fkp3isc0nexlb9ak6bph5tac7ao5hnao	YjAwNTE2OGFiMGQxYTExNDFkNjc5N2E2M2I2MzY4NjFkNTM3NDg1OTp7fQ==	2017-06-15 19:48:43.158548+00
1l9ancwk9o0vvfb1tyq6woo4g9h60t9t	MWJlNmUwZWNmMDAwMjRjZjk4OTA2YTg4NjZmY2M0YzJlNTk1MjViMzp7Il9hdXRoX3VzZXJfaWQiOjEsIl9zZXNzaW9uX3NlY3VyaXR5IjoiMjAxNy0wNi0wMlQxNDo1MToxNS44NDU5MzQiLCJfYXV0aF91c2VyX2hhc2giOiI2NzllNmM5YTNjNmZmMDAyY2EyZDdlYmYxMzI5YzUwYTQ4NTdiZThhIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==	2017-06-16 18:51:15.851132+00
p3w1swip5cja1fqhp2cg2pdij7fhuge5	YjAwNTE2OGFiMGQxYTExNDFkNjc5N2E2M2I2MzY4NjFkNTM3NDg1OTp7fQ==	2017-06-19 03:26:47.210141+00
rv7l3crucbxnzqya2ttwjqyy8qjp9hds	ZGEzY2VjYTZlZjZjNGI2NjhmMDQxOGQ3ZjNhNDAxMTY0MjBhZDI0YTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX3Nlc3Npb25fc2VjdXJpdHkiOiIyMDE3LTA2LTA1VDEzOjA0OjU5LjgzNTI4OCIsIl9hdXRoX3VzZXJfaGFzaCI6IjY3OWU2YzlhM2M2ZmYwMDJjYTJkN2ViZjEzMjljNTBhNDg1N2JlOGEiLCJfYXV0aF91c2VyX2lkIjoxfQ==	2017-06-19 17:04:59.836747+00
gqb7f72ewb7voptwtcnk0dzgsxu4xzsy	YjAwNTE2OGFiMGQxYTExNDFkNjc5N2E2M2I2MzY4NjFkNTM3NDg1OTp7fQ==	2017-06-30 08:28:01.500396+00
\.


--
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: root
--

COPY django_site (id, domain, name) FROM stdin;
1	example.com	example.com
\.


--
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('django_site_id_seq', 1, true);


--
-- Data for Name: registro; Type: TABLE DATA; Schema: public; Owner: root
--

COPY registro (id, nombre, apellido, celular, correo, universidad, profesional, interes, horafecha) FROM stdin;
1	Edwin	Salcedo	76234234	ingedwinsalcedo@gmail.com	Otro	t	Desarrollo de Software	2017-05-13 03:25:53.776643+00
2	Eneida	Gonzales	79115870	eneidita21@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Realidad Virtual	2017-05-14 01:41:00.616948+00
3	Rodrigo	Iturralde	76737057	orlando.mylds@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Desarrollo de Software	2017-05-14 02:02:08.198751+00
4	Nagib Luis	Vallejos Mamani	60628973	nagib.vallejos@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	IoT	2017-05-14 03:16:03.45134+00
5	David Delmo	Villanueva Ruiz	67341196	da.vir018@gmail.com	Universidad Mayor de San Andrés (UMSA)	t	Otro	2017-05-14 04:10:09.361579+00
6	Cristina	Vallejos	73025440	cvm.vallejos@gmail.com	Universidad Mayor de San Andrés (UMSA)	t	Desarrollo de Software	2017-05-14 13:49:47.774608+00
7	Pamela	Zannier	78790011	pamela.zannier@gmail.com	Otro	t	Diseño	2017-05-14 14:45:14.600714+00
8	Bladimir 	Calcina Choque	60536124	bladimir.calcina@gmail.com	Universidad Mayor de San Andrés (UMSA)	t	Desarrollo de Software	2017-05-14 15:36:20.683428+00
9	Pamela	Zannier	78790011	pamela.zannier@gmail.com	Otro	t	Diseño	2017-05-14 15:54:39.20371+00
10	Pamela	Zannier	78790011	pamela.zannier@gmail.com	Otro	t	Diseño	2017-05-14 15:56:21.410137+00
11	Pamela	Zannier	78790011	pamela.zannier@gmail.com	Otro	t	Diseño	2017-05-14 15:56:46.44923+00
12	Pamela	Zannier	78790011	pamela.zannier@gmail.com	Otro	t	Diseño	2017-05-14 15:57:48.388836+00
13	Pamela	Zannier	78790011	pamela.zannier@gmail.com	Otro	t	Diseño	2017-05-14 15:58:22.447605+00
14	Pamela	Zannier	78790011	pamela.zannier@gmail.com	Otro	t	Diseño	2017-05-14 15:58:51.462319+00
15	Pamela	Zannier	78790011	pamela.zannier@gmail.com	Otro	t	Diseño	2017-05-14 15:59:47.021023+00
16	Juan Carlos	Estrada Flores	79508669	estradadjuanky@gmail.com	Otro	f	Diseño	2017-05-14 16:43:26.68577+00
17	Edwin	Salcedo	76234234	ingedwinsalcedo@gmail.com	Otro	t	IoT	2017-05-14 18:05:44.620878+00
18	Shirley Jhael 	Torrez Flores 	74076044 	jhaelinelf@gmail.com	Universidad Salesiana Boliviana	f	Desarrollo de Software	2017-05-15 02:24:05.802259+00
19	Nataly	Yampassi Espejo	73018412	nattayampassi@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	IoT	2017-05-15 14:31:23.694614+00
20	Nataly	Yampassi Espejo	73018412	nattayampassi@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	IoT	2017-05-15 22:08:16.667359+00
21	Paolo Andre	Paz Ramos	946746681	sl.paolo.paz@gmail.com	Otro	t	Desarrollo de Software	2017-05-16 03:32:43.112652+00
22	Walter Alfredo	Calizaya Limache	+51 952860386	waltercalizaya23@gmail.com	Otro	t	Desarrollo de Software	2017-05-16 03:39:56.234505+00
23	Mauro Gregorio	Mayta Ticona 	60656913 	mgmt1231231@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Desarrollo de Software	2017-05-16 07:22:04.76631+00
24	Rodolfo 	Catunta 	76533047	cristian0106b@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Inteligencia Artificial	2017-05-16 08:26:50.872564+00
25	Adriana	De La Barra Montes	78892816	adrijerm@gmail.com	Otro	f	Inteligencia Artificial	2017-05-16 22:03:09.596902+00
26	Nohely 	Rocha Parrado	69744023	nohely.rocha@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Realidad Virtual	2017-05-17 05:20:36.680328+00
27	Enrique Jhonny	Velasquez Fernandez	77237194	enrique.velasquez@gmail.com	Universidad Mayor de San Andrés (UMSA)	t	IoT	2017-05-18 01:12:01.867497+00
28	Sergio Arturo 	Luna Balboa 	70192835 	slunabalboa@gmail.com	Universidad Mayor de San Andrés (UMSA)	t	Diseño	2017-05-18 03:08:03.27809+00
29	Laura	Choque condori	76405252	laura_choquecond@hotmail.com	Otro	f	Control de Calidad	2017-05-19 16:57:07.139729+00
30	Jose Luis	Quispe	72550400	joseluisnova@gmail.com	Universidad Mayor de San Andrés (UMSA)	t	IoT	2017-05-19 17:11:05.721821+00
31	Rodrigo Diego	Quispe Laura	77517237	roquispelaura@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Desarrollo de Software	2017-05-19 17:53:07.27816+00
32	David	Condori Miranda	79151010	davidcreative.com@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Desarrollo de Software	2017-05-19 20:26:01.401036+00
33	Enith Isabel 	Iriarte Caballero 	78755729	eni.iriarte1973@gmail.com	Universidad Mayor de San Andrés (UMSA)	t	IoT	2017-05-19 21:31:03.104745+00
34	Jose	Lima	60148650	joselima1505.jlt@gmail.com	Otro	f	Inteligencia Artificial	2017-05-20 00:53:37.899247+00
35	Richard	Rodriguez Olivera	72550889	rodriguezolivera@gmail.com	Escuela Militar de Ingeniería (EMI)	f	IoT	2017-05-20 13:56:21.219594+00
36	Guisela Michell	Costa Pallaricona	78994333	mishiyjavi@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Otro	2017-05-20 20:41:20.637872+00
37	Alan	Limachi	67122366	gabuquispe007@gmail.com	Otro	f	Otro	2017-05-20 22:03:45.827246+00
38	Alan	Limachi Quispe	67122366	gabuquispe007@gmail.com	Otro	f	Inteligencia Artificial	2017-05-21 12:52:46.973308+00
39	María de los Ángeles 	Tallacahua Cori	75864958	anghydelosangeles@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Control de Calidad	2017-05-22 15:56:41.543346+00
40	Edson	Silvestre Ormachea	73049484	retroqwe2612@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Diseño	2017-05-22 19:47:56.161726+00
41	Angel Ariel 	Camargo Mamani	61153463	arielxime8@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Diseño	2017-05-23 00:25:05.013316+00
42	Fernando Javier	Averanga Aruquipa	65636603	nandes.ingsistemas@gmail.com	Universidad Salesiana Boliviana	f	Diseño	2017-05-23 01:14:19.510366+00
43	Veronica Vanessa	Flores Hinojosa	78828723 	vanessaflores24065@gmail.com	Universidad Salesiana Boliviana	f	Diseño	2017-05-23 16:13:39.676168+00
44	ALEX FRANCO	Quispe Condori	70188753	rancowar@gmail.com	Otro	f	Otro	2017-05-24 13:04:14.987107+00
45	Marcelo Nelson	De La Quintana Illanes	69854394	marcelodelaquintana2@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	IoT	2017-05-24 17:11:38.512418+00
46	Jorge Alejandro	Calderon Tola	70536951	jorgecalderon.jcrhh@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Realidad Virtual	2017-05-24 20:55:22.063396+00
47	Luis Rodrigo	Chuquimia condori	61144278	rodrigoaltamirano68@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Otro	2017-05-25 04:01:13.673016+00
48	Luis David	Ortiz Saavedra	70540894	ludav94@hotmail.com	Universidad Católica Boliviana "San Pablo" (UCB)	f	Diseño	2017-05-25 05:43:22.585535+00
49	Maya Mariel	Lopez Garcia	68024649	mayalopezgarcia@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Diseño	2017-05-25 05:46:21.709041+00
50	Jhonny	Chipana kalamani	75857903	yhonnytomas@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Inteligencia Artificial	2017-05-25 10:37:01.461079+00
51	Dayana Damarys	Nina Nina	70117684	dayananinan2@gmail.com	Universidad Católica Boliviana "San Pablo" (UCB)	t	Desarrollo de Software	2017-05-25 11:37:43.699276+00
52	Jose Antonio 	Santander Figueredo 	79158729	Josesantanderf@gmail.com	Otro	t	Otro	2017-05-25 13:00:05.819547+00
53	anghelo	muñoz lopez	78790568	anghelosieben13@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Desarrollo de Software	2017-05-25 14:00:17.414254+00
54	Lizeth	Astrit	79561400	aslith27@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Inteligencia Artificial	2017-05-25 15:04:07.365416+00
55	Erick 	Lujan Cruz	73057550 	lujanther.coold@gmail.com	Otro	f	Desarrollo de Software	2017-05-25 15:05:03.886829+00
56	Luis Javier	Quispe Ramirez	79625432	luisjavier.11.2@gmail.com	Otro	f	Inteligencia Artificial	2017-05-25 16:07:47.190694+00
57	Erik 	Veramendi Alvarado	72963030	erik.veramendi@gmail.com	Universidad Mayor de San Andrés (UMSA)	t	Otro	2017-05-25 16:14:09.699245+00
58	Rodolfo Javier	Loza Fernandez	70649827	djblack13@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Control de Calidad	2017-05-25 22:22:20.172335+00
59	Wilson	Ayala poma	73241949	wilsonayalapoma@gmail.com	Otro	f	Desarrollo de Software	2017-05-25 23:07:28.360346+00
60	Brian Alejandro 	Aguilar Colque	76583481	bri19aguilar1999@gmail.com	Universidad Católica Boliviana "San Pablo" (UCB)	f	Inteligencia Artificial	2017-05-26 00:41:22.859148+00
61	JUAN VICTOR	AGUILAR CUSICANQUI	76719494	victoraguilar.net@gmail.com	Universidad Católica Boliviana "San Pablo" (UCB)	f	Desarrollo de Software	2017-05-26 01:07:44.909485+00
62	alan	limachi	67122366	gabuquispe007@gmail.com	Otro	f	Inteligencia Artificial	2017-05-26 03:19:34.096981+00
63	Daniel	Cruz Calani 	65686515 	dannyfsociety@gmail.com	Universidad Franz Tamayo (UNIFRANZ)	f	Desarrollo de Software	2017-05-26 03:32:06.426084+00
64	Jode Gabriel	Mita Rodriguez	71270822	draillergabriel@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Desarrollo de Software	2017-05-26 04:29:26.778317+00
65	Felipe Jaime	Suárez Maldonado	72501142	jasuma7@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Realidad Virtual	2017-05-26 04:42:35.060803+00
66	ALEX FRANCO	QUISPE CONDORI	70188753	rancowar@gmail.com	Otro	f	Desarrollo de Software	2017-05-26 05:08:28.077651+00
67	Daniel Oscar	Rocha Velasco	79555435	rochaoscar@gmail.com	Universidad Católica Boliviana "San Pablo" (UCB)	t	Desarrollo de Software	2017-05-26 12:01:46.73818+00
68	Cristian Ramiro	Choque Limachi	75854055	choquecrisl32@gmail.com	Universidad Católica Boliviana "San Pablo" (UCB)	f	Desarrollo de Software	2017-05-26 15:49:51.412782+00
69	Viviana Fátima	Pardo Aliaga	73713697	Vivi.pardoa@gmail.com	Universidad Mayor de San Andrés (UMSA)	t	Desarrollo de Software	2017-05-26 18:15:08.241181+00
70	José Ángel	Quino Chipana	78812425	dangerouslapaz@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Realidad Virtual	2017-05-26 18:24:10.35898+00
71	Juan Carlos	Estrada	79508669	estradajuanky@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Diseño	2017-05-26 23:52:19.662774+00
72	Nancy	Callejas	69729302	info.natty.213@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Otro	2017-05-27 13:16:50.170343+00
73	Lucia	Paredes Mendoza	70516726	luciaparedesmendoza@gmail.com	Otro	f	Desarrollo de Software	2017-05-27 13:36:52.763985+00
74	Abel Cristobal 	Carrillo Mamani 	60553804	abel.cristobal.carrillo@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Desarrollo de Software	2017-05-27 14:53:56.901452+00
75	Angel	Villacorta 	72531034	angelvillacortamayta@gmail.com	Universidad Boliviana de Informática (UBI)	t	Desarrollo de Software	2017-05-27 19:52:30.839635+00
76	Erika Catherin	Bascope Ibañez	67349053	erika.bascope.i@gmail.com	Otro	f	Diseño	2017-05-28 00:39:38.822759+00
77	Glenda 	Juárez 	76209463	glendajr75@gmail.com	Universidad Franz Tamayo (UNIFRANZ)	f	Realidad Virtual	2017-05-28 01:10:42.181386+00
78	Omar	Cespedes daza	70634422	omarcspds@gmail.com	Otro	t	Desarrollo de Software	2017-05-28 13:35:30.89718+00
79	Huascar	Miranda	77206100	huascarm@gmail.com	Universidad Mayor de San Andrés (UMSA)	t	Realidad Virtual	2017-05-28 14:03:36.029181+00
80	Mauricio Humberto 	Peralta Echeverría 	76726164	maupe55@gmail.com	Universidad del Valle (UNIVALLE)	f	Inteligencia Artificial	2017-05-28 17:22:17.372898+00
81	Freddy	Moya	75286623	ddyfremat@gmail.com	Universidad Mayor de San Andrés (UMSA)	t	Otro	2017-05-28 18:38:01.848335+00
82	Luis Rodrigo	Alcazar Riveros	77705651	al.roal.ro9@gmail.com	Universidad del Valle (UNIVALLE)	f	Desarrollo de Software	2017-05-29 00:52:21.794291+00
83	Iván Jorge	Villanueva Mollinedo	79517207	ivanvimol@gmail.com	Universidad de Aquino Bolivia	t	Desarrollo de Software	2017-05-29 03:31:49.082617+00
84	Monica	Condori Mamani	68092822	monny.coma@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Inteligencia Artificial	2017-05-29 13:48:19.034134+00
85	Antonio Jose	Baptista Wayar	71297333	abaptistaw@gmail.com	Otro	t	Control de Calidad	2017-05-29 14:42:01.284449+00
86	test	test	1231234123	test@test.com	Universidad de Aquino Bolivia	t	Diseño	2017-05-29 15:11:09.274806+00
87	Odilia Kalen	Calle Catrunda 	75847594	kalen758@gmail.com	Universidad Salesiana Boliviana	t	Desarrollo de Software	2017-05-29 15:13:27.650789+00
88	Odilia Kalen	Calle Catrunda	75847594	kalen758@gmail.com	Universidad Salesiana Boliviana	f	Desarrollo de Software	2017-05-29 15:20:46.468863+00
89	José Ángel	Quino Chipana	78812425	dangerouslapaz@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Realidad Virtual	2017-05-29 18:29:19.122378+00
90	Víctor manuel	Ninahuanca ayala	74867433	mninahuanca3@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Desarrollo de Software	2017-05-29 23:27:09.669845+00
91	Ruben	Monrroy Condori	930313083	rubsoft@gmail.com	Otro	f	Desarrollo de Software	2017-05-30 00:55:29.555548+00
92	Jaime Jorge	Mamani Nina	76537186	njaimejorge@gmail.com	Universidad del Valle (UNIVALLE)	f	Otro	2017-05-30 04:16:30.124204+00
93	GABRIELA	MURGUIA TORREZ	73002568	GAMUTOMURGUIA@GMAIL.COM	Universidad Franz Tamayo (UNIFRANZ)	t	Desarrollo de Software	2017-05-30 14:24:59.41937+00
94	HECTOR	IÑIGUEZ ESTRADA	60653642	ihectorgie@gmail.com	Universidad Salesiana Boliviana	f	Desarrollo de Software	2017-05-30 18:15:18.164169+00
95	Erick Rolando	Gutiérrez González	70181439	erick.gugo@gmail.com	Universidad Mayor de San Andrés (UMSA)	t	Desarrollo de Software	2017-05-31 00:13:54.203825+00
96	Leonardo	Yujra Mamani	77238023	leoyml@gmail.com	Universidad Mayor de San Andrés (UMSA)	t	Desarrollo de Software	2017-05-31 08:15:58.201595+00
97	Cristian	Sanchez lima	60103558	cristianSamchez52@gmail.com	Universidad Pública de El Alto (UPEA)	f	Realidad Virtual	2017-06-01 15:45:55.78722+00
98	Alejandro 	Fortun Duran Canelas 	76780225	afortundurancanelas@gmail.com	Universidad Católica Boliviana "San Pablo" (UCB)	f	Otro	2017-06-01 17:44:28.48534+00
99	Alan Roger 	Apaza Poma	76255159	alanapaza@gmail.com	Universidad Salesiana Boliviana	f	Inteligencia Artificial	2017-06-01 17:45:00.494101+00
100	Lizeth astrit	Altamirano ramirez	79561400	aslith27@gmail.com	Universidad Mayor de San Andrés (UMSA)	t	Inteligencia Artificial	2017-06-01 17:54:33.11434+00
101	William 	Mendoza	65620219	reynaldocronhos@gmail.com	Universidad Pública de El Alto (UPEA)	f	Desarrollo de Software	2017-06-01 18:47:17.978453+00
102	Jose luis 	Cordova conde	77543042	jlcordova36@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Otro	2017-06-01 19:54:16.890244+00
103	Jesus Rodolfo	Izurieta Veliz	69883083	izurietajr@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Desarrollo de Software	2017-06-01 20:35:56.248415+00
104	Monica	Alanoca	78949594	monicaalanoca1@gmail.com	Universidad Mayor de San Andrés (UMSA)	t	Control de Calidad	2017-06-03 01:19:54.650939+00
105	Pablo Joel	Ugalde Castro	73239871	reggaelbowl@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Inteligencia Artificial	2017-06-03 02:11:00.365482+00
106	Karina	Alanoca Condori	69740386	karinalanocascarleth@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Inteligencia Artificial	2017-06-03 04:26:14.151196+00
107	David Gonzalo	Cusi Quispe	77214145	davcuqupe@gmail.com	Universidad Pública de El Alto (UPEA)	f	Realidad Virtual	2017-06-03 04:34:38.326467+00
108	Katya Maricela	Pérez 	Martínez 	katya.perezm@gmail.com	Otro	t	Desarrollo de Software	2017-06-03 15:27:37.41157+00
109	Kathia	Sandoval Macias	78860577	katnizza@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Diseño	2017-06-03 16:01:25.864458+00
110	Freddy Gabriel	Perez Guarachi	76562505	gab3291gm@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Desarrollo de Software	2017-06-03 20:48:03.544202+00
111	Rene	Lopez Soliz	77762686	renesoliz.sa@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Desarrollo de Software	2017-06-04 03:38:37.446858+00
112	Martha 	Mamani Mamani 	70160499 	marthamamani538@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Desarrollo de Software	2017-06-04 03:44:37.583127+00
113	Glaucia Mariel	Atahuichi Mamani	73224549	gmatahuichi@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Desarrollo de Software	2017-06-04 12:01:35.397309+00
114	Pablo Benjamin	Huañapaco Peña	65560327	hpablobenja@gmail.com	Universidad Católica Boliviana "San Pablo" (UCB)	f	Inteligencia Artificial	2017-06-04 20:48:27.370823+00
115	Natalia 	Juárez Gutiérrez 	77715577	natasjuarez@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Diseño	2017-06-04 23:27:42.940935+00
116	Carlos	Murguía	70585455	cjmurguia@gmail.com	Universidad Católica Boliviana "San Pablo" (UCB)	f	Inteligencia Artificial	2017-06-04 23:32:37.14713+00
117	LOURDES 	MAMANI	79115521	lmlunamor@hotmail.com	Otro	t	Desarrollo de Software	2017-06-05 01:03:28.953612+00
118	Erik 	Molina Chavez	78787452	tiggerik@hotmail.com	Otro	t	Diseño	2017-06-05 12:24:39.156292+00
119	KATERINE ANDREA 	RAMALLO UNZUETA	70510130	aniakaru92@gmail.com	Universidad Católica Boliviana "San Pablo" (UCB)	t	DevOps	2017-06-05 21:40:45.227299+00
120	Adriana	De La Barra Montes 	78892816	adrijerm@gmail.com	Otro	f	Inteligencia Artificial	2017-06-05 21:41:30.926926+00
121	bruno	silva	78853748	bruno23296@gmail.com	Universidad Católica Boliviana "San Pablo" (UCB)	f	Desarrollo de Software	2017-06-05 23:17:57.186961+00
122	Monica	Apaza 	79549076	gabyta.inf@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	DevOps	2017-06-06 04:34:11.12944+00
123	Rodolfo 	Catunta	76533047	cristian0106b@gmail.com	Universidad Católica Boliviana "San Pablo" (UCB)	f	Inteligencia Artificial	2017-06-06 13:19:29.32332+00
124	Monica Gabriela	Apaza Cora	79549076	gabyta.inf@gmail.com	Universidad Mayor de San Andrés (UMSA)	t	DevOps	2017-06-06 13:19:36.500492+00
125	Eva Margareth 	Coddia Michel 	72026165 	ecoddia@gmail.com	Escuela Militar de Ingeniería (EMI)	t	IoT	2017-06-06 13:30:28.682002+00
126	Liz Andrea	Ramos Huarachi	76293228	lizandrearamos17@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Diseño	2017-06-06 14:21:18.205134+00
127	Glaucia Mariel	Atahuichi Mamani	73224549	gmatahuichi@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Desarrollo de Software	2017-06-06 14:39:02.857729+00
128	Gabriela Ninoska 	Caspa Huayhua 	73593531 	gabriela.nnk@gmail.com	Universidad Católica Boliviana "San Pablo" (UCB)	f	IoT	2017-06-06 15:03:30.261129+00
129	José Luis	Quispe Ajata	60111632	jlqa.bo@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Desarrollo de Software	2017-06-06 15:14:37.288049+00
130	ERIKA ELIZABETH	QUISPE QUISPE	70186886	apequis@hotmail.com	Universidad Mayor de San Andrés (UMSA)	f	Desarrollo de Software	2017-06-06 15:25:51.016359+00
131	JOSE LUIS	QUISPE AJATA 	70186886	jlqa.bo@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Desarrollo de Software	2017-06-06 15:27:31.196721+00
132	deivyd rodrigo	quispe poma 	78879800	gundavis2793@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Realidad Virtual	2017-06-06 15:36:57.287407+00
133	Hernan	Rengel	79507444	hrengelc@gmail.com	Universidad Católica Boliviana "San Pablo" (UCB)	t	Desarrollo de Software	2017-06-06 20:05:47.134233+00
134	Fabiola	Monrroy Vera	70184003	fmonrroyv@gmail.com	Universidad Católica Boliviana "San Pablo" (UCB)	t	Control de Calidad	2017-06-06 20:09:39.429694+00
135	Jorge Eduardo	Niño de Guzmán Solares	78997947	edunisol@gmail.com	Universidad Católica Boliviana "San Pablo" (UCB)	t	Desarrollo de Software	2017-06-06 20:32:43.968196+00
136	Bryan Enrique	Miranda Palacios	73734581	cachorroinformatico@gmail.com	Universidad Mayor de San Andrés (UMSA)	t	Inteligencia Artificial	2017-06-06 20:39:07.218392+00
137	Teddy Mauricio	Paz Muñoz	70144024	pazteddy@gmail.com	Otro	t	Desarrollo de Software	2017-06-06 20:42:43.758654+00
138	Kevin edson	Alvarez torrico 	78953964	Kevinbatistapoo@Gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Desarrollo de Software	2017-06-07 04:11:21.926275+00
139	Eddy	Conde	73569969	eddycondeperez@gmail.com	Universidad Mayor de San Andrés (UMSA)	t	Diseño	2017-06-07 11:58:52.765572+00
140	Gonzalo Alejandro	Miranda Castillo	79100747	gonzalomir@gmail.com	Universidad Mayor de San Andrés (UMSA)	t	IoT	2017-06-07 14:36:16.889423+00
141	Odilia Kalen 	Calle Catrunda	75848594	kalen758@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Desarrollo de Software	2017-06-07 18:41:26.291036+00
142	Vivian Heldy 	Mendoza Sillerico	74082182	heinaiviv@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Inteligencia Artificial	2017-06-07 22:07:50.454059+00
143	erika	rivero	60523706	rivacm2345@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Otro	2017-06-07 22:59:07.040074+00
144	Alma	Condori matias	70672150	alma.condorii.matias@gmail.com	Universidad Mayor de San Andrés (UMSA)	t	Diseño	2017-06-08 00:35:47.322226+00
145	Richard Josue	Mamani Mamani	78935389	richardjosuemamani@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	IoT	2017-06-08 05:54:24.736927+00
146	Ronald	Nina Calla	72543079	draven3166@gmail.com	Otro	t	Desarrollo de Software	2017-06-08 11:10:09.426324+00
147	Pablo Andres	Salas Jerez	69847423	pablosj91@gmail.com	Universidad Católica Boliviana "San Pablo" (UCB)	t	Desarrollo de Software	2017-06-08 15:50:46.681744+00
148	Rodrigo 	Caballero Hurtado 	72077332 	rodrigo.caballero.hurtado@gmail.com	Universidad Católica Boliviana "San Pablo" (UCB)	t	DevOps	2017-06-08 19:08:30.008099+00
149	Franz	Mejia	73230393	mejiafranz@gmail.com	Otro	t	Desarrollo de Software	2017-06-08 19:08:33.007643+00
150	Dante	Rivadeneyra	72033595	dantearm@gmail.com	Otro	t	Inteligencia Artificial	2017-06-08 19:11:14.533511+00
151	Joel Andy	Rojas Valencia	77281250	joel.a.rojas.v@gmail.com	Universidad Católica Boliviana "San Pablo" (UCB)	f	Desarrollo de Software	2017-06-08 19:46:22.145037+00
152	Brian Alejandro 	Aguilar Colque 	76583481	bri19aguilar1999@gmail.com	Universidad Católica Boliviana "San Pablo" (UCB)	f	Inteligencia Artificial	2017-06-08 21:56:46.292111+00
153	MARCO ANTONIO 	GUTIERREZ BELTRAN	71856386	modem.ff@gmail.com	Otro	f	Desarrollo de Software	2017-06-08 22:12:29.663166+00
154	Juan Daniel	Mamani	74093071	daniel.2015.dl84@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Control de Calidad	2017-06-08 23:12:49.796607+00
155	Carla	Alejo	60547047	carla555eagle@gmail.com	Otro	f	IoT	2017-06-09 03:49:51.659598+00
156	Rayner Miguel 	Villalba Mendieta 	75812004	rayner.villalba@gmail.com	Universidad Católica Boliviana "San Pablo" (UCB)	t	Desarrollo de Software	2017-06-09 05:00:47.771386+00
157	gonzalo	aramayo	73022467	aramayo.gonzalo@gmail.com	Otro	t	IoT	2017-06-09 12:01:16.902926+00
158	Eduardo	Quenallata	70160638	hilarionq@gmail.com	Otro	t	Desarrollo de Software	2017-06-09 14:18:53.556874+00
159	Adrian Marcelo	Berazaín	Mallea	b.beracho@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Desarrollo de Software	2017-06-09 15:48:09.108508+00
160	Hector 	Vega Alvarado	72565815	animacion245@gmail.com	Otro	t	Desarrollo de Software	2017-06-09 19:00:58.613675+00
161	Juan Carlos	Jiménez Fernández	76505921	juka316@gmail.com	Otro	f	IoT	2017-06-09 23:57:27.692245+00
162	Juan Carlos 	Jiménez Fernández	76505921	juka316@gmail.com	Otro	f	IoT	2017-06-10 00:08:46.047434+00
163	Jhon Pool 	Castro Saavedra 	69844140	jhonpoolcastro.jcs@gmail.com	Otro	f	Inteligencia Artificial	2017-06-10 02:11:43.465048+00
164	Rodrigo 	Tejada Maldonado	76522957	rodritm2010@gmail.com	Universidad Católica Boliviana "San Pablo" (UCB)	f	Desarrollo de Software	2017-06-10 15:16:06.895045+00
165	José David	Valda Peñaranda 	70311810 	valdajosevid@gmail.com	Otro	f	Otro	2017-06-10 15:36:09.571181+00
166	Samuel Adrián	Canaviri Roque	72041739	samuel.canaviri.r@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Desarrollo de Software	2017-06-10 20:16:44.366768+00
167	Sergio Eilet	Balboa Conde	72077665	eiletbc@gmail.com	Otro	f	Desarrollo de Software	2017-06-10 23:10:07.534738+00
168	deysi maribel	chura coyo	65152160	1deysi234@gmail.com	Escuela Militar de Ingeniería (EMI)	f	Otro	2017-06-11 00:37:47.816321+00
169	mauricio	huayllucu	78882687	mauri.h.g@hotmail.com	Universidad Mayor de San Andrés (UMSA)	f	Inteligencia Artificial	2017-06-11 05:25:32.354528+00
170	Olibert	Mamani uruña	69812515	oliber.02@gmail.com	Universidad Salesiana Boliviana	f	Desarrollo de Software	2017-06-11 13:41:09.629422+00
171	Richard Tommy	Condori Limachi	77547082	siemprehambriento@gmail.com	Universidad Franz Tamayo (UNIFRANZ)	f	Diseño	2017-06-11 14:21:30.18357+00
172	David	Navia Villca	77598506	davidnavia8ad@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Desarrollo de Software	2017-06-11 15:48:33.967211+00
173	Antonio Jose	Baptista Wayar	71297333	abaptistaw@gmail.com	Universidad de Aquino Bolivia	f	Desarrollo de Software	2017-06-11 17:01:31.275324+00
174	Eva Margareth 	Coddia Michel 	72026165 	ecoddia@gmail.com	Escuela Militar de Ingeniería (EMI)	t	Inteligencia Artificial	2017-06-11 20:30:27.487474+00
175	marvia belen 	moroco Pérez	73543416	marviamoroco@gmail.con	Universidad Pública de El Alto (UPEA)	f	Desarrollo de Software	2017-06-11 20:39:26.182299+00
176	orlando 	cardozo Condarco 	77222021	orcard21@gmail.com	Universidad Pública de El Alto (UPEA)	f	Inteligencia Artificial	2017-06-11 21:26:55.13971+00
177	Joel Andy	Rojas Valencia	77281250	joel.a.rojas.v@gmail.com	Universidad Católica Boliviana "San Pablo" (UCB)	f	Inteligencia Artificial	2017-06-12 00:06:07.316297+00
178	Marco Antonio	Mena Chambi	76723727	menardanton@gmail.com	Otro	f	Otro	2017-06-12 00:59:11.917976+00
179	Alan Christian 	Aruquipa Mollinedo	77787998	aruquipa.alan@gmail.com	Otro	t	IoT	2017-06-12 04:31:01.396727+00
180	Angel Rafael	Lopez orihuela	73200210	loprafael@gmail.com	Universidad Salesiana Boliviana	t	Desarrollo de Software	2017-06-12 13:26:07.986084+00
181	Luis Felipe 	Quisbert Quispe	60522919	lq150415@gmail.com	Universidad Franz Tamayo (UNIFRANZ)	f	Desarrollo de Software	2017-06-12 13:33:42.243812+00
182	marcelo	tito copa	79537750	matcop@gmail.com	Otro	t	Desarrollo de Software	2017-06-12 13:38:57.741109+00
183	Guisela	Velasquez Choque	78865125	guisela.mizato@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Realidad Virtual	2017-06-12 15:17:33.759771+00
184	Alvaro Javier	Reque Valda	77210608	areque2@gmail.com	Universidad Católica Boliviana "San Pablo" (UCB)	t	Realidad Virtual	2017-06-12 17:25:56.42744+00
185	Alison	Soliz	77731733	alison.soliz@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Inteligencia Artificial	2017-06-12 18:05:44.774885+00
186	ADA	SOLIZ	77244483	asolizf@gmail.com	Universidad Mayor de San Andrés (UMSA)	t	Desarrollo de Software	2017-06-12 19:28:11.250719+00
187	Jose Luis	Choque Hidalgo	73032033	joseluischoquehidalgo@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	IoT	2017-06-12 20:35:35.714081+00
188	Leonardo	Calle Cusi	70138581	leonardcalle@gmail.com	Otro	f	Desarrollo de Software	2017-06-12 20:44:04.345634+00
189	Jorge	Yanique	60635333	jhyanique@gmail.com	Otro	t	Desarrollo de Software	2017-06-12 20:49:11.183483+00
190	Jorge	Yanique	60635333	jhyanique@gmail.com	Otro	t	Desarrollo de Software	2017-06-12 22:46:57.482718+00
191	Abril Alejandra	Flores Barragán 	70119424	abrilflores1@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Diseño	2017-06-12 23:03:38.573392+00
192	Abril Alejandra	Flores Barragán	70119424	abrilflores1@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Diseño	2017-06-12 23:06:30.362831+00
193	Arnol Francisco	Robles Tintaya	67341446	arnol12157@gmail.com	Escuela Militar de Ingeniería (EMI)	f	Desarrollo de Software	2017-06-13 00:31:14.352504+00
194	Rolando Jose	Maldonado Callisaya	78795156	bateriarol@gmail.com	Universidad Salesiana Boliviana	f	Desarrollo de Software	2017-06-13 01:31:20.595561+00
195	Seiji patrick	Martinez Gutierrez	77216661	seiji.martinez@gmail.com	Universidad Mayor de San Andrés (UMSA)	t	Desarrollo de Software	2017-06-13 01:58:30.969983+00
196	Fernando Ronald	Flores Vargas	76737333	fernando.rfv93@gmail.com	Universidad del Valle (UNIVALLE)	t	Desarrollo de Software	2017-06-13 02:00:04.29092+00
197	David Delmo	Villanueva Ruiz	67341196	da.vir018@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Inteligencia Artificial	2017-06-13 02:26:23.802391+00
198	PAOLO ANDRE	PAZ RAMOS	+51946746681	SL.PAOLO.PAZ@GMAIL.COM	Otro	t	Desarrollo de Software	2017-06-13 02:43:45.96805+00
199	Wagner Paulo Vinicius 	de Souza Taborga 	69707188	vinidst@gmail.com	Universidad Católica Boliviana "San Pablo" (UCB)	t	Diseño	2017-06-13 03:16:10.671557+00
200	Omar	Mendoza calle	74074692	sylermen@gmail.com	Universidad Franz Tamayo (UNIFRANZ)	f	IoT	2017-06-13 04:53:31.68661+00
201	Diego Alberto	Humerez Cáceres 	69303035	humerezdiego1994@gmail.com	Universidad Católica Boliviana "San Pablo" (UCB)	f	Inteligencia Artificial	2017-06-13 05:29:28.521276+00
202	Luis Miguel	Paredes Martinez	77587298	cuervlmpm862014@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Control de Calidad	2017-06-13 10:53:33.289123+00
203	Evert Ismael	Pocoma Copa	67168891	evertismael@gmail.com	Otro	t	DevOps	2017-06-13 14:28:27.27635+00
204	Julio Rolando 	Chalco Quispe	70632267	juan3390@gmail.com	Otro	t	Inteligencia Artificial	2017-06-13 16:06:11.333013+00
205	Roberto Andres	Perez Del CArpio	70535309	soul.scorpion@gmail.com	Universidad Católica Boliviana "San Pablo" (UCB)	f	Otro	2017-06-13 16:08:20.77469+00
206	Reyna Zeila	Rios Flores	77204914	reyna.zeila@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Inteligencia Artificial	2017-06-13 16:13:06.13133+00
207	Omar 	Mendoza calle	74074692	sylermen@gmail.com	Universidad Franz Tamayo (UNIFRANZ)	f	IoT	2017-06-13 16:48:05.182581+00
208	Tonny	Lopez	78794643	tonnylp@gmail.com	Universidad Pública de El Alto (UPEA)	t	Otro	2017-06-13 17:59:38.959603+00
209	Jaime Ricardo	Rocha Subieta	76952667	jrsubieta@gmail.com	Otro	f	Control de Calidad	2017-06-13 18:22:31.875603+00
210	Vania	Huayta Villanueva	72218175	mel.ania867@gmail.com	Otro	t	Inteligencia Artificial	2017-06-13 18:27:37.043189+00
211	brenda lily	gutierrez bautista	72081924	brenly2209@gmail.com	Universidad Mayor de San Andrés (UMSA)	t	Desarrollo de Software	2017-06-13 18:49:44.455061+00
212	Veronica	Aruquipa	76211208	varuquipa789@gmail.com	Universidad Mayor de San Andrés (UMSA)	t	Desarrollo de Software	2017-06-13 19:34:30.394864+00
213	Manuel Edward	Núñez Antezana	70605007	manuel.ing.soft@gmail.com	Universidad Salesiana Boliviana	f	Desarrollo de Software	2017-06-13 20:10:26.566523+00
214	Alejandro Mauricio	Cáceres Conde	67032148	thehandofthedarkness@gmail.com	Otro	f	Desarrollo de Software	2017-06-14 00:12:27.84712+00
215	MARCO ANTONIO 	APAZA MANANI	77237272	tmantony@gmail.com	Universidad Pública de El Alto (UPEA)	f	Desarrollo de Software	2017-06-14 00:41:58.142498+00
216	Richard Juan	Huchani Cahuana	67317397	richard.huchani.cahuana@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Realidad Virtual	2017-06-14 02:58:42.348997+00
217	Richard Juan	Huchani Cahuana	67317397	richard.huchani.cahuana28@gmail.com	Universidad Mayor de San Andrés (UMSA)	t	Realidad Virtual	2017-06-14 03:02:44.874889+00
218	Omar	Mendoza Calle	74074692	capitalism1996@gmail.com	Universidad Franz Tamayo (UNIFRANZ)	f	IoT	2017-06-14 03:30:21.717419+00
219	Adrián Mauricio	Rodríguez Andrade	60531301	adrorodri@gmail.com	Universidad Católica Boliviana "San Pablo" (UCB)	f	IoT	2017-06-14 11:42:23.400392+00
220	Renzo	Calla	72519526	renzocallachavez@gmail.com	Universidad Mayor de San Andrés (UMSA)	t	Desarrollo de Software	2017-06-14 12:21:51.35424+00
221	Carlos	Tito	79680774	Carlos.tito.cordero@gmail.com	Universidad Salesiana Boliviana	t	Diseño	2017-06-14 13:24:03.979823+00
222	Jose 	Varela 	74914614	antoniojose.varelam@gmail.com	Escuela Militar de Ingeniería (EMI)	t	IoT	2017-06-14 13:31:30.668634+00
223	Miguel Angel	Aguilar Choque	61817192	miguerusama@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Otro	2017-06-14 14:03:56.747944+00
224	Sergio Gabriel	Guillen Mantilla	+59177549230	serguimant@openmailbox.org	Universidad Mayor de San Andrés (UMSA)	t	Desarrollo de Software	2017-06-14 15:34:04.877325+00
225	JJ	Ruescas	77225642	juanjose.ruescas@gmail.com	Otro	t	DevOps	2017-06-14 15:54:09.054603+00
226	Robert Emanuel	Silvestre Limachi	73088851	robertsilvestre@utecnologica.edu.bo	Otro	f	Desarrollo de Software	2017-06-14 16:27:02.15875+00
227	Jorge Luis	Ramos Ramos	76724265	jorge.infobo@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Realidad Virtual	2017-06-14 16:31:43.524715+00
228	Mayra Anahy	Velasquez Peña	65538388	mayra.anahy.velasquez@gmail.com	Universidad Franz Tamayo (UNIFRANZ)	f	Diseño	2017-06-14 16:38:01.32147+00
229	Sergio Cesar	Aranda Rada	70181832	zarpower@gmail.com	Universidad Franz Tamayo (UNIFRANZ)	f	Desarrollo de Software	2017-06-14 16:41:43.763461+00
230	Aleyda Melany 	Quiñones Vela 	74858540 	melvela.1926@gmail.com	Otro	f	Control de Calidad	2017-06-14 18:14:10.032313+00
231	JHONNY STANLEY	LIMA MAMANI	76748126	stanleycero@gmail.com	Otro	t	Desarrollo de Software	2017-06-14 18:36:58.479499+00
232	Rolando Max	Clavel Callisaya	72550255	clavelrolax@gmail.com	Universidad Mayor de San Andrés (UMSA)	t	Desarrollo de Software	2017-06-14 18:42:25.326962+00
233	Rafael Israel	 Montoya Choque	72550062	leodraco20@gmail.com	Universidad Boliviana de Informática (UBI)	f	Desarrollo de Software	2017-06-14 18:45:37.831209+00
234	Fredy Jubenal	Mamani Escobar	72550256	fjubenal.mamani@gmail.com	Otro	t	Desarrollo de Software	2017-06-14 18:47:05.153948+00
235	frank	chirapa	72094263	frank.chirapa@gmail.com	Universidad Católica Boliviana "San Pablo" (UCB)	f	DevOps	2017-06-14 19:18:00.589664+00
236	Odilia Kalen 	Calle Catrunda	75847594	kalen758@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Desarrollo de Software	2017-06-14 21:14:34.395487+00
237	Nicolas Valentin	Figueredo Terceros	78970480	nicofigueredoterceros@gmail.com	Otro	f	Desarrollo de Software	2017-06-14 21:17:36.652349+00
238	jose luis	Acho ayala	75837224	joseacho77@gmail.com	Universidad Pública de El Alto (UPEA)	f	Inteligencia Artificial	2017-06-14 21:21:34.70445+00
239	Cecilia Esther	Uriona Lanza	76711808	ceciuriona@gmail.com	Otro	t	Inteligencia Artificial	2017-06-14 21:28:30.435163+00
240	Vladimir Gerardo	Poma Perez	72574156	vlaster.fjak@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Desarrollo de Software	2017-06-14 21:57:36.299497+00
241	Lorena 	Olguin Rivas 	67012003	lorenitabichiluz@gmail.com	Universidad Católica Boliviana "San Pablo" (UCB)	t	Inteligencia Artificial	2017-06-14 22:26:15.487491+00
242	Adriana	Zegarra	74051528	adrianazegamo@gmail.com	Otro	t	Otro	2017-06-14 22:57:42.943002+00
243	Dunia Yesenia	Ramírez Jemio	71260127	dunia.ramirez.jemio@gmail.com	Universidad Católica Boliviana "San Pablo" (UCB)	t	Control de Calidad	2017-06-14 22:58:58.406381+00
244	Odilia Kalen 	Calle Catrunda	75847594	kalen758@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Desarrollo de Software	2017-06-14 23:12:11.764976+00
245	Norma Jacqueline	Para Quispe2	65565372	jacqueline.paquispe@gmail.com	Universidad Pública de El Alto (UPEA)	f	Inteligencia Artificial	2017-06-14 23:13:34.323093+00
246	Ximena	Soto	76121469	x.soto.salvador@gmail.com	Otro	t	Desarrollo de Software	2017-06-14 23:37:19.222021+00
247	Mauricio David	Yucra Troche	76297995	mauro_734@yahoo.com	Universidad Mayor de San Andrés (UMSA)	f	Diseño	2017-06-15 00:15:35.183475+00
248	Edith Jhoselyn	Lopez Fernandez	71213733	edith.tstm@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Desarrollo de Software	2017-06-15 00:27:45.444243+00
249	Yhamin 	Polo	72679703	entnimras@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Diseño	2017-06-15 00:42:10.604611+00
250	Sergio Adrián	Ticona Silvestre	69816150	seanixgx@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Desarrollo de Software	2017-06-15 00:57:29.359691+00
251	Hendrik Michael	Ramos Suarez	60534504	gamelomi@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Inteligencia Artificial	2017-06-15 01:05:04.53725+00
252	giovani	mena	67076901	joanlupin@gamil.com	Otro	f	Otro	2017-06-15 01:05:47.713541+00
253	Wáskar Ernesto	Gómez Fernández	73500756	waskar007@gmail.com	Universidad Católica Boliviana "San Pablo" (UCB)	f	IoT	2017-06-15 01:30:50.874732+00
254	Maria Laura	Pereyra Mamani	72049241	laurapereyra2504@gmail.com	Universidad Católica Boliviana "San Pablo" (UCB)	f	Inteligencia Artificial	2017-06-15 02:01:07.54905+00
255	Waskar Ernesto	Gomez Fernandez	73500756	waskar007@gmail.com	Universidad Católica Boliviana "San Pablo" (UCB)	f	IoT	2017-06-15 02:27:47.68225+00
256	Vladimir Leonardo	Quisbert Rios	67349403	leonardo2quisbert2rios@gmail.com	Otro	f	Realidad Virtual	2017-06-15 04:42:14.707697+00
257	Diego Fernando	Ticona Ramos	60696909	diegonano09@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Desarrollo de Software	2017-06-15 04:50:01.850183+00
258	José David	Mamani Quispe	61150704	mq.josedavid@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Inteligencia Artificial	2017-06-15 04:58:02.457332+00
259	Reddy Abel	Tintaya Conde	67312263	aaabeeelooon@gmail.com	Escuela Militar de Ingeniería (EMI)	f	Desarrollo de Software	2017-06-15 08:25:11.533589+00
260	Willyams	Yujra	70189721	yracnet@gmail.com	Universidad Mayor de San Andrés (UMSA)	t	Desarrollo de Software	2017-06-15 12:15:04.223965+00
261	Claudio E	Torrez H	63166416	cetorrez1@gmail.com	Otro	t	Desarrollo de Software	2017-06-15 13:36:21.843387+00
262	Donizete Luiz	Roca Balderrama	71201052	doniroca@gmail.com	Universidad Católica Boliviana "San Pablo" (UCB)	t	Diseño	2017-06-15 13:38:10.411617+00
263	Willyams	Yujra	70189721	yracnet@gmail.com	Universidad Mayor de San Andrés (UMSA)	t	Desarrollo de Software	2017-06-15 13:56:11.400749+00
264	Fredy Reynaldo	Quisbert Calizaya	60477200	reynaldqc@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Diseño	2017-06-15 13:56:14.499198+00
265	Sabina	Chambi Apaza 	70591730	sabinachambiapaza@gmail.com	Universidad Mayor de San Andrés (UMSA)	t	Desarrollo de Software	2017-06-15 14:15:55.515358+00
266	Aylin Maglenny	Gutierrez Zelada	76239753 	forevermaglee@gmail.com	Otro	f	Inteligencia Artificial	2017-06-15 14:57:24.15254+00
267	Alvaro	Arce	72041691	alantezana@gmail.com	Otro	t	Desarrollo de Software	2017-06-15 15:26:08.226621+00
268	Angela Kalen 	Calle catrunda	69783633	angelakalencatrunda@gmail.com	Universidad Salesiana Boliviana	f	Inteligencia Artificial	2017-06-15 15:44:33.282965+00
269	RICHARD	GUTIERREZ CONDORI	75224311	rychard.gutierrez@gmail.com	Otro	f	Desarrollo de Software	2017-06-15 16:23:34.609877+00
270	GASTON	GUTIERREZ CONDORI	75224311	rychard.gutierrez@gmail.com	Otro	f	Desarrollo de Software	2017-06-15 16:25:35.133742+00
271	Griselda Karen	Sillerico Justo	70563156	karensillericojusto@gmail.com	Otro	f	Inteligencia Artificial	2017-06-15 17:19:02.100315+00
272	Viviana Fátima 	Pardo Aliaga	73713697	Vivi.pardoa@gmail.com	Universidad Mayor de San Andrés (UMSA)	t	Desarrollo de Software	2017-06-15 17:29:39.896019+00
273	Franklin 	Vargas velasco	67047362	vfranklin141@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Desarrollo de Software	2017-06-15 18:21:49.211072+00
274	IBAN	ANTONIO MONTECINOS	75265665	ibanphoenix@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Diseño	2017-06-15 18:26:50.670157+00
275	Yolanda rosmery 	Llanos huanca	78835081	rosmery_15a_@hotmail.com	Universidad Salesiana Boliviana	f	Desarrollo de Software	2017-06-15 19:35:27.308745+00
276	Laleshk' Wara	Vallejos Copana	76741455	marbanchristian@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Otro	2017-06-15 19:39:14.630708+00
277	Giancarla	Rivero Revollo	60621803	riverosrevollog@gmail.com	Universidad Franz Tamayo (UNIFRANZ)	f	Diseño	2017-06-15 19:49:27.327759+00
278	Cesar Antonio	Narvaez Gutierrez	71545552	cesar.xd.262@gmail.com	Escuela Militar de Ingeniería (EMI)	t	DevOps	2017-06-15 19:50:44.062586+00
279	Christian	Marban	8337564	marbanchristian@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Otro	2017-06-15 20:00:01.313331+00
280	Gustavo	Rondo	77550947	gurondo777@gmail.com	Universidad Salesiana Boliviana	t	Desarrollo de Software	2017-06-15 21:11:33.605143+00
281	Carlos Andrés	Martínez Cuéllar	67025211	martinez96carlos@gmail.com	Universidad Católica Boliviana "San Pablo" (UCB)	f	Diseño	2017-06-15 21:15:49.877987+00
282	Brayan Juan	Mariscal Flores	75846462	mariscalfloresbrayan@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Inteligencia Artificial	2017-06-15 22:45:58.145646+00
283	Alain	Alarcon Chana	73275002	umsa.psico@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Inteligencia Artificial	2017-06-15 22:48:56.409412+00
284	Ruddy micael	Loayza gutierrez	70669934	loayzaruddymad@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Inteligencia Artificial	2017-06-15 23:20:44.097538+00
285	Raquel 	Condori Palomeque	69740076	raquelrojo18@gmail.com	Universidad Mayor de San Andrés (UMSA)	t	Desarrollo de Software	2017-06-15 23:53:09.96207+00
286	Cristian Guery 	Tarqui Morales	77231791	garrascris@gmail.com	Universidad Pública de El Alto (UPEA)	f	Otro	2017-06-16 01:40:16.22213+00
287	DIEGO ARMANDO	YANARICO MAMANI	76260163	yanaricodiego@gmail.com	Universidad Salesiana Boliviana	f	Desarrollo de Software	2017-06-16 01:42:47.108153+00
288	javier andres	zelada yujra	67327357	javazelada@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Desarrollo de Software	2017-06-16 01:44:19.857317+00
289	Eneida Sumaya	Gonzales Lema	79115870	e.gonzaleslema@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Realidad Virtual	2017-06-16 01:48:05.206714+00
290	Blanca alicia	Machaca azpe	70138975	alicia.azpe10@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Desarrollo de Software	2017-06-16 01:59:49.047985+00
291	Eddy Winston	Banda Surco	72571001	eddywinstonbanda@gmail.com	Universidad Mayor de San Andrés (UMSA)	t	Desarrollo de Software	2017-06-16 02:31:25.155841+00
292	Fidel	Conde	73040341	fidel.angel.1984@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Desarrollo de Software	2017-06-16 02:40:44.009215+00
293	Tania 	Alanoca Larico	67145963	duquesa571@gmail.com	Universidad Pública de El Alto (UPEA)	f	Realidad Virtual	2017-06-16 02:49:52.438395+00
294	Mariel Sandy	Mamani Tola	67123478	mariellider@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Diseño	2017-06-16 02:50:28.352635+00
295	Noelia 	Rendón 	60126803	noelia.ren.jun@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Desarrollo de Software	2017-06-16 02:51:05.916951+00
296	Jhonnathan gary	Marín salgueiro	78818675	garymarin6@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Realidad Virtual	2017-06-16 03:26:31.647229+00
297	Eleazar Ramiro	Loayza Crespo	79580858	leomar20rambito@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Desarrollo de Software	2017-06-16 03:31:41.465834+00
298	Freddy Dagner	Encinas Manjon	72051168	encinasfreddy@gmail.com	Otro	f	DevOps	2017-06-16 03:58:07.730704+00
299	Valeria Evelin	Guarachi Cori	61128649	valeriaevelin40@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Diseño	2017-06-16 04:12:22.368199+00
300	Rene	Espinoza	67133625	recespinoza@gmail.com	Universidad Mayor de San Andrés (UMSA)	t	Desarrollo de Software	2017-06-16 04:21:15.610892+00
301	Danny Michael 	Chuquimia Choque	67346069	dannychuquimia@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Desarrollo de Software	2017-06-16 05:04:45.358507+00
302	Paul Stéffano	Velarde Chuquimia	79622150	teffo321@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Desarrollo de Software	2017-06-16 05:55:27.087763+00
303	Johnn	Hidalgo Canaviri	70595607	johnna.7h@gmail.com	Otro	f	Otro	2017-06-16 08:09:58.45452+00
304	Edgar	Gavincha	70176537	edgar_usb@hotmail.com	Otro	f	Otro	2017-06-16 08:11:03.035866+00
305	Rodrigo	Saravia	765552361	xhrodric@gmail.com	Otro	f	Otro	2017-06-16 08:14:51.690101+00
306	Marcelo	Rodriguez Soliz	72094596	mmrs.72025@gmail.com	Otro	t	Otro	2017-06-16 08:17:57.648651+00
307	Rafael	Rodriguez Ramos	69768967	rafael_m_rodriguez@hotmail.com	Otro	f	Otro	2017-06-16 08:19:19.988556+00
308	Victor	Torrez Campos	68133149	victortorrezcampos@gmail.com	Otro	f	Otro	2017-06-16 08:23:49.992604+00
309	Claudio E	Torrez H	63166416	cetorrez1@gmail.com	Otro	t	Desarrollo de Software	2017-06-16 09:04:56.22646+00
310	Juan Carlos	Estrada Flores	79508669	estradajuanky@gmail.com	Otro	f	Diseño	2017-06-16 13:49:38.424093+00
311	Vania	Huayta	72218175	mel.ania867@gmail.com	Otro	t	Inteligencia Artificial	2017-06-16 13:52:56.035711+00
312	Luis Felipe	Quisbert Quispe	60522919	lq150415@gmail.com	Universidad Franz Tamayo (UNIFRANZ)	f	Desarrollo de Software	2017-06-16 13:59:55.751867+00
313	Luis Felipe	Quisbert Quispe	60522919	lq150415@gmail.com	Universidad Franz Tamayo (UNIFRANZ)	f	Desarrollo de Software	2017-06-16 14:04:20.448335+00
314	Adriana Mariel 	Lavadenz Maceda 	73030102	adriana.lavadenz@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Desarrollo de Software	2017-06-16 14:27:50.711433+00
315	Alison Fabiola	Velasco Mallea	65144354	velasco.alison.2803@gmail.com	Universidad Mayor de San Andrés (UMSA)	t	Desarrollo de Software	2017-06-16 14:30:09.222945+00
316	Juan Pablo 	Castillo Rioja	79101946	jnpbl92@gmail.com	Universidad Católica Boliviana "San Pablo" (UCB)	f	Inteligencia Artificial	2017-06-16 15:35:06.463676+00
317	Guido Hernan 	Cuty Llanqui 	73718134 	gcuty08@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Realidad Virtual	2017-06-16 15:38:05.768211+00
318	Sergio	Baltazar 	73506549	Sdbaltazar89@gmail.com	Universidad Mayor de San Andrés (UMSA)	f	Realidad Virtual	2017-06-16 16:02:42.840683+00
319	Omar	Mendoza calle	74074692	sylermen@gmail.com	Universidad Franz Tamayo (UNIFRANZ)	f	IoT	2017-06-16 17:40:56.716277+00
\.


--
-- Name: registro_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('registro_id_seq', 319, true);


--
-- Data for Name: zinnia_category; Type: TABLE DATA; Schema: public; Owner: root
--

COPY zinnia_category (id, title, slug, description, lft, rght, tree_id, level, parent_id) FROM stdin;
\.


--
-- Name: zinnia_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('zinnia_category_id_seq', 1, false);


--
-- Data for Name: zinnia_entry; Type: TABLE DATA; Schema: public; Owner: root
--

COPY zinnia_entry (id, title, slug, status, start_publication, end_publication, creation_date, last_update, content, comment_enabled, pingback_enabled, trackback_enabled, comment_count, pingback_count, trackback_count, excerpt, image, featured, tags, login_required, password, content_template, detail_template) FROM stdin;
\.


--
-- Data for Name: zinnia_entry_authors; Type: TABLE DATA; Schema: public; Owner: root
--

COPY zinnia_entry_authors (id, entry_id, author_id) FROM stdin;
\.


--
-- Name: zinnia_entry_authors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('zinnia_entry_authors_id_seq', 1, false);


--
-- Data for Name: zinnia_entry_categories; Type: TABLE DATA; Schema: public; Owner: root
--

COPY zinnia_entry_categories (id, entry_id, category_id) FROM stdin;
\.


--
-- Name: zinnia_entry_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('zinnia_entry_categories_id_seq', 1, false);


--
-- Name: zinnia_entry_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('zinnia_entry_id_seq', 1, false);


--
-- Data for Name: zinnia_entry_related; Type: TABLE DATA; Schema: public; Owner: root
--

COPY zinnia_entry_related (id, from_entry_id, to_entry_id) FROM stdin;
\.


--
-- Name: zinnia_entry_related_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('zinnia_entry_related_id_seq', 1, false);


--
-- Data for Name: zinnia_entry_sites; Type: TABLE DATA; Schema: public; Owner: root
--

COPY zinnia_entry_sites (id, entry_id, site_id) FROM stdin;
\.


--
-- Name: zinnia_entry_sites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('zinnia_entry_sites_id_seq', 1, false);


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_key UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_codename_key; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_key UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_group_id_key; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_key UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_key UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_45f3b1d93ec8c61c_uniq; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_45f3b1d93ec8c61c_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: django_site_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);


--
-- Name: registro_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY registro
    ADD CONSTRAINT registro_pkey PRIMARY KEY (id);


--
-- Name: zinnia_category_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY zinnia_category
    ADD CONSTRAINT zinnia_category_pkey PRIMARY KEY (id);


--
-- Name: zinnia_category_slug_key; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY zinnia_category
    ADD CONSTRAINT zinnia_category_slug_key UNIQUE (slug);


--
-- Name: zinnia_entry_authors_entry_id_author_id_key; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY zinnia_entry_authors
    ADD CONSTRAINT zinnia_entry_authors_entry_id_author_id_key UNIQUE (entry_id, author_id);


--
-- Name: zinnia_entry_authors_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY zinnia_entry_authors
    ADD CONSTRAINT zinnia_entry_authors_pkey PRIMARY KEY (id);


--
-- Name: zinnia_entry_categories_entry_id_category_id_key; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY zinnia_entry_categories
    ADD CONSTRAINT zinnia_entry_categories_entry_id_category_id_key UNIQUE (entry_id, category_id);


--
-- Name: zinnia_entry_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY zinnia_entry_categories
    ADD CONSTRAINT zinnia_entry_categories_pkey PRIMARY KEY (id);


--
-- Name: zinnia_entry_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY zinnia_entry
    ADD CONSTRAINT zinnia_entry_pkey PRIMARY KEY (id);


--
-- Name: zinnia_entry_related_from_entry_id_to_entry_id_key; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY zinnia_entry_related
    ADD CONSTRAINT zinnia_entry_related_from_entry_id_to_entry_id_key UNIQUE (from_entry_id, to_entry_id);


--
-- Name: zinnia_entry_related_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY zinnia_entry_related
    ADD CONSTRAINT zinnia_entry_related_pkey PRIMARY KEY (id);


--
-- Name: zinnia_entry_sites_entry_id_site_id_key; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY zinnia_entry_sites
    ADD CONSTRAINT zinnia_entry_sites_entry_id_site_id_key UNIQUE (entry_id, site_id);


--
-- Name: zinnia_entry_sites_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY zinnia_entry_sites
    ADD CONSTRAINT zinnia_entry_sites_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_253ae2a6331666e8_like; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX auth_group_name_253ae2a6331666e8_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_0e939a4f; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_8373b171; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_417f1b1c; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_0e939a4f; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX auth_user_groups_0e939a4f ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_e8701ad4; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX auth_user_groups_e8701ad4 ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_8373b171; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX auth_user_user_permissions_8373b171 ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_e8701ad4; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX auth_user_user_permissions_e8701ad4 ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_51b3b110094b8aae_like; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX auth_user_username_51b3b110094b8aae_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_417f1b1c; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_e8701ad4; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);


--
-- Name: django_session_de54fa62; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_461cfeaa630ca218_like; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX django_session_session_key_461cfeaa630ca218_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: zinnia_category_3cfbd988; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX zinnia_category_3cfbd988 ON zinnia_category USING btree (rght);


--
-- Name: zinnia_category_656442a0; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX zinnia_category_656442a0 ON zinnia_category USING btree (tree_id);


--
-- Name: zinnia_category_6be37982; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX zinnia_category_6be37982 ON zinnia_category USING btree (parent_id);


--
-- Name: zinnia_category_c9e9a848; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX zinnia_category_c9e9a848 ON zinnia_category USING btree (level);


--
-- Name: zinnia_category_caf7cc51; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX zinnia_category_caf7cc51 ON zinnia_category USING btree (lft);


--
-- Name: zinnia_category_slug_436c0e93e6c6353d_like; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX zinnia_category_slug_436c0e93e6c6353d_like ON zinnia_category USING btree (slug varchar_pattern_ops);


--
-- Name: zinnia_entry_2dbcba41; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX zinnia_entry_2dbcba41 ON zinnia_entry USING btree (slug);


--
-- Name: zinnia_entry_6dc6f11d; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX zinnia_entry_6dc6f11d ON zinnia_entry USING btree (start_publication);


--
-- Name: zinnia_entry_8424d087; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX zinnia_entry_8424d087 ON zinnia_entry USING btree (creation_date);


--
-- Name: zinnia_entry_9acb4454; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX zinnia_entry_9acb4454 ON zinnia_entry USING btree (status);


--
-- Name: zinnia_entry_authors_4f331e2f; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX zinnia_entry_authors_4f331e2f ON zinnia_entry_authors USING btree (author_id);


--
-- Name: zinnia_entry_authors_b64a62ea; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX zinnia_entry_authors_b64a62ea ON zinnia_entry_authors USING btree (entry_id);


--
-- Name: zinnia_entry_b803a79a; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX zinnia_entry_b803a79a ON zinnia_entry USING btree (end_publication);


--
-- Name: zinnia_entry_categories_b583a629; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX zinnia_entry_categories_b583a629 ON zinnia_entry_categories USING btree (category_id);


--
-- Name: zinnia_entry_categories_b64a62ea; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX zinnia_entry_categories_b64a62ea ON zinnia_entry_categories USING btree (entry_id);


--
-- Name: zinnia_entry_related_76fb690f; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX zinnia_entry_related_76fb690f ON zinnia_entry_related USING btree (to_entry_id);


--
-- Name: zinnia_entry_related_da15a9a7; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX zinnia_entry_related_da15a9a7 ON zinnia_entry_related USING btree (from_entry_id);


--
-- Name: zinnia_entry_sites_9365d6e7; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX zinnia_entry_sites_9365d6e7 ON zinnia_entry_sites USING btree (site_id);


--
-- Name: zinnia_entry_sites_b64a62ea; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX zinnia_entry_sites_b64a62ea ON zinnia_entry_sites USING btree (entry_id);


--
-- Name: zinnia_entry_slug_2b17fcf59b18c4f4_idx; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX zinnia_entry_slug_2b17fcf59b18c4f4_idx ON zinnia_entry USING btree (slug, creation_date);


--
-- Name: zinnia_entry_slug_537b981737ba44c4_like; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX zinnia_entry_slug_537b981737ba44c4_like ON zinnia_entry USING btree (slug varchar_pattern_ops);


--
-- Name: zinnia_entry_status_531dcaef477e71b0_idx; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX zinnia_entry_status_531dcaef477e71b0_idx ON zinnia_entry USING btree (status, creation_date, start_publication, end_publication);


--
-- Name: auth_content_type_id_508cf46651277a81_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_content_type_id_508cf46651277a81_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissio_group_id_689710a9a73b7457_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_group_id_689710a9a73b7457_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user__permission_id_384b62483d7071f0_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user__permission_id_384b62483d7071f0_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permiss_user_id_7f0938558328534a_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permiss_user_id_7f0938558328534a_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djan_content_type_id_697914295151027a_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT djan_content_type_id_697914295151027a_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: zinnia_categor_parent_id_4384d287cb9c6bef_fk_zinnia_category_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY zinnia_category
    ADD CONSTRAINT zinnia_categor_parent_id_4384d287cb9c6bef_fk_zinnia_category_id FOREIGN KEY (parent_id) REFERENCES zinnia_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: zinnia_entry__from_entry_id_3a39fb0e18c120a1_fk_zinnia_entry_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY zinnia_entry_related
    ADD CONSTRAINT zinnia_entry__from_entry_id_3a39fb0e18c120a1_fk_zinnia_entry_id FOREIGN KEY (from_entry_id) REFERENCES zinnia_entry(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: zinnia_entry_autho_entry_id_69dc4b6926c8611e_fk_zinnia_entry_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY zinnia_entry_authors
    ADD CONSTRAINT zinnia_entry_autho_entry_id_69dc4b6926c8611e_fk_zinnia_entry_id FOREIGN KEY (entry_id) REFERENCES zinnia_entry(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: zinnia_entry_authors_author_id_32129d58ee94e064_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY zinnia_entry_authors
    ADD CONSTRAINT zinnia_entry_authors_author_id_32129d58ee94e064_fk_auth_user_id FOREIGN KEY (author_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: zinnia_entry_categ_entry_id_63d127c2b43c61eb_fk_zinnia_entry_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY zinnia_entry_categories
    ADD CONSTRAINT zinnia_entry_categ_entry_id_63d127c2b43c61eb_fk_zinnia_entry_id FOREIGN KEY (entry_id) REFERENCES zinnia_entry(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: zinnia_entry_category_id_22b435b430b30942_fk_zinnia_category_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY zinnia_entry_categories
    ADD CONSTRAINT zinnia_entry_category_id_22b435b430b30942_fk_zinnia_category_id FOREIGN KEY (category_id) REFERENCES zinnia_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: zinnia_entry_re_to_entry_id_5206332707b30d1c_fk_zinnia_entry_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY zinnia_entry_related
    ADD CONSTRAINT zinnia_entry_re_to_entry_id_5206332707b30d1c_fk_zinnia_entry_id FOREIGN KEY (to_entry_id) REFERENCES zinnia_entry(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: zinnia_entry_sites_entry_id_3043818140bfa304_fk_zinnia_entry_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY zinnia_entry_sites
    ADD CONSTRAINT zinnia_entry_sites_entry_id_3043818140bfa304_fk_zinnia_entry_id FOREIGN KEY (entry_id) REFERENCES zinnia_entry(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: zinnia_entry_sites_site_id_32a9ecb687937614_fk_django_site_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY zinnia_entry_sites
    ADD CONSTRAINT zinnia_entry_sites_site_id_32a9ecb687937614_fk_django_site_id FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

