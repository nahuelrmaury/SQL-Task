SELECT project.name
FROM project
WHERE (
    SELECT SUM(position.rate)
    FROM position
    INNER JOIN employee ON position.id = employee.position_id
    WHERE employee.project_id = project.id
    ) > project.max_sum_rate;