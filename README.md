# Ad-Hoc SQL Analysis for Atliq Business Insights

This repository contains a collection of SQL queries developed for analyzing various business metrics for Atliq. The insights focus on product performance, customer behavior, and market segmentation using a normalized sales database.

## Summary of Requests

1. Markets for Atliq Exclusive (APAC) [Solution 1](https://github.com/Codeblack09/SQL-AtliQ-Ad-Hoc-Analysis/blob/main/request_01_market_list.sql)
2. Unique Product Growth (2021 vs 2020) [Solution 2](https://github.com/Codeblack09/SQL-AtliQ-Ad-Hoc-Analysis/blob/main/request_02_product_growth.sql)
3. Product Count by Segment [Solution 3](https://github.com/Codeblack09/SQL-AtliQ-Ad-Hoc-Analysis/blob/main/request_03_segment_product_count.sql)
4. Segment-wise Growth in Unique Products [Solution 4](https://github.com/Codeblack09/SQL-AtliQ-Ad-Hoc-Analysis/blob/main/request_04_segment_growth.sql)
5. Cost Extremes [Solution 5](https://github.com/Codeblack09/SQL-AtliQ-Ad-Hoc-Analysis/blob/main/request_05_cost_extremes.sql)
6. Top Customers by Discount (India, 2021) [Solution 6](https://github.com/Codeblack09/SQL-AtliQ-Ad-Hoc-Analysis/blob/main/request_06_top_discount_customers.sql)
7. Monthly Gross Sales for Atliq Exclusive [Solution 7](https://github.com/Codeblack09/SQL-AtliQ-Ad-Hoc-Analysis/blob/main/request_07_monthly_sales_report.sql)
8. Best Performing Quarter in 2020 [Solution 8](https://github.com/Codeblack09/SQL-AtliQ-Ad-Hoc-Analysis/blob/main/request_08_quarterly_sales.sql)
9. Top Channel by Sales in 2021 [Solution 9](https://github.com/Codeblack09/SQL-AtliQ-Ad-Hoc-Analysis/blob/main/request_09_channel_sales.sql)
10. Top Products by Division (2021) [Solution 10](https://github.com/Codeblack09/SQL-AtliQ-Ad-Hoc-Analysis/blob/main/request_10_top_products_by_division.sql)

## Technologies

- SQL (tested on MySQL-compatible engines)
- Tables assumed: fact_sales_monthly, dim_customer, dim_product, fact_manufacturing_cost, fact_gross_price, fact_pre_invoice_deductions

## Folder Structure

- `queries/`: Individual SQL files for each request
- `README.md`: Project documentation

## License

This project is open-sourced for educational and personal use.
