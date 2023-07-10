--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: comet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comet (
    comet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.comet OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comet_comet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comet_comet_id_seq OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.comet_comet_id_seq OWNED BY public.comet.comet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    age_in_millions_of_years numeric(4,1),
    radius integer
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean,
    description text,
    age_in_millions_of_years numeric(4,1),
    radius integer,
    planet_id integer
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
    name character varying(30) NOT NULL,
    has_life boolean,
    description text,
    age_in_millions_of_years numeric(4,1),
    radius integer,
    star_id integer
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
    name character varying(30) NOT NULL,
    description text,
    age_in_millions_of_years numeric(4,1),
    radius integer,
    galaxy_id integer
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
-- Name: comet comet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet ALTER COLUMN comet_id SET DEFAULT nextval('public.comet_comet_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


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
-- Data for Name: comet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comet VALUES (1, 'comet1', 1);
INSERT INTO public.comet VALUES (2, 'comet2', 1);
INSERT INTO public.comet VALUES (3, 'comet3', 1);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milky way', 'mw descr', 1.2, 123);
INSERT INTO public.galaxy VALUES (2, 'galaxy2', 'g2 descr', 2.3, 456);
INSERT INTO public.galaxy VALUES (3, 'galaxy3', 'g3 descr', 3.1, 789);
INSERT INTO public.galaxy VALUES (4, 'galaxy4', 'g4 descr', 4.4, 159);
INSERT INTO public.galaxy VALUES (5, 'galaxy5', 'g5 descr', 5.1, 5559);
INSERT INTO public.galaxy VALUES (6, 'galaxy6', 'g6 descr', 6.6, 654321);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 's1-p1-m1', false, 's1-p1-m1 descr', 1.2, 2, 1);
INSERT INTO public.moon VALUES (2, 's1-p1-m2', false, 's1-p1-m2 descr', 2.1, 1, 1);
INSERT INTO public.moon VALUES (3, 's1-p1-m3', false, 's1-p1-m3 descr', 3.1, 1, 2);
INSERT INTO public.moon VALUES (4, 's1-p1-m4', false, 's1-p1-m4 descr', 4.1, 1, 2);
INSERT INTO public.moon VALUES (5, 's1-p1-m5', false, 's1-p1-m5 descr', 5.1, 2, 2);
INSERT INTO public.moon VALUES (6, 's1-p1-m6', false, 's1-p1-m6 descr', 6.1, 2, 2);
INSERT INTO public.moon VALUES (7, 's1-p1-m7', false, 's1-p1-m7 descr', 7.1, 2, 2);
INSERT INTO public.moon VALUES (8, 's1-p1-m8', false, 's1-p1-m8 descr', 8.1, 2, 3);
INSERT INTO public.moon VALUES (9, 's1-p1-m9', false, 's1-p1-m9 descr', 9.1, 2, 3);
INSERT INTO public.moon VALUES (10, 's1-p1-m10', false, 's1-p1-m10 descr', 10.1, 1, 4);
INSERT INTO public.moon VALUES (11, 's1-p1-m11', false, 's1-p1-m11 descr', 11.1, 1, 4);
INSERT INTO public.moon VALUES (12, 's1-p1-m12', false, 's1-p1-m12 descr', 12.1, 1, 5);
INSERT INTO public.moon VALUES (13, 's1-p1-m13', false, 's1-p1-m13 descr', 13.1, 1, 6);
INSERT INTO public.moon VALUES (14, 's1-p1-m14', true, 's1-p1-m14 descr', 14.1, 1, 6);
INSERT INTO public.moon VALUES (15, 's1-p1-m15', true, 's1-p1-m15 descr', 15.1, 1, 6);
INSERT INTO public.moon VALUES (16, 's1-p1-m16', true, 's1-p1-m16 descr', 16.1, 1, 7);
INSERT INTO public.moon VALUES (17, 's1-p1-m17', true, 's1-p1-m17 descr', 17.1, 1, 7);
INSERT INTO public.moon VALUES (18, 's1-p1-m18', true, 's1-p1-m18 descr', 18.1, 1, 8);
INSERT INTO public.moon VALUES (19, 's1-p1-m19', true, 's1-p1-m19 descr', 19.1, 1, 9);
INSERT INTO public.moon VALUES (20, 's1-p1-m20', true, 's1-p1-m20 descr', 20.1, 1, 11);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'g1-s1-p1', false, 'g1-s1-p1-descr', 1.1, 11, 1);
INSERT INTO public.planet VALUES (2, 'g1-s1-p2', false, 'g1-s1-p2-descr', 2.1, 21, 1);
INSERT INTO public.planet VALUES (3, 'g1-s1-p3', true, 'g1-s1-p3-descr', 3.1, 31, 2);
INSERT INTO public.planet VALUES (4, 'g1-s1-p4', true, 'g1-s1-p4-descr', 3.1, 31, 3);
INSERT INTO public.planet VALUES (5, 'g1-s1-p5', true, 'g1-s1-p5-descr', 3.1, 31, 4);
INSERT INTO public.planet VALUES (6, 'g1-s1-p6', true, 'g1-s1-p6-descr', 6.1, 61, 5);
INSERT INTO public.planet VALUES (7, 'g1-s1-p7', true, 'g1-s1-p7-descr', 7.1, 71, 6);
INSERT INTO public.planet VALUES (8, 'g1-s1-p8', true, 'g1-s1-p8-descr', 8.1, 81, 6);
INSERT INTO public.planet VALUES (9, 'g1-s1-p9', true, 'g1-s1-p9 descr', 5.1, 12, 3);
INSERT INTO public.planet VALUES (10, 'g1-s1-p10', true, 'g1-s1-p10 descr', 12.1, 3, 4);
INSERT INTO public.planet VALUES (11, 'g1-s1-p11', true, 'g1-s1-p11 descr', 7.1, 4, 5);
INSERT INTO public.planet VALUES (12, 'g1-s1-p12', false, 'g1-s1-p12 descr', 12.1, 21, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'g1-s1', 'g1-s1-descr', 1.1, 11, 1);
INSERT INTO public.star VALUES (2, 'g1-s2', 'g1-s2-descr', 1.2, 21, 1);
INSERT INTO public.star VALUES (3, 'g1-s3', 'g1-s3-descr', 3.2, 31, 1);
INSERT INTO public.star VALUES (4, 'g1-s4', 'g1-s4-descr', 4.4, 41, 1);
INSERT INTO public.star VALUES (5, 'g1-s5', 'g1-s5-descr', 5.4, 55, 1);
INSERT INTO public.star VALUES (6, 'g1-s6', 'g1-s6-descr', 6.4, 6, 1);
INSERT INTO public.star VALUES (7, 'g2-s1', 'g2-s1-descr', 1.2, 21, 2);
INSERT INTO public.star VALUES (8, 'g2-s2', 'g2-s2-descr', 2.2, 22, 2);
INSERT INTO public.star VALUES (9, 'g2-s3', 'g2-s3-descr', 3.2, 32, 2);
INSERT INTO public.star VALUES (10, 'g2-s4', 'g2-s4-descr', 4.4, 42, 2);
INSERT INTO public.star VALUES (11, 'g2-s5', 'g2-s5-descr', 5.4, 5, 2);
INSERT INTO public.star VALUES (12, 'g2-s6', 'g2-s6-descr', 6.4, 6, 2);
INSERT INTO public.star VALUES (13, 'g3-s1', 'g3-s1-descr', 3.1, 3, 3);
INSERT INTO public.star VALUES (14, 'g4-s1', 'g4-s1-descr', 4.1, 4, 4);
INSERT INTO public.star VALUES (15, 'g5-s1', 'g5-s1-descr', 5.1, 5, 5);
INSERT INTO public.star VALUES (16, 'g6-s1', 'g6-s1-descr', 6.1, 66, 6);


--
-- Name: comet_comet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comet_comet_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: comet comet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_name_key UNIQUE (name);


--
-- Name: comet comet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_pkey PRIMARY KEY (comet_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: comet comet_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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

