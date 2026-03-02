-- Top 5 products with the highest average review rating
WITH cte AS (SELECT item_purchased, round(avg(review_rating::numeric),2) AS avg_rating
		FROM customer_data
		GROUP BY item_purchased 
		ORDER BY 2 desc
		LIMIT 5)
SELECT DISTINCT cte.item_purchased, cd.category, cte.avg_rating
FROM cte 
LEFT JOIN customer_data cd 
ON cd.item_purchased = cte.item_purchased
ORDER BY cte.avg_rating DESC;

/*
Insight:
- Accessories and Footwear dominate the highest-rated products.
- Ratings are tightly clustered (3.78 to 3.86), indicating moderate but not exceptional satisfaction.

Business Interpretation:
- These products reflect relatively stronger customer satisfaction.
- However, average ratings below 4.0 suggest room for quality improvement.

Actionable Recommendations:
- Promote high-rated products in marketing campaigns.
- Investigate why ratings are not exceeding 4.0 (quality, delivery, pricing).
- Use top-rated products as benchmark for underperforming items.
*/