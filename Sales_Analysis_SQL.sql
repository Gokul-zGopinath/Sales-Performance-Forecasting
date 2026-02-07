create database sales_analytics;
use sales_analytics;
select * from sales;

select round(sum(Sales),2) as total_sales,
round(sum(Profit),2) as total_profit
from sales;

select Region, round(sum(Sales),2) as total_sales
from sales
group by Region 
order by total_sales desc;

select date_format('Order Date','%y-%m') as month,
round(sum(Sales),2) as monthly_sales
from sales
group by month
order by month;

select 'Product Name', round(sum(sales),2) as revenue
from Sales
group by 'Product Name'
order by revenue desc
limit 10;

select Category, round(sum(Profit),2) as total_profit
from sales
group by Category
order by total_profit desc;
