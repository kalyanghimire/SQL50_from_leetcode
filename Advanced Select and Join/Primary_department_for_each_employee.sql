# Write your MySQL query statement below

 
select distinct employee_id,department_id from Employee where primary_flag = 'Y'
union
select employee_id, department_id from (
select distinct employee_id,department_id,count(*) from Employee group by 1 having count(*)=1
) as table1