-- Opdracht 1 

SELECT max(wage) AS hoogste_loon_speler_fc_utrecht FROM players WHERE club = "FC Utrecht";

42000	

-- Opdracht 2 
SELECT ROUND(AVG(wage)) AS Gemiddelde_afgerond_van_alle_players FROM players;

50240	

-- Opdracht 3
SELECT SUM(wage) AS Totale_loon_van_alle_spelers_van_FC_Groningen FROM players WHERE club="FC Groningen";

135000	

-- Opdracht 4
SELECT COUNT(name) AS Totale_spelers_van_Manchester_United_en_Manchester_City FROM players WHERE club="Manchester City" OR club="Manchester United";

67	

-- Opdracht 5
SELECT AVG(wage) AS Gemiddelde_loon_in_Nederland FROM players WHERE nationality="Netherlands";

12600.0000	

-- Opdracht 6 
SELECT AVG(wage) AS Gemiddelde_loon_onder_20_jaar FROM players WHERE age<20;

8472.5275	

-- Opdracht 7 
SELECT AVG(wage) AS Gemiddelde_loon_ouder_dan_20_jaar FROM players WHERE age>20;

62130.6306	

-- Opdracht 8
SELECT SUM(value) AS Totale_waarde_van_Chelsea_spelers FROM players WHERE club="Chelsea";

3642185000	

-- Opdracht 9
SELECT ROUND(AVG(age)) AS Gemiddelde_leeftijd FROM players;

24	

-- Opdracht 10
SELECT club, SUM(wage) AS Totale_inkomen, AVG(value) AS Gemiddelde_waarde FROM players WHERE club="Liverpool"

Liverpool 	2664000	60592187.5000	
