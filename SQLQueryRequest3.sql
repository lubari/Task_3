SELECT CONCAT(employee.first_name, ' ', employee.last_name) AS employee_name, 
       project.name AS project_name
FROM employee
INNER JOIN project ON employee.project_id = project.id
INNER JOIN position ON employee.position_id = position.id
GROUP BY employee.id, employee.first_name, employee.last_name, project.id, project.name, project.max_sum_rate
HAVING SUM(position.rate) > project.max_sum_rate;