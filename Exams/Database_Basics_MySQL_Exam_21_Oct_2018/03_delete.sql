DELETE FROM colonists AS c WHERE c.id NOT IN (SELECT colonist_id FROM travel_cards)