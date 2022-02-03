DELIMITER $$;
CREATE PROCEDURE udp_find_playmaker (min_dribble_points INT, team_name VARCHAR(45))
BEGIN
	SELECT 
		CONCAT(first_name, ' ', last_name) AS full_name,
		age,
		salary,
		dribbling,
		speed,
		t.`name` AS team_name
	FROM
		players AS p
        JOIN
			skills_data AS sd ON p.skills_data_id = sd.id
        JOIN
			teams AS t ON p.team_id = t.id
	WHERE
		dribbling > min_dribble_points AND t.`name` = team_name
        AND speed > (SELECT 
						AVG(speed)
					FROM
						skills_data)
	ORDER BY speed DESC
	LIMIT 1;
END $$;