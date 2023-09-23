INSERT INTO Regions (name) VALUES
    ('Англия'),
    ('Шотландия'),
    ('Ирландия');

INSERT INTO Locations (name, address, region_id) VALUES
    ('Диагон-аллея', 'Лондон', 1),
    ('Хогсмид', 'Шотландия', 2),
    ('Балликисслер', 'Ирландия', 3);

INSERT INTO Departments (name, location_id) VALUES
    ('Отдел заклинаний', 1),
    ('Отдел по уходу за магическими существами', 2),
    ('Отдел контроля над волшебными палочками', 3);

INSERT INTO Employees (name, last_name, hire_date, salary, email, department_id) VALUES
    ('Гарри', 'Поттер', '2001-09-01', 50000, 'harry@hogwarts.com', 16),
    ('Гермиона', 'Грейнджер', '2001-09-01', 52000, 'hermione@hogwarts.com', 17),
    ('Рон', 'Уизли', '2001-09-01', 49000, 'ron@hogwarts.com', 18),
    ('Александр', 'Семенов', '2010-10-10', 500000, 'a.semenov@dualbootpartners.com', 16);