-- Create Regions table
CREATE TABLE Regions (
    id serial PRIMARY KEY,
    name varchar
);

-- Create Locations table
CREATE TABLE Locations (
    id serial PRIMARY KEY,
    name varchar,
    address varchar,
    region_id integer REFERENCES Regions(ID)
);

-- Create Departments table
CREATE TABLE Departments (
    id serial PRIMARY KEY,
    name varchar,
    location_id integer,
    manager_id integer
);
-- Create Employees table
CREATE TABLE Employees (
    id serial PRIMARY KEY,
    name varchar,
    last_name varchar,
    hire_date date,
    salary integer,
    email varchar,
    manager_id integer,
    department_id integer
);

-- Create FK for Manager_id in the Employees table
ALTER TABLE Employees
ADD CONSTRAINT fk_manager
FOREIGN KEY (manager_id)
REFERENCES Employees(id);

-- Create FK for Department_id in the Employees table
ALTER TABLE Employees
ADD CONSTRAINT fk_department
FOREIGN KEY (department_id)
REFERENCES Departments(id);

-- Create FK for Location_id in the Departments table
ALTER TABLE Departments
ADD CONSTRAINT fk_location
FOREIGN KEY (location_id)
REFERENCES Locations(id);

-- Create FK for Manager_id in the Departments table
ALTER TABLE Departments
ADD CONSTRAINT fk_employee
FOREIGN KEY (manager_id)
REFERENCES Employees(id);