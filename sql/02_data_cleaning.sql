-- Data cleaning

DROP TABLE IF EXISTS cleaned_employee_data;

CREATE TABLE cleaned_employee_data AS
SELECT
    age,
    attrition,
    businesstravel,
    dailyrate,
    department,
    distancefromhome,
    education,
    educationfield,
    employeenumber,
    environmentsatisfaction,
    gender,
    hourlyrate,
    jobinvolvement,
    joblevel,
    jobrole,
    jobsatisfaction,
    maritalstatus,
    monthlyincome,
    monthlyrate,
    numcompaniesworked,
    overtime,
    percentsalaryhike,
    performancerating,
    relationshipsatisfaction,
    stockoptionlevel,
    totalworkingyears,
    trainingtimeslastyear,
    worklifebalance,
    yearsatcompany,
    yearsincurrentrole,
    yearssincelastpromotion,
    yearswithcurrmanager
FROM raw_data;

SELECT COUNT(*)
FROM cleaned_employee_data;

SELECT *
FROM cleaned_employee_data
LIMIT 5;

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

-- CREATING FACT TABLES


DROP TABLE IF EXISTS fact_employee_attrition;

CREATE TABLE fact_employee_attrition AS
select
	employeenumber,
	attrition,
	age,
	monthlyincome,
	totalworkingyears,
	yearsatcompany,
	yearsincurrentrole,
	yearssincelastpromotion,
	yearswithcurrmanager,
	dailyrate,
	hourlyrate,
	monthlyrate,
	trainingtimeslastyear
FROM cleaned_employee_data;

SELECT column_name,
       data_type
FROM information_schema.columns
WHERE table_name = 'dim_employee'
ORDER BY ordinal_position;

SELECT column_name,
       data_type
FROM information_schema.columns
WHERE table_name = 'dim_department'
ORDER BY ordinal_position;

SELECT column_name,
       data_type
FROM information_schema.columns
WHERE table_name = 'dim_jobrole'
ORDER BY ordinal_position;

SELECT column_name,
       data_type
FROM information_schema.columns
WHERE table_name = 'fact_employee_attrition'
ORDER BY ordinal_position;

SELECT employeenumber,
       COUNT(*)
FROM fact_employee_attrition
GROUP BY employeenumber
HAVING COUNT(*) > 1;

ALTER TABLE dim_employee
ADD CONSTRAINT pk_dim_employee
PRIMARY KEY (employeenumber);

ALTER TABLE fact_employee_attrition
ADD CONSTRAINT fk_fact_employee
FOREIGN KEY (employeenumber)
REFERENCES dim_employee(employeenumber);

alter table fact_employee_attrition
drop column age;

select *
from fact_employee_attrition
limit 5;

SELECT COUNT(*) FROM dim_employee;
SELECT COUNT(*) FROM dim_department;
SELECT COUNT(*) FROM dim_jobrole;
SELECT COUNT(*) FROM fact_employee_attrition;

SELECT COUNT(DISTINCT department)
FROM cleaned_employee_data;

SELECT COUNT(DISTINCT jobrole)
FROM cleaned_employee_data;

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

alter table dim_employee
add joblevel int;

