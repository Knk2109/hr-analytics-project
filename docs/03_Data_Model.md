### 1. Data Modeling Approach

* Star Schema
* Rationale

### 2. Fact Table

* fact_employee_attrition

Purpose:

Store employee attrition outcomes and measurable employee metrics.

### 3. Dimension Tables

* dim_employee
* dim_department
* dim_jobrole

### 4. Business Key

* EmployeeNumber

### Excluded Columns

* EmployeeCount
* Over18
* StandardHours

Reason:

Constant values across all records and no analytical value.
