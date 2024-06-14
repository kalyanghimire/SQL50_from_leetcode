# Write your MySQL query statement below

select name from (
select distinct a.name,a.id,count(*) from Employee a cross join EMployee b where a.id = b.managerid   group by 1,2 having  count(*) >=5 ) as alls
