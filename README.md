# Superstore Sales Performance Analysis
Link datasets:https://www.kaggle.com/datasets/vivek468/superstore-dataset-final
## Project Overview
This project involves cleaning, processing, and analyzing the "Superstore" sales dataset to extract actionable insights for business decision-making.

## Tools & TechnologiesLanguage: 
Python (Pandas)
Database: MySQLLibraries: sqlalchemy, dotenv (for secure configuration management)  
Environment: Jupyter Notebook 

## Workflow
Data Acquisition: Used kaggle-api to download the dataset directly.  Cleaning & EDA:Checked for duplicate rows and missing values.
Standardized column names (lowercase, replaced spaces with underscores).  
Converted date columns (order_date, ship_date) to datetime objects. 
Database Integration:Established a connection to MySQL using SQLAlchemy. 
Loaded the processed dataframe into a superstore table in MySQL. 
Analysis (SQL Queries): Performed queries in superstore.sql.
Identification of top-performing and underperforming products.  

## Business Questions
1. Total revenue and profit by region/state.
2. Average order value (AOV) by category. 
3. Impact of discounts on profit margins. 
4. Yearly active customer trends.
5. Identification of top-performing and underperforming products.

## Key Analysis Objectives
Business Performance:	
Determine the state/region generating the highest revenue.

Customer Value:	
Calculate AOV for each product category.

Pricing Strategy:	
Analyze the effect of discounts on profit margins.

Growth Tracking:	
Monitor active customer counts across years.

Product Optimization:	
Identify top 5 most profitable and top 5 loss-making products.

## Project Structure
superstore_analyst/
├── data/
│   └── raw/                # Contains the raw CSV dataset
├── power_bi/
│   └── superstore_analystic.pbix              # Power BI dashboard files
├── sql/
│   └──superstore.sql                    # Contains superstore.sql for analysis
├── .gitignore              # Files to be excluded from Git
└── superstore_analyst.ipynb # Notebook for data processing


