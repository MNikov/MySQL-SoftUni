DELIMITER $$;
CREATE FUNCTION udf_courses_by_client (phone_num VARCHAR (20)) 
RETURNS INT
DETERMINISTIC
BEGIN
	RETURN (SELECT 
		COUNT(client_id) AS `count`
	FROM
		clients
        	JOIN
		courses ON clients.id = courses.client_id
	WHERE
		phone_number = phone_num);
END $$;