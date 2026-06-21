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