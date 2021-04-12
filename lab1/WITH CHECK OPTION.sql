ALTER VIEW EmployeeNamesWCO AS
SELECT e.id,
    e.fullname,
    e.birthdate
FROM employees e
WHERE e.birthdate>'1990-01-01'
WITH CHECK OPTION;

SELECT * FROM EmployeeNamesWCO;

UPDATE EmployeeNamesWCO
SET birthdate='1989-01-01'
WHERE id=9;

SELECT * FROM EmployeeData;