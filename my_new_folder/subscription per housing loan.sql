SELECT 
    housing,
    SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) AS subscribers,
    ROUND(SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) / COUNT(*) * 100, 2) AS subscription_rate
FROM bank_customers
GROUP BY housing;
