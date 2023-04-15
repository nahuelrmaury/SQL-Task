SELECT 
first_name + ' ' + last_name AS 'User name',
project.name AS 'Project name'
FROM employee
INNER JOIN project
ON employee.project_id = project.id
INNER JOIN dbo.position
	on project.id = position.id
WHERE
	position.rate > project.max_sum_rate
