Create Database SchoolDB;

Use SchoolDB;

Create table Departments(
DepartmentID int primary key identity(1,1),
DepartmentName varchar(20),
Location Varchar(20));

Create table Teachers(
TeacherID int primary key identity(100,1),
TeacherName varchar (20),
Email varchar(50),
DepartmentID int,
HireDate date,
Foreign key(DepartmentID) references Departments(DepartmentID));


create table Students(
StudentID int primary key identity(500,1),
FirstName varchar(50),
LastName  varchar(50),
DateOfBirth date,
Gender varchar(10),
DepartmentID int,
AdmissionDate date,
Foreign key(DepartmentID) references Departments(DepartmentID));

create table Courses(
CourseID int primary key identity(1000,1),
CourseName varchar(50),
Credits int,
DepartmentID int,
TeacherID int,
Foreign key(DepartmentID) references Departments(DepartmentID),
Foreign key(TeacherID) references Teachers(TeacherID));


create table Enrollments(
EnrollmentID int primary key identity(2000,1),
StudentID int,
CourseID int,
EnrollmentDate date,
Foreign key(StudentID) references Students(StudentID),
Foreign key(CourseID) references Courses(CourseID));


create table Exams(
ExamID int primary key identity(3000,1),
CourseID int,
ExamDate date,
ExamType varchar,
Foreign key(CourseID) references Courses(CourseID));


create table Marks(
MarkID int primary key identity(50,1),
StudentID int,
ExamID int,
MarksObtained int,
Foreign key(StudentID) references Students(StudentID),
Foreign key(ExamID) references Exams(ExamID));

select*from Departments;
select*from Courses;
select*from Students;
select*from Enrollments;
select*from Exams;
select*from Teachers;
select*from Marks;

