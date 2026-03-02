-- Top 3 most purchased products within each category
WITH cte AS (SELECT category, item_purchased, count(*) AS "No of Purchase",
			row_number() over(PARTITION BY category ORDER BY count(*) desc) item_rank
		FROM customer_data
		GROUP BY category, item_purchased)
SELECT category, item_purchased, "No of Purchase", item_rank
FROM cte
WHERE item_rank <= 3;

/* 
Insight:
- Clothing category shows consistently high purchase frequency.
- Accessories and Footwear also show strong demand concentration.
- Certain items dominate within categories.

Business Interpretation:
- Inventory planning should prioritize high-frequency products.

Actionable Recommendations:
- Maintain higher stock levels for top-ranked items.
- Investigate whether top sellers also yield high profit margins.
*/