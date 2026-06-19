select distinct count(*)
from raw_data rd ;

SELECT *
FROM raw_data
LIMIT 5;

SELECT column_name,
       data_type
FROM information_schema.columns
WHERE table_name = 'raw_data'
ORDER BY ordinal_position;

select
	count(*) - count(age) as age_nulls,
	count(*) - count(attrition) as attrition_nulls,
	count(*) - count(employeenumber) as employeenumber_nulls,
	count(*) - count(monthlyincome) as monthlyincome_nulls
from raw_data rd ;

select distinct employeecount
from raw_data rd ;

select distinct over18
from raw_data rd ;

select distinct standardhours
from raw_data rd ;
	