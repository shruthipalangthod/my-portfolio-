create database supply_chain;
create table supply_chain_data;
SHOW TABLES;
DESC supply_chain_data;
SELECT * FROM supply_chain_data;
ALTER TABLE supply_chain_data
RENAME COLUMN `Revenue generated` TO Revenue_generated;
ALTER TABLE supply_chain_data
RENAME COLUMN `producttype` TO product_type;

ALTER TABLE supply_chain_data

RENAME COLUMN `Number of products sold` TO Products_Sold,
RENAME COLUMN `Customer demographics` TO Customer_Demographics,
RENAME COLUMN `Stock levels` TO Stock_Levels,
RENAME COLUMN `Lead times` TO Lead_Times,
RENAME COLUMN `Order quantities` TO Order_Quantities,
RENAME COLUMN `Shipping times` TO Shipping_Times,
RENAME COLUMN `Shipping carriers` TO Shipping_Carriers,
RENAME COLUMN `Shipping costs` TO Shipping_Costs,
RENAME COLUMN `Supplier name` TO Supplier_Name,
RENAME COLUMN `Production volumes` TO Production_Volumes,
RENAME COLUMN `Manufacturing lead time` TO Manufacturing_Lead_Time,
RENAME COLUMN `Manufacturing costs` TO Manufacturing_Costs,
RENAME COLUMN `Inspection results` TO Inspection_Results,
RENAME COLUMN `Defect rates` TO Defect_Rates,
RENAME COLUMN `Transportation modes` TO Transportation_Modes;
show columns from supply_chain_data;
select Product_type,
SKU,
Revenue_generated,
Shipping_costs
from supply_chain_data;
select * from supply_chain_data;
select count(distinct(product_type))
from supply_chain_data;
select
SKU,
Product_type,
Revenue_generated 
from supply_chain_data
order by  Revenue_generated
limit 5;
select sum(Revenue_generated)as total_revenue
from supply_chain_data
group by Revenue_generated;
select avg(Shipping_costs)as avg_shippping
from supply_chain_data;
select revenue_generated,product_type
from supply_chain_data
order by revenue_generated;
SELECT Product_type,
       SUM( products_sold) AS Total_Products_Sold
FROM supply_chain_data
GROUP BY Product_type
ORDER BY Total_Products_Sold DESC;
SELECT Supplier_name,
       SUM(Revenue_generated) AS Total_Revenue
FROM supply_chain_data
GROUP BY Supplier_name
ORDER BY Total_Revenue DESC
LIMIT 3;
select avg(defect_rates)as avg_d_r,supplier_name
from supply_chain_data
group by supplier_name
order by avg_d_r desc;
select shipping_carriers,avg(shipping_costs) as avg_shipping_cost
from supply_chain_data
group by shipping_carriers
order by avg_shipping_cost desc
limit 1;

desc supply_chain_data;

