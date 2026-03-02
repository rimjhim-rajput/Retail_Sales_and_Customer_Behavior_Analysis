-- Segmenting customers into New, Returning, and Loyal based on their total number of previous purchases
WITH customer_type AS (SELECT CASE WHEN previous_purchases <= 1 THEN 'New'
						WHEN previous_purchases BETWEEN 2 AND 10 THEN 'Returning'
						ELSE 'Loyal' END AS customer_loyalty,
					customer_id,
					subscription_status
				FROM customer_data)
SELECT customer_loyalty, subscription_status, count(customer_id) customer_count
FROM customer_type
GROUP BY ROLLUP(customer_loyalty, subscription_status)
ORDER BY customer_count DESC;

/* 
Insight:
- 3,116 customers are categorized as Loyal.
- However, 2,247 loyal customers are non-subscribers.
- Only 869 loyal customers have subscriptions.

Business Interpretation:
- High loyalty does not translate into subscription adoption.
- Subscription value proposition is weak.
- Loyal customers may not perceive additional benefit from subscribing.

Actionable Recommendations:
- Target loyal non-subscribers with exclusive benefits.
- Offer loyalty-based subscription discounts.
- Bundle subscription with rewards or faster shipping.
*/
