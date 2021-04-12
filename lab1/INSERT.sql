ALTER VIEW EmployeeNames AS
SELECT *
FROM employees
WHERE id > 12;
INSERT employees(
        fullname,
        birthdate,
        email,
        employment_date,
        team_id,
        post_id
    )
VALUES (
    'Алексей Коилмист',
    '1999-05-05',
    'sam@vos.tr',
    '2018-07-19',
    1,
    2
);
SELECT id,fullname FROM EmployeeNames;