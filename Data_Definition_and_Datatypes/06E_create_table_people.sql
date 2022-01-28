CREATE TABLE people (
	id INT AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(200) NOT NULL,
    picture BLOB,
    height DOUBLE(2,2),
    weight DOUBLE(3,2),
    gender CHAR(1) NOT NULL,
    birthdate DATE NOT NULL,
    biography TEXT
);

INSERT INTO people (`name`, gender, birthdate) VALUES
('test1', 'm', '1111-11-11'),
('test2', 'f', '2111-11-11'),
('test3', 'm', '3111-11-11'),
('test4', 'f', '4111-11-11'),
('test5', 'm', '5111-11-11')