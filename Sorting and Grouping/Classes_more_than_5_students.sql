# Write your MySQL query statement below

select distinct class from (
select distinct class,count(*) from Courses group by 1 having count(*) >= 5 ) as class1