create database telecom_churn;
use telecom_churn;
show tables;
show databases;

SELECT *
FROM telecom_churn
LIMIT 10;

select count(*) as total_customers
from telecom_churn;

DESCRIBE telecom_churn;

select distinct churn
from telecom_churn;
