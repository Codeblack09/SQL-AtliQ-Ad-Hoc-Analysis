-- Request 9: Channel-wise gross sales in 2021 and contribution percentage
select 
    c.channel,
    round(sum((s.sold_quantity * g.gross_price) / 1000000), 2) as gross_sales_mln
from fact_sales_monthly s 
left join dim_customer c on s.customer_code = c.customer_code
left join fact_gross_price g on s.product_code = g.product_code
where s.fiscal_year = '2021'
group by c.channel
order by gross_sales_mln desc;