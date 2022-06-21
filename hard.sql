-- Hard: Make a copy of your Medium Challenge.
-- Write out the queries that would add the director’s First Name and Last Name into two separate columns. 
-- Create a query that puts the names together. 
-- Create a query to put the list in alphabetical order by the last name from A-Z After you order the list, 
-- remove the Movies where the Last Name ends with ”R-Z” Write a query where the first three appear

CREATE TABLE IF NOT EXISTS top_movies_copy
SELECT * FROM top_movies;
SELECT * FROM top_movies_copy;

ALTER TABLE top_movies_copy
ADD COLUMN
director_First text,
ADD COLUMN
director_Last text;
-- UPDATE top_movies_copy
-- SET
-- director_First="Sidney",
-- director_Last="Lumet"
-- WHERE title="12 Angry Men";
-- SET SQL_SAFE_UPDATES = 0;
-- UPDATE top_movies_copy
-- SET
-- director_First="Kim",
-- director_Last="Jee-Woon"
-- WHERE title="A Tale of Two Sisters";
-- UPDATE top_movies_copy
-- SET
-- director_First="Kim",
-- director_Last="Bora"
-- WHERE title="House of Hummingbird";
-- UPDATE top_movies_copy
-- SET
-- director_First="Alice",
-- director_Last="Wu"
-- WHERE title="Saving Face";
-- UPDATE top_movies_copy
-- SET
-- director_First="Alex",
-- director_Last="Garland"
-- WHERE title="Ex Machina";
-- UPDATE top_movies_copy
-- SET
-- director_First="Alejandro",
-- director_Last="Amenabar"
-- WHERE title="Tésis";
-- UPDATE top_movies_copy
-- SET
-- director_First="Robert",
-- director_Last="Hiltzik"
-- WHERE title="Sleepaway Camp";
-- UPDATE top_movies_copy
-- SET
-- director_First="Amy",
-- director_Last="Heckerling"
-- WHERE title="Fast Times At Ridgemont High";
-- UPDATE top_movies_copy
-- SET
-- director_First="Andrew",
-- director_Last="Stanton"
-- WHERE title="Finding Nemo";
-- UPDATE top_movies_copy
-- SET
-- director_First="Doug",
-- director_Last="Atchison"
-- WHERE title="Akeelah and the Bee";

SELECT * FROM top_movies_copy;

SELECT CONCAT(director_First,' ',director_Last) AS director_Name
FROM top_movies_copy;

SELECT * FROM top_movies_copy
ORDER BY director_Last ASC;

DELETE FROM top_movies_copy WHERE SUBSTRING(director_Last, 1, 1) BETWEEN 'R' AND 'Z';

SELECT * FROM top_movies_copy;
SELECT *  
FROM top_movies_copy
LIMIT 3;



