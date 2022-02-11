SELECT 
    c.`name`,
    COUNT(gc.game_id) AS games_count,
    ROUND(AVG(budget), 2) AS avg_budget,
    MAX(rating) AS max_rating
FROM
    categories AS c
        JOIN
    games_categories AS gc ON c.id = gc.category_id
        JOIN
    games AS g ON gc.game_id = g.id
GROUP BY c.id
HAVING max_rating >= 9.5
ORDER BY games_count DESC , c.`name`