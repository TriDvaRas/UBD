CREATE
OR ALTER PROCEDURE employedAfter @empDate date AS
SELECT id,
    fullname,
    employment_date
FROM employees
WHERE employment_date > @empDate;
EXEC employedAfter "2020-01-01";
--
CREATE OR ALTER PROCEDURE setProjectFinished @projId int AS
UPDATE projects
SET finished = 1
WHERE id = @projId;

EXEC setProjectFinished 1;
SELECT id,title,finished FROM projects WHERE id=1;