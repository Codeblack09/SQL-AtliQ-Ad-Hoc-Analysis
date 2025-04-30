# Ad-Hoc SQL Analysis for Atliq Business Insights

This repository contains a collection of SQL queries developed for analyzing various business metrics for Atliq. The insights focus on product performance, customer behavior, and market segmentation using a normalized sales database.

## Summary of Requests

1. Markets for Atliq Exclusive (APAC) [Solution 1](https://github.com/Codeblack09/SQL-AtliQ-Ad-Hoc-Analysis/blob/main/request_01_market_list.sql)
2. Unique Product Growth (2021 vs 2020)
3. Product Count by Segment
4. Segment-wise Growth in Unique Products
5. Cost Extremes
6. Top Customers by Discount (India, 2021)
7. Monthly Gross Sales for Atliq Exclusive
8. Best Performing Quarter in 2020
9. Top Channel by Sales in 2021
10. Top Products by Division (2021)

## Technologies

- SQL (tested on MySQL-compatible engines)
- Tables assumed: fact_sales_monthly, dim_customer, dim_product, fact_manufacturing_cost, fact_gross_price, fact_pre_invoice_deductions

## Folder Structure

- `queries/`: Individual SQL files for each request
- `README.md`: Project documentation

## License

This project is open-sourced for educational and personal use.
