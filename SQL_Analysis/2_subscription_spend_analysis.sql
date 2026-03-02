-- Comparing average spend and total revenue between subscribers and non-subscribers for each gender
SELECT subscription_status,
	gender,
	round(avg(purchase_amount),2) AS avg_spend, 
	sum(purchase_amount) AS total_revenue,
	count(customer_id) AS total_customers
FROM customer_data 
GROUP BY CUBE(subscription_status, gender);

/*   
Insight:
- There are no female customers enrolled in the subscription program.
- Female customers have the highest average spend (~$60.25) despite not subscribing.
- Average spend across subscribers and non-subscribers is nearly identical (~$59–60).
- Total revenue from non-subscribers is higher due to larger customer volume.

Business Interpretation:
- Either the subscription benefits are not appealing to female customers,
or the subscription program is not being effectively targeted or marketed to them.
- Female customers spend slightly more on average than males
and average spend is similar between subscribers and non-subscribers.
- The subscription program does not appear to meaningfully increase per-customer spending.
- Revenue difference is driven by customer count, not by subscription impact.

Actionable Recommendations:
- Investigate why female customers are not subscribing despite higher average spend.
- Run targeted subscription campaigns for female customers.
- Reassess whether the subscription program is improving spending behavior.
- Enhance subscription benefits to make the value clearer.
- Analyze whether subscription increases purchase frequency, not just average spend.
*/