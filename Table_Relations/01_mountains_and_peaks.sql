CREATE TABLE mountains (
    id INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(50)
);

CREATE TABLE peaks (
    id INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(50),
    mountain_id INT
);

ALTER TABLE peaks
ADD CONSTRAINT fk_mountain_id FOREIGN KEY peaks(mountain_id) REFERENCES mountains(id);
