select 
churn, round(AVG(age),2) as avg_age
from telecom_churn
group by churn;
select churn,round(avg(estimated_salary),2) as avg_salary
from telecom_churn
group by churn;
select state, count(*) as customers,sum(case when  churn='yes' then 1 else 0 end)as churned
from telecom_churn 
group by state
order by churned DESC;
select churn,round(avg(calls_made),2) as avg_calls
from telecom_churn 
group by churn;
select churn,round(avg(sms_sent),2) as avg_sms
from telecom_churn 
group by churn;
select churn,round(avg(data_usage),2) as avg_data
from telecom_churn 
group by churn;
