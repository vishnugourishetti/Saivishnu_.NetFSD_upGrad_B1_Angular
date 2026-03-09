--Count students in each department 
select d.DepartmentName, COUNT(s.StudentId) AS TotalStudents from Departments d 
inner join  Students s on d.DepartmentID=s.DepartmentID Group by DepartmentName; 


--Find average marks per exam 

select e.ExamType , AVG(m.MarksObtained) 
As AverageMarks from Exams e inner join Marks m on e.ExamID=m.ExamID group by ExamType;


--Find total students enrolled per course 
select c.CourseName, Count(e.StudentId) As No_of_Students from Courses c
inner join Enrollments e on c.CourseID=e.CourseID group by CourseName;

--Find maximum marks scored in each exam 

select e.Examtype, MAX(m.marksobtained) AS maximummarks from Exams e
inner join Marks m on e.ExamID=m.ExamID group by ExamType;


--Find minimum marks per course 

select c.CourseName, Min(m.MarksObtained) AS minimunmarks from Courses c
inner join Exams e on c.CourseID=e.CourseID
inner join Marks m on e.ExamID=m.ExamID group by CourseName;

--Find departments having more than 5 students

select d.DepartmentName,COUNT(s.StudentId) from Departments d inner join
Students s on d.DepartmentID = s.DepartmentID group by DepartmentName
Having count(S.StudentID)>5;