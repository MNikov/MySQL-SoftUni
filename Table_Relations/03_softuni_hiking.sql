SELECT 
    starting_point AS route_starting_point,
    end_point AS route_ending_point,
    campers.id AS leader_id,
    CONCAT_WS(' ',
            campers.first_name,
            campers.last_name) AS leader_name
FROM
    routes
        JOIN
    campers ON routes.leader_id = campers.id;
