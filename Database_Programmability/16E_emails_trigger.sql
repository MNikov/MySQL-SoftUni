# Add the code from the previous task above
CREATE TABLE notification_emails (
    id INT PRIMARY KEY AUTO_INCREMENT,
    recipient INT,
    `subject` TEXT,
    body TEXT
);

DELIMITER $$;
CREATE TRIGGER utr_add_email AFTER INSERT ON `logs`
FOR EACH ROW
BEGIN
	INSERT INTO notification_emails (recipient, `subject`, body)
    VALUES (
		NEW.account_id, 
        CONCAT('Balance change for account: ', NEW.account_id),
        CONCAT_WS(' ', 'On', DATE_FORMAT(NOW(), '%b %d %Y at %r'), 'your balance was changed from', NEW.old_sum, 'to', NEW.new_sum, '.')
    );
END $$;