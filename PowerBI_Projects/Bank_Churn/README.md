# 📊 Customer Churn Analysis — Power BI Dashboard

## 🧾 Overview

The **Customer Churn Analysis Dashboard** provides an interactive visualization of customer behavior, churn trends, and retention patterns.
It helps identify key drivers behind customer attrition and offers actionable insights to improve customer retention and engagement strategies.

This project is built using **Microsoft Power BI** and connects customer-related datasets to create meaningful KPIs and visual analytics.
---

## 🎯 Objectives

* Analyze **customer churn rate** across time periods, geographies, and demographics.
* Identify **patterns between credit card usage, gender, and churn behavior**.
* Compare **active vs inactive customers** over multiple years.
* Track **monthly exit trends** and understand **customer retention efficiency**.
---

## 📈 Key Metrics

| Metric                      | Description                                |
| --------------------------- | ------------------------------------------ |
| **Total Customers**         | Overall number of customers in the dataset |
| **Active Customers**        | Customers currently active                 |
| **Inactive Customers**      | Customers who have churned                 |
| **Credit Card Holders**     | Customers with credit cards                |
| **Non-Credit Card Holders** | Customers without credit cards             |
| **Retained Customers**      | Customers who continue to use services     |
| **Exit Customers**          | Customers who have left (churned)          |

---

## 📊 Dashboard Sections & Visuals

### 1. **KPI Summary Tiles**

Displays high-level statistics:

* Total Customers
* Active vs Inactive Customers
* Credit Card Holders vs Non-Holders
* Retained and Exit Customers

### 2. **Total Customers by Year and Active Category**

A clustered bar chart comparing **Active** and **Inactive** customers from **2016–2019**.

### 3. **Exit Customers Trend**

A line chart tracking **monthly exit trends** and **previous month comparisons**, showing seasonal churn behavior.

### 4. **Exit Customers by Gender**

A donut chart showing the percentage split of churned customers by gender.

### 5. **Exit Customers by Credit Type**

A horizontal bar chart categorizing exit customers by **credit score type** (Excellent, Very Good, Good, Fair, Poor).

### 6. **Exit Customers by Category**

Pie chart comparing **Credit Card Holders** vs **Non-Credit Card Holders** among exit customers.

### 7. **Churn % by Year and Month**

A matrix with visual indicators showing **monthly churn rates** per year (2016–2019).

### 8. **Geographical Analysis**

* **Churn % by Geography Location** — Map view displaying churn percentage distribution across **France, Germany, and Spain**.
* **Total Customers by Geography** — Pie chart comparing customer counts across regions.

---

## 🧮 Filters / Slicers

Users can filter dashboard insights by:

* **Year**
* **Month**
* **Geography Location**
* **Active Category**
* **Exit Category**
* **Gender Category**

These slicers provide full interactivity for drill-down and custom analysis.

---

## 🧠 Insights Highlight

* Churn rates vary across months with peaks around mid-year.
* **France** holds the largest customer base (~50%) but also shows consistent churn.
* **Male customers** slightly dominate the exit rate.
* **Fair and Poor credit ratings** correlate with higher churn.
* A strong relationship is seen between **credit card ownership** and **customer retention**.

---

## 🛠️ Tools & Technologies

* **Microsoft Power BI Desktop**
* **Data Modeling (DAX, Power Query)**
* **Interactive Visuals**: Bar charts, Line charts, Donut charts, Maps, and Matrices
* **Data Source**: CSV/Excel dataset of customer demographics, activity, and churn history


---
