--question 1 select all columns and rows from the movies table--

SELECT * FROM movies;

--question 2 select only the title and id of the first 10 rows--
SELECT id, title
FROM movies
LIMIT 10;

--question 3 Find the movie with the id of 485--

SELECT *
FROM movies
WHERE id = 485;

--question 4--

SELECT id
FROM movies
WHERE title = 'Made in America (1993)';
--question 5 Find the first 10 sorted alphabetically--

SELECT *
FROM movies
WHERE id <= 10
ORDER BY title ASC 


--question 6 Find all movies from 2002--

SELECT *
FROM movies
WHERE title LIKE '%(2002)'

--question 7 Find out what year the Godfather came out-- 
SELECT *
FROM movies
WHERE title LIKE '%Godfather%'

--question 8 Without using joins find all the comedies--
SELECT *
FROM movies
WHERE genres LIKE '%Comedy'


--question 9 Find all comedies in the year 2000-- 

SELECT *
FROM movies
WHERE genres LIKE '%Comedy'
AND title LIKE '%(2000)%'

--question 10 Find any movies that are about death and are a comedy-- 

SELECT *
FROM movies
WHERE genres LIKE '%Comedy'
AND title LIKE '%death%'

--question 11 Find any movies from either 2001 or 2002 with a title containing super--

SELECT *
FROM movies
WHERE title LIKE '%super%'
AND (title LIKE '%(2001)%'
OR title LIKE '%(2002)%')

--question 12 Find all the ratings for the movie Godfather, show just the title and the rating--
SELECT m.title, r.rating
FROM movies m
JOIN ratings r ON m.id = r.movie_id
WHERE title='Godfather, The (1972)';

--question 13 Order the previous objective by newest to oldest--

SELECT m.title, r.rating
FROM movies m
JOIN ratings r ON m.id = r.movie_id
WHERE title='Godfather, The (1972)'
ORDER BY r.timestamp DESC;

--question 14 Find the comedies from 2005 and get the title and imdbid from the links table--

SELECT movies.title, links.imdb_id
FROM movies
INNER JOIN links ON movies.id = links.movie_id
WHERE genres LIKE '%Comedy%'
AND title LIKE '%(2005)%'

--question 15 Find all movies that have no ratings--
SELECT *
FROM movies
LEFT JOIN ratings ON movies.id = ratings.movie_id
WHERE ratings.rating IS NULL
--question 16--

--question 17--