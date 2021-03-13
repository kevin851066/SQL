SELECT CEIL(AVG(Salary) - AVG(REPLACE(Salary, '0', ''))) FROM EMPLOYEES;
-- MySQL automatically converts strings to numbers as necessary, and vice versa.