CREATE TRIGGER add_pm
ON project
AFTER INSERT
AS
INSERT INTO dbo.vacancies (position_id) VALUES (4)