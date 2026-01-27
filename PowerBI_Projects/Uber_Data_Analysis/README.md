# 🚗 Uber Trip Analysis — Power BI Dashboard

## 🧾 Overview

The **Uber Trip Analysis Dashboard** is an interactive Power BI report that provides deep insights into trip performance, customer behavior, and operational efficiency.
It helps business analysts and operations teams understand **booking trends, trip distances, payment patterns, and vehicle performance** over time.

The dashboard consolidates Uber trip data to support **data-driven decisions** that enhance customer satisfaction and optimize fleet utilization.

---

## 🎯 Objectives

* Analyze **total bookings**, **trip distances**, and **revenue performance**.
* Identify **popular pickup and drop-off points**.
* Examine **vehicle type performance** and **preferred customer vehicle categories**.
* Track **payment method usage** and **day vs night trip trends**.

---

## 📈 Key Metrics

| Metric                     | Description                             |
| -------------------------- | --------------------------------------- |
| **Total Bookings**         | Total number of trips completed         |
| **Total Booking Value**    | Overall revenue generated from bookings |
| **Average Booking Amount** | Mean fare per trip                      |
| **Total Trip Distance**    | Combined mileage of all trips           |
| **Average Trip Distance**  | Mean distance per trip                  |
| **Average Trip Time**      | Mean duration per trip                  |

---

## 📊 Dashboard Sections & Visuals

### 1. **KPI Summary Cards**

Quick view of performance metrics:

* Total Bookings (103.7K)
* Total Booking Value ($1.6M)
* Avg Booking Amount ($15)
* Total Trip Distance (349K Miles)
* Avg Trip Distance (3 Miles)
* Avg Trip Time (16 Minutes)

---

### 2. **Booking Analysis by Payment Type**

A donut chart showing the distribution of total booking value by payment method:

* **Uber Pay** (70.7%)
* **Cash** (28.5%)
* **Amazon Pay / Google Pay** (small share)

This reveals customer payment preferences and digital adoption rates.

---

### 3. **Trip Type Analysis (Day/Night Trips)**

Displays booking value distribution based on **trip type**:

* **Day Trips** dominate with ~84% of revenue
* **Night Trips** account for ~15%

Helps in planning resource allocation by time of day.

---

### 4. **Total Bookings by Day**

An area chart visualizing daily booking trends across the selected date range — highlights fluctuations and peak demand periods.
---

### 5. **Pickup & Drop-off Insights**

* **Most Frequent Pickup Point**: *Penn Station / Madison Sq West*
* **Most Frequent Drop-off Point**: *Upper East Side North*
* **Farthest Trip**: *Lower East Side → Crown Heights North (144 miles)*

Useful for optimizing routes and improving driver availability in high-demand zones.
---

### 6. **Vehicle Type Analysis**

A detailed table comparing different vehicle categories:

| Vehicle Type     | Total Bookings | Total Value | Avg Value | Total Distance |
| ---------------- | -------------- | ----------- | --------- | -------------- |
| **UberX**        | 38,744         | $583,880    | $15       | 131,496 mi     |
| **Uber Comfort** | 17,078         | $253,995    | $15       | 56,790 mi      |
| **UberXL**       | 16,698         | $249,424    | $15       | 55,721 mi      |
| **Uber Black**   | 16,710         | $250,192    | $15       | 56,149 mi      |
| **Uber Green**   | 14,498         | $216,181    | $15       | 48,778 mi      |

Insights: **UberX** leads in total bookings and revenue contribution.
---

### 7. **Location-Based Insights**

* **Total Bookings by Location** — highlights top pickup locations such as Penn Station and Upper East Side.
* **Most Preferred Vehicle for Pickup** — shows that **UberX** is the most popular vehicle type across pickup points.
---

## 🧮 Filters / Slicers

Users can filter data interactively by:

* **Date Range**
* **City**

This flexibility allows for regional and time-based comparisons.
---

## 🧠 Insights Highlight

* **UberX** generates the highest booking volume and total value.
* **Uber Pay** dominates digital payment methods, showing customer trust in in-app payments.
* Daytime trips vastly outnumber night trips, suggesting stronger daytime demand.
* Central Manhattan locations (Penn Station & Upper East Side) are trip hotspots.
* Consistent average booking value (~$15) across vehicle types indicates standardized pricing models.
---

## 🛠️ Tools & Technologies

* **Microsoft Power BI Desktop**
* **Data Modeling (DAX, Power Query)**
* **Custom Visuals**: KPI cards, donut charts, line & area charts, tables
* **Data Source**: Uber trip dataset (Bookings, Distance, Payment Type, Vehicle Category, Pickup & Drop-off Locations)

