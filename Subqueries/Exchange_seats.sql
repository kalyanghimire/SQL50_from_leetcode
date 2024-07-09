# Write your MySQL query statement below


SELECT * FROM (
    SELECT DISTINCT
        CASE 
            when (select max(id) from Seat)%2 = 1 and id = (select max(id) from Seat) then id 
            WHEN id % 2 = 0 THEN id - 1
            WHEN id % 2 = 1 THEN id + 1
        END AS id,
        student
    FROM Seat
) AS alias
ORDER BY 1;
