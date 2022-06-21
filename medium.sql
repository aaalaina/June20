-- Medium: Create a table with your top 10 movies.
-- Include title, release date, and rating Create a query that pulls all movies,
-- in order of release date, where the title includes the letter “s”.

USE MyGI;
CREATE TABLE top_movies(
title text,
released date,
mpaa_rating text,
imdb_score decimal(2, 1)
);
-- not sure which rating yall wanted
INSERT INTO top_movies (title, released, mpaa_rating, imdb_score)
VALUES('12 Angry Men', '1957-04-10', 'PG', 9.0),
('A Tale of Two Sisters', '2003-06-13', 'R', 7.1),
('House of Hummingbird', '2018-10-06', 'Not Rated', 7.4),
('Saving Face', '2004-09-12', 'R', 7.4),
('Ex Machina', '2015-04-10', 'R', 7.7),
('Tésis', '1996-04-12', 'R', 7.4),
('Sleepaway Camp', '1983-11-18', 'R', 6.2),
('Fast Times At Ridgemont High', '1982-08-13', 'R', 7.1),
('Finding Nemo', ' 2003-05-30', 'G', 8.2),
('Akeelah and the Bee', '2006-04-28', 'PG', 7.3);
SELECT * FROM top_movies WHERE title
LIKE "%s%" ORDER BY released;


