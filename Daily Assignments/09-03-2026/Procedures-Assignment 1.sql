CREATE PROCEDURE sp_InsertStudent
    @FirstName VARCHAR(50),
    @LastName VARCHAR(50),
    @Gender CHAR(1),
    @DepartmentID INT,
    @AdmissionDate DATE
AS
BEGIN
    INSERT INTO Students (FirstName, LastName, Gender, DepartmentID, AdmissionDate)
    VALUES (@FirstName, @LastName, @Gender, @DepartmentID, @AdmissionDate);
END;

EXEC sp_InsertStudent 
'Ravi','Kumar','M',1,'2024-06-01';


SELECT *
FROM Students
WHERE FirstName = 'Ravi';