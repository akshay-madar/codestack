# Write your MySQL query statement below
WITH combined as
(
     SELECT
        fail_date as dt,
        'failed' as period_state,
        DAYOFYEAR(fail_date) - row_number() over(ORDER BY fail_date) as period_group
     FROM
        Failed
     WHERE fail_date BETWEEN '2019-01-01' AND '2019-12-31'
     UNION ALL
     SELECT
        success_date as dt,
        'succeeded' as period_state,
        DAYOFYEAR(success_date) - row_number() over(ORDER BY success_date) as period_group
     FROM Succeeded
     WHERE success_date BETWEEN '2019-01-01' AND '2019-12-31'
)

SELECT
    period_state,
    min(dt) as start_date,
    max(dt) as end_date
FROM
        combined
GROUP BY period_state,period_group
ORDER BY start_date
