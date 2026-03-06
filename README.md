# Zepto-SQL-data-analysis

This project performs an end-to-end Exploratory Data Analysis (EDA) and Data Cleaning on a Zepto sales dataset using SQL. The analysis focuses on understanding product performance, inventory health, and revenue potential for a quick-commerce business model.

## 📂 Project Structure
```text
├── data/
│   └── zepto_v2.csv
├── scripts/
│   └── zepto Data Analysis.sql
├── output_samples/
│   └── query_results_screenshot.png
└── README.md


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

Screenshots:
<img width="1918" height="1022" alt="the top 10 best-value products based on the discount percentage" src="https://github.com/user-attachments/assets/3cb2cb6d-de12-4ca8-9bf3-4bb339ca4d43" />

<img width="1918" height="1026" alt="the Products with High MRP but Out of Stock" src="https://github.com/user-attachments/assets/bc03a083-eaae-48d3-b362-80678d7bf689" />

<img width="1918" height="1027" alt="Estimated Revenue for each category" src="https://github.com/user-attachments/assets/9a891beb-d3db-49ac-bfe4-7fb023071442" />

<img width="1918" height="1025" alt="all products where MRP is greater than ₹500 and discount is less than 10%" src="https://github.com/user-attachments/assets/db870292-edfb-4cc1-9784-9651d88a9c52" />

<img width="1918" height="1020" alt="the top 5 categories offering the highest average discount percentage" src="https://github.com/user-attachments/assets/f69606bc-1443-4765-9224-a87362b00ff1" />


