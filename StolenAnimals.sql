-- Show All Data --
SELECT * FROM stolen.londonstolenanimals;

-- First 10 Data --
SELECT * 
FROM stolen.londonstolenanimals
Limit 10;

-- Missing Values
SELECT *
FROM stolen.londonstolenanimals
WHERE Borough IS NULL 
   OR AnimalType IS NULL 
   OR OffenceType IS NULL
   OR Recovered IS NULL;

-- Total Incidents -- 
SELECT Count(*) AS total_incidents
FROM stolen.londonstolenanimals;
/* 4796 Total Stolen Animals */

-- Trends in Stolen Animal Incidents Over Time --
SELECT Year, Month, Count(*) AS total_incidents
FROM stolen.londonstolenanimals
Group By Year, Month
Order By Year, Month;

-- Trends in Stolen Animals Over Time By Year
SELECT Year, Count(*) AS total_incidents
FROM stolen.londonstolenanimals
Group By Year
Order By Year;

-- Stolen Animals Over Time By Month
-- --Which months had the most stolen animals incidents? (Top 3)
SELECT Month, Count(*) AS total_incidents
FROM stolen.londonstolenanimals
Group By Month
Order By total_incidents DESC
Limit 3;
/* June had the most stolen animal incidents - 459, July - 450 incidents, September - 438 incidents */ 

-- --Which months had the least stolen animals incidents? (Top 3)
SELECT Month, Count(*) AS total_incidents
FROM stolen.londonstolenanimals
Group By Month
Order By total_incidents ASC
Limit 3;
/* Feburary had the least stolen animal incidents - 310, January - 335 incidents, December - 341 incidents */ 

-- Hotspot Boroughs for Animal Thefts -- 
-- --Which boroughs had the most stolen animals incidents? (Top 5)
SELECT Borough, Count(*) AS total_incidents
FROM stolen.londonstolenanimals
Group By Borough
Order By total_incidents DESC
Limit 5;
/* Most Stolen Incident: Bromley - 250 incidents, Croyden - 244 incidents, Hillingdon - 200 incidents, Enfield - 196 incidents, Greenwich - 194 incidents */   

-- --Which boroughs had the least stolen animals incidents? (Top 5)
SELECT Borough, Count(*) AS total_incidents
FROM stolen.londonstolenanimals
Group By Borough
Order By total_incidents ASC
Limit 5;
/* Least Stolen Incidents: Kensington and Chelsea - 87 incidents, Kingston upon Thames - 90 incidents, Harrow - 94 incidents,
Richmond upon Thames - 97 incidents, Sutton - 97 incidents */

-- Most Common Animal Type Stolen -- 
SELECT AnimalType, Count(*) AS total_stolen_by_animals
FROM stolen.londonstolenanimals
Group By AnimalType
Order By total_stolen_by_animals DESC;
/* Dogs - 3020 stolen, Cat - 894 stolen, Bird - 302 stolen */

-- Most Common Offense Type For Stolen Animals -- 
SELECT OffenceType, Count(*) AS total_stolen_by_offense
FROM stolen.londonstolenanimals
Group By OffenceType
Order By total_stolen_by_offense DESC;
/* Theft and Handling - 3545, Burglary - 840, Robbery - 196 */

-- Recovery Rate Of Stolen Animal --
SELECT ROUND((SUM(CASE WHEN Recovered = 'Recovered' THEN 1 ELSE 0 END) * 100.0) / COUNT(*), 2) AS recovery_rate
FROM stolen.londonstolenanimals;
-- or
SELECT DISTINCT Recovered, Count(*) AS total_incident
FROM stolen.londonstolenanimals
Group by Recovered;
/* 11.53% Stolen Animals Recovered */

-- Recovery Rate of Stolen Animals By Animal Type 
SELECT 
	AnimalType,
	ROUND((SUM(CASE WHEN Recovered = 'Recovered' THEN 1 ELSE 0 END) * 100.0) / COUNT(*), 2) AS recovery_rate
FROM stolen.londonstolenanimals
group by AnimalType
Order by recovery_rate DESC;
/* Arachnid - 33%, Dog - 14.5%, Cat - 8%, Mammal(exc Cat & Dog) - 7%, Fish - 5.6%, Reptile - 5.5%, Bird - 2% */

-- Recovery Rate of Stolen Animals By Offense Type (Top 3)
SELECT 
	OffenceType,
	ROUND((SUM(CASE WHEN Recovered = 'Recovered' THEN 1 ELSE 0 END) * 100.0) / COUNT(*), 2) AS recovery_rate
FROM stolen.londonstolenanimals
group by OffenceType
Order by recovery_rate DESC;
/* Fraud or Forgery - 33%, Criminal Damage - 27%, Violence Against the Person - 26% */

-- Recovery Rate of Stolen Animals By Borough(Top 3)
SELECT 
	Borough,
	ROUND((SUM(CASE WHEN Recovered = 'Recovered' THEN 1 ELSE 0 END) * 100.0) / COUNT(*), 2) AS recovery_rate
FROM stolen.londonstolenanimals
group by Borough
Order by recovery_rate DESC;
/* Greenwich - 16%, Ealing - 15%, Westminster - 14% */
/* Brent - 7%, Suttton - 7%, Tower Hamlets - 8% */

-- Monthly Recovery Rate Trends
SELECT 
    Year,
    Month,
    ROUND((SUM(CASE WHEN Recovered = 'Recovered' THEN 1 ELSE 0 END) * 100.0) / COUNT(*), 2) AS recovery_rate
FROM stolen.londonstolenanimals
GROUP BY Year, Month
ORDER BY Year, Month;

-- Stolen Animals By Borough --
SELECT 
    Borough,
    COUNT(*) AS total_incidents
FROM 
	stolen.londonstolenanimals
GROUP BY 
    Borough
ORDER BY 
    Borough, total_incidents DESC;

-- Stolen Animals By Borough and Offense Type --
SELECT 
    Borough,
    OffenceType,
    COUNT(*) AS total_incidents
FROM 
	stolen.londonstolenanimals
GROUP BY 
    Borough, OffenceType
ORDER BY 
    Borough, total_incidents DESC;
    
-- Stolen Animals By Borough and Animal Type --
SELECT 
    Borough,
    AnimalType,
    COUNT(*) AS total_incidents
FROM 
	stolen.londonstolenanimals
GROUP BY 
    Borough, AnimalType
ORDER BY 
    Borough, total_incidents DESC;

-- Top Offense Types by Borough
SELECT 
    Borough,
    OffenceType,
    COUNT(*) AS total_offenses
FROM stolen.londonstolenanimals
GROUP BY Borough, OffenceType
ORDER BY total_offenses DESC
LIMIT 10;

-- Boroughs with Highest Proportion of Dogs Stolen
SELECT 
    Borough,
    COUNT(*) AS dog_thefts,
    ROUND((COUNT(*) * 100.0) / (SELECT COUNT(*) FROM stolen.londonstolenanimals WHERE AnimalType = 'Dog'), 2) AS percent_of_dog_thefts
FROM stolen.londonstolenanimals
WHERE AnimalType = 'Dog'
GROUP BY Borough
ORDER BY dog_thefts DESC
LIMIT 5;

-- Time of Year Recovery Rate by Animal Type:
SELECT 
    AnimalType,
    Month,
    ROUND((SUM(CASE WHEN Recovered = 'Recovered' THEN 1 ELSE 0 END) * 100.0) / COUNT(*), 2) AS recovery_rate
FROM stolen.londonstolenanimals
GROUP BY AnimalType, Month
ORDER BY AnimalType, Month;

-- Ratio of Offense Types to Total Thefts:
SELECT 
    OffenceType,
    COUNT(*) AS total_offenses,
    ROUND((COUNT(*) * 100.0) / (SELECT COUNT(*) FROM stolen.londonstolenanimals), 2) AS percentage_of_total
FROM stolen.londonstolenanimals
GROUP BY OffenceType
ORDER BY total_offenses DESC;