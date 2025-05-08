SELECT 
    campaign AS number_of_contacts,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) AS total_subscribed,
    ROUND(SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) / COUNT(*) * 100, 2) AS subscription_rate
FROM bank_customers_full_final
GROUP BY campaign
ORDER BY campaign ASC;
