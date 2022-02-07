SELECT 
    job_during_journey AS job_name
FROM
    travel_cards AS tc
        JOIN
    journeys AS j ON tc.journey_id = j.id
WHERE
    j.id = (SELECT 
            id
        FROM
            journeys
        ORDER BY DATEDIFF(journey_end, journey_start) DESC
        LIMIT 1)
GROUP BY job_during_journey
ORDER BY COUNT(job_during_journey)
LIMIT 1