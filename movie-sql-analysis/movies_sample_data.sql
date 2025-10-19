-- Create Directors table
CREATE TABLE directors (
    director_id INT PRIMARY KEY,
    director_name VARCHAR(100)
);

-- Insert data into Directors table
INSERT INTO directors (director_id, director_name) VALUES
(1, 'Christopher Nolan'),
(2, 'Steven Spielberg'),
(3, 'Quentin Tarantino'),
(4, 'James Cameron'),
(5, 'Martin Scorsese');

-- Create Movies table
CREATE TABLE movies (
    movie_id INT PRIMARY KEY,
    title VARCHAR(150),
    genre VARCHAR(50),
    release_year INT,
    rating DECIMAL(3,1),
    director_id INT,
    FOREIGN KEY (director_id) REFERENCES directors(director_id)
);

-- Insert data into Movies table
INSERT INTO movies (movie_id, title, genre, release_year, rating, director_id) VALUES
(1, 'Inception', 'Sci-Fi', 2010, 8.8, 1),
(2, 'Interstellar', 'Sci-Fi', 2014, 8.6, 1),
(3, 'Jurassic Park', 'Adventure', 1993, 8.1, 2),
(4, 'Pulp Fiction', 'Crime', 1994, 8.9, 3),
(5, 'Avatar', 'Sci-Fi', 2009, 7.8, 4),
(6, 'Titanic', 'Romance', 1997, 7.8, 4),
(7, 'Goodfellas', 'Crime', 1990, 8.7, 5),
(8, 'The Wolf of Wall Street', 'Biography', 2013, 8.2, 5),
(9, 'E.T.', 'Family', 1982, 7.9, 2),
(10, 'Django Unchained', 'Western', 2012, 8.4, 3),
(11, 'Minority Report', 'Sci-Fi', 2002, 7.6, 2),
(12, 'The Departed', 'Crime', 2006, 8.5, 5),
(13, 'Saving Private Ryan', 'War', 1998, 8.6, 2),
(14, 'The Dark Knight', 'Action', 2008, 9.0, 1),
(15, 'Kill Bill', 'Action', 2003, 8.1, 3);

