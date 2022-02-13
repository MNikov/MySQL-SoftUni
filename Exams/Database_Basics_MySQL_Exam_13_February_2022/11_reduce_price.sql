DELIMITER $$;
CREATE PROCEDURE udp_reduce_price(category_name VARCHAR(50))
BEGIN
	UPDATE products AS p
        JOIN
    categories AS c ON p.category_id = c.id
        JOIN
    reviews AS r ON r.id = p.review_id 
		SET 
			price = price * 0.7
		WHERE
			rating < 4
				AND c.`name` = category_name;
END $$;