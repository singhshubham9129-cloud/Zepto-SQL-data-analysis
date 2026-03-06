drop table if exist zepto;

create table zepto(
sku_id serial primary key,
category varchar(120),
name varchar(150) not null,
mrp numeric(8,2),
discount_percent numeric(5,2),
available_quantity integer,
discounted_selling_price numeric(8,2),
weight_in_grams integer,
out_of_stock boolean,
quantity integer

);

-- data exploration

-- count rows

select count(*) from zepto;

--sample data 

select * from zepto 
limit 10;

-- check null value

select * from zepto 
where name is null 
or 
category is null 
or
mrp is null 
or 
discount_percent is null 
or 
available_quantity is null 
or 
discounted_selling_price is null 
or 
weight_in_grams is null 
or 
out_of_stock is null 
or 
quantity is null ;

-- different product categories

select distinct category
from zepto
order by category;

-- product in/out of stock
select out_of_stock, count(sku_id)
from zepto
group by out_of_stock;

-- product names present multiple times

select name, count(sku_id) as "Num of SKUs"
from zepto 
group by name
having count(sku_id)>1
order by count(sku_id) desc;

--data cleaning
-- product's price is 0

select * from zepto 
where mrp = 0 or discounted_selling_price = 0;

delete from zepto 
where mrp = 0;

-- converting paisa into rupee
update zepto
set mrp=mrp/100.0,
discounted_selling_price = discounted_selling_price/100.0;

select mrp,discounted_selling_price from zepto

--Data Analysis
--Q1. Find the top 10 best-value products based on the discount percentage.
select distinct name, mrp, discount_percent
from zepto
order by discount_percent desc
limit 10;

--Q2.What are the Products with High MRP but Out of Stock
select distinct name, mrp
from zepto 
WHERE out_of_stock = true and mrp > 300
ORDER BY mrp desc;

--Q3.Calculate Estimated Revenue for each category
SELECT category,
SUM(discounted_selling_price * available_quantity) AS total_revenue
FROM zepto
GROUP BY category
ORDER BY total_revenue;

-- Q4. Find all products where MRP is greater than ₹500 and discount is less than 10%.
SELECT DISTINCT name, mrp, discount_percent
FROM zepto
WHERE mrp > 500 AND discount_percent < 10
ORDER BY mrp DESC, discount_percent DESC;

-- Q5. Identify the top 5 categories offering the highest average discount percentage.
SELECT category,
ROUND(AVG(discount_percent),2) AS avg_discount
FROM zepto
GROUP BY category
ORDER BY avg_discount DESC
LIMIT 5;

-- Q6. Find the price per gram for products above 100g and sort by best value.
SELECT DISTINCT name, weight_in_grams, discounted_selling_price,
ROUND(discounted_selling_price/weight_in_grams,2) AS price_per_gram
FROM zepto
WHERE weight_in_grams >= 100
ORDER BY price_per_gram;

--Q7.Group the products into categories like Low, Medium, Bulk.
SELECT DISTINCT name, weight_in_grams,
CASE WHEN weight_in_grams < 1000 THEN 'Low'
	WHEN weight_in_grams < 5000 THEN 'Medium'
	ELSE 'Bulk'
	END AS weight_category
FROM zepto;

--Q8.What is the Total Inventory Weight Per Category 
SELECT category,
SUM(weight_in_grams * available_quantity) AS total_weight
FROM zepto
GROUP BY category
ORDER BY total_weight;
