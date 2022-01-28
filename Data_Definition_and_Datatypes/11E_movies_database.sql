CREATE TABLE directors (
id INT PRIMARY KEY AUTO_INCREMENT,
director_name VARCHAR(50) NOT NULL,
notes TEXT
);

CREATE TABLE genres (
id INT PRIMARY KEY AUTO_INCREMENT,
genre_name VARCHAR(50) NOT NULL,
notes TEXT
);

CREATE TABLE categories (
id INT PRIMARY KEY AUTO_INCREMENT,
category_name VARCHAR(50) NOT NULL,
notes TEXT
);

CREATE TABLE movies (
id INT PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(50) NOT NULL,
director_id INT,
copyright_year YEAR,
length INT,
genre_id INT,
category_id INT,
rating INT,
notes TEXT
);

INSERT INTO directors (director_name) VALUES 
('test1'),
('test2'),
('test3'),
('test4'),
('test5');

INSERT INTO genres (genre_name) VALUES 
('test1'),
('test2'),
('test3'),
('test4'),
('test5');

INSERT INTO categories (category_name) VALUES 
('test1'),
('test2'),
('test3'),
('test4'),
('test5');

INSERT INTO movies (title) VALUES 
('test1'),
('test2'),
('test3'),
('test4'),
('test5');