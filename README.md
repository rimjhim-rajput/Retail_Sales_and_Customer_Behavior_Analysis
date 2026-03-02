# Retail Sales & Customer Behavior Analysis

## Project Overview
This project is designed for retail sellers and business decision-makers who want to better understand customer shopping behavior and product performance in order to optimize inventory, pricing strategies and seasonal planning.

### Business Problem
Retail sellers often struggle to answer key operational questions such as:
- Which product categories contribute the most to revenue?
- What product sizes are in highest demand?
- Which items are driving overall sales performance?
- Which seasons generate the highest revenue?
- Which customer segments contribute the most to business growth?
- Are subscription and discount strategies effectively increasing revenue?

Without a consolidated analytical view, these insights remain fragmented across sales records.
### Solution
This project presents a Retail Sales & Customer Behavior Analytics Dashboard that provides an integrated view of product performance and customer insights. The dashboard is divided into two focused analytical views:

1. Product Analysis
Helps sellers understand: Revenue distribution across product categories, Demand patterns across different sizes, Top revenue-generating products, Seasonal sales performance.

2. Customer Analysis
Enables evaluation of: Customer distribution across locations, Revenue impact of discounts (segmented by gender), Subscription adoption patterns (segmented by gender), Revenue contribution by age groups.

Interactive slicers (Gender, Location, Product Category, Item, Season, Age Group) allow dynamic filtering for deeper, segment-level insights. Overall, the dashboard supports data-driven decision-making in inventory planning, marketing strategy and customer targeting.

## Dataset Description
This project uses a publicly available online retail dataset from Kaggle, containing transactional and customer-level information from an e-commerce platform.

The dataset consists of:
- 3,900 rows (customer transactions)
- 18 columns (features covering customer, product, and transaction details)

The dataset enables analysis of purchasing trends, seasonal effects, discount strategies, and the relationship between customer demographics and spending behavior within an online retail environment.

[Link to Dataset](https://www.kaggle.com/datasets/ayeshasiddiqa123/customer-shopping-behavior-dataset)

## Tools Used
This project was developed using a combination of Python, SQL, and Business Intelligence tools to move from raw data to an interactive analytical dashboard.

### Python (Jupyter Notebook): Used for initial data understanding, cleaning, and preprocessing.
- Pandas – Data cleaning, transformation, and exploratory analysis
- Handling missing values and validating data consistency
- Basic exploratory data analysis (EDA) to understand patterns and distributions

### PostgreSQL: Used as the relational database for structured storage and querying.
- Data loaded from Python into PostgreSQL using:
  - SQLAlchemy
  - psycopg
- Performed SQL-based exploratory analysis
- Aggregations, filtering, and structured queries for business-level insights

### Power BI: Used for dashboard design and interactive data visualization.
- Connected directly to PostgreSQL database
- Built calculated measures and KPIs
- Designed interactive visuals with slicers and filters
- Created a two-page analytical dashboard (Product Overview & Customer Overview)

## Data Quality Assessment & Cleaning Process
Before building the dashboard, a structured data quality assessment and cleaning process was carried out using Python (Jupyter Notebook). The complete notebook is included in this repository for transparency and reproducibility.

1. Initial Data Inspection: This step ensured a clear understanding of the raw dataset before performing transformations. Using Pandas, the dataset was examined to understand: Data types of each column, Presence of missing values, Inconsistent categorical values.

2. Data Cleaning & Preprocessing: The objective was to ensure the dataset was consistent, analysis-ready, and free from structural issues. The cleaning process included: Handling missing values in the review rating column, Creating derived fields required for analysis (e.g., age groups etc), Formatting column names in snake casing, Removing unnecessary columns.
  
### Issue Tracking & Documentation
To maintain a structured workflow, all identified data quality issues were logged in a separate Excel file, which is also included in this repository.

## SQL Analysis
### 1. Top Rated Products
Business Question:
Which products have the highest average customer review ratings?

SQL File: top_rated_products.sql  
Output: (Attach screenshot here)

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

### 2. Subscription Spend Analysis

Business Question:
How does spending differ between subscribers and non-subscribers across genders?

SQL File: subscription_spend_analysis.sql  
Output: (Attach screenshot here)

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

### 3. Customer Loyalty Segmentation

Business Question:
How are customers distributed across New, Returning, and Loyal segments, and how does subscription vary within these groups?

SQL File: customer_loyalty_segmentation.sql  
Output: (Attach screenshot here)

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

### 4. Top Products by Category

Business Question:
Which products are most frequently purchased within each category?

SQL File: top_products_by_category.sql  
Output: (Attach screenshot here)

Insight:
- Clothing category shows consistently high purchase frequency.
- Accessories and Footwear also show strong demand concentration.
- Certain items dominate within categories.

Business Interpretation:
- Inventory planning should prioritize high-frequency products.

Actionable Recommendations:
- Maintain higher stock levels for top-ranked items.
- Investigate whether top sellers also yield high profit margins.

### 5. Revenue by Age and Gender

Business Question:
How is revenue distributed across age groups and gender segments?

SQL File: age_gender_revenue_analysis.sql  
Output: (Attach screenshot here)

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

These SQL analyses were used to validate patterns before building the Power BI dashboard and helped shape the final KPIs and segmentation logic.
