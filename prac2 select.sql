USE ubd;
--ALTER TABLE projects ADD price MONEY ;

--UPDATE projects SET price='9500.00' WHERE id=3;
--INSERT projects(
--	title,
--	deadline,
--	price
--) VALUES(
--	'ѕчел',
--	'2021-11-11',
--	'12322'
--);
--INSERT teams_projects  VALUES (2,17);

--SELECT * FROM (
--	SELECT t.id, t.title,SUM(projects.price) as total_income 
--	FROM teams AS t
--	JOIN teams_projects ON t.id=teams_projects.team_id
--	JOIN projects ON projects.id=teams_projects.project_id
--	GROUP BY t.title,t.id
--) AS n
--WHERE n.total_income>'100000'

;


SELECT t.id, t.title,SUM(projects.price) as total_income 
FROM teams AS t
JOIN teams_projects ON t.id=teams_projects.team_id
JOIN projects ON projects.id=teams_projects.project_id
GROUP BY t.title,t.id
HAVING SUM(projects.price)>'100000'
;

--SELECT * FROM teams_projects;
--SELECT * FROM projects;
--SELECT * FROM teams;

--INSERT teams(
--	title
--)
--VALUES (
--	'Ugarniks'
--);

