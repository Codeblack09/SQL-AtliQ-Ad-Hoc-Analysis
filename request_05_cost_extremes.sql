-- Request 5: Products with highest and lowest manufacturing costs
with cte1 as (
    select p.product_code, p.product, m.manufacturing_cost
    from dim_product p 
    inner join fact_manufacturing_cost m on p.product_code = m.product_code
    order by m.manufacturing_cost desc limit 1
),
cte2 as (
    select p.product_code, p.product, m.manufacturing_cost
    from dim_product p 
    inner join fact_manufacturing_cost m on p.product_code = m.product_code
    order by m.manufacturing_cost asc limit 1
)
select * from cte1
union
select * from cte2;