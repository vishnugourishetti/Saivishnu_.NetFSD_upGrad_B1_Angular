use SchoolDB;
CREATE VIEW vw_StudentDepartment AS
SELECT 
    s.StudentID,
    (s.FirstName + ' ' + s.LastName) AS StudentName,
    d.DepartmentName,
    s.AdmissionDate
FROM Students s
JOIN Departments d
ON s.DepartmentID = d.DepartmentID;


SELECT *
FROM vw_StudentDepartment;

SELECT *
FROM vw_StudentDepartment
WHERE DepartmentName = 'CSE';

DROP VIEW vw_StudentDepartment;
