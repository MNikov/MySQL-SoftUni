SELECT 
    `name` AS team_name,
    established,
    fan_base,
    (SELECT 
            COUNT(*)
        FROM
            players
        WHERE
            team_id = teams.id) AS count_of_players
FROM
    teams
ORDER BY count_of_players DESC , fan_base DESC