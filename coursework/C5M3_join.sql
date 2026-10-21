SELECT
 employees.name AS employees_name,
 employees.role AS employees_role,
 departments.name AS department_name
FROM
 `YOUR_PROJECT_ID.employee_data.employees` AS employees
FULL OUTER JOIN #try all 4 joins: inner, left, right & full outer
 `YOUR_PROJECT_ID.employee_data.departments`AS departments
 ON employees.department_id = departments.department_id
