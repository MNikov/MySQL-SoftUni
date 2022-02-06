DELIMITER $$;
CREATE FUNCTION udf_client_cards_count(name VARCHAR(30)) 
RETURNS INT
DETERMINISTIC
BEGIN
	RETURN (
			SELECT 
				COUNT(c.id)
			FROM
				clients AS cl
					JOIN
				bank_accounts AS ba ON cl.id = ba.client_id
					JOIN
				cards AS c ON c.bank_account_id = ba.id
			WHERE
				full_name = name
    );
END $$;