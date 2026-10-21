# SQL Coursework | Google BigQuery

During my Finance and Business Analytics studies, I worked on SQL exercises using Google BigQuery. I've put my classroom practice and assignment queries together here so I can keep track of what I've learned and share examples of my SQL work.

This is a **coursework collection**, not an independent end-to-end analytics project. Some queries were guided exercises, while others were assignment answers.

## What I've practised

- **Querying data:** `SELECT`, `WHERE`, `DISTINCT`, `ORDER BY` and `LIMIT`
- **Summarising data:** `COUNT`, `SUM`, `AVG`, `MIN`, `MAX` and `GROUP BY`
- **Working across tables:** `INNER JOIN`, `LEFT JOIN` and `FULL OUTER JOIN`
- **More complex queries:** subqueries, correlated subqueries, CTEs and `CASE`
- **Cleaning and transforming data:** `TRIM`, `SUBSTR`, `CONCAT`, `CAST`, `PARSE_DATE`, `IF` and `COALESCE`
- **Updating practice tables:** `UPDATE` and `DELETE`

## A few examples from my coursework

These five examples show some of the different ways I have used SQL in my exercises. They are taken from the original files in `coursework/`.

| Exercise | What I worked on | SQL concepts |
| --- | --- | --- |
| [Weather data cleaning](showcase/01_weather_data_cleaning.sql) | Preparing weather readings for two New York airport stations | Dates, casting, conditional logic and missing values |
| [Education data](showcase/02_regional_education_population.sql) | Summarising secondary-school-age population by region | Joins, filtering and aggregation |
| [Warehouse orders](showcase/03_warehouse_order_share.sql) | Grouping warehouses by their share of recorded orders | Joins, subqueries and `CASE` |
| [Bike trip duration](showcase/04_trip_duration_comparison.sql) | Comparing individual trip durations with station averages | Correlated subqueries and `AVG` |
| [Bike station usage](showcase/05_bike_station_usage.sql) | Looking at which station a frequently used bike departed from most often | CTEs, joins and aggregation |

## Repository structure

- **[`coursework/`](coursework/)** — 64 SQL files from my classes and assignments, kept with their original filenames. Some exercises overlap.
- **[`showcase/`](showcase/)** — five examples from that collection, with a little more context around what each query does.
- **[Query inventory](QUERY_INVENTORY.md)** — a quick index of the concepts covered in each file.

## Datasets and running the queries

My exercises use a mix of BigQuery public datasets and tables set up for coursework. The public-data topics include bike sharing, weather, education, sales and other sample datasets.

For queries that refer to coursework tables, I've used `YOUR_PROJECT_ID` instead of my Google Cloud project ID. Those queries need the relevant dataset and table to be available in your own BigQuery environment.

A few things to keep in mind:
- These files reflect my coursework at the time, so some queries may need a syntax fix or an updated table reference before they run.
- I haven't included the private coursework datasets or saved query results.
- Some exercises contain `UPDATE` and `DELETE` statements; I would only run those on test tables where changes are intended.

## What I'm working towards

I want to go beyond individual SQL exercises and use SQL as part of a complete analytics workflow, from preparing data and exploring trends to building a dashboard and explaining the results. This repository is one part of that learning journey.

You can also find my other work on [my GitHub profile](https://github.com/HiteshS37).
