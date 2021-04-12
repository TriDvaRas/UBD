CREATE PROCEDURE EmployeeCount AS
SELECT COUNT(*) AS 'count'
FROM employees;
EXEC EmployeeCount;
ALTER PROCEDURE EmployeeCount AS
SELECT team_id,
    COUNT(*) AS 'count',
    FROM employees
GROUP BY team_id;

SELECT * FROM employees;
