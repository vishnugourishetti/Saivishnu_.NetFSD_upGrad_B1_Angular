CREATE PROCEDURE sp_UpdateMarks
    @MarkID INT,
    @NewMarks INT
AS
BEGIN
    UPDATE Marks
    SET MarksObtained = @NewMarks
    WHERE Marksid = @MarkID;

    SELECT *
    FROM Marks
    WHERE MarksID = @MarkID;
END;

EXEC sp_UpdateMarks 1,85;