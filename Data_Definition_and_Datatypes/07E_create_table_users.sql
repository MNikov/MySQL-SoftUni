CREATE TABLE users (
	id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(30) NOT NULL,
    `password` VARCHAR(26) NOT NULL,
    profile_picture BLOB,
    last_login_time TIMESTAMP,
    is_deleted BOOL
);

INSERT INTO users (username, `password`) VALUES
('test1', 'pass1'),
('test2', 'pass2'),
('test3', 'pass3'),
('test4', 'pass4'),
('test5', 'pass5');