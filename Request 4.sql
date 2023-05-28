SELECT 
    CONCAT(employee.first_name, ' ', employee.last_name) AS 'Employee name',
    project.name AS 'Project name',
    project.max_sum_rate - emp_position.rate - COALESCE(CAST(emp_equipment.total_price AS FLOAT), 0) / 12 AS Difference
FROM employee
INNER JOIN project
    ON employee.project_id = project.id
LEFT JOIN (
    SELECT employee.project_id, SUM(equipment.price) AS total_price
    FROM employee
    LEFT JOIN equipment
        ON employee.id = equipment.user_id
    GROUP BY employee.project_id
) AS emp_equipment
    ON employee.project_id = emp_equipment.project_id
LEFT JOIN (
    SELECT project_id, SUM(position.rate) AS rate
    FROM employee
    INNER JOIN position
        ON employee.position_id = position.id
    GROUP BY project_id
) AS emp_position
    ON employee.project_id = emp_position.project_id
GROUP BY employee.id, employee.first_name, employee.last_name, project.name, project.max_sum_rate, emp_position.rate, emp_equipment.total_price
HAVING emp_position.rate + COALESCE(CAST(emp_equipment.total_price AS FLOAT), 0) / 12 > project.max_sum_rate;
