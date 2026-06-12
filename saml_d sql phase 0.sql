use amldataset;
show tables;

Drop table saml_d;
Select * from saml_d;
describe amldataset;
show tables;

show columns from  saml_d;
select count(*) as total_transactions
from saml_d;
select* from saml_d  limit 10;

SELECT
SUM(CASE WHEN Sender_account IS NULL THEN 1 ELSE 0 END) sender_missing,
SUM(CASE WHEN Receiver_account IS NULL THEN 1 ELSE 0 END) receiver_missing,
SUM(CASE WHEN Amount IS NULL THEN 1 ELSE 0 END) amount_missing
FROM saml_d;
SELECT COUNT(*) AS laundering_cases
FROM saml_d
WHERE Is_laundering = 1;
SELECT
ROUND(
100 * SUM(Is_laundering)/COUNT(*),
2
) AS laundering_percentage
FROM saml_d;

select min(amount) as min_account,
avg(amount) as avg_account,
max(amount) as max_account
from saml_d;

select count(distinct sender_account) as unique_sender
from saml_d; 

select count(distinct receiver_account) as unique_reciever
from saml_d; 

select sender_account,
sum(amount) as total_sent
from saml_d
group by sender_account
order by total_sent
limit 10;
select receiver_account,
sum(amount) as total_received
from saml_d
group by receiver_account
order by total_received
limit 10;