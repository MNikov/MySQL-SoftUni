DELIMITER $$;
CREATE PROCEDURE udp_update_product_price (address_name VARCHAR (50))
BEGIN
	UPDATE stores AS s
        JOIN
    addresses AS a ON s.address_id = a.id
        JOIN
    products_stores AS ps ON s.id = ps.store_id
        JOIN
    products AS p ON ps.product_id = p.id 
	SET 
		price = CASE
			WHEN a.`name` REGEXP '^\s*0' THEN price + 100
			ELSE price + 200
		END
	WHERE
		a.`name` = address_name;
END $$;