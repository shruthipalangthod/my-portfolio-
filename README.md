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

