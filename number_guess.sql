--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    user_id integer NOT NULL,
    game_date timestamp without time zone DEFAULT now(),
    guess_count integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    name character varying(22) NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (22, '2024-10-01 21:34:54.805504', 779);
INSERT INTO public.games VALUES (22, '2024-10-01 21:34:54.918166', 617);
INSERT INTO public.games VALUES (23, '2024-10-01 21:34:55.023687', 353);
INSERT INTO public.games VALUES (23, '2024-10-01 21:34:55.143424', 659);
INSERT INTO public.games VALUES (22, '2024-10-01 21:34:55.224472', 280);
INSERT INTO public.games VALUES (22, '2024-10-01 21:34:55.306764', 390);
INSERT INTO public.games VALUES (22, '2024-10-01 21:34:55.446788', 946);
INSERT INTO public.games VALUES (11, '2024-10-01 21:35:22.181059', 4);
INSERT INTO public.games VALUES (24, '2024-10-01 21:38:32.946067', 433);
INSERT INTO public.games VALUES (24, '2024-10-01 21:38:33.063845', 789);
INSERT INTO public.games VALUES (25, '2024-10-01 21:38:33.162679', 333);
INSERT INTO public.games VALUES (25, '2024-10-01 21:38:33.2232', 28);
INSERT INTO public.games VALUES (24, '2024-10-01 21:38:33.306966', 237);
INSERT INTO public.games VALUES (24, '2024-10-01 21:38:33.43613', 831);
INSERT INTO public.games VALUES (24, '2024-10-01 21:38:33.573438', 953);
INSERT INTO public.games VALUES (26, '2024-10-01 21:38:58.619187', 16);
INSERT INTO public.games VALUES (26, '2024-10-01 21:38:58.706815', 316);
INSERT INTO public.games VALUES (27, '2024-10-01 21:38:58.851013', 781);
INSERT INTO public.games VALUES (27, '2024-10-01 21:38:58.912217', 25);
INSERT INTO public.games VALUES (26, '2024-10-01 21:38:58.98461', 224);
INSERT INTO public.games VALUES (26, '2024-10-01 21:38:59.08611', 443);
INSERT INTO public.games VALUES (26, '2024-10-01 21:38:59.172021', 502);
INSERT INTO public.games VALUES (11, '2024-10-01 21:39:59.106352', 11);
INSERT INTO public.games VALUES (28, '2024-10-01 21:40:36.312202', 278);
INSERT INTO public.games VALUES (28, '2024-10-01 21:40:36.403767', 543);
INSERT INTO public.games VALUES (29, '2024-10-01 21:40:36.52726', 412);
INSERT INTO public.games VALUES (29, '2024-10-01 21:40:36.607763', 368);
INSERT INTO public.games VALUES (28, '2024-10-01 21:40:36.696637', 290);
INSERT INTO public.games VALUES (28, '2024-10-01 21:40:36.855258', 997);
INSERT INTO public.games VALUES (28, '2024-10-01 21:40:36.936161', 303);
INSERT INTO public.games VALUES (11, '2024-10-01 21:41:07.900885', 1);
INSERT INTO public.games VALUES (30, '2024-10-01 21:41:16.765469', 66);
INSERT INTO public.games VALUES (30, '2024-10-01 21:41:16.907485', 970);
INSERT INTO public.games VALUES (31, '2024-10-01 21:41:17.022548', 461);
INSERT INTO public.games VALUES (31, '2024-10-01 21:41:17.109676', 439);
INSERT INTO public.games VALUES (30, '2024-10-01 21:41:17.218616', 737);
INSERT INTO public.games VALUES (30, '2024-10-01 21:41:17.34163', 966);
INSERT INTO public.games VALUES (30, '2024-10-01 21:41:17.443359', 706);
INSERT INTO public.games VALUES (32, '2024-10-01 21:41:44.710284', 665);
INSERT INTO public.games VALUES (32, '2024-10-01 21:41:44.803239', 436);
INSERT INTO public.games VALUES (33, '2024-10-01 21:41:44.894816', 327);
INSERT INTO public.games VALUES (33, '2024-10-01 21:41:45.029898', 918);
INSERT INTO public.games VALUES (32, '2024-10-01 21:41:45.109227', 423);
INSERT INTO public.games VALUES (32, '2024-10-01 21:41:45.24168', 990);
INSERT INTO public.games VALUES (32, '2024-10-01 21:41:45.306639', 156);
INSERT INTO public.games VALUES (34, '2024-10-01 21:41:48.676311', 649);
INSERT INTO public.games VALUES (34, '2024-10-01 21:41:48.767119', 421);
INSERT INTO public.games VALUES (35, '2024-10-01 21:41:48.857384', 403);
INSERT INTO public.games VALUES (35, '2024-10-01 21:41:48.990044', 824);
INSERT INTO public.games VALUES (34, '2024-10-01 21:41:49.068173', 219);
INSERT INTO public.games VALUES (34, '2024-10-01 21:41:49.138444', 268);
INSERT INTO public.games VALUES (34, '2024-10-01 21:41:49.210821', 113);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES ('a', 11);
INSERT INTO public.users VALUES ('user_1727817352663', 12);
INSERT INTO public.users VALUES ('user_1727817352662', 13);
INSERT INTO public.users VALUES ('user_1727817762379', 14);
INSERT INTO public.users VALUES ('user_1727817762378', 15);
INSERT INTO public.users VALUES ('user_1727817805586', 16);
INSERT INTO public.users VALUES ('user_1727817805585', 17);
INSERT INTO public.users VALUES ('user_1727818308720', 18);
INSERT INTO public.users VALUES ('user_1727818308719', 19);
INSERT INTO public.users VALUES ('user_1727818381931', 20);
INSERT INTO public.users VALUES ('user_1727818381930', 21);
INSERT INTO public.users VALUES ('user_1727818494605', 22);
INSERT INTO public.users VALUES ('user_1727818494604', 23);
INSERT INTO public.users VALUES ('user_1727818712811', 24);
INSERT INTO public.users VALUES ('user_1727818712810', 25);
INSERT INTO public.users VALUES ('user_1727818738527', 26);
INSERT INTO public.users VALUES ('user_1727818738526', 27);
INSERT INTO public.users VALUES ('user_1727818836196', 28);
INSERT INTO public.users VALUES ('user_1727818836195', 29);
INSERT INTO public.users VALUES ('user_1727818876665', 30);
INSERT INTO public.users VALUES ('user_1727818876664', 31);
INSERT INTO public.users VALUES ('user_1727818904559', 32);
INSERT INTO public.users VALUES ('user_1727818904558', 33);
INSERT INTO public.users VALUES ('user_1727818908532', 34);
INSERT INTO public.users VALUES ('user_1727818908531', 35);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 35, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users ux_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT ux_name UNIQUE (name);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

