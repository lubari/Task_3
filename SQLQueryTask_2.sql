USE company

SELECT p.name AS project_name
FROM project p
INNER JOIN (
  SELECT project_id, SUM(rate) AS total_salary
  FROM employee e
  INNER JOIN position pos ON e.position_id = pos.id
  GROUP BY project_id
) s ON p.id = s.project_id
WHERE s.total_salary > p.max_sum_rate;
