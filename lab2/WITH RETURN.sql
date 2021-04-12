
CREATE OR ALTER PROCEDURE updateDeadlines 
    @olderThen date,
    @newDeadline date,
    @updatedCount int OUTPUT
AS
BEGIN 
    UPDATE projects
    SET deadline=@newDeadline
    WHERE deadline<@olderThen
    AND finished=0;
    SET @updatedCount = @@ROWCOUNT;
END;

UPDATE projects SET deadline='2021-02-01' WHERE deadline='2021-06-01';

DECLARE @updCnt int;
EXEC updateDeadlines '2021-03-01', '2021-06-01', @updCnt OUT;
SELECT @updCnt AS 'updCnt';
SELECT * FROM projects WHERE deadline<GETDATE();