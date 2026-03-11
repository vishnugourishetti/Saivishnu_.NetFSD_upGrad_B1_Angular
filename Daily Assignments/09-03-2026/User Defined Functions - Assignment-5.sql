CREATE FUNCTION fn_GetDepartmentStudents (@DepartmentID INT)
RETURNS TABLE
AS
RETURN
(
    SELECT StudentID,
    (FirstName + ' ' + LastName) AS StudentName,
    AdmissionDate
    FROM Students
    WHERE DepartmentID = @DepartmentID
);

SELECT *
FROM dbo.fn_GetDepartmentStudents(1);