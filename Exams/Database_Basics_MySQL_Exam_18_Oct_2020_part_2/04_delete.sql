DELETE FROM employees 
WHERE
    manager_id IS NOT NULL
    AND id != manager_id
    AND salary >= 6000