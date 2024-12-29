# Analyzing-retail-sales-performance

## Project Overview
This project focuses on analyzing retail sales performance using Python, SQL, and Tableau. The analysis spans exploratory data analysis (EDA), performance evaluation, and customer satisfaction insights. The project demonstrates how data can be leveraged to make informed decisions and improve business strategies.

---

## Tools and Technologies
- **Python**: Data cleaning, preprocessing, and exploratory data analysis (EDA).
- **SQL**: Advanced querying and database analysis.
- **Tableau**: Data visualization and dashboard creation.

---

## Key Objectives
1. **Exploratory Data Analysis (EDA)**:
   - **Customer Segmentation**: Analyzing behavior differences between members and normal customers.
   - **Sales Trend Analysis**: Identifying seasonal patterns and peak sales periods.
   - **Product Line Analysis**: Understanding popularity and performance of product categories.
   - **Payment Method Analysis**: Assessing customer payment preferences and their correlation with satisfaction.

2. **Performance Analysis**:
   - Branch-wise and city-wise performance evaluation.
   - Revenue and gross income analysis by customer type.
   - Profitability assessment across product categories.

3. **Customer Satisfaction**:
   - Exploring satisfaction ratings by branch, product line, and payment methods.
   - Identifying factors impacting customer ratings.

---

## Data Description
The dataset consists of retail sales transactions with the following columns:
- **Invoice ID**: Unique identifier for each transaction.
- **Branch**: Store branch (e.g., A, B, C).
- **City**: City where the transaction occurred.
- **Customer Type**: Customer classification (Member/Normal).
- **Gender**: Gender of the customer.
- **Product Line**: Category of purchased products.
- **Unit Price**: Price per unit of the product.
- **Quantity**: Quantity purchased.
- **Tax 5%**: Tax applied.
- **Total**: Total payment amount (including tax).
- **Date**: Date of the transaction.
- **Time**: Time of the transaction.
- **Payment**: Payment method (Ewallet, Credit Card, Cash).
- **COGS**: Cost of Goods Sold.
- **Gross Margin Percentage**: Revenue exceeding the COGS as a percentage.
- **Gross Income**: Income before tax.
- **Rating**: Customer satisfaction score.

---

## Key Features and Outputs

### Python
- **Data Cleaning**:
  - Resolved date-time discrepancies.
  - Verified and corrected calculation columns (e.g., `Total` and `COGS`).
- **Exploratory Data Analysis**:
  - Correlation matrix to identify relationships between variables.
  - Temporal sales trends and customer segmentation insights.

### SQL
- **Advanced Querying**:
  - Sales by branch, city, and customer type.
  - Profitability and gross income analysis.
  - Temporal and categorical aggregations for enhanced insights.

### Tableau
- **Dashboards**:
  1. **Sales Overview**:
     - KPIs: Total Sales, Total Quantity, Average Rating, Gross Income.
     - Charts: Sales Over Time, Hourly Sales, Sales by City.
  2. **Customer Insights**:
     - Charts: Sales by Gender, Customer Segmentation, Payment Method Preferences.
  3. **Product & Branch Analysis**:
     - Charts: Sales by Product Line, Profitability by Product Line, Gross Income by Branch, Profit Margin Analysis.
  4. **Customer Satisfication and Payments Method**:
     - Charts: Avg Rating By Payment Method,Sales By Customer Type , Rating By Product Line, Sales By Payment Method.

---

## Insights and Outcomes
- Identified peak sales periods and high-performing branches.
- Discovered customer preferences and profitability trends by product line.
- Highlighted factors influencing customer satisfaction to improve experience.
