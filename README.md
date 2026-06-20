# my-portfolio-
# 🛡️ Anti-Money Laundering (AML) Transaction Monitoring & Fraud Detection

## 📌 Project Overview

This project is an end-to-end **Anti-Money Laundering (AML) Transaction Monitoring System** built using **SQL, Python, Machine Learning, and Power BI**. The objective is to analyze financial transactions, identify suspicious patterns, engineer business-relevant features, and build predictive models that classify transactions as potential money laundering activities.

The project demonstrates the complete data analytics lifecycle, from data exploration and feature engineering to machine learning and interactive dashboard development.

---

# 🎯 Business Problem

Financial institutions process millions of transactions every day. Detecting suspicious transactions manually is time-consuming and inefficient.

The objective of this project is to:

* Analyze transaction data.
* Identify potential money laundering patterns.
* Engineer meaningful AML risk indicators.
* Build machine learning models to classify suspicious transactions.
* Present findings through an interactive Power BI dashboard.

---

# 🛠️ Technologies Used

* **Python**

  * Pandas
  * Matplotlib
  * Scikit-learn

* **SQL (MySQL)**

  * Data exploration
  * Aggregations
  * Filtering
  * Business queries

* **Power BI**

  * KPI Cards
  * Interactive Dashboards
  * Slicers
  * Visual Analytics

* **Machine Learning**

  * Logistic Regression
  * Random Forest Classifier

---

# 📂 Project Workflow

## Phase 1 – Data Import

* Imported transaction dataset into MySQL and Python.
* Validated schema and data types.
* Verified data quality before analysis.

---

## Phase 2 – Exploratory Data Analysis (EDA)

Performed detailed analysis to understand the dataset and uncover patterns.

### Data Quality Checks

* Checked missing values.
* Verified duplicate records.
* Reviewed column data types.
* Generated descriptive statistics.

### Transaction Analysis

* Distribution of transaction amounts.
* Normal vs suspicious transaction counts.
* Payment method analysis.
* Sender bank location analysis.
* Receiver bank location analysis.
* Payment currency distribution.
* Received currency distribution.
* Laundering type distribution.

### Visualizations

Created charts for:

* Transaction amount distribution
* Laundering vs normal transactions
* Payment type distribution
* Sender bank locations
* Receiver bank locations
* Currency distribution
* Laundering type frequency

---

# ⚙️ Feature Engineering

To improve model performance, additional business-oriented features were created.

## 1. Cross Border Indicator

Created a feature that identifies whether sender and receiver bank locations are different.

* `1` → Cross-border transaction
* `0` → Domestic transaction

---

## 2. Currency Conversion Indicator

Created a feature to detect whether payment and received currencies differ.

* `1` → Currency conversion involved
* `0` → Same currency

---

## 3. Large Transaction Indicator

Flagged unusually large transactions using a threshold derived from the transaction amount distribution.

* `1` → Large transaction
* `0` → Normal transaction

---

# 🤖 Machine Learning

## Target Variable

* `Is_laundering`

## Model Development

Prepared feature matrix (`X`) and target variable (`y`).

Split the data into training and testing sets.

Implemented machine learning models including:

* Logistic Regression
* Random Forest Classifier

Evaluated performance using:

* Accuracy
* Confusion Matrix
* Precision
* Recall
* F1 Score

---

# 📊 Power BI Dashboard

Developed an interactive dashboard including:

* Total Transactions
* Suspicious Transactions
* Total Transaction Amount
* Average Transaction Amount
* Payment Type Distribution
* Sender Bank Location Analysis
* Receiver Bank Location Analysis
* Laundering Type Distribution
* Transaction Detail Table
* Interactive Filters (Slicers)

The dashboard enables users to quickly identify trends and investigate suspicious activity.

---

# 🗃️ SQL Analysis

SQL was used to:

* Explore the dataset.
* Count suspicious transactions.
* Analyze payment types.
* Identify high-value transactions.
* Examine sender and receiver banking patterns.
* Generate business insights through aggregation and filtering queries.

---

# 📈 Key Insights

* Transaction amounts show a highly skewed distribution with significant outliers.
* Cross-border transfers may represent elevated AML risk.
* Currency conversion patterns provide additional indicators for investigation.
* Payment methods and bank locations exhibit distinct transaction distributions.
* Feature engineering improves the usefulness of raw transaction data for predictive modeling.

---

# 📁 Repository Structure

```
AML-Transaction-Monitoring/
│
├── SQL/
│   ├── phase1_queries.sql
│   ├── phase2_queries.sql
│   └── aml_analysis.sql
│
├── Python/
│   ├── AML_Analysis.ipynb
│   └── aml_processed.csv
│
├── PowerBI/
│   └── AML_Dashboard.pbix
│
├── Images/
│   └── dashboard_screenshot.png
│
├── README.md
└── requirements.txt
```

---

# 🚀 Skills Demonstrated

* Data Cleaning
* Exploratory Data Analysis (EDA)
* SQL Querying
* Business Analysis
* Feature Engineering
* Machine Learning
* Data Visualization
* Dashboard Development
* Financial Risk Analytics
* Anti-Money Laundering Analytics

---

# 📌 Future Improvements

* Hyperparameter tuning for machine learning models.
* Additional engineered risk indicators.
* Time-series transaction monitoring.
* Real-time scoring pipeline.
* Automated alert generation for suspicious transactions.

---

# 👩‍💻 Author

This project was developed as a portfolio project to demonstrate practical skills in **Data Analytics, SQL, Python, Machine Learning, and Power BI** through a realistic Anti-Money Laundering use case.
📊 Telecom Customer Churn Analysis & Prediction
Project Overview
 2.TELECOM CHURN
Built an end-to-end Telecom Customer Churn Analytics solution using Python, MySQL, and Power BI to analyze customer behavior, identify churn patterns, and generate actionable business insights. The project covers the complete analytics lifecycle including data extraction, cleaning, exploratory analysis, feature engineering, machine learning, and interactive dashboard development.

TELECOM_CHURN:

Customer churn directly impacts revenue and profitability in the telecom industry. The objective of this project was to analyze customer demographics, service usage patterns, and engagement metrics to identify factors contributing to churn and support data-driven retention strategies.

Dataset
243,000+ customer records
Customer demographics
Telecom service provider information
Calls made, SMS sent, and data usage
Salary and dependency information
Registration details
Churn status (Target Variable)

Tech Stack
Python
Pandas
NumPy
Matplotlib
Seaborn
Scikit-Learn
Database:
MySQL
SQL Queries
Data Validation & Exploration
Tech Stack
Python
Pandas
NumPy
Matplotlib
Seaborn
Scikit-Learn
Database
MySQL
SQL Queries
Data Validation & Exploration
Business Intelligence:
Power BI
DAX
Interactive Dashboards
Project Workflow
1. Data Extraction & Validation (MySQL)
Imported telecom customer dataset into MySQL.
Performed data validation and quality checks.
Executed SQL queries for customer segmentation and churn analysis.
Verified record counts and data consistency.
2. Data Cleaning & Preparation (Python)
Handled missing values and duplicates.
Converted date fields and created analytical features.
Encoded categorical variables.
Prepared data for machine learning modeling.
3. Exploratory Data Analysis (EDA)
Analyzed churn distribution.
Investigated customer demographics and behavioral patterns.
Studied telecom partner performance.
Evaluated state-wise churn trends.
Analyzed customer engagement using calls, SMS, and data consumption.
4. Feature Engineering
Created customer tenure-related features.
Transformed categorical attributes using One-Hot Encoding.
Standardized numerical variables for model training.
5. Machine Learning
Implemented and evaluated:
Logistic Regression
Random Forest Classifier
Model evaluation techniques:
Accuracy
Confusion Matrix
Precision
Recall
F1 Score
Feature Importance Analysis
6. Power BI Dashboard Development:
Developed an interactive dashboard featuring:
Total Customers KPI
Churn Customers KPI
Churn Rate KPI
Average Salary KPI
Data Usage KPI
Churn by Telecom Partner
Churn by State
Churn by Gender
Age Distribution Analysis
Customer Usage Behavior Analysis
Interactive slicers enabled dynamic business analysis.
Key Insights:
Identified customer segments with higher churn probability.
Analyzed the relationship between customer engagement and churn behavior.
Evaluated telecom partner performance and customer retention trends.
Highlighted geographical regions with elevated churn rates.
Determined the most influential features affecting churn.
Business Impact

This solution demonstrates how analytics can help telecom organizations:
Reduce customer attrition
Improve retention campaigns
Identify at-risk customers
Optimize marketing strategies
Support data-driven decision-making
Skills Demonstrated

✔ SQL & Database Management
✔ Data Cleaning & Preprocessing
✔ Exploratory Data Analysis (EDA)
✔ Feature Engineering
✔ Machine Learning
✔ Data Visualization
✔ Power BI Dashboarding
✔ Business Analytics
✔ Customer Churn Prediction
✔ End-to-End Data Analytics Project

Project Highlights:
Analyzed 243K+ telecom customer records
Built end-to-end analytics pipeline using Python, MySQL, and Power BI
Performed advanced EDA and feature engineering
Developed machine learning models for churn prediction
Created an executive-level interactive Power BI dashboard
Generated actionable business insights for customer retention

