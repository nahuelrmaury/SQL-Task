INSERT INTO dbo.project (name, max_sum_rate)
VALUES	('Access Medical', 50),
		('Elite Medical', 500),
		('Core Medical', 1000),
		('Urge Medical', 1500),
		('Progressive Medical', 2500);

INSERT INTO dbo.position (name, rate)
VALUES	('Developer', 500),
		('QA Automation', 510),
		('QA Manual', 520),
		('Project Manager', 530),
		('Graphic Designer', 540);

INSERT INTO dbo.vacancies (position_id)
VALUES	(2),
		(3),
		(5),
		(1),
		(4);

INSERT INTO dbo.employee (first_name, last_name, position_id, project_id)
VALUES	
	('Steve', 'Roman', 1, null),
	('Hugo', 'Potts', 2, 1),
	('Aiden', 'Frye', 3, 4),
	('Tommy', 'Allison', 4, null),
	('Joanna', 'Noble', 5, 2);

INSERT INTO dbo.equipment (name, price, user_id)
VALUES	('Laptop HP', 1000, 5),
		('Laptop Dell', 1500, 4),
		('PC', 500, 3),
		('Monitor', 150, 2),
		('Web Cam', 50, 1);