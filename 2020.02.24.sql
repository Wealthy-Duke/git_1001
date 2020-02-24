SELECT COUNT(*) FROM countries
WHERE continent = "Africa";

SELECT SUM(population) FROM population_years
JOIN countries
  ON population_years.country_id = countries.id
WHERE continent = "Oceania";

SELECT SUM(population) FROM population_years
JOIN countries
  ON population_years.country_id = countries.id
WHERE continent = "Oceania"
  AND year = "2005";
  
SELECT ROUND(AVG(population), 2) FROM population_years
JOIN countries
  ON population_years.country_id = countries.id
WHERE continent = "South America"
  AND year = "2003";

SELECT name, MIN(population) FROM population_years
JOIN countries
  ON population_years.country_id = countries.id
WHERE year = "2007";

SELECT ROUND(AVG(population), 2) FROM population_years
JOIN countries
  ON population_years.country_id = countries.id
WHERE name = "Poland";

SELECT COUNT(*) FROM countries
WHERE name LIKE '%The%';

SELECT continent, SUM(population) FROM population_years
JOIN countries
  ON population_years.country_id = countries.id
WHERE year = "2010"
GROUP BY continent;
  