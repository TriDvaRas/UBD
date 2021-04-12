CREATE VIEW FullEmployeeData AS
SELECT e.id,
    e.fullname,
    e.birthdate,
    e.email,
    e.employment_date,
    t.title as team,
    p.title as post,
    d.title as department,
    p.salary as salary,
    CAST(CASE WHEN d.manager_id=e.id THEN 1 ELSE 0 END as BIT) as is_team_manager
FROM employees e
    JOIN teams t ON t.id = e.team_id
    JOIN posts p ON p.id = e.post_id
    JOIN departments d ON d.id = t.department_id;

CREATE VIEW EmployeeData AS
SELECT e.id,
    e.fullname,
    e.birthdate,
    e.email,
    e.employment_date
FROM employees e;


CREATE VIEW EmployeeNames AS
SELECT e.id,
    e.fullname,
    e.birthdate
FROM employees e;

CREATE VIEW FullEmployeeNames AS
SELECT e.id,
    e.fullname,
    t.title as team,
    p.title as post,
    d.title as department,
    p.salary as salary,
    CAST(CASE WHEN d.manager_id=e.id THEN 1 ELSE 0 END as BIT) as is_team_manager
FROM employees e
    JOIN teams t ON t.id = e.team_id
    JOIN posts p ON p.id = e.post_id
    JOIN departments d ON d.id = t.department_id;

SELECT * FROM EmployeeData;
SELECT * FROM FullEmployeeData;
SELECT * FROM EmployeeNames WHERE id<9;
SELECT * FROM FullEmployeeName WHERE id<9;