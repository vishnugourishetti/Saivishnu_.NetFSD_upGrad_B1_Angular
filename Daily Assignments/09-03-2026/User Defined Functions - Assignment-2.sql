CREATE FUNCTION fn_GetStudentAge (@DateOfBirth DATE)
RETURNS INT
AS
BEGIN
    RETURN DATEDIFF(YEAR, @DateOfBirth, GETDATE())
END;

SELECT StudentID, FirstName,
dbo.fn_GetStudentAge(DateOfBirth) AS Age
FROM Students;