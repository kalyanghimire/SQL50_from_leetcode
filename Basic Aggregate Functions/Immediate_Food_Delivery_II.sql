# Write your MySQL query statement below

with temp1 as (
    select delivery_id,customer_id, order_date, customer_pref_delivery_date, row_number() over (partition by customer_id order by order_date asc) as row_num  from Delivery
)

select round(sum(immediate_count)/count(*) * 100,2)  as immediate_percentage from(
select distinct customer_id, round(sum(case when order_date = customer_pref_delivery_date then 1 else 0 end)/count(*),2) as immediate_count  
from temp1 where row_num = '1' group by 1 ) as delivery_table