-- In this file, you will drop your database if it exists already
DROP DATABASE IF EXISTS employee_db;
-- Then you will create the database (since you just dropped in the line above)
CREATE DATABASE employee_db;
-- Then you will select that database to be the current database
USE employee_db;
-- Then you will create the data table for department
-- You must define what columns exist inside the data table department
CREATE TABLE department (
  -- Creates a numeric column called "id" which will automatically increment its default value as we create new rows --
  id INT PRIMARY KEY,
  
  -- Makes a string column called "name" which cannot contain null --
  name VARCHAR(30)
);
-- Then wyou will create the data table for role
-- You will also define the columns that exist inside the data table role
CREATE TABLE role (
  -- Creates a numeric column called "id" which will automatically increment its default value as we create new rows --
  id INT PRIMARY KEY,
  title VARCHAR(30),
  salary DECIMAL,
  department_id INT,
  FOREIGN KEY (department_id)
  REFERENCES department(id)
  ON DELETE SET NULL
);
  CREATE TABLE employee ( 
  id INT PRIMARY KEY,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  role_id INT,
  FOREIGN KEY (role_id)
  REFERENCES role(id)
  ON DELETE SET NULL,
  manager_id INT DEFAULT NULL
  REFERENCES employee(id)
);

