-- Request 7: Gross sales amount for 'Atliq Exclusive' per month
select 
    s.date as month, 
    s.fiscal_year as year, 
    sum(p.gross_price * s.sold_quantity) as gross_sales_amount
from fact_sales_monthly s
left join fact_gross_price p on s.product_code = p.product_code
left join dim_customer c on s.customer_code = c.customer_code
where c.customer = 'Atliq Exclusive'
group by s.date, s.fiscal_year;