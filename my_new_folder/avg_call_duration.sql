SELECT 
    y AS subscribed,
    COUNT(*) AS total_calls,
    ROUND(AVG(duration), 2) AS avg_call_duration_seconds
FROM bank_customers_full_final
GROUP BY y;
