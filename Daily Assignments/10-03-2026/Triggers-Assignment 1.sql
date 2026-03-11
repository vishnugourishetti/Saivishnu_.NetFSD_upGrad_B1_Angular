use SchoolDB;
CREATE TABLE StudentAudit
(
AuditID INT IDENTITY(1,1) PRIMARY KEY,
StudentID INT,
ActionType VARCHAR(20),
ActionDate DATETIME
);

CREATE TRIGGER trg_StudentInsertAudit
ON Students
AFTER INSERT
AS
BEGIN
    INSERT INTO StudentAudit (StudentID, ActionType, ActionDate)
    SELECT StudentID,'INSERT',GETDATE()
    FROM inserted;
END;


INSERT INTO Students(FirstName,LastName,Gender,DepartmentID,AdmissionDate)
VALUES('Ravi','Kumar','M',1,'2024-06-01');

SELECT * FROM StudentAudit;