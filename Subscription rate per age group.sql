Subscribers by age group
SELECT 
  CASE 
    WHEN age BETWEEN 18 AND 30 THEN '18-30'
    WHEN age BETWEEN 31 AND 45 THEN '31-45'
    WHEN age BETWEEN 46 AND 60 THEN '46-60'
    ELSE '61+' 
  END AS age_group,
  COUNT(*) AS total,
  SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) AS subscribed,
  ROUND(SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) / COUNT(*) * 100, 2) AS subscription_rate
FROM bank_customers_full_final
GROUP BY age_group
ORDER BY subscription_rate DESC;
