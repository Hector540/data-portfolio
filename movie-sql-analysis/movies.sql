-- 1. View all movies
SELECT * FROM movies;

-- 2. List all movies released after 2010
SELECT title, release_year
FROM movies
WHERE release_year > 2010;

-- 3. Get the highest rated movie
SELECT title, rating
FROM movies
ORDER BY rating DESC
LIMIT 1;

-- 4. Count how many movies per genre
SELECT genre, COUNT(*) AS movie_count
FROM movies
GROUP BY genre
ORDER BY movie_count DESC;

-- 5. Average rating by genre
SELECT genre, AVG(rating) AS avg_rating
FROM movies
GROUP BY genre
ORDER BY avg_rating DESC;

-- 6. Movies directed by Christopher Nolan
SELECT m.title, d.director_name
FROM movies m
JOIN directors d ON m.director_id = d.director_id
WHERE d.director_name = 'Christopher Nolan';

-- 7. Top 5 highest rated movies
SELECT title, rating
FROM movies
ORDER BY rating DESC
LIMIT 5;

-- 8. Number of movies released each year
SELECT release_year, COUNT(*) AS total_movies
FROM movies
GROUP BY release_year
ORDER BY release_year;

-- 9. Movies with rating above 8.5
SELECT title, rating
FROM movies
WHERE rating > 8.5
ORDER BY rating DESC;

-- 10. Director with most movies in database
SELECT d.director_name, COUNT(m.movie_id) AS total_movies
FROM directors d
JOIN movies m ON d.director_id = m.director_id
GROUP BY d.director_name
ORDER BY total_movies DESC
LIMIT 1;

