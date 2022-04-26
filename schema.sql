-- Creating tables for PH-EmployeeDB

CREATE TABLE departments (
	
	dept_no VARCHAR(4) NOT NULL,
	
	dept_name VARCHAR(40) NOT NULL,
	
	PRIMARY KEY (dept_no),
	
	UNIQUE (dept_name)
);

-- employees 

CREATE TABLE employees (
	
	emp_no INT NOT NULL,
	
    birth_date DATE NOT NULL,
	
    first_name VARCHAR NOT NULL,
	
    last_name VARCHAR NOT NULL,
	
    gender VARCHAR NOT NULL,
	
    hire_date DATE NOT NULL,
	
    PRIMARY KEY (emp_no)
);

-- department manager 

CREATE TABLE dept_manager (

dept_no VARCHAR(4) NOT NULL,
	
	emp_no INT NOT NULL, 
	
	from_date DATE NOT NULL, 
	
	to_date DATE NOT NULL, 
	
FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	
FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	
	PRIMARY KEY (emp_no, dept_no)

);

-- Salaries 

CREATE TABLE salaries (
	
  emp_no INT NOT NULL,
	
  salary INT NOT NULL,
	
  from_date DATE NOT NULL,
	
  to_date DATE NOT NULL,
	
  FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	
  PRIMARY KEY (emp_no)
);

-- Department Employees 

CREATE TABLE debt_employees (
	
	dept_no VARCHAR(4) NOT NULL,
	
	emp_no INT NOT NULL,
	
	from_date DATE NOT NULL,
	
	to_date DATE NOT NULL, 
	
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	
		PRIMARY KEY (dept_no , emp_no)
);

-- Titles

CREATE TABLE titles (
	
	emp_no INT NOT NULL,
	
	title TEXT NOT NULL,
	
	from_date DATE NOT NULL,
	
	to_date DATE NOT NULL, 
		
	PRIMARY KEY (emp_no)
);

SELECT first_name, last_name
FROM employees
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31';

SELECT first_name, last_name
FROM employees
WHERE birth_date BETWEEN '1952-01-01' AND '1952-12-31';

SELECT first_name, last_name
FROM employees
WHERE birth_date BETWEEN '1953-01-01' AND '1953-12-31';

SELECT first_name, last_name
FROM employees
WHERE birth_date BETWEEN '1954-01-01' AND '1954-12-31';

SELECT first_name, last_name
FROM employees
WHERE birth_date BETWEEN '1955-01-01' AND '1955-12-31';