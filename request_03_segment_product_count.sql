-- Request 3: Report with unique product counts for each segment
select 
    p.segment, count(distinct(s.product_code)) as product_count
from fact_sales_monthly s 
left join dim_product p on s.product_code = p.product_code 
group by p.segment
order by product_count desc;