# Retail Sales & Customer Behavior Analysis

## Project Overview
This project is designed for retail sellers and business decision-makers who want to better understand customer shopping behavior and product performance in order to optimize inventory, pricing strategies and seasonal planning. The end product is a Retail Sales & Customer Behavior Analytics Dashboard that provides an integrated view of product performance and customer insights. The dashboard is divided into two focused analytical views:

1. Product Analysis
Helps sellers understand: Revenue distribution across product categories, Demand patterns across different sizes, Top revenue-generating products, Seasonal sales performance.

2. Customer Analysis
Enables evaluation of: Customer distribution across locations, Revenue impact of discounts (segmented by gender), Subscription adoption patterns (segmented by gender), Revenue contribution by age groups.

Interactive slicers (Gender, Location, Product Category, Item, Season, Age Group) allow dynamic filtering for deeper, segment-level insights. Overall, the dashboard supports data-driven decision-making in inventory planning, marketing strategy and customer targeting.

![Dashboard Preview](gifs/dashboard_gif.gif)

## Dataset Description
This project uses a publicly available online retail dataset from Kaggle, containing transactional and customer-level information from an e-commerce platform.

The dataset consists of:
- 3,900 rows (customer transactions)
- 18 columns (features covering customer, product, and transaction details)

The dataset enables analysis of purchasing trends, seasonal effects, discount strategies, and the relationship between customer demographics and spending behavior within an online retail environment.

[Link to Dataset on Kaggle](https://www.kaggle.com/datasets/ayeshasiddiqa123/customer-shopping-behavior-dataset)  
[Link to Dataset in this Repo](raw_data.csv)

## Tools Used
This project was developed using a combination of Python, SQL, and Business Intelligence tools to move from raw data to an interactive analytical dashboard.

### Python (Pandas, Jupyter Notebook): Used for initial data understanding, cleaning, and preprocessing.
- Data cleaning, transformation, and exploratory analysis
- Handling missing values and validating data consistency

### PostgreSQL: Used as the relational database for structured storage and querying.
- Data loaded from Python into PostgreSQL using SQLAlchemy and psycopg
- Performed SQL-based exploratory analysis using aggregations, filtering and CTEs for business-level insights

### Power BI: Used for dashboard design and interactive data visualization.
- Built calculated measures and KPIs
- Designed interactive visuals with slicers and filters
- Created an analytical dashboard giving product and customer overview

## Data Quality Assessment & Cleaning Process
The first step was to do a structured data quality assessment and cleaning using Python (Jupyter Notebook). The complete notebook is included in this repository for better understanding and reproducibility and can be accessed using [THIS LINK](python_pandas_EDA.ipynb).

The objective was to ensure the dataset was consistent, analysis-ready, and free from structural issues. The cleaning process included: Handling missing values in the review rating column, creating derived fields required for analysis (e.g., age groups etc), formatting column names in snake casing, removing unnecessary columns.

To maintain a structured workflow, all identified data quality issues were logged in a separate Excel file, which is also included in this repository and can be accessed using [THIS LINK](issues_log.xlsx).

## SQL Analysis
Before building the dashboard, structured analysis was performed using PostgreSQL to answer key business questions.
The detailed queries, outputs, and insights are documented separately [HERE](SQL_Analysis).

[Link](SQL_Analysis/README.md) to detailed SQL Analysis and Insights.

Queries Covered:

1. Top Rated Products: Identifies products with the highest average customer ratings to evaluate customer satisfaction patterns.  
2. Subscription Spend Analysis: Compares spending behavior across subscription status and gender to assess program effectiveness.  
3. Customer Loyalty Segmentation: Segments customers into New, Returning and Loyal groups to understand retention and effects of subscription.  
4. Top Products by Category: Identifies the most frequently purchased items within each product category to support inventory planning.  
5. Revenue by Age and Gender: Analyzes revenue distribution across demographic segments to identify high-value customer groups.

## Key Insights & Findings

1. Clothing Dominates Revenue Across All Segments:
- Clothing is the highest revenue-generating category ($104.3K).
- It remains the top contributor across all seasons and both genders.
- 1,737 customers purchased clothing, with an average purchase amount of ~$60.

Conclusion: Clothing performance is driven primarily by high demand rather than higher pricing and it consistently performs well across customer segments.

2. Revenue is Volume-Driven, Not Spend-Driven
- Male customers contribute $158K of the $233K total revenue.
- However, females have a slightly higher average purchase amount.
- The revenue gap is driven by a larger male customer base, not higher spending behavior.

Conclusion: Revenue differences across gender are driven by customer volume rather than purchasing intensity.

3. Subscription Program Shows Zero Female Adoption
- No female customers are enrolled in the subscription program.
- Average spend between subscribers and non-subscribers is nearly identical.

Conclusion: The subscription program does not appear to significantly influence spending behavior and may require reevaluation, especially for female customers.

4. Seasonal Revenue is Stable
- Revenue ranges narrowly between $55.8K (Summer) and $60K (Fall).
- Differences across seasons are minimal.

Conclusion: Sales remain relatively stable throughout the year, with only slight seasonal variation. Inventory planning may not need aggressive seasonal adjustments.

5. Size M is Consistently in Highest Demand
- Size M accounts for 45% of total purchases.
- Demand is proportionally similar across genders.

Conclusion:
Inventory stocking should prioritize Size M across product categories, independent of gender segmentation.

6. Young Adults Contribute the Most Revenue — Due to Volume
- Young Adults generate $62K in revenue.
- However, average purchase amounts across age groups are nearly identical (~$59–$60).

Conclusion: Revenue differences by age are volume-driven rather than behavior-driven, indicating relatively uniform spending patterns across age groups.

7. Location-Based Differences Are Also Volume-Driven
- Montana (highest customers: 96) generated $6K revenue.
- Kansas (lowest customers: 63) generated $3K revenue.
- Average purchase amounts across locations are similar.

Conclusion: Revenue variation across locations is primarily due to customer count rather than higher regional spending.

8. Outerwear is the Weakest Performing Category
- Outerwear generates the lowest revenue across both genders.
- Consistently underperforms relative to Clothing and Accessories.

Conclusion: Outerwear may require pricing review, promotional strategy or product repositioning.

## Overall Business Summary

The majority of revenue variations across gender, age, location and season are driven by customer volume rather than differences in spending behavior. Clothing is the primary revenue engine of the business, while subscription adoption and category diversification present areas for strategic improvement.
