DELIMITER $$;
CREATE PROCEDURE usp_calculate_future_value_for_account(account_id INT, int_rate DOUBLE(6 , 4))
BEGIN
	SELECT 
		a.id AS account_id,
		ah.first_name,
		ah.last_name,
		a.balance AS current_balance,
		UFN_CALCULATE_FUTURE_VALUE(a.balance, int_rate, 5) AS balance_in_5_years
	FROM
		account_holders AS ah
			JOIN
		accounts AS a ON ah.id = a.account_holder_id
	WHERE a.id = account_id;
END $$;
