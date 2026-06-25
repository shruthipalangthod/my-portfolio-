select avg(defect_rates)as avg_d_r,supplier_name
from supply_chain_data
group by supplier_name
having avg(defect_rates)>3
order by avg_d_r desc;

describe supply_chain_data;

SELECT SKU,
       Product_type,
       Revenue_generated,
       CASE
           WHEN Revenue_generated > 7000 THEN 'High Revenue'
           WHEN Revenue_generated >= 4000 AND Revenue_generated <= 7000 THEN 'Medium Revenue'
           ELSE 'Low Revenue'
       END AS Revenue_Category
FROM supply_chain_data;
SELECT SKU,
       Product_type,
       Revenue_generated
FROM supply_chain_data
WHERE Revenue_generated>
(
    SELECT AVG(Revenue_generated)
    FROM supply_chain_data
);
SELECT Supplier_name,
       SUM(Revenue_generated) AS Total_Revenue,
       RANK() OVER(
           ORDER BY SUM(Revenue_generated) DESC
       ) AS Revenue_Rank
FROM supply_chain_data
GROUP BY Supplier_name;
SELECT Supplier_name,
       SUM(Revenue_generated) AS Total_Revenue,
       DENSE_RANK() OVER(
           ORDER BY SUM(Revenue_generated) DESC
       ) AS Revenue_Rank
FROM supply_chain_data
GROUP BY Supplier_name;

