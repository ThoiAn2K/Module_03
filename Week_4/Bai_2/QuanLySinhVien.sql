SELECT *
FROM subject
WHERE credit = (SELECT MAX(credit) FROM subject);

SELECT *
FROM subject
WHERE exam_score = (SELECT MAX(exam_score) FROM subject);

SELECT s.studentID, s.studentName, AVG(grade.score) AS average_score
FROM student s
JOIN grade g ON s.student_id = g.studentID,
GROUP BY s.studentID, s.studentName,
ORDER BY average_score DESC;



