CREATE TABLE passports (
    passport_id INT PRIMARY KEY AUTO_INCREMENT,
    passport_number VARCHAR(50)
);

CREATE TABLE people (
    person_id INT,
    first_name VARCHAR(50),
    salary DECIMAL(10 , 2 ),
    passport_id INT
);

INSERT INTO people (person_id, first_name, salary, passport_id) VALUES 
(1, 'Roberto', 43300.00, 102),
(2, 'Tom', 56100.00, 103),
(3, 'Yana', 60200.00, 101);

INSERT INTO passports (passport_id, passport_number) VALUES 
(101, 'N34FG21B'),
(102, 'K65LO4R7'),
(103, 'ZE657QP2');

ALTER TABLE people ADD PRIMARY KEY (person_id);

ALTER TABLE people
ADD CONSTRAINT fk_people_passports FOREIGN KEY (passport_id) REFERENCES passports(passport_id);

ALTER TABLE people
ADD UNIQUE (passport_id);