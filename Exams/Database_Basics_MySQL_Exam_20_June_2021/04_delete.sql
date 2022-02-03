DELETE FROM clients 
WHERE
    LENGTH(full_name) > 3
    AND id NOT IN (SELECT client_id FROM courses);

# OR

DELETE FROM clients 
WHERE
    LENGTH(full_name) > 3
    AND (SELECT COUNT(*) FROM courses WHERE clients.id = client_id) = 0;
