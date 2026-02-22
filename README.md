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
Helps sellers understand:
- Revenue distribution across product categories
- Demand patterns across different sizes
- Top revenue-generating products
- Seasonal sales performance

2. Customer Analysis
Enables evaluation of:
- Customer distribution across locations
- Revenue impact of discounts (segmented by gender)
- Subscription adoption patterns (segmented by gender)
- Revenue contribution by age groups

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

Python (Jupyter Notebook): Used for initial data understanding, cleaning, and preprocessing.
- Pandas – Data cleaning, transformation, and exploratory analysis
- Handling missing values and validating data consistency
- Basic exploratory data analysis (EDA) to understand patterns and distributions

PostgreSQL: Used as the relational database for structured storage and querying.
- Data loaded from Python into PostgreSQL using:
  - SQLAlchemy
  - psycopg
- Performed SQL-based exploratory analysis
- Aggregations, filtering, and structured queries for business-level insights

Power BI: Used for dashboard design and interactive data visualization.
- Connected directly to PostgreSQL database
- Built calculated measures and KPIs
- Designed interactive visuals with slicers and filters
- Created a two-page analytical dashboard (Product Overview & Customer Overview)

## Data Quality Assessment & Cleaning Process
Before building the dashboard, a structured data quality assessment and cleaning process was carried out using Python (Jupyter Notebook). The complete notebook is included in this repository for transparency and reproducibility.

1. Initial Data Inspection: This step ensured a clear understanding of the raw dataset before performing transformations. Using Pandas, the dataset was examined to understand:
   - Data types of each column
   - Presence of missing values
   - Duplicate records
   - Inconsistent categorical values
   - Distribution of key business variables

2. Data Cleaning & Preprocessing: The objective was to ensure the dataset was consistent, analysis-ready, and free from structural issues. The cleaning process included:
   - Handling missing values in the review rating column
   - Creating derived fields required for analysis (e.g., age groups etc)
   - Formatting column names in snake casing
   - Removing unnecessary columns.
  
### Issue Tracking & Documentation
To maintain a structured workflow, all identified data quality issues were logged in a separate Excel file, which is also included in this repository.

## SQL Analysis
