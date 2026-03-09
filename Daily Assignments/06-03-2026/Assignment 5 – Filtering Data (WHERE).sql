--1. Find students from Computer Science department 
Select*from Students s inner join Departments d
on d.DepartmentID=s.DepartmentID where DepartmentName='CSE';

--2. Find teachers hired after 2022 
select*from Teachers where HireDate>'2022';

--3. Find students whose name starts with 'A' 
select*from Students where FirstName like'a%';


--4. Find courses having credits greater than 3 
select coursename, credits from Courses where Credits>3;

--5. Find students born between 2005 and 2008 
select*from Students where DateOfBirth between '2005' and '2008';--no students between 2005 and 2008


--6. Find students not belonging to Mechanical department 
select*from Students s inner join Departments d on s.DepartmentID=d.DepartmentID
where DepartmentName!='Mech';
--7. Find teachers whose salary between 40000 and 70000 

select*from Teachers where Salary between 40000 and 70000;

--8. Find courses not taught by TeacherID = 3 

select CourseName from Courses where TeacherID=103;