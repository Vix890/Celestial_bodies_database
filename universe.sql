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
    name character varying(20) NOT NULL,
    frequency numeric(6,1),
    is_real boolean
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
    name character varying(20) NOT NULL,
    light_years_from_earth integer,
    description text,
    size numeric(10,2)
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
    radious_in_km numeric(5,1),
    age_in_billion numeric(4,1),
    is_real boolean,
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
    atmosphere_composition text,
    is_real boolean,
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
    surface_temp_in_k integer,
    type character varying(20),
    light_years_from_earth integer,
    constellation character varying(30),
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

INSERT INTO public.comet VALUES (1, 'Halley', 76.0, true);
INSERT INTO public.comet VALUES (2, 'Enke', 3.3, true);
INSERT INTO public.comet VALUES (3, 'Hale-Bopp', 2533.0, true);
INSERT INTO public.comet VALUES (4, 'Hyakutake', 70000.0, true);
INSERT INTO public.comet VALUES (5, 'Star-Dancer', 4.7, false);
INSERT INTO public.comet VALUES (6, 'Nebula-Streak', 6.1, false);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 2480000, 'Also known as Messier 31, a spiral galaxy', 110000.00);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 25800, 'A spiral galaxy which we live', 110000.00);
INSERT INTO public.galaxy VALUES (3, 'Cygnus A', 500000000, 'An elliptical galaxy with billions of stars in its featurless oval', 540000.00);
INSERT INTO public.galaxy VALUES (4, 'Canis Major Dwarf', 42000, 'A dwarf galaxy closest to the milky way found to date', 25000.00);
INSERT INTO public.galaxy VALUES (5, 'Magellanic Clouds', 158200, 'Irregular galaxies that share a gaseous envelope', 7000.00);
INSERT INTO public.galaxy VALUES (6, 'Virgo A', 55000000, 'An elliptical galaxy with over 700 galaxies appearing in the cluster, including the milky way', 7500000.00);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (38, 'Moon', 1737.1, 4.5, true, 3);
INSERT INTO public.moon VALUES (39, 'Fobos', 11.1, 1.4, true, 4);
INSERT INTO public.moon VALUES (40, 'Deimos', 6.2, 1.4, true, 4);
INSERT INTO public.moon VALUES (41, 'Ganymede', 2631.2, 4.5, true, 5);
INSERT INTO public.moon VALUES (42, 'Callisto', 2410.3, 4.5, true, 5);
INSERT INTO public.moon VALUES (43, 'Lo', 1821.6, 4.5, true, 5);
INSERT INTO public.moon VALUES (44, 'Europe', 1560.7, 4.5, true, 5);
INSERT INTO public.moon VALUES (45, 'Titan', 2575.5, 4.6, true, 6);
INSERT INTO public.moon VALUES (46, 'Enceladus', 252.1, 4.6, true, 6);
INSERT INTO public.moon VALUES (47, 'Triton', 1353.4, 4.6, true, 13);
INSERT INTO public.moon VALUES (48, 'Charon', 603.6, 4.6, true, 14);
INSERT INTO public.moon VALUES (49, 'Miranda', 235.8, 4.6, true, 14);
INSERT INTO public.moon VALUES (50, 'Luminara', 780.9, 2.3, false, 15);
INSERT INTO public.moon VALUES (51, 'Aetheria', 1045.2, 3.8, false, 17);
INSERT INTO public.moon VALUES (52, 'Lyra', 189.5, 800.0, false, 14);
INSERT INTO public.moon VALUES (53, 'Astrion', 326.8, 1.2, false, 15);
INSERT INTO public.moon VALUES (54, 'Zephyr', 520.1, 1.5, false, 14);
INSERT INTO public.moon VALUES (55, 'Orionis', 4257.7, 950.0, false, 16);
INSERT INTO public.moon VALUES (56, 'Arcadia', 290.8, 18.0, false, 16);
INSERT INTO public.moon VALUES (57, 'Nebulus', 620.3, 25.0, false, 17);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', false, '31.7% Potassium, 24.9% Sodium, 9.5% Atomic Oxygen, 7% Argon, etc', true, 1);
INSERT INTO public.planet VALUES (2, 'Venus', false, '96.5% Carbon Dioxide, 3.5% Nitrogen, etc', true, 1);
INSERT INTO public.planet VALUES (3, 'Earth', true, '78.08% Nitrogen, 20.95% Oxygen, etc', true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', false, '95.97% Carbon Dioxide, 1.93% Argon, 1.89% Nitrogen, etc', true, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', false, '89% Hydrogen, 11% Helium, etc', true, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', false, '96.3 Hydrogen, 3.25% Helium, etc', true, 1);
INSERT INTO public.planet VALUES (12, 'Uranus', false, '83% Hydrogen, 15% Helium, etc', true, 1);
INSERT INTO public.planet VALUES (13, 'Neptune', false, '80% Hydrogen 19% Helium, 2.3% Methane, etc', true, 1);
INSERT INTO public.planet VALUES (14, 'Vegeta', true, 'Unknown', false, 5);
INSERT INTO public.planet VALUES (15, 'Namek', true, 'Unknown', false, 6);
INSERT INTO public.planet VALUES (16, 'Sadala', true, 'Unknow', false, 2);
INSERT INTO public.planet VALUES (17, 'Yardrat', true, 'Unknown', false, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 5778, 'Yellow Dwarf', 4, 'Solar System', 2);
INSERT INTO public.star VALUES (2, 'UY Scuti', 3365, 'Red Hypergiant', 5100, 'Scutum', 2);
INSERT INTO public.star VALUES (3, 'V766 Centauri Aa', 5000, 'Yellow Supergiant', 11649, 'Centaurus', 2);
INSERT INTO public.star VALUES (4, 'KY Cyngi', 3550, 'Red Supergiant', 5000, 'Cygnus', 2);
INSERT INTO public.star VALUES (5, 'AH Scorpii', 3600, 'Red Giant', 1881, 'Scorpius', 2);
INSERT INTO public.star VALUES (6, 'W Cephei', 4400, 'Red Supergiant', 4470, 'Cepheus', 2);
INSERT INTO public.star VALUES (7, 'Westerlund', 3000, 'Red Hypergiant', 11500, 'Ara', 2);


--
-- Name: comet_comet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comet_comet_id_seq', 6, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 57, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 17, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: comet comet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_name_key UNIQUE (name);


--
-- Name: comet comet_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_name_key1 UNIQUE (name);


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
-- Name: galaxy galaxy_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key1 UNIQUE (name);


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