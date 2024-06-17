# Write your MySQL query statement below

select round(count(*)/(select count(distinct player_id) from Activity),2) as fraction from ( select distinct a.player_id from Activity a join Activity b on a.player_id = b.player_id and datediff(b.event_date,a.event_date) = 1  and (a.player_id, a.event_date) IN
(SELECT player_id, MIN(event_date) FROM Activity GROUP BY player_id)) as temp1