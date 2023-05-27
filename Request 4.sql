SELECT 
    CONCAT(employee.first_name, ' ', employee.last_name) AS 'Employee name',
    project.name AS 'Project name',
    project.max_sum_rate - position.rate - COALESCE(CAST(SUM(equipment.price) AS FLOAT), 0) / 12 AS Difference
FROM employee
INNER JOIN project
    ON employee.project_id = project.id
INNER JOIN position
    ON employee.position_id = position.id
LEFT JOIN equipment
    ON employee.id = equipment.user_id
WHERE position.rate + (COALESCE(CAST((SELECT SUM(price) FROM equipment WHERE user_id = employee.id) AS FLOAT), 0) / 12) > project.max_sum_rate
GROUP BY employee.id, employee.first_name, employee.last_name, project.name, project.max_sum_rate, position.rate;
