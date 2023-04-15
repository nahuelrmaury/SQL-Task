SELECT 
first_name + ' ' + last_name AS 'Employee Name',
project.name AS 'Project Name',
project.max_sum_rate - position.rate - CAST(equipment.price AS FLOAT)/12 AS Difference
FROM employee
INNER JOIN project
ON employee.project_id = project.id
INNER JOIN dbo.position
	ON project.id = position.id
INNER JOIN dbo.equipment
    ON equipment.user_id = employee.id
WHERE
	position.rate + equipment.price/12  > project.max_sum_rate
