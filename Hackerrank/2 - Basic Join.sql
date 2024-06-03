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
SELECT IF(Grades.grade >= 8,Students.Name, NULL), Grades.grade, Students.Marks
FROM Grades
JOIN Students ON (Students.Marks >= Grades.Min_Mark AND Students.Marks <= Grades.Max_Mark)
ORDER BY Grades.grade DESC, Students.Name ASC;

-- Top Competitors
    -- Tables: [Hackers], [Difficulty], [Challenges], [Submissions]
    -- Query: hacker_id and name of hackers who achieved full scores for more than one challenge, ordered in descending order of total challenges
        -- need to create a way to check full_score: COUNT(full_score) ... Submissions.score = Difficulty.score AS full_score(...?)
            -- GROUP BY hacker_id, 
            -- ORDER BY COUNT(full_score) DESC, hacker.hacker_id ASC;
SELECT h.hacker_id, h.name
FROM Hackers AS h
JOIN Submissions AS s ON s.hacker_id = h.hacker_id
JOIN Challenges AS c ON s.challenge_id = c.challenge_id
JOIN Difficulty AS d ON c.difficulty_level = d.difficulty_level AND s.score = d.score
--WHERE COUNT(s.score = d.score) AS full_score >= 1  -- Nope, I want the groups to have the condition; use HAVING
GROUP BY h.hacker_id, h.name
HAVING COUNT(c.challenge_id) > 1 -- A little confused by this part.  I'm just counting the Challenges IDs.  
                                 --   I think the JOIN Difficulty table line is what does it: 
                                 --   It's joined on both the difficulty_level and the score (comparing the hacker's score to what's required for full score)
ORDER BY COUNT(c.challenge_id) DESC, h.hacker_id ASC;