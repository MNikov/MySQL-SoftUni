INSERT INTO reviews (content, picture_url, published_at, rating)
	SELECT
		SUBSTRING(`description` FROM 1 FOR 15),
        REVERSE(`name`),
        '2010-10-10',
        price / 8
	FROM products AS p
    WHERE p.id >= 5