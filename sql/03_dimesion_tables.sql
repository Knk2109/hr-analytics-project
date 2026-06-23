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



DROP TABLE IF EXISTS dim_department;

CREATE TABLE dim_department AS
SELECT DISTINCT
       department
FROM cleaned_employee_data;

SELECT COUNT(*)
FROM dim_department;

DROP TABLE IF EXISTS dim_jobrole;

CREATE TABLE dim_jobrole AS
SELECT DISTINCT
       jobrole,
       joblevel
FROM cleaned_employee_data;

SELECT COUNT(*)
FROM dim_jobrole;

ALTER TABLE dim_department
ADD CONSTRAINT pk_dim_department
PRIMARY KEY (department);

ALTER TABLE dim_jobrole
ADD CONSTRAINT pk_dim_jobrole
PRIMARY KEY (jobrole);

SELECT
    jobrole,
    COUNT(*)
FROM dim_jobrole
GROUP BY jobrole
HAVING COUNT(*) > 1;

DROP TABLE IF EXISTS dim_jobrole;

CREATE TABLE dim_jobrole AS
SELECT DISTINCT
       jobrole
FROM cleaned_employee_data;


ALTER TABLE dim_employee
ADD CONSTRAINT pk_dim_employee
PRIMARY KEY (employeenumber);


alter table dim_employee
add joblevel int;

UPDATE dim_employee d
SET joblevel = c.joblevel
FROM cleaned_employee_data c
WHERE d.employeenumber = c.employeenumber;

SELECT employeenumber,
       joblevel
FROM dim_employee
LIMIT 10;

SELECT COUNT(*)
FROM dim_employee
WHERE joblevel IS NULL;
