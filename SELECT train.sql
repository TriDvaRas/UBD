
--SELECT * FROM employees;

--SELECT * FROM employees WHERE employment_date>'2018-01-01';

SELECT 
	e.fullname,
	p.title AS 'post',
	t.title as 'team' 
FROM employees AS e
JOIN posts AS p ON p.id=e.post_id
JOIN teams AS t ON t.id=e.team_id
;