
# User Growth Analytics | SQL & Google BigQuery

![SQL](https://img.shields.io/badge/SQL-Analytics-4479A1)
![BigQuery](https://img.shields.io/badge/Google_BigQuery-Data_Warehouse-4285F4)
![Analytics](https://img.shields.io/badge/Analytics-User_Growth-16A085)

## Project Overview

This project uses SQL and Google BigQuery to analyze user registration data, evaluate acquisition trends, and calculate key business growth metrics.

The objective is to transform raw user-level data into meaningful performance indicators that support business reporting and decision-making.

## Business Questions

1. How many new users register each month?
2. How does monthly user acquisition change over time?
3. What is the month-over-month growth rate?
4. Which months show increases or decreases in new registrations?

## Tools & Technologies

- Google BigQuery
- SQL (GoogleSQL)
- Common Table Expressions (CTEs)
- Window Functions (`LAG`)
- Date Functions (`DATE_TRUNC`)
- Aggregate Functions (`COUNT`)
- NULL Handling (`NULLIF`)

## Dataset

The analysis uses a `users` table containing:

- `user_id`: Unique user identifier
- `created_at`: User registration date

These fields are used to aggregate registrations and evaluate monthly growth trends.

## Methodology

### 1. Monthly User Acquisition

Grouped users by registration month using `DATE_TRUNC()` and calculated monthly registration counts.

### 2. Previous-Month Comparison

Applied the `LAG()` window function to retrieve registration counts from the previous month.

### 3. Month-over-Month Growth

Calculated the percentage change in registrations:

MoM Growth (%) =
(Current Month Signups - Previous Month Signups)
 / Previous Month Signups * 100

Used `NULLIF()` to prevent division-by-zero errors.

## SQL Implementation

The analysis follows a structured query approach:

1. Create a CTE to aggregate monthly registrations.
2. Retrieve previous-month counts using `LAG()`.
3. Calculate month-over-month growth.
4. Sort results chronologically.

See the SQL files in this repository for the implementation.

## Business Applications

This analysis demonstrates how SQL can support:

- User acquisition monitoring
- Monthly KPI reporting
- Growth performance analysis
- Trend identification
- Business intelligence reporting

## Key Findings

To be completed after validating the final SQL output.

## Skills Demonstrated

`SQL` `BigQuery` `CTEs` `Window Functions`
`Data Aggregation` `KPI Reporting`
`Growth Analytics` `Business Intelligence`
`Data Analysis`

## Author

Anuradha Biswas

Master of Business Economics | Wilfrid Laurier University
