CREATE PROCEDURE sp_AddStudent
@FirstName VARCHAR(50),
@LastName VARCHAR(50),
@DepartmentID INT,
@Gender CHAR(1),
@AdmissionDate DATE
AS
BEGIN
BEGIN TRY
    INSERT INTO Students(FirstName,LastName,DepartmentID,Gender,AdmissionDate)
    VALUES(@FirstName,@LastName,@DepartmentID,@Gender,@AdmissionDate)
END TRY
BEGIN CATCH
    PRINT ERROR_MESSAGE()
END CATCH
END;


EXEC sp_AddStudent 'Ajay','Patel',1,'M','2024-06-01';