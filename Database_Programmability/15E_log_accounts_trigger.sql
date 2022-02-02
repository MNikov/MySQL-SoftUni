CREATE TABLE `logs` (
    log_id INT PRIMARY KEY AUTO_INCREMENT,
    account_id INT,
    old_sum DECIMAL(20 , 4 ),
    new_sum DECIMAL(20 , 4 )
);

DELIMITER $$;
CREATE TRIGGER utr_balance_change AFTER UPDATE ON accounts
FOR EACH ROW
BEGIN
	INSERT INTO `logs` (account_id, old_sum, new_sum) VALUES (OLD.id, OLD.balance, NEW.balance);
END $$;