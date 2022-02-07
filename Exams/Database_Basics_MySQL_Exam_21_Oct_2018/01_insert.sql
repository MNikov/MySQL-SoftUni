INSERT INTO travel_cards (card_number, job_during_journey, journey_id, colonist_id)
	SELECT
		CASE 
			WHEN birth_date > '1980-01-01' THEN CONCAT(YEAR(birth_date), DAY(birth_date), SUBSTRING(ucn, 1, 4))
            ELSE CONCAT(YEAR(birth_date), MONTH(birth_date), SUBSTRING(ucn, -4))
		END,
        CASE 
			WHEN c.id % 2 = 0 THEN 'Pilot'
			WHEN c.id % 3 = 0 THEN 'Cook'
            ELSE 'Engineer'
        END,
        SUBSTRING(ucn, 1, 1),
        c.id
	FROM
		colonists AS c
	WHERE c.id BETWEEN 96 AND 100