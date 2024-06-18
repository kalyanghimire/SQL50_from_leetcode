# Write your MySQL query statement below
select customer_id from 
(
select distinct customer_id,sum(same) as same, (select count(*) from Product) as total_products from 
(select distinct customer_id, a.product_key as pdt1, b.product_key as pdt, case when b.product_key = a.product_key then 1 else 0 end as same from Customer a cross join Product b) 
as similar group by 1 ) as temp1 where same = total_products