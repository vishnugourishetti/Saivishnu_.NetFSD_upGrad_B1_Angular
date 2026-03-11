
CREATE PROCEDURE sp_DeleteEnrollment
    @EnrollmentID INT
AS
BEGIN
    DELETE FROM Enrollments
    WHERE EnrollmentID = @EnrollmentID;
END;

EXEC sp_DeleteEnrollment 10;

SELECT *
FROM Enrollments
WHERE EnrollmentID = 10;