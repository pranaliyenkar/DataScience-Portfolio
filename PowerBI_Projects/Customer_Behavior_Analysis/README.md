#  Customer Shopping Behavior Analysis

An **end-to-end data analytics project** combining **Python, SQL (PostgreSQL), and Power BI** to uncover actionable insights from customer transaction data. This project demonstrates the complete analytics lifecycle — from raw data cleaning to business-ready dashboards and recommendations.

---

##  Project Overview

This project analyzes **3,900 customer purchase transactions** across multiple product categories to understand:

* Customer spending patterns
* Product and category performance
* Subscription and discount behavior
* Customer segmentation and loyalty

The final outcome is an **interactive Power BI dashboard** designed to support **data-driven business decisions**.

---

##  Dataset Summary

* **Records:** 3,900 purchases
* **Columns:** 18
* **Key Data Areas:**

  * Customer demographics (Age, Gender, Location, Subscription Status)
  * Purchase details (Item, Category, Amount, Season, Size, Color)
  * Shopping behavior (Discount Applied, Promo Code, Purchase Frequency, Review Rating, Shipping Type)
* **Data Quality:**

  * 37 missing values in `review_rating`, handled during preprocessing

---

##  Exploratory Data Analysis (Python)

Python was used for **data preparation, cleaning, and feature engineering** before loading the data into a database.

### Key Steps

* Loaded data using **pandas**
* Performed structure and summary analysis using `info()` and `describe()`
* Handled missing values in `review_rating` using **median rating per product category**
* Standardized column names to **snake_case**
* Engineered new features:

  * `age_group` (binned age categories)
  * `purchase_frequency_days`
* Removed redundant column after validating overlap between discount and promo usage
* Loaded cleaned data into **PostgreSQL** for SQL-based analysis

---

##  Data Analysis (SQL – PostgreSQL)

SQL was used to answer **real-world business questions**, including:

1. Revenue comparison by gender
2. Identification of high-spending customers who used discounts
3. Top 5 highest-rated products
4. Purchase behavior by shipping type (Standard vs Express)
5. Spending patterns of subscribers vs non-subscribers
6. Products most dependent on discounts
7. Customer segmentation (New, Returning, Loyal)
8. Top 3 products within each category
9. Relationship between repeat purchases and subscriptions
10. Revenue contribution by age group

These queries simulate **business transaction analysis** typically done in production environments.

---

##  Power BI Dashboard

An **interactive Power BI dashboard** was built to visualize insights clearly for stakeholders.

### Dashboard Highlights

* KPI cards for revenue and customer segments
* Category-wise and product-wise performance
* Subscription vs non-subscription analysis
* Age group and gender-based revenue trends
* Discount impact analysis

The dashboard enables **filtering by category, season, and customer attributes** for deeper exploration.

---

##  Business Recommendations

Based on the analysis:

*  **Boost Subscriptions** with exclusive offers for repeat buyers
*  **Strengthen Loyalty Programs** to convert returning customers into loyal ones
*  **Optimize Discount Strategy** to balance revenue growth and margins
*  **Promote Top-Rated Products** in marketing campaigns
*  **Target High-Value Segments** such as express-shipping users and high-revenue age groups

---

##  Tools & Technologies

* **Python:** pandas, NumPy
* **Database:** PostgreSQL
* **BI Tool:** Power BI
* **Version Control:** Git & GitHub

---

##  Key Takeaway

This project showcases the ability to:

* Work across **Python, SQL, and Power BI** seamlessly
* Translate raw data into **business insights**
* Build **portfolio-ready dashboards** for decision-makers

 Ideal example of an **end-to-end Data Analyst / BI project**.



