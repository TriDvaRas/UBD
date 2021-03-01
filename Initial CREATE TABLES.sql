CREATE TABLE employees(
	id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	fullname VARCHAR(64) NOT NULL,
	birthdate DATE,
	email VARCHAR(64) NOT NULL,
	employment_date DATE NOT NULL,
	
	-- team_id FOREIGN KEY REFERENCES teams(id) NOT NULL 
	-- post_id INT 	
);


CREATE TABLE departments(
	id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	title VARCHAR(64) NOT NULL,
	office_adress VARCHAR(256),
	manager_id INT FOREIGN KEY REFERENCES employees(id) NOT NULL
);

CREATE TABLE teams(
	id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	office_adress VARCHAR(256),
	department_id INT FOREIGN KEY REFERENCES departments(id)
);

CREATE TABLE posts(
	id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	title VARCHAR(256) NOT NULL,
	salary MONEY
);

CREATE TABLE projects(
	id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	title VARCHAR(256) NOT NULL,
	deadline DATE
);

CREATE TABLE teams_projects(
	team_id INT NOT NULL FOREIGN KEY REFERENCES teams(id),
	project_id INT NOT NULL FOREIGN KEY REFERENCES projects(id),
	PRIMARY KEY (team_id, project_id)
);