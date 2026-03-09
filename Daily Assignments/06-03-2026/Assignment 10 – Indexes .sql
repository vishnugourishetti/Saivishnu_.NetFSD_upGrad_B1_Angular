CREATE INDEX idx_student_lastname
ON Students(LastName);


CREATE INDEX idx_teacher_email
ON Teachers(Email);

CREATE INDEX idx_enrollment_student_course
ON Enrollments(StudentID, CourseID);

CREATE UNIQUE INDEX idx_department_name
ON Departments(DepartmentName);


DROP INDEX idx_student_lastname
ON Students;