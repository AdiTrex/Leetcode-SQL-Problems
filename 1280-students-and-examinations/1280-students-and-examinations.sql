with temp as(select * from Students, Subjects)
select s.student_id,s.student_name, s.subject_name, ifnull(count(e.subject_name),0) as attended_exams from temp s left join Examinations e using(student_id,subject_name)
group by student_name, subject_name order by student_id, subject_name ;