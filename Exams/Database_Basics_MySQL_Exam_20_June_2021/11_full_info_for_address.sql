DELIMITER $$;
CREATE PROCEDURE udp_courses_by_address(address_name VARCHAR(100))
BEGIN
	SELECT 
		addresses.`name`,
		full_name,
		(CASE
			WHEN bill <= 20 THEN 'Low'
			WHEN bill <= 30 THEN 'Medium'
			ELSE 'High'
		END) AS level_of_bill,
		make,
		`condition`,
		categories.`name`
	FROM
		addresses
			JOIN
		courses ON addresses.id = courses.from_address_id
			JOIN
		clients ON courses.client_id = clients.id
			JOIN
		cars ON courses.car_id = cars.id
			JOIN
		categories ON cars.category_id = categories.id
	WHERE
		addresses.`name` = address_name
	ORDER BY make , full_name;
END $$;