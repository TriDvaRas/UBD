CREATE TRIGGER trig ON EmployeeNames INSTEAD OF
UPDATE AS
UPDATE E
SET team_id = CASE
        WHEN I.team_id > 0 THEN I.team_id
        ELSE 1
    END
    from deleted D
    join inserted I on I.id = D.id 
    join EmployeeNames E on E.id = D.id;

UPDATE EmployeeNames
SET team_id=-54
WHERE id=14;

SELECT * FROM EmployeeNames;