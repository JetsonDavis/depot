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
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: jeff
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO jeff;

--
-- Name: carts; Type: TABLE; Schema: public; Owner: jeff
--

CREATE TABLE public.carts (
    id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.carts OWNER TO jeff;

--
-- Name: carts_id_seq; Type: SEQUENCE; Schema: public; Owner: jeff
--

CREATE SEQUENCE public.carts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.carts_id_seq OWNER TO jeff;

--
-- Name: carts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeff
--

ALTER SEQUENCE public.carts_id_seq OWNED BY public.carts.id;


--
-- Name: line_items; Type: TABLE; Schema: public; Owner: jeff
--

CREATE TABLE public.line_items (
    id bigint NOT NULL,
    product_id bigint,
    cart_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    quantity integer DEFAULT 1,
    order_id bigint,
    price numeric
);


ALTER TABLE public.line_items OWNER TO jeff;

--
-- Name: line_items_id_seq; Type: SEQUENCE; Schema: public; Owner: jeff
--

CREATE SEQUENCE public.line_items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.line_items_id_seq OWNER TO jeff;

--
-- Name: line_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeff
--

ALTER SEQUENCE public.line_items_id_seq OWNED BY public.line_items.id;


--
-- Name: orders; Type: TABLE; Schema: public; Owner: jeff
--

CREATE TABLE public.orders (
    id bigint NOT NULL,
    name character varying,
    address text,
    email character varying,
    pay_type integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.orders OWNER TO jeff;

--
-- Name: orders_id_seq; Type: SEQUENCE; Schema: public; Owner: jeff
--

CREATE SEQUENCE public.orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.orders_id_seq OWNER TO jeff;

--
-- Name: orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeff
--

ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;


--
-- Name: products; Type: TABLE; Schema: public; Owner: jeff
--

CREATE TABLE public.products (
    id bigint NOT NULL,
    title character varying,
    description text,
    image_url character varying,
    price numeric(8,2),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.products OWNER TO jeff;

--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: jeff
--

CREATE SEQUENCE public.products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_id_seq OWNER TO jeff;

--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeff
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: jeff
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO jeff;

--
-- Name: users; Type: TABLE; Schema: public; Owner: jeff
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying,
    password_digest character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.users OWNER TO jeff;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: jeff
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO jeff;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeff
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: carts id; Type: DEFAULT; Schema: public; Owner: jeff
--

ALTER TABLE ONLY public.carts ALTER COLUMN id SET DEFAULT nextval('public.carts_id_seq'::regclass);


--
-- Name: line_items id; Type: DEFAULT; Schema: public; Owner: jeff
--

ALTER TABLE ONLY public.line_items ALTER COLUMN id SET DEFAULT nextval('public.line_items_id_seq'::regclass);


--
-- Name: orders id; Type: DEFAULT; Schema: public; Owner: jeff
--

ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);


--
-- Name: products id; Type: DEFAULT; Schema: public; Owner: jeff
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: jeff
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: jeff
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2018-12-25 07:38:55.081493	2018-12-25 07:38:55.081493
\.


--
-- Data for Name: carts; Type: TABLE DATA; Schema: public; Owner: jeff
--

COPY public.carts (id, created_at, updated_at) FROM stdin;
62	2019-02-06 22:30:39.206723	2019-02-06 22:30:39.206723
63	2019-02-08 06:49:00.646569	2019-02-08 06:49:00.646569
64	2019-02-08 22:46:05.780278	2019-02-08 22:46:05.780278
23	2019-02-04 10:08:09.362221	2019-02-04 10:08:09.362221
\.


--
-- Data for Name: line_items; Type: TABLE DATA; Schema: public; Owner: jeff
--

COPY public.line_items (id, product_id, cart_id, created_at, updated_at, quantity, order_id, price) FROM stdin;
118	11	\N	2019-02-05 23:51:15.950981	2019-02-05 23:51:25.6279	1	38	8.84
117	8	\N	2019-02-05 23:51:14.439511	2019-02-05 23:51:25.631918	1	38	2.25
121	4	\N	2019-02-06 20:17:34.806289	2019-02-06 20:17:47.726807	1	39	4.69
120	11	\N	2019-02-06 20:17:33.117924	2019-02-06 20:17:47.729602	1	39	8.84
119	8	\N	2019-02-06 20:17:31.086419	2019-02-06 20:17:47.730943	1	39	2.25
122	8	\N	2019-02-06 20:42:12.642633	2019-02-06 20:42:22.025102	1	40	2.25
123	8	\N	2019-02-06 22:19:15.16228	2019-02-06 22:19:25.739664	1	41	2.25
126	4	\N	2019-02-06 22:26:37.11347	2019-02-06 22:26:48.50028	1	42	4.69
125	11	\N	2019-02-06 22:26:36.185268	2019-02-06 22:26:48.502356	1	42	8.84
124	8	\N	2019-02-06 22:26:34.653447	2019-02-06 22:26:48.503762	1	42	2.25
131	12	\N	2019-02-06 22:28:27.494306	2019-02-06 22:28:36.555516	1	43	9.28
130	3	\N	2019-02-06 22:28:26.644054	2019-02-06 22:28:36.557292	1	43	9.85
129	4	\N	2019-02-06 22:28:25.914067	2019-02-06 22:28:36.558466	1	43	4.69
128	11	\N	2019-02-06 22:28:25.12296	2019-02-06 22:28:36.616802	1	43	8.84
127	8	\N	2019-02-06 22:28:24.085048	2019-02-06 22:28:36.618574	1	43	2.25
136	12	\N	2019-02-06 22:29:25.632754	2019-02-06 22:29:34.616248	1	44	9.28
135	3	\N	2019-02-06 22:29:24.846938	2019-02-06 22:29:34.618257	1	44	9.85
134	4	\N	2019-02-06 22:29:24.045214	2019-02-06 22:29:34.619728	1	44	4.69
133	11	\N	2019-02-06 22:29:23.094231	2019-02-06 22:29:34.621202	1	44	8.84
132	8	\N	2019-02-06 22:29:21.923865	2019-02-06 22:29:34.622226	1	44	2.25
\.


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: jeff
--

COPY public.orders (id, name, address, email, pay_type, created_at, updated_at) FROM stdin;
2	Jack	Jack's Address	jack@kac.com	0	2019-02-04 07:09:45.143433	2019-02-04 07:09:45.143433
4	Fred	Fred's Addr	fred@fred.com	2	2019-02-04 07:12:56.190792	2019-02-04 07:12:56.190792
38	jj	j	jeff@very-advanced.com	0	2019-02-05 23:51:25.604673	2019-02-05 23:51:25.604673
39	Jeff Test	Jeff Addr	jeff@very-advanced.com	0	2019-02-06 20:17:47.697378	2019-02-06 20:17:47.697378
40	yo	to	jeff@very-advanced.com	0	2019-02-06 20:42:21.996718	2019-02-06 20:42:21.996718
41	j	j	jeff@very-advanced.com	0	2019-02-06 22:19:25.696956	2019-02-06 22:19:25.696956
42	Jeff	Jeff's House	jeff@very-advanced.com	2	2019-02-06 22:26:48.498626	2019-02-06 22:26:48.498626
43	ffff	f	jeff@very-advanced.com	0	2019-02-06 22:28:36.553334	2019-02-06 22:28:36.553334
44	g	g	jeff@very-advanced.com	0	2019-02-06 22:29:34.614552	2019-02-06 22:29:34.614552
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: jeff
--

COPY public.products (id, title, description, image_url, price, created_at, updated_at) FROM stdin;
3	Blood's a Rover	It’s only half completed, I’m afraid – we haven’t even finished burying the artificial dinosaur skeletons in the crust yet.	7apps.jpg	9.85	2018-12-26 04:47:31.842876	2018-12-26 04:47:31.842876
4	All the King's Men	He was staring at the instruments with the air of one who is trying to convert Fahrenheit to centigrade in his head while his house is burning down.	7apps.jpg	4.69	2018-12-26 04:47:31.845859	2018-12-26 04:47:31.845859
5	Time of our Darkness	They’ve got as much sex appeal as a road accident.	7apps.jpg	3.08	2018-12-26 04:47:31.848025	2018-12-26 04:47:31.848025
6	The Moon by Night	Whatever your tastes, Magrathea can cater for you. We are not proud.	7apps.jpg	9.49	2018-12-26 04:47:31.850677	2018-12-26 04:47:31.850677
7	O Jerusalem!	Don’t Panic	7apps.jpg	7.27	2018-12-26 04:47:31.853219	2018-12-26 04:47:31.853219
9	Time of our Darkness	Earth: Mostly Harmless	7apps.jpg	1.26	2018-12-26 04:47:31.857398	2018-12-26 04:47:31.857398
10	Look to Windward	But Mr. Dent, the plans have been available in the local planning office for the last nine months.	7apps.jpg	0.71	2018-12-26 04:47:31.859239	2018-12-26 04:47:31.859239
11	A Swiftly Tilting Planet	It’s only half completed, I’m afraid – we haven’t even finished burying the artificial dinosaur skeletons in the crust yet.	7apps.jpg	8.84	2018-12-26 04:47:31.861245	2018-12-26 04:47:31.861245
12	Dance Dance Dance	Magrathea itself disappeared and its memory soon passed into the obscurity of legend. In these enlightened days, of course, no one believes a word of it.	7apps.jpg	9.28	2018-12-26 04:47:31.863094	2018-12-26 04:47:31.863094
8	A Handful of Dust	If you’ve never been through a matter transference beam before you’ve probably lost some salt and protein. The beer you had should have cushioned your system a bit.	7apps.jpg	2.25	2018-12-26 04:47:31.855543	2019-02-02 23:57:46.318821
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: jeff
--

COPY public.schema_migrations (version) FROM stdin;
20181225073705
20190123014535
20190123021208
20190126202622
20190126235352
20190203001111
20190203001133
20190204050329
20190206210448
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: jeff
--

COPY public.users (id, name, password_digest, created_at, updated_at) FROM stdin;
3	jeff	$2a$10$oFln6yfgL3DqE77zNZ9CL.lOQT2YLYDfPz/tCGrS3j0RwtloGN1Ni	2019-02-07 05:33:36.873898	2019-02-07 05:33:36.873898
\.


--
-- Name: carts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeff
--

SELECT pg_catalog.setval('public.carts_id_seq', 64, true);


--
-- Name: line_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeff
--

SELECT pg_catalog.setval('public.line_items_id_seq', 136, true);


--
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeff
--

SELECT pg_catalog.setval('public.orders_id_seq', 44, true);


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeff
--

SELECT pg_catalog.setval('public.products_id_seq', 12, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeff
--

SELECT pg_catalog.setval('public.users_id_seq', 3, true);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: jeff
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: carts carts_pkey; Type: CONSTRAINT; Schema: public; Owner: jeff
--

ALTER TABLE ONLY public.carts
    ADD CONSTRAINT carts_pkey PRIMARY KEY (id);


--
-- Name: line_items line_items_pkey; Type: CONSTRAINT; Schema: public; Owner: jeff
--

ALTER TABLE ONLY public.line_items
    ADD CONSTRAINT line_items_pkey PRIMARY KEY (id);


--
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: jeff
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: jeff
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: jeff
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: jeff
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_line_items_on_cart_id; Type: INDEX; Schema: public; Owner: jeff
--

CREATE INDEX index_line_items_on_cart_id ON public.line_items USING btree (cart_id);


--
-- Name: index_line_items_on_order_id; Type: INDEX; Schema: public; Owner: jeff
--

CREATE INDEX index_line_items_on_order_id ON public.line_items USING btree (order_id);


--
-- Name: index_line_items_on_product_id; Type: INDEX; Schema: public; Owner: jeff
--

CREATE INDEX index_line_items_on_product_id ON public.line_items USING btree (product_id);


--
-- Name: line_items fk_rails_11e15d5c6b; Type: FK CONSTRAINT; Schema: public; Owner: jeff
--

ALTER TABLE ONLY public.line_items
    ADD CONSTRAINT fk_rails_11e15d5c6b FOREIGN KEY (product_id) REFERENCES public.products(id);


--
-- Name: line_items fk_rails_2dc2e5c22c; Type: FK CONSTRAINT; Schema: public; Owner: jeff
--

ALTER TABLE ONLY public.line_items
    ADD CONSTRAINT fk_rails_2dc2e5c22c FOREIGN KEY (order_id) REFERENCES public.orders(id);


--
-- Name: line_items fk_rails_af645e8e5f; Type: FK CONSTRAINT; Schema: public; Owner: jeff
--

ALTER TABLE ONLY public.line_items
    ADD CONSTRAINT fk_rails_af645e8e5f FOREIGN KEY (cart_id) REFERENCES public.carts(id);


--
-- PostgreSQL database dump complete
--

