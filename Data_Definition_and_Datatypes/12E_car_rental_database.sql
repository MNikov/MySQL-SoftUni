CREATE TABLE categories (
	id INT PRIMARY KEY AUTO_INCREMENT,
	category VARCHAR(50) NOT NULL,
    daily_rate DOUBLE NOT NULL,
    weekly_rate DOUBLE,
    monthly_rate DOUBLE,
    weekend_rate DOUBLE
);

INSERT INTO categories (category, daily_rate) VALUES
	('race', 50.00),
	('race', 51.00),
	('race', 52.00);

CREATE TABLE cars (
	id INT PRIMARY KEY AUTO_INCREMENT,
    plate_number TEXT,
    make VARCHAR(20) NOT NULL,
    model VARCHAR(20) NOT NULL,
    car_year INT(4),
    category_id INT NOT NULL,
    doors INT(1),
    picture BLOB,
    car_condition TEXT,
    available BOOL
);

INSERT INTO cars (make, model, category_id) VALUES
	('test1', 'test1', 1),
	('test2', 'test2', 2),
	('test3', 'test3', 3);

CREATE TABLE employees (
	id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    title VARCHAR(50),
    notes TEXT
);

INSERT INTO employees (first_name, last_name) VALUES
	('test1', 'test1'),
	('test2', 'test2'),
	('test3', 'test3');
    
CREATE TABLE customers (
	id INT PRIMARY KEY AUTO_INCREMENT,
    driver_licence_number INT NOT NULL,
    full_name VARCHAR(50),
    address TEXT,
    city VARCHAR(20),
    zip_code INT,
    notes TEXT
);

INSERT INTO customers (driver_licence_number) VALUES
	(1),
	(2),
	(3);
    
CREATE TABLE rental_orders (
	id INT PRIMARY KEY AUTO_INCREMENT,
    employee_id INT,
    customer_id INT NOT NULL,
    car_id INT NOT NULL,
    car_condition TEXT,
    tank_level DOUBLE,
    kilometrage_start DOUBLE,
    kilometrage_end DOUBLE,
    total_kilometrage DOUBLE,
    start_date DATE,
    end_date DATE,
    total_days INT,
    rate_applied DOUBLE NOT NULL,
    tax_rate DOUBLE,
    order_status VARCHAR(20),
    notes TEXT
);

INSERT INTO rental_orders (customer_id, car_id, rate_applied) VALUES
	(1, 1, 1),
	(2, 2, 2),
	(3, 3, 3);