-- Request 2: Percentage of unique product increase in 2021 vs. 2020
with cte1 as (
    select 
        count(distinct case when fiscal_year = '2020' then product_code end) as unique_products_2020,
        count(distinct case when fiscal_year = '2021' then product_code end) as unique_products_2021
    from fact_sales_monthly
)
select 
    *, 
    ((unique_products_2021 - unique_products_2020) / unique_products_2020) * 100 as percentage_chg
from cte1;