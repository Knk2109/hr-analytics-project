-- CREATING FACT TABLES


DROP TABLE IF EXISTS fact_employee_attrition;

CREATE TABLE fact_employee_attrition AS
select
	employeenumber,
	department,
	jobrole,
	attrition,
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


ALTER TABLE fact_employee_attrition
ADD CONSTRAINT fk_fact_employee
FOREIGN KEY (employeenumber)
REFERENCES dim_employee(employeenumber);


ALTER TABLE fact_employee_attrition
ADD CONSTRAINT fk_fact_department
FOREIGN KEY (department)
REFERENCES dim_department(department);


ALTER TABLE fact_employee_attrition
ADD CONSTRAINT fk_fact_jobrole
FOREIGN KEY (jobrole)
REFERENCES dim_jobrole(jobrole);

SELECT conname
FROM pg_constraint
WHERE conrelid = 'fact_employee_attrition'::regclass;

SELECT employeenumber,
       COUNT(*)
FROM fact_employee_attrition
GROUP BY employeenumber
HAVING COUNT(*) > 1;


alter table fact_employee_attrition
drop column age;

SELECT *
FROM fact_employee_attrition
LIMIT 5;

ALTER TABLE fact_employee_attrition
DROP CONSTRAINT fk_fact_employee;

select count(*)
from fact_employee_attrition fea ;
