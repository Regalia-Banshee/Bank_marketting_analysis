Subscription rate per marital status

SELECT 
    marital,
    COUNT(*) AS total,
    SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) AS subscribed,
    ROUND(SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) / COUNT(*) * 100, 2) AS subscription_rate
FROM bank_customers
GROUP BY marital
ORDER BY subscription_rate DESC;