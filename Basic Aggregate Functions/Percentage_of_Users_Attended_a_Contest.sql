# Write your MySQL query statement below



select distinct contest_id, round(count(*)/(select count(*) from Users)*100,2) as percentage from Register  group by 1 order by 2 desc, 1 asc