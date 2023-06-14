
CREATE DATABASE db_Movies
GO
USE db_Movies
CREATE PROCEDURE create MoviesDB
AS 
BEGIN
CREATE TABLE tbl_actors (
actors_id INT PRIMARY KEY NOT NULL IDENTITY(1,1),
actors_fname VARCHAR(50) NOT NULL,
actors_lname VARCHAR(50) NOT NULL,
actors_movies VARCHAR(50) NOT NULL
);
INSERT INTO tbl_actors
(actors_fname, actors_lname, actors_movies)
VALUES
('Keira', 'Knightley', 'Pirates of the Caribbean'),
('Johnny', 'Depp', 'Pirates of the Caribbean'),
('Hugh', 'Jackman', 'The Greatest Showman'),
('Reese', 'Witherspoon', 'Water for Elephants'),
('Robert', 'Downey Jr.', 'Sherlock Holmes'),
('Whoopi', 'Goldberg', 'Sister Act')
;
SELECT * From tbl_actors;

CREATE TABLE tbl_Movies (
movies_id INT PRIMARY KEY NOT NULL IDENTITY(20,1),
movies_name VARCHAR(50) NOT NULL,
movies_release INT
director_name VARCHAR(50) NOT NULL CONSTRAINT fk_director_name = FOREIGN KEY REFERENCES tbl_director_name(director_name) ON UPDATE CASCADE ON DELETE CASCADE
);
INSERT INTO tbl_Movies
(movies_name, movies_release)
VALUES
('Pirates of the Caribbean', 2003),
('The Greatest Showman', 2017),
('Water for Elefants', 2011),
('Sherlock Holmes', 2009),
('Sister Act', 1992)
;
SELECT * From tbl_Movies;

CREATE TABLE tbl_directors (
director_name VARCHAR(50) NOT NULL,
director_id INT PRIMARY KEY NOT NULL IDENTITY(30,1)
);
INSERT INTO tbl_directors
(director_name)
VALUES
('Joachim Ronning'),
('Michael Gracey'),
('Francis Lawrence'),
('Guy Ritchie'),
('Emile Ardolino')
;
SELECT * FROM tbl_directors;

CREATE TABLE tbl_main_Actors (
main_actors VARCHAR(50) NOT NULL PRIMARY KEY IDENTITY(40,1),
movie_name VARCHAR(50) NOT NULL
);
INSERT INTO tbl_main_Actors
(main_actors, movie_name)
VALUES
('Keira Knightly', 'Pirates of the Caribbean'),
('Johnny Depp', 'Pirates of the Caribbean'),
('Hugh Jackman', 'The Greatest Show'),
('Reese Witherspoon', 'Water for Elephants'),
('Robert downey Jr.', 'Sherlock Holmes'),
('Whoopi Goldberg', 'Sister Act')
;
SELECT * FROM tbl_main_Actors;

USE db_Movies
END
EXECUTE [dbo].[create MoviesDB]