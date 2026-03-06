# Zepto-SQL-data-analysis

This project performs an end-to-end Exploratory Data Analysis (EDA) and Data Cleaning on a Zepto sales dataset using SQL. The analysis focuses on understanding product performance, inventory health, and revenue potential for a quick-commerce business model.

🚀 Project Overview

The goal of this project is to transform raw product data into actionable business insights. It covers everything from initial table schema creation to advanced analysis like inventory weight distribution and price-per-gram value assessments.

🛠️ Key SQL Workflows

Data Cleaning & Preprocessing:
Standardized pricing by converting Paisa to Rupees.
Removed data inconsistencies and handled null values.
Eliminated zero-price entries to ensure financial accuracy.

Inventory & Stock Management:
Analyzed out-of-stock patterns for high-value items.
Categorized inventory into Low, Medium, and Bulk weight segments.
Calculated Total Inventory Weight per category for logistics planning.

Business Intelligence & Sales Analysis:
Identified top-value products based on discount depth.
Estimated Total Revenue potential for each product category.
Ranked categories by Average Discount Percentages to understand promotional impact.

📈 Sample Insights
Best Value: Identifying products with the highest discount-to-MRP ratio.
Revenue Drivers: Determining which categories hold the highest stock value.
Pricing Strategy: Analyzing price-per-gram for bulk vs. unit-based products.

📂 Tech Stack
Database: PostgreSQL
Language: SQL
