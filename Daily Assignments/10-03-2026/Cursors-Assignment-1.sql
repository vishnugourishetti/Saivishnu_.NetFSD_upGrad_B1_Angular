CREATE PROCEDURE sp_DisplayStudentsCursor
AS
BEGIN
DECLARE @ID INT
DECLARE @Name VARCHAR(100)

DECLARE student_cursor CURSOR FOR
SELECT StudentID, FirstName+' '+LastName
FROM Students

OPEN student_cursor
FETCH NEXT FROM student_cursor INTO @ID,@Name

WHILE @@FETCH_STATUS = 0
BEGIN
    PRINT CAST(@ID AS VARCHAR)+' - '+@Name
    FETCH NEXT FROM student_cursor INTO @ID,@Name
END

CLOSE student_cursor
DEALLOCATE student_cursor
END;

EXEC sp_DisplayStudentsCursor;