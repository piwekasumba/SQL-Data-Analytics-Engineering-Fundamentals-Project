# - SQL for Data Engineering (Learning Project) -

This project is part of my SQL learning portfolio focused on building real-world data analysis and data engineering fundamentals using PostgreSQL.

This was my first structured SQL project completed while following the LinkedIn Learning course:
“Complete Guide to SQL for Data Engineering — Beginner to Advanced”.

---

## • Real-world Data Challenges

In real systems, data is rarely ready to use and often requires:

- cleaning and standardisation  
- restructuring for analysis  
- combining multiple tables  
- preparing data for reporting  

---

## • What I Worked On

In this project, I used SQL to build core fundamentals including:

- writing structured SQL queries  
- exploring relational datasets  
- filtering and transforming data  
- joining multiple tables  
- aggregating results for analysis  

---

## • How I Approached It

I focused on learning SQL step-by-step and understanding how relational data moves from raw tables to structured outputs.

---

## • Tools Used

PostgreSQL  
SQL  
Git & GitHub  

---

## • Project Contents

- Data exploration queries  
- Transformation queries  
- Aggregation queries  
- Learning exercises from course path  

---

## • Example SQL Query

```sql
SELECT 
    category, 
    SUM(sales_amount) AS total_sales
FROM sales_data
GROUP BY category
ORDER BY total_sales DESC;



