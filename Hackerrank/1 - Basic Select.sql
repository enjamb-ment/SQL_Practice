/* SQL Queries (Basic Select)
    Collection of the SQL query answers to the questions under the Basic SELECT filter on HackerRank
    The following were all submitted under the "MySQL" option 
        - the DB2 default has required some syntax that I must not understand.
*/

-- Revising the Select Query I
SELECT * 
FROM CITY 
WHERE POPULATION > 100000 AND COUNTRYCODE LIKE "USA";

-- Revising the Select Query II
SELECT NAME 
FROM CITY 
WHERE POPULATION > 120000 AND COUNTRYCODE LIKE "USA";

-- Select All
SELECT * 
FROM CITY;

-- Select By ID
SELECT * 
FROM CITY 
WHERE ID = 1661;

-- Japanese Cities' Attributes
SELECT * 
FROM CITY 
WHERE COUNTRYCODE LIKE "JPN";

-- Japanese Cities' Names
SELECT NAME 
FROM CITY 
WHERE COUNTRYCODE LIKE "JPN";

-- Weather Observation Station 1
SELECT CITY, STATE 
FROM STATION;

-- Weather Observation Station 3
SELECT DISTINCT CITY 
FROM STATION 
WHERE ID % 2 = 0;

-- Weather Observation Station 4
SELECT COUNT(CITY) - COUNT(DISTINCT CITY) 
FROM STATION;

-- Weather Observation Station 5
(SELECT CITY, LENGTH(CITY) AS length
FROM STATION
ORDER BY length ASC, CITY ASC LIMIT 1)
UNION ALL
(SELECT CITY, LENGTH(CITY) AS length
FROM STATION
ORDER BY length DESC, CITY ASC LIMIT 1);

-- Weather Observation Station 6
SELECT CITY 
FROM STATION 
WHERE CITY LIKE "A%" OR 
CITY LIKE "E%" OR 
CITY LIKE "I%" OR 
CITY LIKE "O%" OR 
CITY LIKE "U%";

-- Weather Observation Station 7
SELECT DISTINCT CITY 
FROM STATION 
WHERE CITY LIKE "%A" OR 
CITY LIKE "%E" OR 
CITY LIKE "%I" OR 
CITY LIKE "%O" OR 
CITY LIKE "%U";

-- Weather Observation Station 8
SELECT DISTINCT CITY 
FROM STATION 
WHERE (CITY LIKE "%A" OR 
CITY LIKE "%E" OR 
CITY LIKE "%I" OR 
CITY LIKE "%O" OR 
CITY LIKE "%U") AND
(CITY LIKE "A%" OR 
CITY LIKE "E%" OR 
CITY LIKE "I%" OR 
CITY LIKE "O%" OR 
CITY LIKE "U%");

-- Weather Observation Station 9
SELECT DISTINCT CITY 
FROM STATION
WHERE CITY NOT LIKE "A%" AND
CITY NOT LIKE "E%" AND
CITY NOT LIKE "I%" AND
CITY NOT LIKE "O%" AND
CITY NOT LIKE "U%";

-- Weather Observation Station 10
SELECT DISTINCT CITY 
FROM STATION
WHERE CITY NOT LIKE "%A" AND
CITY NOT LIKE "%E" AND
CITY NOT LIKE "%I" AND
CITY NOT LIKE "%O" AND
CITY NOT LIKE "%U";

-- Weather Observation Station 11
SELECT DISTINCT CITY 
FROM STATION
WHERE (CITY NOT LIKE "A%" AND
CITY NOT LIKE "E%" AND
CITY NOT LIKE "I%" AND
CITY NOT LIKE "O%" AND
CITY NOT LIKE "U%") OR
(CITY NOT LIKE "%A" AND
CITY NOT LIKE "%E" AND
CITY NOT LIKE "%I" AND
CITY NOT LIKE "%O" AND
CITY NOT LIKE "%U");

-- Weather Observation Station 12
SELECT DISTINCT CITY 
FROM STATION
WHERE (CITY NOT LIKE "A%" AND
CITY NOT LIKE "E%" AND
CITY NOT LIKE "I%" AND
CITY NOT LIKE "O%" AND
CITY NOT LIKE "U%") AND -- This changed from OR
(CITY NOT LIKE "%A" AND
CITY NOT LIKE "%E" AND
CITY NOT LIKE "%I" AND
CITY NOT LIKE "%O" AND
CITY NOT LIKE "%U");

-- Higher Than 75 Marks
SELECT Name
FROM STUDENTS
WHERE Marks > 75
ORDER BY RIGHT(Name, 3) ASC, ID ASC;

-- Employee Names
SELECT name
FROM EMPLOYEE
ORDER BY name ASC;

-- Employee Salaries
SELECT name
FROM Employee
WHERE salary > 2000 AND months < 10
ORDER BY employee_id ASC;

