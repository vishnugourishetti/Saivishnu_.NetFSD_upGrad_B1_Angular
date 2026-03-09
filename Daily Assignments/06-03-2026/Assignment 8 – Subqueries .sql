--Find students whose marks are greater than average marks 
SELECT StudentID, MarksObtained
FROM Marks
WHERE MarksObtained >
      (SELECT AVG(MarksObtained) FROM Marks);


--Find courses with maximum credits 
SELECT CourseName, Credits
FROM Courses
WHERE Credits >= ALL
      (SELECT Credits FROM Courses);

-- Find students enrolled in more than 2 courses 
SELECT s.StudentID, s.FirstName
FROM Students s
WHERE 2 < (
      SELECT COUNT(*)
      FROM Enrollments e
      WHERE e.StudentID = s.StudentID
);


--Find teachers working in the same department as teacher 'John' 
SELECT TeacherName
FROM Teachers
WHERE DepartmentID IN
(
    SELECT DepartmentID
    FROM Teachers
    WHERE TeacherName = 'John'
);

--Find students who scored highest marks in an exam 
SELECT StudentID, ExamID, MarksObtained
FROM Marks
WHERE MarksObtained >= ANY
      (SELECT MAX(MarksObtained)
       FROM Marks
       GROUP BY ExamID);


-- Find departments having maximum number of students
SELECT DepartmentID
FROM Students
GROUP BY DepartmentID
HAVING COUNT(*) >= ALL
      (SELECT COUNT(*)
       FROM Students
       GROUP BY DepartmentID);