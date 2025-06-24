START TRANSACTION;

DROP TABLE IF EXISTS library_resources, course_materials, users, departments;

CREATE TABLE library_resources (
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
resource_name VARCHAR(50) NOT NULL,
number_of INT DEFAULT 1
);

CREATE TABLE departments (
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
department VARCHAR(50) NOT NULL, 
department_chair INT NOT NULL  
);

CREATE TABLE users (
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
department_id INT NOT NULL REFERENCES departments(id)
);

CREATE TABLE course_materials (
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
material_name VARCHAR(50) NOT NULL,
department_id INT NOT NULL REFERENCES departments(id),
borrowed_by INT NOT NULL REFERENCES users(id),
number_of INT DEFAULT 1
);





COMMIT;