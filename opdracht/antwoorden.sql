-- Opdracht 1 
SELECT * FROM videogamesales

id	name	platform	year	genre	publisher	NA_Sales	EU_Sales	JP_Sales	Other_Sales	Global_Sales	
1	Wii Sports 	Wii 	2006	Sports 	Nintendo 	4149	2902	377	846	8274	
2	Super Mario Bros. 	NES 	1985	Platform 	Nintendo 	2908	358	681	77	4024	
3	Mario Kart Wii 	Wii 	2008	Racing 	Nintendo 	1585	1288	379	331	3582	
4	Wii Sports Resort 	Wii 	2009	Sports 	Nintendo 	1575	1101	328	296	33	
5	Pokemon Red/Pokemon Blue 	GB 	1996	Role-Playing 	Nintendo 	1127	889	1022	1	3137	
6	Tetris 	GB 	1989	Puzzle 	Nintendo 	232	226	422	58	3026	
7	New Super Mario Bros. 	DS 	2006	Platform 	Nintendo 	1138	923	65	29	3001	
8	Wii Play 	Wii 	2006	Misc 	Nintendo 	1403	92	293	285	2902	
9	New Super Mario Bros. Wii 	Wii 	2009	Platform 	Nintendo 	1459	706	47	226	2862	
10	Duck Hunt 	NES 	1984	Shooter 	Nintendo 	2693	63	28	47	2831	
11	Nintendogs 	DS 	2005	Simulation 	Nintendo 	907	11	193	275	2476	
12	Mario Kart DS 	DS 	2005	Racing 	Nintendo 	981	757	413	192	2342	
13	Pokemon Gold/Pokemon Silver 	GB 	1999	Role-Playing 	Nintendo 	9	618	72	71	231	
14	Wii Fit 	Wii 	2007	Sports 	Nintendo 	894	803	36	215	2272	
15	Wii Fit Plus 	Wii 	2009	Sports 	Nintendo 	909	859	253	179	22	
16	Kinect Adventures! 	X360 	2010	Misc 	Microsoft Game Studios 	1497	494	24	167	2182	
17	Grand Theft Auto V 	PS3 	2013	Action 	Take-Two Interactive 	701	927	97	414	214	
18	Grand Theft Auto: San Andreas 	PS2 	2004	Action 	Take-Two Interactive 	943	4	41	1057	2081	
19	Super Mario World 	SNES 	1990	Platform 	Nintendo 	1278	375	354	55	2061	
20	Brain Age: Train Your Brain in Minutes a Day 	DS 	2005	Misc 	Nintendo 	475	926	416	205	2022	
21	Pokemon Diamond/Pokemon Pearl 	DS 	2006	Role-Playing 	Nintendo 	642	452	604	137	1836	
22	Super Mario Land 	GB 	1989	Platform 	Nintendo 	1083	271	418	42	1814	
23	Super Mario Bros. 3 	NES 	1988	Platform 	Nintendo 	954	344	384	46	1728	
24	Grand Theft Auto V 	X360 	2013	Action 	Take-Two Interactive 	963	531	6	138	1638	
25	Grand Theft Auto: Vice City 	PS2 	2002	Action 	Take-Two Interactive 	841	549	47	178	1615	

-- Opdracht 2 
SELECT year, Count(name) AS Totale_spellen_uitgebracht FROM videogamesales WHERE year=1999

year    Totale_spellen_uitgebracht
1999	26	

-- Opdracht 3
SELECT genre, SUM(NA_Sales) AS Totale_spellen_uitgebracht_van_NA_Sales FROM videogamesales WHERE genre="Sports"
genre   Totale_spellen_uitgebracht_van_NA_Sales
Sports 	24081	

-- Opdracht 4
SELECT name, platform, year FROM videogamesales WHERE (year BETWEEN "1990" AND "2005") AND publisher="Nintendo"

name	platform	year	
Pokemon Red/Pokemon Blue 	GB 	1996	
Nintendogs 	DS 	2005	
Mario Kart DS 	DS 	2005	
Pokemon Gold/Pokemon Silver 	GB 	1999	
Super Mario World 	SNES 	1990	
Brain Age: Train Your Brain in Minutes a Day 	DS 	2005	
Pokemon Ruby/Pokemon Sapphire 	GBA 	2002	
Brain Age 2: More Training in Minutes a Day 	DS 	2005	
Pok�mon Yellow: Special Pikachu Edition 	GB 	1998	
Animal Crossing: Wild World 	DS 	2005	
Super Mario 64 	N64 	1996	
Super Mario Land 2: 6 Golden Coins 	GB 	1992	
Super Mario All-Stars 	SNES 	1993	
Pokemon FireRed/Pokemon LeafGreen 	GBA 	2004	
Super Mario 64 	DS 	2004	
Mario Kart 64 	N64 	1996	
Donkey Kong Country 	SNES 	1994	
Super Mario Kart 	SNES 	1992	
GoldenEye 007 	N64 	1997	
The Legend of Zelda: Ocarina of Time 	N64 	1998	
Super Smash Bros. Melee 	GC 	2001	
Mario Kart: Double Dash!! 	GC 	2003	
Big Brain Academy 	DS 	2005	
Pok�mon Emerald Version 	GBA 	2004	
Pok�mon Crystal Version 	GB 	2000	

-- Opdracht 5
SELECT name, MAX(Global_Sales) AS Meeste_geld_opgedracht FROM videogamesales

Wii Sports 	8274	

-- Opdracht 6 
SELECT genre, EU_Sales, AVG(EU_Sales) AS Gemiddelde_verkocht FROM videogamesales WHERE genre="Puzzle"

Puzzle 	226	107.9565	

-- Opdracht 7 
SELECT name, genre, publisher, Min(JP_Sales) FROM videogamesales

Wii Sports 	Sports 	Nintendo 	0	

-- Opdracht 8
SELECT publisher, SUM(Global_Sales) AS Totale_spellen_verkocht FROM videogamesales WHERE publisher="Nintendo"

Nintendo 	132901	

-- Opdracht 9
SELECT name, year FROM videogamesales WHERE genre="Racing" AND publisher="Nintendo" or genre="Racing" AND publisher="Activision"

name	year	
Mario Kart Wii 	2008	
Mario Kart DS 	2005	
Mario Kart 7 	2011	
Mario Kart 64 	1996	
Super Mario Kart 	1992	
Mario Kart 8 	2014	
Mario Kart: Double Dash!! 	2003	
Mario Kart: Super Circuit 	2001	
Diddy Kong Racing 	1997	
Excitebike 	1984	
F-1 Race 	1990	
Star Wars Episode I Racer 	1999	
Wave Race 64 	1996	
F-Zero 	1990	
R.C. Pro-Am 	1988	
Rad Racer 	1986	

-- Opdracht 10
SELECT AVG(NA_Sales) as gemiddelde_Amerika, AVG(JP_Sales) as gemiddelde_Japan, AVG(EU_Sales) as gemiddelde_Europa FROM videogamesales WHERE platform="PS4" AND publisher="Sony Computer Entertainment"

87.8750	9.5000	136.5000	

-- Opdracht 11
DELETE FROM videogamesales WHERE name="Halo 2" AND platform="XB";

-- Opdracht 12
DELETE FROM videogamesales WHERE year=2012 AND publisher="Ubisoft";

-- Opdracht 13
DELETE FROM videogamesales WHERE genre="Adventure" AND publisher="Nintendo";

-- Opdracht 14
DELETE FROM videogamesales WHERE publisher="Nintendo" AND Global_Sales<1000;

-- Opdracht 15
DELETE FROM videogamesales WHERE year=1997 AND NA_Sales>200000;