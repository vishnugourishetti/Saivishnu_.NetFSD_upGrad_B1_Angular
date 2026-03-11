CREATE PROCEDURE sp_UpdateCourseCredits
AS
BEGIN
DECLARE @CourseID INT
DECLARE @Credits INT

DECLARE course_cursor CURSOR FOR
SELECT CourseID,Credits
FROM Courses
WHERE Credits < 3

OPEN course_cursor
FETCH NEXT FROM course_cursor INTO @CourseID,@Credits

WHILE @@FETCH_STATUS=0
BEGIN
    UPDATE Courses
    SET Credits = Credits + 1
    WHERE CourseID = @CourseID

    FETCH NEXT FROM course_cursor INTO @CourseID,@Credits
END

CLOSE course_cursor
DEALLOCATE course_cursor
END;