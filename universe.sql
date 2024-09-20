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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    g_x integer,
    g_y integer,
    description text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.info (
    info_id integer NOT NULL,
    name character varying NOT NULL,
    description text
);


ALTER TABLE public.info OWNER TO freecodecamp;

--
-- Name: info_info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.info_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.info_info_id_seq OWNER TO freecodecamp;

--
-- Name: info_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.info_info_id_seq OWNED BY public.info.info_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    planet_id integer,
    m_b_1 boolean,
    m_b_2 boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    star_id integer,
    description text,
    mass numeric
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    galaxy_id integer,
    s_x numeric,
    description text
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: info info_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.info ALTER COLUMN info_id SET DEFAULT nextval('public.info_info_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milkyway', 0, 0, NULL);
INSERT INTO public.galaxy VALUES (4, 'Andromeda', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Large Magellanic Cloud', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Nebulae', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'Black Eye', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (8, 'Cartwheel', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (9, 'Fireworks', NULL, NULL, NULL);


--
-- Data for Name: info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.info VALUES (4, 'info-1', NULL);
INSERT INTO public.info VALUES (5, 'info-2', NULL);
INSERT INTO public.info VALUES (6, 'info-3', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'the moon', 1, true, true);
INSERT INTO public.moon VALUES (2, 'Deimos', 5, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'Phobos', 5, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'Amalthea', 2, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'Callisto', 2, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Europa', 2, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'Ganymede', 2, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Io', 2, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Dione', 3, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Enceladus', 3, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Hyperion', 3, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Iapetus', 3, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Mimas', 3, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Phoebe', 3, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Rhea', 3, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Tethys', 3, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Titan', 3, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Ariel', 4, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Miranda', 4, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Oberon', 4, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'Titania', 4, NULL, NULL);
INSERT INTO public.moon VALUES (22, 'Umbriel', 4, NULL, NULL);
INSERT INTO public.moon VALUES (23, 'Nereid', 6, NULL, NULL);
INSERT INTO public.moon VALUES (24, 'Triton', 6, NULL, NULL);
INSERT INTO public.moon VALUES (25, 'Charon', 9, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', 1, 'mother earth', NULL);
INSERT INTO public.planet VALUES (2, 'Jupiter', 1, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'Saturn', 1, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'Uranus', 1, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'Mars', 1, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'Neptune', 1, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'Earth', 1, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'Mercury', 1, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'Pluto', 1, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'Venus', 1, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'Ceres', 1, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'Eris', 1, NULL, NULL);
INSERT INTO public.planet VALUES (13, 'Haumea', 1, NULL, NULL);
INSERT INTO public.planet VALUES (14, 'Makemake', 1, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'north star', 1, 123.456, NULL);
INSERT INTO public.star VALUES (2, 'sun', 1, 0, NULL);
INSERT INTO public.star VALUES (3, 'star c3po', 1, NULL, NULL);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 1, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Antares', 1, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Mu Cephei', 1, NULL, NULL);
INSERT INTO public.star VALUES (7, 'Arcturus', 1, NULL, NULL);
INSERT INTO public.star VALUES (8, 'Aldebaran', 1, NULL, NULL);
INSERT INTO public.star VALUES (9, 'Canopus', 1, NULL, NULL);
INSERT INTO public.star VALUES (10, 'Rigel', 1, NULL, NULL);
INSERT INTO public.star VALUES (11, 'UY Scuti', 1, NULL, NULL);
INSERT INTO public.star VALUES (12, 'Stephenson 2-18', 1, NULL, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 9, true);


--
-- Name: info_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.info_info_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 25, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 12, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: info info_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.info
    ADD CONSTRAINT info_name_key UNIQUE (name);


--
-- Name: info info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.info
    ADD CONSTRAINT info_pkey PRIMARY KEY (info_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy ux_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT ux_name UNIQUE (name);


--
-- Name: moon ux_name_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT ux_name_moon UNIQUE (name, planet_id);


--
-- Name: planet ux_name_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT ux_name_planet UNIQUE (name, star_id);


--
-- Name: star ux_name_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT ux_name_star UNIQUE (name, galaxy_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

