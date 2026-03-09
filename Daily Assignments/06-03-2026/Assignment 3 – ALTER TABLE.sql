Alter table Students 
Add PhoneNumber varchar(10);

Alter table Teachers 
Add Salary int;

Alter table Teachers 
Alter column Salary Decimal(10,2);

Alter table Teachers
Add constraint cksal check(Salary>2000);

Alter table Students
Drop PhoneNumber;



Alter table Students
Drop column PhoneNumber;

EXEC sp_rename 'Marks.MarkId', 'Marksid', 'COLUMN';
