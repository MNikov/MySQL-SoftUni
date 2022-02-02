DELIMITER $$;
CREATE PROCEDURE usp_get_holders_with_balance_higher_than (balance_threshold DECIMAL(20,4))
BEGIN
	SELECT 
		first_name, last_name
	FROM
		(SELECT 
			first_name, last_name, SUM(balance) AS total_balance
		FROM
			account_holders AS ah
		JOIN accounts AS a ON ah.id = a.account_holder_id
		GROUP BY ah.id
        ORDER BY ah.id) AS info_table
	WHERE total_balance > balance_threshold;
END $$;
