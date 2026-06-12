select *
from saml_d
where amount   >(
select avg(amount)*5
from saml_d);

SELECT
    COUNT(DISTINCT Receiver_account) AS unique_receiver,
    sender_account
FROM saml_d
GROUP BY sender_account
ORDER BY unique_receiver DESC
LIMIT 20;
show columns from saml_d;
SELECT
    COUNT(DISTINCT Sender_account) AS unique_sender,
    Receiver_account
FROM saml_d
GROUP BY receiver_account
ORDER BY unique_sender DESC
LIMIT 20;
SELECT *
FROM saml_d
WHERE Payment_currency <> Received_currency;

select
  sender_bank_location,count(*) as laundering_cases
from saml_d
where is_laundering=1
group by sender_bank_location
order by laundering_cases desc;


SELECT
Sender_bank_location,
COUNT(*) AS laundering_cases
FROM saml_d
WHERE Is_laundering = 1
GROUP BY Sender_bank_location
ORDER BY laundering_cases asc;
SELECT
 laundering_type,
COUNT(*) AS cases
FROM saml_d
WHERE Is_laundering = 1
GROUP BY laundering_type
ORDER BY cases asc;

SELECT
Sender_account,
COUNT(*) AS suspicious_transactions,
SUM(Amount) AS suspicious_amount
FROM saml_d
WHERE Is_laundering = 1
GROUP BY Sender_account
ORDER BY suspicious_transactions DESC;

select Sender_bank_location,Receiver_bank_location,count(*) as suspicious_count
from saml_d
where is_laundering=1
and sender_bank_location<>receiver_bank_location
group by sender_bank_location,receiver_bank_location
order by suspicious_count;

SELECT
YEAR(STR_TO_DATE(Date,'%Y-%m-%d')) AS yr,
MONTH(STR_TO_DATE(Date,'%Y-%m-%d')) AS month_num,
COUNT(*) AS laundering_cases
FROM saml_d
WHERE Is_laundering = 1
GROUP BY
YEAR(STR_TO_DATE(Date,'%Y-%m-%d')),
MONTH(STR_TO_DATE(Date,'%Y-%m-%d'))
ORDER BY
YEAR(STR_TO_DATE(Date,'%Y-%m-%d')),
MONTH(STR_TO_DATE(Date,'%Y-%m-%d'));

SELECT
Sender_account,
COUNT(*) AS total_transactions,
SUM(CASE WHEN Sender_bank_location <> Receiver_bank_location THEN 1 ELSE 0 END) AS cross_border,
SUM(CASE WHEN Payment_currency <> Received_currency THEN 1 ELSE 0 END) AS currency_conversion,
SUM(CASE WHEN Is_laundering = 1 THEN 1 ELSE 0 END) AS laundering_flags
FROM saml_d
GROUP BY Sender_account;

