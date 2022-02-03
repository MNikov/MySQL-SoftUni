UPDATE coaches AS c 
SET 
    c.coach_level = c.coach_level + 1
WHERE
    c.first_name LIKE 'A%'
        AND (SELECT 
            COUNT(player_id)
        FROM
            players_coaches AS pc
        WHERE
            pc.coach_id = c.id
        GROUP BY coach_id) >= 1