SELECT project.name, CONCAT(employee.first_name, ' ', employee.last_name) AS employee_name
FROM project
INNER JOIN employee ON employee.project_id = project.id
INNER JOIN position ON position.id = employee.position_id
WHERE (
    SELECT SUM(position.rate)
    FROM position
    INNER JOIN employee ON position.id = employee.position_id
    WHERE employee.project_id = project.id
) > project.max_sum_rate;