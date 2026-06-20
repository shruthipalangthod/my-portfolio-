select  customer_id, count( *) as cnt
from telecom_churn
group by customer_id
having count(*) >1 ;
describe telecom_churn;
 select churn,count( *) as customers
 from telecom_churn
 group by churn;
 select 
 round(
 count(case when  churn ='yes'  then  1 end )*100.0/count(*),2) as churn_rate
 from telecom_churn;
 select telecom_partner,
  count(*) as customers
 from telecom_churn
 group by telecom_partner;
 select telecom_partner, count(*) as total_customers,
 sum(case when churn ='yes' then  1 else 0 end ) as churned_customers,
 round(
 sum(case when  churn ='yes' then 1 else 0  end ) *100.0 /count(*), 2) as churn_rate
 from telecom_churn
 group by telecom_partner 
 order by churn_rate DESC;
 
 