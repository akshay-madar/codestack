SELECT
date_format(trans_date, '%Y-%m') AS month,
country,
SUM(IF(state ='approved',1,0)) AS approved_count,
SUM(IF(state ='approved',amount,0)) AS approved_amount,
SUM(IF(state = 'chargeback', 1,0)) AS chargeback_count,
SUM(IF(state = 'chargeback',amount,0)) AS chargeback_amount
FROM (
SELECT *
FROM Transactions
WHERE state = 'approved'
UNION
SELECT t.id, t.country, 'chargeback',t.amount,c.trans_date
FROM Transactions T
JOIN Chargebacks C ON T.id = C.trans_id) AS temp
GROUP BY date_format(trans_date, '%Y-%m'), country
