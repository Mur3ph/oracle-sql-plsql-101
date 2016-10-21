-- 1). Display employees who joined in the month of May ?
SELECT TO_CHAR(HIRE_DATE,'MONTH') AS Hire_Date_Month  FROM EMPLOYEES;
SELECT FIRST_NAME, LAST_NAME, JOB_ID
FROM EMPLOYEES
WHERE TO_CHAR(HIRE_DATE,'mon') = 'may';

-- 2). Display details of the employees where commission percentage is null and salary in the range 5000 to 10000 and department is 30 ?
DESC EMPLOYEES;
SELECT FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, SALARY, COMMISSION_PCT, DEPARTMENT_ID 
FROM EMPLOYEES
WHERE COMMISSION_PCT IS NULL
AND SALARY BETWEEN 5000 AND 10000
AND DEPARTMENT_ID = 30;

-- 3). Display first name and date of first salary of the employees ?
SELECT e.FIRST_NAME, e.LAST_NAME, jh.START_DATE
FROM EMPLOYEES e
INNER JOIN JOB_HISTORY jh
ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID;

-- NOTE: LAST_DAY gets the last day of the month and people accordin to this database get paid on the first of the month, so plus one
SELECT FIRST_NAME, LAST_NAME, HIRE_DATE, LAST_DAY(HIRE_DATE)+1 AS FIRST_SALARY
FROM EMPLOYEES;