-- Показать работников у которых нет почты или почта не в корпоративном домене (домен dualbootpartners.com)
SELECT *
FROM Employees
WHERE email IS NULL OR NOT (email LIKE '%@dualbootpartners.com');

-- Получить список работников нанятых в последние 30 дней
SELECT *
FROM Employees
WHERE hire_date >= current_date - interval '30 days';

-- Получить список работников нанятых в последние 15 лет
SELECT *
FROM Employees
WHERE hire_date >= current_date - interval '15 years';

-- Найти максимальную и минимальную зарплату по каждому департаменту
SELECT
    d.name AS department_name,
    MAX(e.salary) AS max_salary,
    MIN(e.salary) AS min_salary
FROM
    Employees e
JOIN
    Departments d
ON
    e.department_id = d.id
GROUP BY
    d.name;

-- Посчитать количество работников в каждом регионе
SELECT
    r.name AS region,
    COUNT(e.id) AS employees_count
FROM
    Regions r,
    Locations l,
    Departments d,
    Employees e
WHERE
    r.id = l.region_id
    AND l.id = d.location_id
    AND d.id = e.department_id
GROUP BY
    r.name;

-- Показать сотрудников у которых фамилия длиннее 5 символов
SELECT *
FROM Employees
WHERE LENGTH(last_name) > 5;

-- Показать сотрудников с зарплатой выше средней по всей компании
SELECT *
FROM Employees
WHERE salary > (SELECT AVG(salary) FROM Employees);
