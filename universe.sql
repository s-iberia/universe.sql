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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    distance_from_earth numeric,
    age_in_millions_of_years integer,
    description text NOT NULL
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
    name character varying,
    moon_id integer NOT NULL,
    planet_id integer,
    size text NOT NULL,
    age integer
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
    has_life boolean NOT NULL,
    planet_name character varying(30),
    planet_type character varying(30),
    age_b_years integer,
    distance_earth integer,
    has_water boolean NOT NULL,
    name character varying(100),
    galaxy_id integer
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
-- Name: planets_our_system; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planets_our_system (
    name character varying NOT NULL,
    galaxy_id integer,
    planet_id integer,
    planets_our_system_id integer NOT NULL
);


ALTER TABLE public.planets_our_system OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying,
    star_id integer NOT NULL,
    type text,
    distance_earth integer NOT NULL,
    age_star integer,
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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 2500, 1000, 'The bigst');
INSERT INTO public.galaxy VALUES (34, 'Milky Way', 26, 13, 'Medium Size');
INSERT INTO public.galaxy VALUES (35, 'Milky WTriangulum', 500, 20, 'Small Size');
INSERT INTO public.galaxy VALUES (36, 'MX-456', 350, 700, 'The Farthest');
INSERT INTO public.galaxy VALUES (37, 'G-1', 450, 5000, 'The Oldest');
INSERT INTO public.galaxy VALUES (38, 'Magdalena', 50034, 4536, 'Large');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('M-1', 1, 11, 'Large', 50);
INSERT INTO public.moon VALUES ('M-2', 2, 10, 'Medium', 40);
INSERT INTO public.moon VALUES ('M-3', 3, 14, 'Medium', 30);
INSERT INTO public.moon VALUES ('M-4', 5, 7, 'Small', 700);
INSERT INTO public.moon VALUES ('M-5', 6, 7, 'Large', 500);
INSERT INTO public.moon VALUES ('M-6', 7, 7, 'Medium', 600);
INSERT INTO public.moon VALUES ('M-7', 8, 5, 'Super Small', 29);
INSERT INTO public.moon VALUES ('M-8', 9, 9, 'Small', 5);
INSERT INTO public.moon VALUES ('M-9', 10, 14, 'Super Large', 70);
INSERT INTO public.moon VALUES ('M-10', 11, 12, 'Large', 1);
INSERT INTO public.moon VALUES ('M-11', 12, 13, 'Small', 20);
INSERT INTO public.moon VALUES ('M-12', 13, 15, 'Small', 20);
INSERT INTO public.moon VALUES ('M-13', 14, 17, 'Super Large', 60);
INSERT INTO public.moon VALUES ('M-14', 15, 16, 'Large', 90);
INSERT INTO public.moon VALUES ('M-15', 16, 16, 'Small', 90);
INSERT INTO public.moon VALUES ('M-16', 17, 8, 'Small', 100);
INSERT INTO public.moon VALUES ('M-17', 18, 8, 'Large', 100);
INSERT INTO public.moon VALUES ('M-18', 19, 6, 'Medium', 19);
INSERT INTO public.moon VALUES ('M-19', 20, 5, 'Medium', 65);
INSERT INTO public.moon VALUES ('M-20', 21, 9, 'Medium', 69);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (7, false, 'AN-Ax-1', 'Gas', 799, 1000, true, NULL, NULL);
INSERT INTO public.planet VALUES (8, true, 'EXO-01', 'Rocky', 24, 1500, true, NULL, NULL);
INSERT INTO public.planet VALUES (9, false, 'B-123', 'Iced', 500, 5000, false, NULL, NULL);
INSERT INTO public.planet VALUES (10, false, 'R-1543', 'Iced', 300, 4000, false, NULL, NULL);
INSERT INTO public.planet VALUES (11, false, 'E43', 'Gas', 50, 3400, false, NULL, NULL);
INSERT INTO public.planet VALUES (12, false, 'EXO-2', 'Rocky', 100, 740, true, NULL, NULL);
INSERT INTO public.planet VALUES (13, false, 'QRN1', '350', 170, 7000, false, NULL, NULL);
INSERT INTO public.planet VALUES (14, false, 'ACM-1', 'Iced', 30, 10000, true, NULL, NULL);
INSERT INTO public.planet VALUES (15, false, 'Gs-1', 'Gas', 478, 8500, false, NULL, NULL);
INSERT INTO public.planet VALUES (20, true, 'TestKF', NULL, NULL, NULL, true, NULL, 37);
INSERT INTO public.planet VALUES (4, true, 'Earth', 'Rocky', 26, 0, true, NULL, 34);
INSERT INTO public.planet VALUES (5, false, 'Saturn', 'Gas Giant', 29, 13269, false, NULL, 34);
INSERT INTO public.planet VALUES (6, false, 'Mars', 'Rocky', 27, 147, false, NULL, 34);


--
-- Data for Name: planets_our_system; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planets_our_system VALUES ('Earth', 34, 4, 1);
INSERT INTO public.planets_our_system VALUES ('Saturn', 34, 5, 2);
INSERT INTO public.planets_our_system VALUES ('Mars', 34, 6, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Sun', 2, 'Giant', 100, 1000, 34);
INSERT INTO public.star VALUES ('Delta', 4, 'Nano', 10000, 500, 1);
INSERT INTO public.star VALUES ('Alfa', 5, 'Super', 4000, 1000, 36);
INSERT INTO public.star VALUES ('Kent', 6, 'Nova', 4500, 1300, 36);
INSERT INTO public.star VALUES ('Bravo', 7, 'GasG', 7500, 4300, 1);
INSERT INTO public.star VALUES ('Elf', 8, 'Nova', 9500, 7300, 37);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 38, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 20, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: galaxy description; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT description UNIQUE (description);


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
-- Name: star name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT name UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_name_key UNIQUE (name);


--
-- Name: planets_our_system planets_our_system_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planets_our_system
    ADD CONSTRAINT planets_our_system_name_key UNIQUE (name);


--
-- Name: planets_our_system planets_our_system_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planets_our_system
    ADD CONSTRAINT planets_our_system_pkey PRIMARY KEY (planets_our_system_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: planet fk_planet_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: planets_our_system fk_planets_our_system_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planets_our_system
    ADD CONSTRAINT fk_planets_our_system_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: planets_our_system fk_planets_our_system_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planets_our_system
    ADD CONSTRAINT fk_planets_our_system_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

