use college_db;

-- 1. Display the total number of students.
select count(*)as 'total students'from students;

-- 2. Display the number of students whose percentage is available.
select count(*)'no of students'from students where percentage is not null;

-- 3. Display the highest, lowest and average percentage of all students, with the headings Highest, Lowest and Average.
select max(percentage)as 'highest',min(percentage)as'lowest',avg(percentage)as 'average' from students;

-- 4. Display the total number of courses and the total credits in the courses table.
select count(course_id)'total number of courses',sum(credits)'total credits'from courses;

-- 5. Display the highest and lowest marks in the enrollments table.
select max(marks)as 'highest',min(marks)'lowest'from enrollments;

-- 6. Display the number of students in each department.
select department, count(*)' number of students'from students group by department;

-- 7. Display the number of students from each city.
select city ,count(*)as 'number of students'from students group by city;

-- 8. Display the average percentage of each department.
select department,avg(percentage)as 'average percentage'from students group by department;

-- 9. Display the number of students admitted in each year, with the latest year first.
select admission_year,count(*)as ' number of students 'from students group by admission_year order by admission_year desc;

-- 10. Display the number of male and female students in each department.
select department,gender, count(gender)as'total students' from students group by department,gender ;

select*from students;
-- 11. Display the average marks of each course in the enrollments table, showing the course ID.
select course_id,avg(marks)from enrollments group by course_id ;
-- 12. Display the student ID and the number of courses for students who are enrolled in at least 2 courses.

-- 13. Display the cities that have at least 6 students.
select city,count(student_id) from students group by city having count(student_id)>=6 ;

-- 14. Display the departments whose average percentage is above 70.
select department from students where percentage>70;

-- 15. For students admitted in 2022 or later, display the departments whose average percentage is 75 or more.
select department,avg(percentage) from students where admission_year>=2022 group by department having avg(percentage)>=75;

-- 16. Among enrollments with marks of 80 or more, display the course IDs that have at least 3 such enrollments.
select course_id,count(enrollment_id)from enrollments where marks>=80  group by course_id having count(enrollment_id)>=3;