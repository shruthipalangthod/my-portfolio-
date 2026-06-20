SELECT
customer_ID,
Estimated_Salary,
Data_Used,
Calls_Made
FROM telecom_churn
ORDER BY Estimated_Salary DESC
LIMIT 10;
SELECT
customer_ID,
Data_Used
FROM telecom_churn
ORDER BY Data_Used DESC
LIMIT 10;
SELECT
customer_ID,
Estimated_Salary,
RANK() OVER(
ORDER BY Estimated_Salary DESC
) AS salary_rank
FROM telecom_churn;
SELECT
State,
SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS churned,
RANK() OVER(
ORDER BY SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) DESC
) AS churn_rank
FROM telecom_churn
GROUP BY State;
WITH state_churn AS (
    SELECT
    State,
    SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS churned
    FROM telecom_churn
    GROUP BY State
)
SELECT *
FROM state_churn
WHERE churned >
(
    SELECT AVG(churned)
    FROM state_churn
);
SELECT
State,
ROUND(
SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)
*100.0/COUNT(*),
2
) AS churn_rate
FROM telecom_churn
GROUP BY State
ORDER BY churn_rate DESC;
SELECT
city,
ROUND(
SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)
*100.0/COUNT(*),
2
) AS churn_rate
FROM telecom_churn
group by city
order by churn_rate desc;
