SELECT 
    (SELECT 
            speed
        FROM
            players AS p
                RIGHT JOIN
            skills_data AS sd ON p.skills_data_id = sd.id
                RIGHT JOIN
            teams AS t ON p.team_id = t.id
                RIGHT JOIN
            stadiums AS s ON t.stadium_id = s.id
                RIGHT JOIN
            towns AS towns2 ON s.town_id = towns2.id
        WHERE
            towns2.`name` = towns.`name`
        ORDER BY speed DESC
        LIMIT 1) AS speed,
    towns.`name`
FROM
    players AS p
        RIGHT JOIN
    skills_data AS sd ON p.skills_data_id = sd.id
        RIGHT JOIN
    teams AS t ON p.team_id = t.id
        RIGHT JOIN
    stadiums AS s ON t.stadium_id = s.id
        RIGHT JOIN
    towns ON s.town_id = towns.id
WHERE
    t.`name` NOT LIKE 'Devify'
GROUP BY towns.`name`
ORDER BY speed DESC , towns.`name`