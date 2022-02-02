DELIMITER $$;
CREATE PROCEDURE usp_deposit_money(account_id INT, money_amount DECIMAL(20, 4))
BEGIN
	START TRANSACTION;
    IF((SELECT COUNT(*) FROM accounts WHERE id = account_id) != 1) THEN ROLLBACK;
	ELSEIF(money_amount < 0) THEN ROLLBACK;
    ELSE
		UPDATE accounts SET balance = balance + money_amount WHERE id = account_id;
        COMMIT;
	END IF;
END $$;
