Demographic Analysis
Subscription rate by education

Subscription rate by job

Subscription rate by marital status

Subscription rate by age group (Create bins like 18-30, 31-45, etc.)

SELECT 
    education,
    COUNT(*) AS total,
    SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) AS subscribed,
    ROUND(SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) / COUNT(*) * 100, 2) AS subscription_rate
FROM bank_customers_full_final
GROUP BY education
ORDER BY subscription_rate DESC;