use quanlysinhvien;
SELECT *
FROM Student
WHERE StudentName LIKE 'h%';

SELECT *
FROM Class
WHERE MONTH(StartDate) = 12;

SELECT *
FROM Subject
WHERE Credit BETWEEN 3 AND 5;

UPDATE Student
SET ClassId = 2
WHERE StudentName = 'Hung';

SELECT Student.StudentName, Subject.SubName, Mark.Mark
FROM Student
         JOIN Mark ON Student.StudentId = Mark.StudentId
         JOIN Subject ON Mark.SubID = Subject.SubID
ORDER BY Mark.Mark DESC, Student.StudentName ASC;

