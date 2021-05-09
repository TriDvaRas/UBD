CREATE TABLE person(
    id INT PRIMARY KEY NOT NULL IDENTITY(1,1),
    surname VARCHAR(24) NOT NULL,
    first_name VARCHAR(24) NOT NULL,
    second_name VARCHAR(24),
    gender VARCHAR(1)
);

CREATE TABLE department (
    id INT PRIMARY KEY NOT NULL IDENTITY(1,1),
    id_parent_dep INT FOREIGN KEY REFERENCES department(id),
    title VARCHAR(128)
);

CREATE TABLE staff (
    id INT PRIMARY KEY NOT NULL IDENTITY(1,1),
    id_department INT FOREIGN KEY REFERENCES department(id),
    id_person INT FOREIGN KEY REFERENCES person(id)
);

---
CREATE TABLE "group" (
    id INT PRIMARY KEY NOT NULL IDENTITY(1,1),
    title VARCHAR(128),
    course VARCHAR(128)
);

CREATE TABLE student (
    id INT PRIMARY KEY NOT NULL IDENTITY(1,1),
    id_person INT FOREIGN KEY REFERENCES person(id),
    id_group INT FOREIGN KEY REFERENCES "group"(id)
);

CREATE TABLE subject (
    id INT PRIMARY KEY NOT NULL IDENTITY(1,1),
    title VARCHAR(128)
);
CREATE TABLE schedule (
    id INT PRIMARY KEY NOT NULL IDENTITY(1,1),
    id_staff INT FOREIGN KEY REFERENCES staff(id),
    id_group INT FOREIGN KEY REFERENCES "group"(id),
    id_subject INT FOREIGN KEY REFERENCES subject(id),
    date_time DATETIME,
    classroom VARCHAR(8)
);

---

ALTER TABLE person
ADD birthday DATE;

ALTER TABLE department 
ALTER COLUMN title VARCHAR(200) NOT NULL;


ALTER TABLE person drop COLUMN birthdate;

---

DROP TABLE staff;

---
select COLUMN_NAME,DATA_TYPE,CHARACTER_MAXIMUM_LENGTH 
from information_schema.columns
where table_name = 'department';

SELECT * FROM INFORMATION_SCHEMA.TABLES;


sp_tables