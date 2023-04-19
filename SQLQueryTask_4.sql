SELECT employee.first_name + ' ' + employee.last_name AS employee_name,
       project.name AS project_name,
       (SUM(position.rate) + (SUM(equipment.price)/12)) AS monthly_expenses,
       project.max_sum_rate AS monthly_budget,
       (project.max_sum_rate - (SUM(position.rate) + (SUM(equipment.price)/12))) AS difference
FROM employee
INNER JOIN project ON employee.project_id = project.id
INNER JOIN position ON employee.position_id = position.id
INNER JOIN equipment ON employee.id = equipment.user_id
GROUP BY employee.id, employee.first_name, employee.last_name, project.id, project.name, project.max_sum_rate
HAVING (SUM(position.rate) + (SUM(equipment.price)/12)) > project.max_sum_rate;
