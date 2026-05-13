# SQL for Data Engineering (Learning Project)

This project is part of my SQL learning portfolio focused on building foundational SQL skills for data analysis and data engineering using PostgreSQL.

This was my first structured SQL project completed while following the LinkedIn Learning course:
“Complete Guide to SQL for Data Engineering — Beginner to Advanced”.

---

## • Project Context

This project was built as a learning exercise to understand how SQL is used to work with structured data in real-world scenarios.

It focuses on how raw data is transformed into usable outputs through SQL queries.

---

## • Real-world Data Concepts Practised

In real data systems, datasets are rarely analysis-ready. They often require:

- filtering and cleaning data  
- structuring raw datasets  
- combining related tables  
- summarising data for reporting  

This project simulates those core SQL workflows.

---

## • What I Worked On

In this project, I used SQL to build foundational skills including:

- writing structured SQL queries  
- filtering and selecting relevant data  
- joining tables  
- aggregating data for analysis  
- practising data transformation logic  

---

## • How I Approached It

I followed a step-by-step learning approach through the course and focused on understanding how SQL transforms raw relational data into structured outputs.

The emphasis was on learning correct query structure and analytical thinking.

---

## • Tools Used

- PostgreSQL  
- SQL  
- Git & GitHub  

---

## • Project Contents

- SQL learning exercises from course modules  
- Data exploration queries  
- Filtering and transformation queries  
- Aggregation and grouping queries  

---

## • Example SQL Query

```sql
SELECT 
    category, 
    SUM(sales_amount) AS total_sales
FROM sales_data
GROUP BY category
ORDER BY total_sales DESC;



