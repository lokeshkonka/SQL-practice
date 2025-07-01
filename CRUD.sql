
-- ALL THE BASIC CRUD OPERATIONS PRACTICE

CREATE TABLE chai_store(
id SERIAL PRIMARY KEY,
chai_name VARCHAR(50),
price DECIMAL,
chai_type VARCHAR(50) ,
available BOOLEAN
);

INSERT INTO chai_store(
chai_name ,price,chai_type,available
) VALUES
('GREEN TEA',30.00,'SPICED',TRUE),
('OOLONG TEA',40.00,'SPECIAL',TRUE),
('MASALA TEA',20.00,'SPICED',TRUE),
('BLACK TEA',50.00,'SPICED',TRUE),
('ICED TEA',60.00,'SPICED',FALSE);

SELECT * FROM chai_store
SELECT chai_name,price FROM chai_store
SELECT chai_name AS "chai name" ,price AS INR FROM chai_store
SELECT * FROM chai_store WHERE chai_name LIKE '%TEA%';


