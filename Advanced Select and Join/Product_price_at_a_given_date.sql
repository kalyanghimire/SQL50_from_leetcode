select * from (
select distinct product_id, new_price as price from Products where (product_id, change_date) in (
select distinct product_id,max(change_date) as change_date from Products where cast(change_date as DATE)<= cast('2019-08-16' as DATE) group by product_id order by 1) 
UNION 
select 
    distinct product_id,
    10 as price
from 
    products
group by
    product_id
having
    cast(min(change_date) as DATE) > cast('2019-08-16'as DATE)) as combined_results order by 1