• SQL for Data Engineering

My first SQL-focused project built while following the LinkedIn Learning course
“Complete Guide to SQL for Data Engineering — Beginner to Advanced”.

This repository documents my early hands-on practice using PostgreSQL to work with relational data, write SQL queries, and understand how data is structured for reporting and analytics.

The project focuses on building practical SQL fundamentals through step-by-step exercises and small real-world style scenarios.

• What I Practiced

Throughout this project I worked on:

Writing SQL queries for data exploration
Filtering and sorting datasets
Using JOINs across multiple tables
Aggregating data with GROUP BY
Cleaning and structuring raw data
Creating analysis-ready outputs
Improving query readability and structure

The main goal was to move beyond just learning syntax and start understanding how SQL is actually used in data workflows.

• Why I Built This

I started this project to build a stronger foundation in SQL and better understand how databases are used in analytics and data engineering environments.

Before this, most of my learning was theory-based.
This repository was my first attempt at applying SQL in a more practical and structured way.

It helped me understand how raw data gets transformed into something usable for reporting, dashboards, and business analysis.

• Tools Used

PostgreSQL
SQL
Git & GitHub

• Project Structure

SQL Scripts

Includes practice queries covering:

Data exploration
Joins
Aggregations
Data cleaning
Basic transformations
Notes & Documentation

I added explanations throughout the project to help reinforce the logic behind different queries and transformations as I learned.

• Example Query

SELECT 
    category,
    SUM(sales_amount) AS total_sales
FROM sales_data
GROUP BY category
ORDER BY total_sales DESC;

• What I Learned

This project helped me improve:

SQL fundamentals
Query structuring
Relational database thinking
Data cleaning logic
Analytical problem solving

It also gave me a better understanding of how SQL fits into broader data analyst and data engineering workflows.

• Learning Source

Built while following the LinkedIn Learning course:

Complete Guide to SQL for Data Engineering — Beginner to Advanced

This repository represents the starting point of my SQL and data engineering learning journey.



