ALTER TABLE Departments
ADD CONSTRAINT UQ_Department_Name UNIQUE (DepartmentName);


Alter table Students
Add constraint m_f check(Gender in('M','F'));

Alter table Courses
Add constraint cred check(Credits between 1 and 5);


Alter table Marks
Add constraint mark_ch check(MarksObtained between 0 and 100);

Alter table Teachers
Add constraint techeruniq unique(Email);

Alter table Enrollments
Add constraint defultsyssate  default GETDATE() FOR EnrollmentDate;

