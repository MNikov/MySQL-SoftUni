SELECT 
    s.`name`, manufacturer
FROM
    spaceships AS s
        JOIN
    journeys AS j ON s.id = j.spaceship_id
        JOIN
    travel_cards AS tc ON j.id = tc.journey_id
        JOIN
    colonists AS c ON c.id = tc.colonist_id
WHERE
    TIMESTAMPDIFF(YEAR,
        birth_date,
        '2019-01-01') < 30
        AND job_during_journey = 'Pilot'
GROUP BY s.id
ORDER BY s.`name`
