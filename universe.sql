--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: coordenada_star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.coordenada_star (
    coordenada_star_id integer NOT NULL,
    valorx numeric NOT NULL,
    valory numeric NOT NULL,
    valorz numeric NOT NULL,
    star_id integer,
    name character varying(25) NOT NULL
);


ALTER TABLE public.coordenada_star OWNER TO freecodecamp;

--
-- Name: coordenada_coordenada_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.coordenada_coordenada_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.coordenada_coordenada_id_seq OWNER TO freecodecamp;

--
-- Name: coordenada_coordenada_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.coordenada_coordenada_id_seq OWNED BY public.coordenada_star.coordenada_star_id;


--
-- Name: coordenada_moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.coordenada_moon (
    coordenada_moon_id integer NOT NULL,
    valorx numeric NOT NULL,
    valory numeric NOT NULL,
    valorz numeric NOT NULL,
    moon_id integer,
    name character varying(25) NOT NULL
);


ALTER TABLE public.coordenada_moon OWNER TO freecodecamp;

--
-- Name: coordenada_moon_coordenada_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.coordenada_moon_coordenada_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.coordenada_moon_coordenada_id_seq OWNER TO freecodecamp;

--
-- Name: coordenada_moon_coordenada_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.coordenada_moon_coordenada_id_seq OWNED BY public.coordenada_moon.coordenada_moon_id;


--
-- Name: coordenada_planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.coordenada_planet (
    coordenada_planet_id integer NOT NULL,
    valorx numeric NOT NULL,
    valory numeric NOT NULL,
    valorz numeric NOT NULL,
    planet_id integer,
    name character varying(25) NOT NULL
);


ALTER TABLE public.coordenada_planet OWNER TO freecodecamp;

--
-- Name: coordenada_planet_coordenada_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.coordenada_planet_coordenada_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.coordenada_planet_coordenada_id_seq OWNER TO freecodecamp;

--
-- Name: coordenada_planet_coordenada_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.coordenada_planet_coordenada_id_seq OWNED BY public.coordenada_planet.coordenada_planet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text NOT NULL,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    count_star integer,
    galaxy_types character varying(25),
    distance_from_earth numeric
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
    description text NOT NULL,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
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
    description text NOT NULL,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    count_moon integer,
    planet_types character varying(25),
    distance_from_earth numeric,
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
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    count_planets integer,
    star_types character varying(25),
    distance_from_earth numeric,
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
-- Name: coordenada_moon coordenada_moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.coordenada_moon ALTER COLUMN coordenada_moon_id SET DEFAULT nextval('public.coordenada_moon_coordenada_id_seq'::regclass);


--
-- Name: coordenada_planet coordenada_planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.coordenada_planet ALTER COLUMN coordenada_planet_id SET DEFAULT nextval('public.coordenada_planet_coordenada_id_seq'::regclass);


--
-- Name: coordenada_star coordenada_star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.coordenada_star ALTER COLUMN coordenada_star_id SET DEFAULT nextval('public.coordenada_coordenada_id_seq'::regclass);


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
-- Data for Name: coordenada_moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.coordenada_moon VALUES (1, 1, 1, 0, 1, 'luna');
INSERT INTO public.coordenada_moon VALUES (2, 30, 30, 30, 2, 'fobos');
INSERT INTO public.coordenada_moon VALUES (3, 30, 25, 30, 3, 'deimos');


--
-- Data for Name: coordenada_planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.coordenada_planet VALUES (1, 0, 0, 0, 1, 'earth');
INSERT INTO public.coordenada_planet VALUES (2, 30, 30, 0, 2, 'Marte');
INSERT INTO public.coordenada_planet VALUES (3, 90, 90, 15, 3, 'Jupyter');


--
-- Data for Name: coordenada_star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.coordenada_star VALUES (1, 2546, 7888, 4588, 1, 'sol_ubic');
INSERT INTO public.coordenada_star VALUES (2, 278999, 45899, 78556, 2, 'proxima_centauri_ubic');
INSERT INTO public.coordenada_star VALUES (3, 24896, 2368, 25, 3, 'titawin_ubicacion');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Via Lactea', 'Es nuestra galaxia', true, false, 8000, 50000, 'epiral', 0);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Galaxia espiral gigante M31, vecina de la Via Lactea', true, false, 10000, 1000000, 'espiral', 2.537);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Galaxia del Triangulo M33, tercera mas grande del Grupo Local', false, false, 8000, 400000, 'espiral', 3.0);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 'Galaxia del Sombrero M104, con un bulbo brillante', false, false, 9000, 800000, 'espiral', 29.3);
INSERT INTO public.galaxy VALUES (5, 'Remolino', 'Galaxia del Remolino M51, famosa por sus brazos', false, false, 7000, 600000, 'espiral', 23.0);
INSERT INTO public.galaxy VALUES (6, 'Molinete', 'Galaxia del Molinete M101, enorme y de frente', false, false, 12000, 1000000, 'espiral', 21.0);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 'Unica luna de la Tierra', false, true, 4530, 0.0000000384, 1);
INSERT INTO public.moon VALUES (2, 'Fobos', 'Luna de Marte con forma irregular', false, false, 4600, 0.00000002, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Segunda luna pequeña de Marte', false, false, 4600, 0.00000002, 2);
INSERT INTO public.moon VALUES (4, 'Io', 'Luna volcanica de Jupiter', false, true, 4600, 0.00000007, 3);
INSERT INTO public.moon VALUES (5, 'Europa', 'Luna helada con oceano subterraneo', false, true, 4600, 0.00000007, 3);
INSERT INTO public.moon VALUES (6, 'Ganimedes', 'Luna mas grande del sistema solar', false, true, 4600, 0.00000007, 3);
INSERT INTO public.moon VALUES (7, 'Calisto', 'Luna antigua y craterizada de Jupiter', false, true, 4600, 0.00000007, 3);
INSERT INTO public.moon VALUES (8, 'Titan', 'Luna de Jupiter inventada para completar', false, true, 4600, 0.00000007, 3);
INSERT INTO public.moon VALUES (9, 'Luna Proxima b I', 'Primera luna de Proxima b', false, true, 4850, 0.00000424, 5);
INSERT INTO public.moon VALUES (10, 'Luna Proxima c I', 'Luna helada de Proxima c', false, true, 4850, 0.00000424, 6);
INSERT INTO public.moon VALUES (11, 'Luna Aldebaran b I', 'Luna gigante de Aldebaran b', false, true, 6400, 65.1, 7);
INSERT INTO public.moon VALUES (12, 'Luna Saffar I', 'Luna rocosa de Saffar', false, true, 3000, 2.537, 8);
INSERT INTO public.moon VALUES (13, 'Luna Saffar II', 'Segunda luna de Saffar', false, false, 3000, 2.537, 8);
INSERT INTO public.moon VALUES (14, 'Luna Samh I', 'Luna de Samh', false, true, 3000, 2.537, 9);
INSERT INTO public.moon VALUES (15, 'Luna Majriti I', 'Luna caliente de Majriti', false, true, 3000, 2.537, 10);
INSERT INTO public.moon VALUES (16, 'Luna Mirach b I', 'Luna de Mirach b', false, true, 5000, 2.537, 11);
INSERT INTO public.moon VALUES (17, 'Luna Mirach b II', 'Segunda luna de Mirach b', false, true, 5000, 2.537, 11);
INSERT INTO public.moon VALUES (18, 'Luna Mizar b I', 'Primera luna de Mizar b', false, true, 300, 21.0, 12);
INSERT INTO public.moon VALUES (19, 'Luna Mizar b II', 'Segunda luna de Mizar b', false, true, 300, 21.0, 12);
INSERT INTO public.moon VALUES (20, 'Luna Tierra II', 'Segunda luna ficticia de Tierra para llegar a 20', false, true, 4540, 0.0000158, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Tierra', 'Planeta con vida y agua', true, true, 4540, 1, 'terrestrial', 0.0000158, 1);
INSERT INTO public.planet VALUES (2, 'Marte', 'Planeta rojo vecino', false, true, 4600, 2, 'terrestrial', 0.00000002, 1);
INSERT INTO public.planet VALUES (3, 'Jupiter', 'Gigante gaseoso mas grande', false, true, 4600, 95, 'gas_giant', 0.00000007, 1);
INSERT INTO public.planet VALUES (4, 'Venus', 'Planeta mas caliente del sistema', false, true, 4600, 0, 'terrestrial', 0.00000004, 1);
INSERT INTO public.planet VALUES (5, 'Proxima b', 'Exoplaneta en zona habitable', false, true, 4850, 0, 'terrestrial', 0.00000424, 2);
INSERT INTO public.planet VALUES (6, 'Proxima c', 'Super tierra fria', false, true, 4850, 0, 'super_earth', 0.00000424, 2);
INSERT INTO public.planet VALUES (7, 'Aldebaran b', 'Gigante gaseoso alrededor de Aldebaran', false, true, 6400, 1, 'gas_giant', 65.1, 3);
INSERT INTO public.planet VALUES (8, 'Saffar', 'Planeta masivo en Titawin Andromeda', false, true, 3000, 0, 'gas_giant', 2.537, 4);
INSERT INTO public.planet VALUES (9, 'Samh', 'Segundo planeta en sistema Titawin', false, true, 3000, 1, 'gas_giant', 2.537, 4);
INSERT INTO public.planet VALUES (10, 'Majriti', 'Tercer planeta caliente en Titawin', false, true, 3000, 0, 'hot_jupiter', 2.537, 4);
INSERT INTO public.planet VALUES (11, 'Mirach b', 'Planeta orbitando gigante roja Mirach', false, true, 5000, 0, 'gas_giant', 2.537, 5);
INSERT INTO public.planet VALUES (12, 'Mizar b', 'Planeta joven en sistema Mizar', false, true, 300, 2, 'terrestrial', 21.0, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol', 'Estrella de la Via Lactea donde orbitamos', true, true, 4600, 8, 'yellow_dwarf', 0.0000158, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 'Enana roja mas cercana al Sol', false, true, 4850, 2, 'red_dwarf', 0.00000424, 1);
INSERT INTO public.star VALUES (3, 'Aldebaran', 'Gigante roja en Tauro', false, true, 6400, 0, 'red_giant', 65.1, 1);
INSERT INTO public.star VALUES (4, 'Titawin', 'Estrella en Andromeda con planetas', false, true, 3000, 4, 'yellow_dwarf', 2.537, 2);
INSERT INTO public.star VALUES (5, 'Mirach', 'Gigante roja brillante en Andromeda', false, true, 5000, 1, 'red_giant', 2.537, 2);
INSERT INTO public.star VALUES (6, 'Mizar', 'Sistema estelar multiple en el Molinete', false, true, 300, 0, 'main_sequence', 21.0, 6);


--
-- Name: coordenada_coordenada_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.coordenada_coordenada_id_seq', 3, true);


--
-- Name: coordenada_moon_coordenada_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.coordenada_moon_coordenada_id_seq', 3, true);


--
-- Name: coordenada_planet_coordenada_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.coordenada_planet_coordenada_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: coordenada_moon coordenada_moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.coordenada_moon
    ADD CONSTRAINT coordenada_moon_name_key UNIQUE (name);


--
-- Name: coordenada_moon coordenada_moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.coordenada_moon
    ADD CONSTRAINT coordenada_moon_pkey PRIMARY KEY (coordenada_moon_id);


--
-- Name: coordenada_star coordenada_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.coordenada_star
    ADD CONSTRAINT coordenada_pkey PRIMARY KEY (coordenada_star_id);


--
-- Name: coordenada_planet coordenada_planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.coordenada_planet
    ADD CONSTRAINT coordenada_planet_name_key UNIQUE (name);


--
-- Name: coordenada_planet coordenada_planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.coordenada_planet
    ADD CONSTRAINT coordenada_planet_pkey PRIMARY KEY (coordenada_planet_id);


--
-- Name: coordenada_star coordenada_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.coordenada_star
    ADD CONSTRAINT coordenada_star_id_key UNIQUE (star_id);


--
-- Name: coordenada_star coordenada_star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.coordenada_star
    ADD CONSTRAINT coordenada_star_name_key UNIQUE (name);


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
-- Name: coordenada_moon coordenada_moon_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.coordenada_moon
    ADD CONSTRAINT coordenada_moon_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: coordenada_planet coordenada_planet_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.coordenada_planet
    ADD CONSTRAINT coordenada_planet_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: coordenada_star coordenada_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.coordenada_star
    ADD CONSTRAINT coordenada_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


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

