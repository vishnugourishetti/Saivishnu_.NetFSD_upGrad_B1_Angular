CREATE PROCEDURE sp_CalculateStudentTotalMarks
AS
BEGIN
DECLARE @StudentID INT
DECLARE @StudentName VARCHAR(100)
DECLARE @TotalMarks INT

DECLARE marks_cursor CURSOR FOR
SELECT StudentID, FirstName+' '+LastName
FROM Students

OPEN marks_cursor
FETCH NEXT FROM marks_cursor INTO @StudentID,@StudentName

WHILE @@FETCH_STATUS=0
BEGIN
    SELECT @TotalMarks = SUM(MarksObtained)
    FROM Marks
    WHERE StudentID=@StudentID

    PRINT @StudentName + ' Total Marks: ' + CAST(ISNULL(@TotalMarks,0) AS VARCHAR)

    FETCH NEXT FROM marks_cursor INTO @StudentID,@StudentName
END

CLOSE marks_cursor
DEALLOCATE marks_cursor
END;