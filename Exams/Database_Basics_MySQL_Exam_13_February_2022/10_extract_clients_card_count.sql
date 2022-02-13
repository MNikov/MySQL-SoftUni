DELIMITER $$;
CREATE FUNCTION udf_customer_products_count(customer_first_name VARCHAR(30))
RETURNS INT
DETERMINISTIC
BEGIN
	RETURN (SELECT 
				COUNT(p.id)
			FROM
				customers AS c
					JOIN
				orders AS o ON c.id = o.customer_id
					JOIN
				orders_products AS op ON o.id = op.order_id
					JOIN
				products AS p ON p.id = op.product_id
			WHERE
				first_name = customer_first_name);
END $$;