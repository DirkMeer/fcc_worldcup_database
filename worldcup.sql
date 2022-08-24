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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(50) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (289, 2018, 'Final', 97, 96, 4, 2);
INSERT INTO public.games VALUES (290, 2018, 'Third Place', 99, 98, 2, 0);
INSERT INTO public.games VALUES (291, 2018, 'Semi-Final', 96, 98, 2, 1);
INSERT INTO public.games VALUES (292, 2018, 'Semi-Final', 97, 99, 1, 0);
INSERT INTO public.games VALUES (293, 2018, 'Quarter-Final', 96, 100, 3, 2);
INSERT INTO public.games VALUES (294, 2018, 'Quarter-Final', 98, 101, 2, 0);
INSERT INTO public.games VALUES (295, 2018, 'Quarter-Final', 99, 102, 2, 1);
INSERT INTO public.games VALUES (296, 2018, 'Quarter-Final', 97, 103, 2, 0);
INSERT INTO public.games VALUES (297, 2018, 'Eighth-Final', 98, 104, 2, 1);
INSERT INTO public.games VALUES (298, 2018, 'Eighth-Final', 101, 105, 1, 0);
INSERT INTO public.games VALUES (299, 2018, 'Eighth-Final', 99, 106, 3, 2);
INSERT INTO public.games VALUES (300, 2018, 'Eighth-Final', 102, 107, 2, 0);
INSERT INTO public.games VALUES (301, 2018, 'Eighth-Final', 96, 108, 2, 1);
INSERT INTO public.games VALUES (302, 2018, 'Eighth-Final', 100, 109, 2, 1);
INSERT INTO public.games VALUES (303, 2018, 'Eighth-Final', 103, 110, 2, 1);
INSERT INTO public.games VALUES (304, 2018, 'Eighth-Final', 97, 111, 4, 3);
INSERT INTO public.games VALUES (305, 2014, 'Final', 112, 111, 1, 0);
INSERT INTO public.games VALUES (306, 2014, 'Third Place', 113, 102, 3, 0);
INSERT INTO public.games VALUES (307, 2014, 'Semi-Final', 111, 113, 1, 0);
INSERT INTO public.games VALUES (308, 2014, 'Semi-Final', 112, 102, 7, 1);
INSERT INTO public.games VALUES (309, 2014, 'Quarter-Final', 113, 114, 1, 0);
INSERT INTO public.games VALUES (310, 2014, 'Quarter-Final', 111, 99, 1, 0);
INSERT INTO public.games VALUES (311, 2014, 'Quarter-Final', 102, 104, 2, 1);
INSERT INTO public.games VALUES (312, 2014, 'Quarter-Final', 112, 97, 1, 0);
INSERT INTO public.games VALUES (313, 2014, 'Eighth-Final', 102, 115, 2, 1);
INSERT INTO public.games VALUES (314, 2014, 'Eighth-Final', 104, 103, 2, 0);
INSERT INTO public.games VALUES (315, 2014, 'Eighth-Final', 97, 116, 2, 0);
INSERT INTO public.games VALUES (316, 2014, 'Eighth-Final', 112, 117, 2, 1);
INSERT INTO public.games VALUES (317, 2014, 'Eighth-Final', 113, 107, 2, 1);
INSERT INTO public.games VALUES (318, 2014, 'Eighth-Final', 114, 118, 2, 1);
INSERT INTO public.games VALUES (319, 2014, 'Eighth-Final', 111, 105, 1, 0);
INSERT INTO public.games VALUES (320, 2014, 'Eighth-Final', 99, 119, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (96, 'Croatia');
INSERT INTO public.teams VALUES (97, 'France');
INSERT INTO public.teams VALUES (98, 'England');
INSERT INTO public.teams VALUES (99, 'Belgium');
INSERT INTO public.teams VALUES (100, 'Russia');
INSERT INTO public.teams VALUES (101, 'Sweden');
INSERT INTO public.teams VALUES (102, 'Brazil');
INSERT INTO public.teams VALUES (103, 'Uruguay');
INSERT INTO public.teams VALUES (104, 'Colombia');
INSERT INTO public.teams VALUES (105, 'Switzerland');
INSERT INTO public.teams VALUES (106, 'Japan');
INSERT INTO public.teams VALUES (107, 'Mexico');
INSERT INTO public.teams VALUES (108, 'Denmark');
INSERT INTO public.teams VALUES (109, 'Spain');
INSERT INTO public.teams VALUES (110, 'Portugal');
INSERT INTO public.teams VALUES (111, 'Argentina');
INSERT INTO public.teams VALUES (112, 'Germany');
INSERT INTO public.teams VALUES (113, 'Netherlands');
INSERT INTO public.teams VALUES (114, 'Costa Rica');
INSERT INTO public.teams VALUES (115, 'Chile');
INSERT INTO public.teams VALUES (116, 'Nigeria');
INSERT INTO public.teams VALUES (117, 'Algeria');
INSERT INTO public.teams VALUES (118, 'Greece');
INSERT INTO public.teams VALUES (119, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 320, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 119, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games fk_opponent_team; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_opponent_team FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_winner_team; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_winner_team FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

