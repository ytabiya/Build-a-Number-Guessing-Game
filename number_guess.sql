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
    game_id integer NOT NULL,
    player_id integer,
    guess_number integer,
    name character varying(22)
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
-- Name: players; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.players (
    player_id integer NOT NULL,
    name character varying(22) NOT NULL
);


ALTER TABLE public.players OWNER TO freecodecamp;

--
-- Name: players_player_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.players_player_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.players_player_id_seq OWNER TO freecodecamp;

--
-- Name: players_player_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.players_player_id_seq OWNED BY public.players.player_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: players player_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players ALTER COLUMN player_id SET DEFAULT nextval('public.players_player_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (39, 91, 40, 'user_1722066357513');
INSERT INTO public.games VALUES (40, 91, 165, 'user_1722066357513');
INSERT INTO public.games VALUES (41, 92, 949, 'user_1722066357512');
INSERT INTO public.games VALUES (42, 92, 736, 'user_1722066357512');
INSERT INTO public.games VALUES (43, 91, 298, 'user_1722066357513');
INSERT INTO public.games VALUES (44, 91, 554, 'user_1722066357513');
INSERT INTO public.games VALUES (45, 91, 236, 'user_1722066357513');
INSERT INTO public.games VALUES (46, 93, 62, 'user_1722066461367');
INSERT INTO public.games VALUES (47, 93, 337, 'user_1722066461367');
INSERT INTO public.games VALUES (48, 94, 4, 'user_1722066461366');
INSERT INTO public.games VALUES (49, 94, 761, 'user_1722066461366');
INSERT INTO public.games VALUES (50, 93, 842, 'user_1722066461367');
INSERT INTO public.games VALUES (51, 93, 707, 'user_1722066461367');
INSERT INTO public.games VALUES (52, 93, 517, 'user_1722066461367');
INSERT INTO public.games VALUES (53, 95, 1, 'Yerlan');
INSERT INTO public.games VALUES (54, 96, 476, 'user_1722066577210');
INSERT INTO public.games VALUES (55, 96, 810, 'user_1722066577210');
INSERT INTO public.games VALUES (56, 97, 419, 'user_1722066577209');
INSERT INTO public.games VALUES (57, 97, 678, 'user_1722066577209');
INSERT INTO public.games VALUES (58, 96, 667, 'user_1722066577210');
INSERT INTO public.games VALUES (59, 96, 540, 'user_1722066577210');
INSERT INTO public.games VALUES (60, 96, 393, 'user_1722066577210');
INSERT INTO public.games VALUES (61, 98, 12, 'erla');
INSERT INTO public.games VALUES (62, 99, 381, 'user_1722066983884');
INSERT INTO public.games VALUES (63, 99, 388, 'user_1722066983884');
INSERT INTO public.games VALUES (64, 100, 246, 'user_1722066983883');
INSERT INTO public.games VALUES (65, 100, 640, 'user_1722066983883');
INSERT INTO public.games VALUES (66, 99, 560, 'user_1722066983884');
INSERT INTO public.games VALUES (67, 99, 96, 'user_1722066983884');
INSERT INTO public.games VALUES (68, 99, 589, 'user_1722066983884');
INSERT INTO public.games VALUES (69, 98, 13, 'erla');
INSERT INTO public.games VALUES (70, 101, 640, 'user_1722067085391');
INSERT INTO public.games VALUES (71, 101, 535, 'user_1722067085391');
INSERT INTO public.games VALUES (72, 102, 357, 'user_1722067085390');
INSERT INTO public.games VALUES (73, 102, 756, 'user_1722067085390');
INSERT INTO public.games VALUES (74, 101, 384, 'user_1722067085391');
INSERT INTO public.games VALUES (75, 101, 998, 'user_1722067085391');
INSERT INTO public.games VALUES (76, 101, 710, 'user_1722067085391');
INSERT INTO public.games VALUES (77, 103, 203, 'user_1722067265187');
INSERT INTO public.games VALUES (78, 103, 554, 'user_1722067265187');
INSERT INTO public.games VALUES (79, 104, 914, 'user_1722067265186');
INSERT INTO public.games VALUES (80, 104, 727, 'user_1722067265186');
INSERT INTO public.games VALUES (81, 103, 286, 'user_1722067265187');
INSERT INTO public.games VALUES (82, 103, 283, 'user_1722067265187');
INSERT INTO public.games VALUES (83, 103, 582, 'user_1722067265187');
INSERT INTO public.games VALUES (84, 105, 441, 'user_1722067294693');
INSERT INTO public.games VALUES (85, 105, 747, 'user_1722067294693');
INSERT INTO public.games VALUES (86, 106, 514, 'user_1722067294692');
INSERT INTO public.games VALUES (87, 106, 857, 'user_1722067294692');
INSERT INTO public.games VALUES (88, 105, 47, 'user_1722067294693');
INSERT INTO public.games VALUES (89, 105, 57, 'user_1722067294693');
INSERT INTO public.games VALUES (90, 105, 774, 'user_1722067294693');
INSERT INTO public.games VALUES (91, 107, 681, 'user_1722067315473');
INSERT INTO public.games VALUES (92, 107, 355, 'user_1722067315473');
INSERT INTO public.games VALUES (93, 108, 186, 'user_1722067315472');
INSERT INTO public.games VALUES (94, 108, 524, 'user_1722067315472');
INSERT INTO public.games VALUES (95, 107, 867, 'user_1722067315473');
INSERT INTO public.games VALUES (96, 107, 449, 'user_1722067315473');
INSERT INTO public.games VALUES (97, 107, 569, 'user_1722067315473');
INSERT INTO public.games VALUES (98, 109, 869, 'user_1722067675624');
INSERT INTO public.games VALUES (99, 109, 456, 'user_1722067675624');
INSERT INTO public.games VALUES (100, 110, 82, 'user_1722067675623');
INSERT INTO public.games VALUES (101, 110, 918, 'user_1722067675623');
INSERT INTO public.games VALUES (102, 109, 304, 'user_1722067675624');
INSERT INTO public.games VALUES (103, 109, 866, 'user_1722067675624');
INSERT INTO public.games VALUES (104, 109, 522, 'user_1722067675624');


--
-- Data for Name: players; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.players VALUES (91, 'user_1722066357513');
INSERT INTO public.players VALUES (92, 'user_1722066357512');
INSERT INTO public.players VALUES (93, 'user_1722066461367');
INSERT INTO public.players VALUES (94, 'user_1722066461366');
INSERT INTO public.players VALUES (95, 'Yerlan');
INSERT INTO public.players VALUES (96, 'user_1722066577210');
INSERT INTO public.players VALUES (97, 'user_1722066577209');
INSERT INTO public.players VALUES (98, 'erla');
INSERT INTO public.players VALUES (99, 'user_1722066983884');
INSERT INTO public.players VALUES (100, 'user_1722066983883');
INSERT INTO public.players VALUES (101, 'user_1722067085391');
INSERT INTO public.players VALUES (102, 'user_1722067085390');
INSERT INTO public.players VALUES (103, 'user_1722067265187');
INSERT INTO public.players VALUES (104, 'user_1722067265186');
INSERT INTO public.players VALUES (105, 'user_1722067294693');
INSERT INTO public.players VALUES (106, 'user_1722067294692');
INSERT INTO public.players VALUES (107, 'user_1722067315473');
INSERT INTO public.players VALUES (108, 'user_1722067315472');
INSERT INTO public.players VALUES (109, 'user_1722067675624');
INSERT INTO public.players VALUES (110, 'user_1722067675623');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 104, true);


--
-- Name: players_player_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.players_player_id_seq', 110, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: players players_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_name_key UNIQUE (name);


--
-- Name: players players_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_pkey PRIMARY KEY (player_id);


--
-- Name: games games_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_name_fkey FOREIGN KEY (name) REFERENCES public.players(name);


--
-- Name: games games_player_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_player_id_fkey FOREIGN KEY (player_id) REFERENCES public.players(player_id);


--
-- PostgreSQL database dump complete
--

