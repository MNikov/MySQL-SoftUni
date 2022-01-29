SELECT 
    employee_id,
    first_name,
    IF(YEAR(projects.start_date) >= 2005,
        NULL,
        `name`) AS project_name
FROM
    employees
        JOIN
    employees_projects USING (employee_id)
        JOIN
    projects USING (project_id)
WHERE
    employees.employee_id = 24
ORDER BY project_name