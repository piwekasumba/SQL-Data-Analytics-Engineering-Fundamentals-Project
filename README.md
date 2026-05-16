# • SQL for Data Engineering (Learning Project)  
### Foundational SQL Skills for Data Analysis & Data Engineering

---

## Project Overview

This project demonstrates foundational SQL skills developed through structured learning using PostgreSQL.

It was completed as my first structured SQL project while following the LinkedIn Learning course:
**“Complete Guide to SQL for Data Engineering — Beginner to Advanced”**

The focus of this project is to build a strong understanding of how SQL is used to query, transform, and structure relational data for analysis.

---

## Project Context

In real-world data environments, raw datasets are rarely analysis-ready.

They often require SQL-based processing such as:
- cleaning and filtering data  
- structuring relational datasets  
- joining multiple tables  
- aggregating data for reporting and insights  

This project simulates these core SQL workflows at a foundational level.

---

## Core SQL Concepts Practised

- Writing structured SQL queries  
- Filtering and selecting data (WHERE, SELECT)  
- Joining relational tables  
- Aggregating data using GROUP BY  
- Sorting and structuring outputs for analysis  

---

## Learning Approach

This project followed a structured step-by-step learning process through guided course modules.

The primary focus was on:
- understanding SQL syntax and logic  
- building confidence with query structure  
- developing analytical thinking using relational data  
- learning how raw data is transformed into usable outputs  

---

## Tools Used

- PostgreSQL  
- SQL  
- Git & GitHub Version Control  

---

## Project Contents

- SQL exercises from structured learning modules  
- Data exploration queries  
- Filtering and transformation queries  
- Aggregation and grouping examples  

---

## Example SQL Query

```sql
SELECT 
    category, 
    SUM(sales_amount) AS total_sales
FROM sales_data
GROUP BY category
ORDER BY total_sales DESC;
