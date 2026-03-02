-- Revenue contribution of each age group, for each gender
SELECT age_group, gender, sum(purchase_amount) AS total_revenue, count(customer_id) AS customer_count
FROM customer_data
GROUP BY CUBE(age_group, gender)
ORDER BY total_revenue DESC;

/* 
Insight:
- Male customers generate ~68% of total revenue. This is primarily due to higher customer count.
- Young Adults are the highest revenue-generating age group. Seniors contribute the least revenue.
- Revenue distribution across age groups is relatively balanced, but Young Adults have slight dominance.

Business Interpretation:
- Marketing campaigns can be tailored toward Young Adults.
- There is growth opportunity in the Senior segment.
- Gender-based marketing may increase female participation.

Actionable Recommendations:
- Targeted promotions for Seniors.
- Segment-specific product recommendations.
- Age-based personalization in campaigns.
*/