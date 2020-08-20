SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE answers (
 
	checklistid integer NOT NULL,
	answer_id integer NOT NULL,
	questionnumber integer NOT NULL,
	role boolean NOT NULL,
	answer character varying(2),
	timespent integer,
	comment character varying(150)
	);

ALTER TABLE answers OWNER TO "vagrant";

CREATE SEQUENCE answers_answer_id_seq
	START WITH 1
	INCREMENT BY 1
	NO MINVALUE
	NO MAXVALUE
	CACHE 1;

ALTER TABLE answers_answer_id_seq OWNER TO "vagrant";

ALTER SEQUENCE answers_answer_id_seq OWNED BY answers.answer_id;

ALTER TABLE ONLY answers ALTER COLUMN answer_id SET DEFAULT nextval('answers_answer_id_seq'::regclass);

COPY answers
 (checklistid, answer_id, questionnumber, role, answer, timespent, comment) FROM stdin;
1	1	1	true	y	0	
1	2	2	true	n	0	
1	3	3	true	na	0	
1	4	4	true		0	
1	5	5	true	y	0	
1	6	6	true	n	0	
1	7	7	true	na	0	
1	8	8	true		0	
1	9	9	true	y	0	
1	10	10	true	n	0	
1	11	11	true	na	0	
1	12	12	true		0	
1	13	13	true	y	0	
1	14	14	true	n	0	
1	15	15	true	na	0	
1	16	16	true		0	
1	17	17	true	y	0	
1	18	18	true	n	0	
1	19	19	true	na	0	
1	20	20	true		0	
1	21	21	true	y	0	
1	22	22	true	n	0	
1	23	23	true	na	0	
1	24	24	true		0	
1	25	25	true	y	0	
1	26	26	true	n	0	
1	27	27	true	na	0	
1	28	28	true		0	
1	29	29	true	y	0	
1	30	30	true	n	0	
1	31	31	true	na	0	
1	32	32	true		0	
1	33	33	true	y	0	
1	34	34	true	n	0	
1	35	35	true	na	0	
1	36	36	true		0	
1	37	37	true	y	0	
1	38	38	true	n	0	
1	39	39	true	na	0	
1	40	40	true		0	
1	41	41	true	y	0	
1	42	42	true	n	0	
1	43	43	true	na	0	
1	44	44	true		0	
1	45	45	true	y	0	
1	46	46	true	n	0	
1	47	47	true	na	0	
2	48	1	true		0	
2	49	2	true	y	0	
2	50	3	true	n	0	
2	51	4	true	na	0	
2	52	5	true		0	
2	53	6	true	y	0	
2	54	7	true	n	0	
2	55	8	true	na	0	
2	56	9	true		0	
2	57	10	true	y	0	
2	58	11	true	n	0	
2	59	12	true	na	0	
2	60	13	true		0	
2	61	14	true	y	0	
2	62	15	true	n	0	
2	63	16	true	na	0	
2	64	17	true	y	0	
2	65	18	true	n	0	
2	66	19	true	na	0	
2	67	20	true		0	
2	68	21	true	y	0	
3	69	1	true	y	0	
3	70	2	true	y	0	
3	71	3	true	y	0	
3	72	4	true	y	0	
3	73	5	true	y	0	
3	74	6	true	y	0	
3	75	7	true	y	0	
3	76	8	true	y	0	
3	77	9	true	y	0	
3	78	10	true	y	0	
3	79	11	true	y	0	
3	80	12	true	y	0	
3	81	13	true	y	0	
3	82	14	true	y	0	
3	83	15	true	y	0	
3	84	16	true	y	0	
3	85	17	true	y	0	
3	86	18	true	y	0	
3	87	19	true	y	0	
3	88	20	true	y	0	
3	89	21	true	y	0	
3	90	22	true	y	0	
3	91	23	true	y	0	
3	92	24	true	y	0	
3	93	25	true	y	0	
3	94	26	true	y	0	
3	95	27	true	y	0	
3	96	28	true	y	0	
3	97	29	true	y	0	
3	98	30	true	y	0	
3	99	31	true	y	0	
3	100	32	true	y	0	
3	101	33	true	y	0	
3	102	34	true	y	0	
3	103	35	true	y	0	
3	104	36	true	y	0	
3	105	37	true	y	0	
3	106	38	true	y	0	
3	107	39	true	y	0	
3	108	40	true	y	0	
3	109	41	true	y	0	
3	110	42	true	y	0	
3	111	43	true	y	0	
3	112	44	true	y	0	
3	113	45	true	y	0	
3	114	46	true	y	0	
3	115	47	true	y	0	
4	116	1	true	y	0	
4	117	2	true	y	0	
4	118	3	true	y	0	
4	119	4	true	y	0	
4	120	5	true	y	0	
4	121	6	true	y	0	
4	122	7	true	y	0	
4	123	8	true	y	0	
4	124	9	true	y	0	
4	125	10	true	y	0	
4	126	11	true	y	0	
4	127	12	true	y	0	
4	128	13	true	y	0	
4	129	14	true	y	0	
4	130	15	true	y	0	
4	131	16	true	y	0	
4	132	17	true	y	0	
4	133	18	true	y	0	
4	134	19	true	y	0	
4	135	20	true	y	0	
4	136	21	true	y	0	
5	137	1	true		0	
5	138	2	true		0	
5	139	3	true		0	
5	140	4	true		0	
5	141	5	true		0	
5	142	6	true		0	
5	143	7	true		0	
5	144	8	true		0	
5	145	9	true		0	
5	146	10	true		0	
5	147	11	true		0	
5	148	12	true		0	
5	149	13	true		0	
5	150	14	true		0	
5	151	15	true		0	
5	152	16	true		0	
5	153	17	true		0	
5	154	18	true		0	
5	155	19	true		0	
5	156	20	true		0	
5	157	21	true		0	
5	158	22	true		0	
5	159	23	true		0	
5	160	24	true		0	
5	161	25	true		0	
5	162	26	true		0	
5	163	27	true		0	
5	164	28	true		0	
5	165	29	true		0	
5	166	30	true		0	
5	167	31	true		0	
5	168	32	true		0	
5	169	33	true		0	
5	170	34	true		0	
5	171	35	true		0	
5	172	36	true		0	
5	173	37	true		0	
5	174	38	true		0	
5	175	39	true		0	
5	176	40	true		0	
5	177	41	true		0	
5	178	42	true		0	
5	179	43	true		0	
5	180	44	true		0	
5	181	45	true		0	
5	182	46	true		0	
5	183	47	true		0	
6	184	1	true		0	
6	185	2	true		0	
6	186	3	true		0	
6	187	4	true		0	
6	188	5	true		0	
6	189	6	true		0	
6	190	7	true		0	
6	191	8	true		0	
6	192	9	true		0	
6	193	10	true		0	
6	194	11	true		0	
6	195	12	true		0	
6	196	13	true		0	
6	197	14	true		0	
6	198	15	true		0	
6	199	16	true		0	
6	200	17	true		0	
6	201	18	true		0	
6	202	19	true		0	
6	203	20	true		0	
6	204	21	true		0	
1	205	1	false	y	0	
1	206	2	false	n	0	
1	207	3	false	n	0	
1	208	4	false		0	
1	209	5	false	y	0	
1	210	6	false	n	0	
1	211	7	false	na	0	
1	212	8	false		0	
1	213	9	false	y	0	
1	214	10	false	n	0	
1	215	11	false	na	0	
1	216	12	false		0	
1	217	13	false	y	0	
1	218	14	false	n	0	
1	219	15	false	na	0	
1	220	16	false		0	
1	221	17	false	y	0	
1	222	18	false	n	0	
1	223	19	false	na	0	
1	224	20	false		0	
1	225	21	false	y	0	
1	226	22	false	n	0	
1	227	23	false	na	0	
1	228	24	false		0	
1	229	25	false	y	0	
1	230	26	false	n	0	
1	231	27	false	na	0	
1	232	28	false		0	
1	233	29	false	y	0	
1	234	30	false	n	0	
1	235	31	false	na	0	
1	236	32	false		0	
1	237	33	false	y	0	
1	238	34	false	n	0	
1	239	35	false	na	0	
1	240	36	false		0	
1	241	37	false	y	0	
1	242	38	false	n	0	
1	243	39	false	na	0	
1	244	40	false		0	
1	245	41	false	y	0	
1	246	42	false	n	0	
1	247	43	false	na	0	
1	248	44	false		0	
1	249	45	false	y	0	
1	250	46	false	n	0	
1	251	47	false	na	0	
2	252	1	false		0	
2	253	2	false	y	0	
2	254	3	false	n	0	
2	255	4	false	na	0	
2	256	5	false		0	
2	257	6	false	y	0	
2	258	7	false	n	0	
2	259	8	false	na	0	
2	260	9	false		0	
2	261	10	false	y	0	
2	262	11	false	n	0	
2	263	12	false	na	0	
2	264	13	false		0	
2	265	14	false	y	0	
2	266	15	false	n	0	
2	267	16	false	na	0	
2	268	17	false	y	0	
2	269	18	false	n	0	
2	270	19	false	na	0	
2	271	20	false		0	
2	272	21	false	y	0	
3	273	1	false	y	0	
3	274	2	false	y	0	
3	275	3	false	y	0	
3	276	4	false	y	0	
3	277	5	false	y	0	
3	278	6	false	y	0	
3	279	7	false	y	0	
3	280	8	false	y	0	
3	281	9	false	y	0	
3	282	10	false	y	0	
3	283	11	false	y	0	
3	284	12	false	y	0	
3	285	13	false	y	0	
3	286	14	false	y	0	
3	287	15	false	y	0	
3	288	16	false	y	0	
3	289	17	false	y	0	
3	290	18	false	y	0	
3	291	19	false	y	0	
3	292	20	false	y	0	
3	293	21	false	y	0	
3	294	22	false	y	0	
3	295	23	false	y	0	
3	296	24	false	y	0	
3	297	25	false	y	0	
3	298	26	false	y	0	
3	299	27	false	y	0	
3	300	28	false	y	0	
3	301	29	false	y	0	
3	302	30	false	y	0	
3	303	31	false	y	0	
3	304	32	false	y	0	
3	305	33	false	y	0	
3	306	34	false	y	0	
3	307	35	false	y	0	
3	308	36	false	y	0	
3	309	37	false	y	0	
3	310	38	false	y	0	
3	311	39	false	y	0	
3	312	40	false	y	0	
3	313	41	false	y	0	
3	314	42	false	y	0	
3	315	43	false	y	0	
3	316	44	false	y	0	
3	317	45	false	y	0	
3	318	46	false	y	0	
3	319	47	false	y	0	
4	320	1	false	y	0	
4	321	2	false	y	0	
4	322	3	false	y	0	
4	323	4	false	y	0	
4	324	5	false	y	0	
4	325	6	false	y	0	
4	326	7	false	y	0	
4	327	8	false	y	0	
4	328	9	false	y	0	
4	329	10	false	y	0	
4	330	11	false	y	0	
4	331	12	false	y	0	
4	332	13	false	y	0	
4	333	14	false	y	0	
4	334	15	false	y	0	
4	335	16	false	y	0	
4	336	17	false	y	0	
4	337	18	false	y	0	
4	338	19	false	y	0	
4	339	20	false	y	0	
4	340	21	false	y	0	
5	341	1	false		0	
5	342	2	false		0	
5	343	3	false		0	
5	344	4	false		0	
5	345	5	false		0	
5	346	6	false		0	
5	347	7	false		0	
5	348	8	false		0	
5	349	9	false		0	
5	350	10	false		0	
5	351	11	false		0	
5	352	12	false		0	
5	353	13	false		0	
5	354	14	false		0	
5	355	15	false		0	
5	356	16	false		0	
5	357	17	false		0	
5	358	18	false		0	
5	359	19	false		0	
5	360	20	false		0	
5	361	21	false		0	
5	362	22	false		0	
5	363	23	false		0	
5	364	24	false		0	
5	365	25	false		0	
5	366	26	false		0	
5	367	27	false		0	
5	368	28	false		0	
5	369	29	false		0	
5	370	30	false		0	
5	371	31	false		0	
5	372	32	false		0	
5	373	33	false		0	
5	374	34	false		0	
5	375	35	false		0	
5	376	36	false		0	
5	377	37	false		0	
5	378	38	false		0	
5	379	39	false		0	
5	380	40	false		0	
5	381	41	false		0	
5	382	42	false		0	
5	383	43	false		0	
5	384	44	false		0	
5	385	45	false		0	
5	386	46	false		0	
5	387	47	false		0	
6	388	1	false		0	
6	389	2	false		0	
6	390	3	false		0	
6	391	4	false		0	
6	392	5	false		0	
6	393	6	false		0	
6	394	7	false		0	
6	395	8	false		0	
6	396	9	false		0	
6	397	10	false		0	
6	398	11	false		0	
6	399	12	false		0	
6	400	13	false		0	
6	401	14	false		0	
6	402	15	false		0	
6	403	16	false		0	
6	404	17	false		0	
6	405	18	false		0	
6	406	19	false		0	
6	407	20	false		0	
6	408	21	false		0	
\.

SELECT pg_catalog.setval('answers_answer_id_seq', 12, true);

ALTER TABLE ONLY answers

	ADD CONSTRAINT answers_pkey PRIMARY KEY (answer_id);

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;

