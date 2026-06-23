# HR Analytics Dashboard Project

## Project Overview

This project analyzes employee attrition patterns and identifies the key factors influencing employee turnover using PostgreSQL, SQL, and Power BI.

The objective is to help HR leaders and business stakeholders understand attrition trends, identify high-risk employee groups, and implement data-driven retention strategies.

---

## Business Problem

Employee attrition leads to increased hiring costs, productivity loss, and operational disruption.

This project aims to answer critical business questions such as:

* What is the overall attrition rate?
* Which departments and job roles experience the highest attrition?
* Does overtime increase employee turnover?
* How do age, compensation, and tenure impact attrition?
* What role do job satisfaction and work-life balance play in employee retention?

---

## Tools & Technologies

* PostgreSQL
* SQL
* DBeaver
* VS Code
* Power BI
* Git
* GitHub

---

## Project Workflow

Dataset
→ Data Audit
→ Data Cleaning
→ Data Modeling
→ Star Schema Design
→ SQL EDA
→ KPI Development
→ Power BI Dashboard
→ Executive Insights & Recommendations

---

## Data Model

### Dimension Tables

* dim_employee
* dim_department
* dim_jobrole

### Fact Table

* fact_employee_attrition

The project follows a Star Schema design to improve reporting performance and simplify analytical queries.

---

## Key KPIs

* Total Employees
* Attrition Count
* Attrition Rate
* Average Age
* Average Monthly Income
* Average Tenure

---

## Key Findings

### 1. Overtime Drives Attrition

Employees working overtime exhibit an attrition rate of 30.53%, compared to 10.44% for employees not working overtime.

### 2. Younger Employees Leave More Frequently

Employees under 30 years of age show the highest attrition rate at 27.91%.

### 3. Attrition is Highest in the First Two Years

Employees with less than 2 years of tenure experience an attrition rate of 29.82%.

### 4. Compensation Influences Retention

Employees earning below 5K exhibit significantly higher attrition than higher-income employees.

### 5. Employee Experience Matters

Low job satisfaction and poor work-life balance are strongly associated with employee attrition.

---

## Dashboard Pages

### Page 1 – Executive Summary

* Employee KPIs
* Attrition Overview
* Attrition by Department
* Attrition by Job Role

### Page 2 – Attrition Drivers

* Attrition by Age Group
* Attrition by Overtime
* Attrition by Income Band
* Attrition by Marital Status

### Page 3 – Employee Experience & Satisfaction

* Attrition by Job Satisfaction
* Attrition by Work-Life Balance
* Attrition by Job Level
* Attrition by Tenure

### Page 4 – Executive Insights & Recommendations

* Top Findings
* Business Recommendations
* High-Risk Employee Profile

---

## Business Recommendations

* Strengthen onboarding and early-tenure retention programs.
* Reduce excessive overtime and monitor workload distribution.
* Improve employee engagement and job satisfaction initiatives.
* Review compensation strategies for entry-level employees.
* Develop targeted retention programs for high-risk employee groups.

---

## Repository Structure

```text
datasets/
docs/
powerbi/
sql/

README.md
```

---

## Author

Karthik N

Business Analytics | Data Analytics | Power BI | SQL | PostgreSQL | Data Visualization
