SELECT 
    CONCAT(id, ' ', username) AS id_username, email
FROM
    users AS u
        JOIN
    users_photos AS up ON u.id = up.user_id
WHERE
    up.user_id = up.photo_id
ORDER BY u.id