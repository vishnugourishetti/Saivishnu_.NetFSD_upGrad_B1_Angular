CREATE VIEW vw_DepartmentStudentCount AS
SELECT 
    d.DepartmentName,
    COUNT(s.StudentID) AS TotalStudents
FROM Departments d
LEFT JOIN Students s
ON d.DepartmentID = s.DepartmentID
GROUP BY d.DepartmentName;

SELECT *
FROM vw_DepartmentStudentCount
WHERE TotalStudents > 10;

SELECT *
FROM vw_DepartmentStudentCount
ORDER BY TotalStudents DESC;