# Write your MySQL query statement below
select machine_id,round(avg(diff_seconds),3) as processing_time  from 
(select a.machine_id as machine_id, a.process_id as process_id, a.activity_type as activity1, b.activity_type 
as activity2, b.timestamp - a.timestamp AS diff_seconds from Activity a join Activity b on a.machine_id = b.machine_id where a.process_id = b.process_id ) 
as time where activity1 = 'start' and activity2 = 'end' group by 1