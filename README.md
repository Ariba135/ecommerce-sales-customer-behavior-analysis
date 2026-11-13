# E-commerce Sales and Customer Behavior Analysis

## Project Overview

This project analyzes the Brazilian E-commerce Public Dataset provided by Olist to explore sales performance, customer purchasing behavior, product category performance, payment preferences, customer satisfaction, and delivery performance.

The objective is to transform raw e-commerce data into meaningful business insights using Python, MySQL, and Microsoft Excel.

## Project Objectives

- Analyze overall sales revenue and order performance.
- Identify top-performing product categories.
- Examine customer purchasing and repeat-customer behavior.
- Evaluate customer review scores.
- Analyze payment methods and transaction values.
- Assess delivery performance and delivery times.
- Develop an interactive-style Excel dashboard to communicate findings.

## Tools and Technologies

- Python
- Pandas
- NumPy
- Matplotlib
- Jupyter Notebook
- MySQL and MySQL Workbench
- Microsoft Excel
- Git and GitHub

## Dataset

**Source:** [Brazilian E-Commerce Public Dataset by Olist – Kaggle](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce)

The dataset contains information about customers, orders, order items, payments, reviews, products, sellers, and geolocation.

## Project Workflow

1. Data loading and exploration using Python.
2. Data cleaning and preprocessing.
3. Missing-value and duplicate-value checks.
4. Exploratory data analysis and visualization.
5. SQL queries for business analysis.
6. Excel KPI calculations and dashboard development.
7. Business insights and recommendations.

## Key Performance Indicators

| KPI | Result |
|---|---:|
| Total Sales Revenue | R$13,221,498.11 |
| Delivered Orders | 96,478 |
| Average Order Value | R$137.04 |
| Unique Customers | 96,096 |
| Repeat Customers | 2,801 |
| Average Review Score | 4.09 / 5 |
| Average Delivery Time | 12.56 days |

## Key Business Insights

- Health & Beauty generated the highest product category revenue.
- São Paulo recorded the highest sales revenue among Brazilian states.
- Credit cards were the leading payment method by transaction value.
- The average customer review score was 4.09 out of 5.
- Repeat customers represented approximately 3% of delivered customers.
- Most orders with valid delivery dates were delivered before the estimated date.

## Excel Dashboard

The Excel dashboard presents seven key performance indicators and six visualizations:

- Monthly Revenue Trend
- Top 10 Product Categories by Revenue
- Customer Review Score Distribution
- Repeat vs One-Time Customers
- Revenue by Payment Method
- Delivery Performance Analysis

## Project Structure

```text
ecommerce-sales-customer-behavior-analysis/
│
├── data/
│   ├── raw/
│   └── processed/
│
├── excel/
│   └── ecommerce_sales_dashboard.xlsx
│
├── sql/
│   └── olist_analysis.sql
│
├── python/
│
├── visualizations/
│
├── ecommerce_sales_analysis.ipynb
├── mysql_data_import.ipynb
└── README.md
```

## Conclusion

This project demonstrates an end-to-end data analytics workflow, from data cleaning and exploratory analysis to SQL-based business analysis and Excel dashboard development.

It highlights the use of data analytics tools to identify business trends, evaluate customer behavior, and support data-driven decision-making.
