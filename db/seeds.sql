DROP TABLE IF EXISTS votes;
DROP TABLE IF EXISTS candidates;
DROP TABLE IF EXISTS parties;
DROP TABLE IF EXISTS voters;

  INSERT INTO department (id, name) 
VALUES 
(1, 'Managers');
(2, 'Accounting');
(3, 'Engineers');
(4, 'Maintenance');
(10, 'Driver');

INSERT INTO  role (id, title, salary, department_id)
VALUSE
(1, 'Equipment_manager', 750000.00, 1);
(1, 'Personnel_manager', 60000.00, 1);
(2, 'Audits_accounting', 50000.00, 2);
(2, 'Controller_accounting', 60000.00, 2);
(3, 'Senior_engineer', 90000.00, 3);
(3, 'Industrial_engineer', 90000.00, 3);
(4, 'Senior_mainteneace', 75000.00, 4);
(4, 'Staff_mainteneace', 55000.00, 4);
(5, 'Senior_driver', 90000.00, 5);



INSERT INTO employees (firstName, lastName, roleID, managerID) 
VALUES 
('Daniel', 'Manning',1, null );
('John', 'Lively',2, null );
('Harry', 'Godrey',3, null );
('Steve', 'Williams',1, 1 );
('Rob', 'Alexander',2, 2);
('Jeff', 'Ford',3, 3 );
('Mike', 'Elam',4, 4);
('Sam', 'Watson',5, 5 );