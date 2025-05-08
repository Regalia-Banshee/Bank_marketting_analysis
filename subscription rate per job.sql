Subscription rate by Job

SELECT 
    job,
    COUNT(*) AS total,
    SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) AS subscribed,
    ROUND(SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) / COUNT(*) * 100, 2) AS subscription_rate
FROM bank_customers_full_final
GROUP BY job
ORDER BY subscription_rate DESC;