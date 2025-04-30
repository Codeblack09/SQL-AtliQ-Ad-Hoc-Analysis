-- Request 6: Top 5 customers with highest average pre-invoice discounts in India for 2021
select 
    c.customer_code, c.customer, avg(d.pre_invoice_discount_pct) as average_discount_percentage
from dim_customer c 
left join fact_pre_invoice_deductions d on c.customer_code = d.customer_code
where c.market = 'India' and d.fiscal_year = '2021'
group by c.customer_code, c.customer
order by average_discount_percentage desc 
limit 5;