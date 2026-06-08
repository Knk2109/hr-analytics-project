# HR Analytics Project – Data Audit

## Dataset Information

Dataset Name: IBM HR Analytics Employee Attrition & Performance

Source: Kaggle

Rows: 1470

Columns: 35

---

## Data Quality Checks

### Duplicate Records

Status: To Be Verified

SQL Query:

```sql
SELECT EmployeeNumber, COUNT(*)
FROM hr_employee
GROUP BY EmployeeNumber
HAVING COUNT(*) > 1;
```

Result:
(To be updated)

---

### Missing Values

Status: To Be Verified

Result:
(To be updated)

---

### Constant Columns

| Column        | Value | Action |
| ------------- | ----- | ------ |
| EmployeeCount | 1     | Remove |
| Over18        | Y     | Remove |
| StandardHours | 80    | Remove |

Reason:
These columns contain only one value across all records and do not contribute to analysis.

---

## Initial Business Understanding

Target Variable:

* Attrition

Possible Values:

* Yes
* No

Business Objective:

Identify factors influencing employee attrition and provide recommendations to improve employee retention.

---

## Key Dimensions Identified

* Employee
* Department
* Job Role
* Education
* Marital Status
* Gender

---

## Potential Measures

* Monthly Income
* Total Working Years
* Years At Company
* Years In Current Role
* Years Since Last Promotion
* Training Times Last Year

---

## Next Steps

1. Validate duplicates.
2. Validate null values.
3. Review data types.
4. Classify columns into dimensions and measures.
5. Design star schema.
