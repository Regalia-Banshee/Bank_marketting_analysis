/*
	How many total customers and % of customers subscribed?
*/
select 
	Count(*) as total_customers,
    sum(case when y = "yes" then 1 else 0 end) as total_subscribers,
    round(sum(case when y= "yes" then 1 else 0 end)/COUNT(*) * 100, 2) AS subscription_rate_percentage
from bank_customers_full_final;
    