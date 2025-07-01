## PostgreSQL Basic Commands

### DDL (Data Definition Language)
```sql
-- Create a table
CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    salary NUMERIC
);

-- Alter a table
ALTER TABLE employees ADD COLUMN department VARCHAR(50);

-- Drop a table
DROP TABLE employees;
```

### DML (Data Manipulation Language)
```sql
-- Insert data
INSERT INTO employees (name, salary, department) VALUES ('Alice', 50000, 'HR');

-- Update data
UPDATE employees SET salary = 55000 WHERE name = 'Alice';

-- Delete data
DELETE FROM employees WHERE name = 'Alice';

-- Select data
SELECT * FROM employees;
```

### TCL (Transaction Control Language)
```sql
-- Start a transaction
BEGIN;

-- Commit a transaction
COMMIT;

-- Rollback a transaction
ROLLBACK;

-- Savepoint
SAVEPOINT my_savepoint;

-- Rollback to savepoint
ROLLBACK TO SAVEPOINT my_savepoint;
```
### DCL (Data Control Language)
```sql
-- Grant privileges
GRANT SELECT, INSERT ON employees TO user_name;

-- Revoke privileges
REVOKE INSERT ON employees FROM user_name;
```

### Useful Meta-Commands (psql)
```psql
-- List all databases
\l

-- Connect to a database
\c database_name

-- List all tables
\dt

-- Describe a table
\d employees
```
### JOINs in PostgreSQL

```sql
-- INNER JOIN: returns rows when there is a match in both tables
SELECT e.name, d.department_name
FROM employees e
INNER JOIN departments d ON e.department = d.department_name;

-- LEFT OUTER JOIN: returns all rows from the left table, and matched rows from the right table
SELECT e.name, d.department_name
FROM employees e
LEFT OUTER JOIN departments d ON e.department = d.department_name;

-- RIGHT OUTER JOIN: returns all rows from the right table, and matched rows from the left table
SELECT e.name, d.department_name
FROM employees e
RIGHT OUTER JOIN departments d ON e.department = d.department_name;

-- FULL OUTER JOIN: returns rows when there is a match in one of the tables
SELECT e.name, d.department_name
FROM employees e
FULL OUTER JOIN departments d ON e.department = d.department_name;

-- CROSS JOIN: returns the Cartesian product of both tables
SELECT e.name, d.department_name
FROM employees e
CROSS JOIN departments d;
```