SELECT 
    j.id,
    p.`name` AS planet_name,
    sp.`name` AS spaceport_name,
    purpose AS journey_purpose
FROM
    journeys AS j
        JOIN
    spaceports AS sp ON j.destination_spaceport_id = sp.id
        JOIN
    planets AS p ON sp.planet_id = p.id
ORDER BY DATEDIFF(journey_end, journey_start) ASC
LIMIT 1