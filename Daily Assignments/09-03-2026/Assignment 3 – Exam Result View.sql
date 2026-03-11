use SchoolDB

CREATE VIEW vw_ExamResults AS
SELECT 
    (s.FirstName + ' ' + s.LastName) AS StudentName,
    c.CourseName,
    e.ExamType,
    m.MarksObtained
FROM Students s
JOIN Marks m ON s.StudentID = m.StudentID
JOIN Exams e ON m.ExamID = e.ExamID
JOIN Courses c ON e.CourseID = c.CourseID;


SELECT *
FROM vw_ExamResults
WHERE MarksObtained > 80;

SELECT *
FROM vw_ExamResults
WHERE MarksObtained = 
(
    SELECT MAX(MarksObtained)
    FROM vw_ExamResults
);

SELECT *
FROM vw_ExamResults
WHERE MarksObtained < 40;