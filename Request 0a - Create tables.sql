CREATE TABLE project 
(
	id INT NOT NULL IDENTITY(1, 1),
	name NVARCHAR(MAX) NOT NULL,
	max_sum_rate INT NOT NULL,
	PRIMARY KEY(id)
);

CREATE TABLE position
(
	id INT NOT NULL IDENTITY(1, 1),
	name NVARCHAR(MAX) NOT NULL,
	rate INT NOT NULL,
	PRIMARY KEY(id)
);

CREATE TABLE employee 
(
	id INT NOT NULL IDENTITY(1, 1),
	first_name NVARCHAR(MAX) NOT NULL,
	last_name NVARCHAR(MAX) NOT NULL,
	project_id INT,
	position_id INT NOT NULL,
	PRIMARY KEY(id),
	FOREIGN KEY(project_id) REFERENCES project(id),
	FOREIGN KEY(position_id) REFERENCES position(id) 
);

CREATE TABLE vacancies
(
	id INT NOT NULL IDENTITY(1, 1),
	position_id INT NOT NULL,
	PRIMARY KEY(id),
	FOREIGN KEY(position_id) REFERENCES position(id)
);

CREATE TABLE equipment
(
	id INT NOT NULL IDENTITY(1, 1),
	name NVARCHAR(MAX) NOT NULL,
	price INT NOT NULL,
	user_id INT NOT NULL,
	PRIMARY KEY(id),
	FOREIGN KEY(user_id) REFERENCES employee(id)
);