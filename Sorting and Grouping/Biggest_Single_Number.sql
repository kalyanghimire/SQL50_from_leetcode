# Write your MySQL query statement below

select distinct max(num)  as num from (
select distinct num,count(*) from MyNumbers group by 1 having count(*) = 1 ) as single_nums