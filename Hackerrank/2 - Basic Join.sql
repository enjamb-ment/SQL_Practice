/* SQL Queries (Basic Join)
    Collection of the SQL query answers to the questions under the Basic JOIN filter on HackerRank
    The following were all submitted under the "MySQL" option 
        - the DB2 default has required some syntax that I must not understand.
*/

-- Population Census
SELECT SUM(city.POPULATION) AS pop
FROM CITY AS city
JOIN COUNTRY ON city.CountryCode = country.Code
WHERE country.CONTINENT LIKE 'Asia';

-- African Cities
SELECT city.NAME AS city
FROM CITY
JOIN COUNTRY ON CITY.CountryCode = COUNTRY.Code
WHERE COUNTRY.CONTINENT = 'Africa';

-- Average Population of Each Continent
SELECT country.CONTINENT, ROUND(AVG(city.POPULATION),0) -- not ROUND(,0), but FLOOR()... okay.
FROM COUNTRY AS country                                 -- The FLOOR() function returns the largest integer value that is smaller than or equal to a number.
JOIN CITY AS city ON country.Code = city.CountryCode
GROUP BY country.CONTINENT;

-- The Report
SELECT IF(Grades.grade >= 8,Students.Name, NULL ), Grades.grade, Students.Marks
FROM Grades
JOIN Students ON (Students.Marks >= Grades.Min_Mark AND Students.Marks <= Grades.Max_Mark)
ORDER BY Grades.grade DESC, Students.Name ASC;