DELIMITER $$;
CREATE PROCEDURE udp_modify_user (address VARCHAR(30), town VARCHAR(30))
BEGIN
	DECLARE curr_user_id INT;
    SET curr_user_id = (SELECT 
							user_id
						FROM
							users AS u
								JOIN
							addresses AS a ON u.id = a.user_id
						WHERE
							a.address = address
								AND a.town = town);
	IF(curr_user_id IS NOT NULL) THEN
		UPDATE users SET age = age + 10 WHERE users.id = curr_user_id;
	END IF;
END $$;

DELIMITER ;

CALL udp_modify_user ('97 Valley Edge Parkway', 'Divinópolis');
SELECT u.username, u.email,u.gender,u.age,u.job_title FROM users AS u
WHERE u.username = 'eblagden21';
