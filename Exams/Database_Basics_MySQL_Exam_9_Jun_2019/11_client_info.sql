DELIMITER $$;
CREATE PROCEDURE udp_clientinfo(full_name VARCHAR(50))
BEGIN
	SELECT 
		full_name,
		age,
		account_number,
		CONCAT('$', balance) AS balance
	FROM
		clients AS c
			JOIN
		bank_accounts AS ba ON ba.client_id = c.id
	WHERE
		c.full_name = full_name;
END $$;