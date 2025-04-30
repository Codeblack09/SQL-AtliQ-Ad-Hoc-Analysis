-- Request 10: Top 3 products in each division based on total sold quantity in 2021
with cte1 as (
    select 
        s.product_code,
        p.division,
        sum(s.sold_quantity) as total_sold_qty
    from fact_sales_monthly s
    left join dim_product p on s.product_code = p.product_code
    group by s.product_code, p.division
),
cte2 as (
    select 
        *,
        dense_rank() over(partition by division order by total_sold_qty desc) as drnk
    from cte1
)
select
    division,
    product_code
from cte2 
where drnk <= 3;