CREATE PROCEDURE sp_InsertMarks
@StudentID INT,
@ExamID INT,
@MarksObtained INT
AS
BEGIN
IF @MarksObtained < 0 OR @MarksObtained > 100
BEGIN
    RAISERROR('Invalid Marks',16,1)
END
ELSE
BEGIN
    INSERT INTO Marks(StudentID,ExamID,MarksObtained)
    VALUES(@StudentID,@ExamID,@MarksObtained)
END
END;

EXEC sp_InsertMarks 500,3001,95;