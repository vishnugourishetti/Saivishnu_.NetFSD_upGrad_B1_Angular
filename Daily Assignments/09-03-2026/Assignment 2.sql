CREATE VIEW vw_StudentCourses AS
SELECT 
    (s.FirstName + ' ' + s.LastName) AS StudentName,
    s.StudentID,
    c.CourseName,
    e.EnrollmentDate
FROM Students s
JOIN Enrollments e ON s.StudentID = e.StudentID
JOIN Courses c ON e.CourseID = c.CourseID;


SELECT StudentName, CourseName, EnrollmentDate
FROM vw_StudentCourses
WHERE StudentID = 5;


SELECT StudentName, COUNT(CourseName) AS TotalCourses
FROM vw_StudentCourses
GROUP BY StudentName;

SELECT StudentName, CourseName, EnrollmentDate
FROM vw_StudentCourses
WHERE EnrollmentDate > '2024-12-31';