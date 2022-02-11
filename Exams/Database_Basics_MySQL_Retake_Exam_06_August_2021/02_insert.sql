INSERT INTO games(`name`, rating, budget, team_id)
	SELECT 
		REVERSE(LOWER(SUBSTRING(t.`name`, 2, LENGTH(t.`name`)))),
        t.id,
        leader_id * 1000,
        t.id
	FROM teams AS t
    WHERE t.id BETWEEN 1 AND 9