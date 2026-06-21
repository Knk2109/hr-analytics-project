-- CREATING DIMENSION TABLES

-- 1. EMPLOYEE DIMENSION TABLE

DROP TABLE IF EXISTS dim_employee;

CREATE TABLE dim_employee AS
select
	employeenumber,
	gender,
	maritalstatus,
    age,
    education,
    educationfield 
FROM cleaned_employee_data;

select *
from dim_employee;

-- 2. DEPARTMENT DIMENSION TABLE

DROP TABLE IF EXISTS dim_department;

CREATE TABLE dim_department AS
select
	department
FROM cleaned_employee_data;

select *
from dim_department
limit 5;

-- 3. JOB ROLE DIMENSION TABLE

DROP TABLE IF EXISTS dim_jobrole;

CREATE TABLE dim_jobrole AS
select
	jobrole,
	joblevel
FROM cleaned_employee_data;

select *
from dim_jobrole
limit 5;
