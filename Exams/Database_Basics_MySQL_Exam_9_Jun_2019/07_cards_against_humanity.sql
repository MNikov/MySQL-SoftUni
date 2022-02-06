SELECT 
    c.id, CONCAT(card_number, ' : ', full_name) AS token
FROM
    cards AS c
        JOIN
    bank_accounts AS ba ON c.bank_account_id = ba.id
        JOIN
    clients AS cl ON ba.client_id = cl.id
ORDER BY c.id DESC