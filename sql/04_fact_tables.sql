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


ALTER TABLE fact_employee_attrition
ADD CONSTRAINT fk_fact_employee
FOREIGN KEY (employeenumber)
REFERENCES dim_employee(employeenumber);


SELECT employeenumber,
       COUNT(*)
FROM fact_employee_attrition
GROUP BY employeenumber
HAVING COUNT(*) > 1;


alter table fact_employee_attrition
drop column age;