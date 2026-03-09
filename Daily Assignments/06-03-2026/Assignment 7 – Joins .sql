--Show students with department names

select s.FirstName ,s.LastName,d.DepartmentName from Students s join Departments d 
on s.DepartmentID=d.DepartmentID;

--Show courses with teacher names 

select C.CourseName,t.TeacherName from Courses C join
Teachers t on c.TeacherID=t.TeacherID;

--Show student name and enrolled courses 

select s.firstname,s.lastname,c.coursename from Students s join
Enrollments e on s.StudentID=e.StudentID join 
Courses c on e.CourseID=c.CourseID;

-- Show students with exam marks 

select s.FirstName,s.LastName,m.MarksObtained,e.ExamType from Students s join
Marks m on s.StudentID=m.StudentID join Exams e on e.ExamID=m.ExamID;


--Show all courses and teachers (even if no teacher assigned) 

insert into Courses values ('DSA',4,1,null);

Select c.CourseName,t.TeacherName from Courses c left join
Teachers t on c.TeacherID=t.TeacherID;

