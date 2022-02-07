DELIMITER $$;
CREATE FUNCTION	 udf_count_colonists_by_destination_planet (planet_name VARCHAR (30))
RETURNS INT
DETERMINISTIC
BEGIN
	RETURN (
		SELECT 
			COUNT(p.id)
		FROM
			colonists AS c
				JOIN
			travel_cards AS tc ON c.id = tc.colonist_id
				JOIN
			journeys AS j ON tc.journey_id = j.id
				JOIN
			spaceports AS sp ON sp.id = j.destination_spaceport_id
				JOIN
			planets AS p ON sp.planet_id = p.id
		WHERE
			p.name = planet_name
    );
END $$;