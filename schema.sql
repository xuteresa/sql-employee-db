---Delete table if exists
DROP TABLE departments;
DROP TABLE dept_emp;
DROP TABLE dept_manager;
DROP TABLE employees;
DROP TABLE dept_manager;
DROP TABLE salaries;
DROP TABLE titles;

---Create Tables
CREATE TABLE departments (
    dept_no INT PRIMARY KEY NOT NULL,
    dept_name VARCHAR,
);

CREATE TABLE employees (
    emp_no INT PRIMARY KEY NOT NULL,
    birth_date DATE,
    first_name VARCHAR,
    last_name VARCHAR,
    gender VARCHAR,
    hire_date Date,
);

CREATE TABLE dept_emp(
    emp_no INT PRIMARY KEY NOT NULL,
    dept_no INT,
    from_date DATE,
    to_date DATE,
    FOREIGN KEY (emp_no)REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager(
    dept_no INT NOT NULL,
    emp_no INT PRIMARY KEY NOT NULL,
    from_date DATE,
    to_date DATE,
);

CREATE TABLE salaries(
    emp_no INT PRIMARY KEY NOT NULL,
    salary INT,
    from_date DATE,
    to_date DATE,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE titles(
    emp_no INT PRIMARY KEY NOT NULL,
    title VARCHAR,
    from_date DATE,
    to_date DATE,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);