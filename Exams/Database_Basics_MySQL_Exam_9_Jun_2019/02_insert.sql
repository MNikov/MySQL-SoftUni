INSERT INTO cards (card_number, card_status, bank_account_id)
	SELECT 
		REVERSE(full_name), 'Active', clients.id
	FROM clients
    WHERE clients.id BETWEEN 191 AND 200