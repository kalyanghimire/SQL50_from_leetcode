# Write your MySQL query statement below
select id as customer_id, count(*) as count_no_trans
from (select a.customer_id  as id, b.transaction_id as tx_id from Visits a left join Transactions b on a.visit_id = b.visit_id )  AS subquery where tx_id is null group by id


#(select a.customer_id  as id, b.transaction_id as tx_id from Visits a left join Transactions b on a.visit_id = b.visit_id )