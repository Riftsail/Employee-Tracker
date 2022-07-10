DROP DATABASE IF EXISTS employees_db;
CREATE DATABASE employees_db;
USE employees_db;

CREATE TABLE department (
 id INTEGER AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR (30)
);

CREATE TABLE role (
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR (30),
  salary DECIMAL,
  department_id INTEGER
);


CREATE TABLE employees (
   id INTEGER AUTO_INCREMENT PRIMARY KEY,
  first_Name VARCHAR (30),
  last_Name VARCHAR (30),
  role_ID INTEGER
  manager_ID INTEGER
);