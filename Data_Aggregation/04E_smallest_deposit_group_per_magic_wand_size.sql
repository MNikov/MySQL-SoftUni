SELECT 
    deposit_group
FROM
    wizzard_deposits
GROUP BY deposit_group
HAVING AVG(magic_wand_size)
ORDER BY AVG(magic_wand_size) ASC
LIMIT 1
