SELECT 
    contact,
    COUNT(*) AS total_contacts,
    SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) AS total_subscribed,
    ROUND(SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) / COUNT(*) * 100, 2) AS subscription_rate
FROM bank_customers_full_final
GROUP BY contact
ORDER BY subscription_rate DESC;
