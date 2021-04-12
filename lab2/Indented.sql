CREATE OR ALTER PROCEDURE updateAllBadDeadlines 
    @updatedCount int OUTPUT
AS
BEGIN 
    DECLARE @currdate DATE = GETDATE()
    DECLARE @newdate DATE = DATEADD(MM,1, @currdate)
    EXEC updateDeadlines  @currdate, @newdate, @updatedCount OUT;
END;

DECLARE @updCnt int;
EXEC updateAllBadDeadlines @updCnt OUT;
SELECT @updCnt AS 'updCnt';
SELECT * FROM projects WHERE deadline<GETDATE();