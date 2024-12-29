CREATE TABLE sales (
    Invoice_ID VARCHAR(50),
    Branch VARCHAR(20),
    City VARCHAR(100),
    Customer_type VARCHAR(50),
    Gender VARCHAR(30),
    Product_line VARCHAR(200),
    Unit_price DECIMAL(10,2),
    Quantity INT,
    Tax_5_percent DECIMAL(10,2),
    Total DECIMAL(10,2),
    Sale_Date DATE, 
    Sale_Time TIME, 
    Payment VARCHAR(50),
    COGS DECIMAL(10,2),
    Gross_margin_percentage DECIMAL(10,2),
    Gross_income DECIMAL(10,2),
    Rating DECIMAL(3,1)
);
SET datestyle = 'MDY';

Copy sales from 'C:\Program Files\PostgreSQL\16\data\Data_copy\supermarket_sales - Sheet1.csv'
Delimiter ','
CSV header;

/*Count the total number of transactions*/
select count(*) as total_transactions from sales;

/*Find the total revenue generated*/
select sum(total) as total_revenue from sales;

/*Count the number of unique customers or Invoice IDs*/
select count(distinct Invoice_ID) as Unique_invoices from sales;

/*Average revenue per transaction*/
select avg(total) as avg_revenue from sales;

/*Total revenue by branch*/
select branch,sum(total) as branch_revenue
from sales
group by branch
order by branch_revenue desc;

/*Total revenue by product line:*/
select product_line,sum(total) as Productline_revenue
from sales
group by product_line
order by Productline_revenue desc;

/*Customer Insights*/
/*Revenue by customer type*/
select customer_type, sum(total) as customer_type_revenue
from sales
group by customer_type
order by customer_type_revenue desc;

/*Revenue split by gender:*/
select gender,sum(total) as gender_revenue
from sales
group by gender
order by gender_revenue desc;

/*Average rating by gender:*/
select gender,avg(rating)
from sales
group by gender;

/*Temporal Analysis*/
/*Total revenue by day:*/
select sale_date, sum(total) as daily_revenue
from sales
group by sale_date
order by daily_revenue desc;

/*Hourly revenue trend:*/
select extract(hour from sale_time) as hour,
sum(total) as hourly_revenue
from sales
group by hour
order by hourly_revenue desc;

/*Best-performing month (if the dataset spans months)*/
select extract(month from sale_date) as Month, sum(total) as monthly_revenue
from sales
group by Month
order by monthly_revenue desc;

/*Product analysis*/
/*Top 3 best selling product lines by revenue*/
select product_line,sum(total) as product_revenue
from sales
group by product_line
order by product_revenue desc
limit 3;

/*Product line with the highest average rating*/
select product_line,avg(rating) as avg_rating
from sales
group by product_line
order by avg_rating desc
limit 1;

/*Payment Insights*/
/*Payment method distribution:*/
select payment,count(*) as payment_count
from sales
group by payment;

/*Total revenue by payment method:*/

select payment,sum(total) as payment_revenue
from sales
group by payment
order by payment_revenue desc;

/*Profit analysis*/
/*Total gross income by branch*/
select branch,sum(gross_income) as branch_income
from sales
group by branch
order by branch_income desc;

/*Gross margin percentage by product line:*/
select product_line,avg(gross_margin_percentage) as avg_gross_margin
from sales
group by product_line
order by avg_gross_margin desc;

/*Profitability by city*/
select city,sum(gross_income) as city_profit
from sales
group by city
order by city_profit desc;

/*Advanced queries*/
/*Branch with the highest average transaction value:*/
select branch,avg(total) as avg_transaction_value
from sales
group by branch
order by avg_transaction_value desc;

/*Peak sales hour for each branch*/
select branch,extract(hour from sale_time) as peak_hour, sum(total) as revenue
from sales
group by branch,peak_hour
order by revenue desc;

/*Gender-wise product line preference*/
select gender, product_line,count(*) as product_count
from sales
group by gender, product_line
order by product_count desc;






