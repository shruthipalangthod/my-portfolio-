SELECT
Gender,
COUNT(*) AS total_customers,
SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS churned_customers,
ROUND(
SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)*100.0/COUNT(*),
2
) AS churn_rate
FROM telecom_churn
GROUP BY Gender
ORDER BY churn_rate DESC;
SELECT
CASE
    WHEN Age < 25 THEN '18-24'
    WHEN Age < 35 THEN '25-34'
    WHEN Age < 45 THEN '35-44'
    WHEN Age < 55 THEN '45-54'
    ELSE '55+'
END AS Age_Group,
COUNT(*) AS Customers,
SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS Churned
FROM telecom_churn
GROUP BY Age_Group;
SELECT
num_dependents,
COUNT(*) AS Customers,
SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS Churned
FROM telecom_churn
GROUP BY num_dependents
ORDER BY num_dependents;
SELECT
telecom_partner,
COUNT(*) AS Customers,
SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS Churned,
ROUND(
SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)*100.0/COUNT(*),
2
) AS Churn_Rate
FROM telecom_churn
GROUP BY telecom_partner
ORDER BY Churn_Rate DESC;
SELECT
State,
COUNT(*) AS Customers,
SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS Churned
FROM telecom_churn
GROUP BY State
ORDER BY Churned DESC;
SELECT
City,
COUNT(*) AS Customers,
SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS Churned
FROM telecom_churn
GROUP BY City
ORDER BY Churned DESC
LIMIT 10;
SELECT
Churn,
ROUND(AVG(Calls_Made),2) AS Avg_Calls
FROM telecom_churn
GROUP BY Churn;
SELECT
Churn,
ROUND(AVG(SMS_Sent),2) AS Avg_SMS
FROM telecom_churn
GROUP BY Churn;
SELECT
Churn,
ROUND(AVG(Data_Used),2) AS Avg_Data
FROM telecom_churn
GROUP BY Churn;