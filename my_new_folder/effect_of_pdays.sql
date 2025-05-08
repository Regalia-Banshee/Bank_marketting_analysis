SELECT 
    CASE 
        WHEN pdays = 999 THEN 'Not Previously Contacted'
        WHEN pdays BETWEEN 0 AND 10 THEN '0-10 Days Ago'
        WHEN pdays BETWEEN 11 AND 20 THEN '11-20 Days Ago'
        WHEN pdays BETWEEN 21 AND 60 THEN '21-60 Days Ago'
        ELSE '60+ Days Ago'
    END AS last_contact_bucket,
    COUNT(*) AS total,
    SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) AS subscribed,
    ROUND(SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) / COUNT(*) * 100, 2) AS subscription_rate
FROM bank_customers_full_final
GROUP BY last_contact_bucket
ORDER BY subscription_rate DESC;
