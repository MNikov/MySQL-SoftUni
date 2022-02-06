SELECT 
    b.`name`, COUNT(c.id) AS count_of_cards
FROM
    branches AS b
        LEFT JOIN
    employees AS e ON b.id = e.branch_id
        LEFT JOIN
    employees_clients AS ec ON e.id = ec.employee_id
        LEFT JOIN
    clients AS cl ON cl.id = ec.client_id
        LEFT JOIN
    bank_accounts AS bc ON cl.id = bc.client_id
        LEFT JOIN
    cards AS c ON bc.id = c.bank_account_id
GROUP BY b.id
ORDER BY count_of_cards DESC , b.`name`