SELECT 
	project.name
FROM 
	dbo.project
INNER JOIN dbo.position
	on project.id = position.id
WHERE
	position.rate > project.max_sum_rate