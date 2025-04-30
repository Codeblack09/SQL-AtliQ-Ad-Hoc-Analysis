-- Request 4: Segment with most increase in unique products in 2021 vs 2020
with cte1 as (
    select 
        p.segment,
        count(distinct case when fiscal_year = '2020' then s.product_code end) as product_count_2020,
        count(distinct case when fiscal_year = '2021' then s.product_code end) as product_count_2021
    from fact_sales_monthly s 
    left join dim_product p on s.product_code = p.product_code 
    group by p.segment
)
select 
    segment, 
    product_count_2020, 
    product_count_2021,
    (product_count_2021 - product_count_2020) as difference 
from cte1 
order by difference desc 
limit 1;