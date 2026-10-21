# SQL Coursework in Google BigQuery

SQL coursework supplied by Hitesh Srinivas, organised for review and interview discussion. The material is a **mixture of guided in-class exercises and assignment answers**. This repository documents learning and practice—not an independent end-to-end analytics project or professional SQL deployment.

## Start here

The five examples below are selected from the submitted work. Their SQL logic is preserved; explanatory comments were added with AI assistance. No query results or business improvements have been invented.

| Example | Purpose | SQL demonstrated |
|---|---|---|
| [01_weather_data_cleaning.sql](showcase/01_weather_data_cleaning.sql) | Prepare weather observations for two New York airport stations. | PARSE_DATE, CONCAT, IF, CAST, missing-value handling |
| [02_regional_education_population.sql](showcase/02_regional_education_population.sql) | Summarise the secondary-school-age population by region for 2015. | INNER JOIN, SUM, GROUP BY, filtering |
| [03_warehouse_order_share.sql](showcase/03_warehouse_order_share.sql) | Classify warehouses by their share of recorded orders. | LEFT JOIN, scalar subqueries, CASE, COUNT, GROUP BY, HAVING |
| [04_trip_duration_comparison.sql](showcase/04_trip_duration_comparison.sql) | Compare each bicycle trip with the average duration at its starting station. | Correlated subqueries, AVG, ROUND, ORDER BY, LIMIT |
| [05_bike_station_usage.sql](showcase/05_bike_station_usage.sql) | Find the most frequent departure station of the bike with the greatest total recorded duration. | CTE, INNER JOIN, SUM, COUNT, GROUP BY |

## Contents

- `showcase/`: five documented examples, copied from the coursework collection.
- `coursework/`: all 64 submitted SQL files, including one exact duplicate pair. There are 63 distinct query texts after normalising line endings and surrounding whitespace.
- `suggested-fixes/`: two explicitly labelled AI-assisted corrections; these are separate from the submitted work.
- [QUERY_INVENTORY.md](QUERY_INVENTORY.md): per-file concept index and review flags.
- [REVIEW_NOTES.md](REVIEW_NOTES.md): specific corrections, assumptions and limitations.

The total number of SQL files in this prepared repository is 71: 64 coursework files, five showcase copies and two suggested fixes. These are not 71 unique exercises.

## Skills evidenced by the submitted code

Filtering and sorting; DISTINCT and aggregates; INNER, LEFT and FULL OUTER JOIN; scalar, nested and correlated subqueries; CASE and IF; CTEs; string cleaning and concatenation; date parsing and extraction; casting; NULL handling; and UPDATE/DELETE exercises.

No window-function implementation was found. The collection is evidence of practice with these concepts, not a certification of mastery or proof of production experience.

## Data and reproducibility

Public dataset references are retained, including London bicycles, New York Citi Bike, Austin bikeshare, NOAA weather, World Bank education, NCAA basketball, FDA food events, subway ridership, natality and solar potential. Query code contains the exact table paths used in the coursework; their current availability and schemas have not been checked against BigQuery.

Both personal Google Cloud project identifiers were replaced with `YOUR_PROJECT_ID` in the publication copies. Dataset and table names were retained. This placeholder is a literal identifier to replace, not a SQL parameter. Source data, table schemas, saved query results and assignment instructions were not supplied. Private-table examples therefore need the original datasets or compatible permitted copies to run.

Apart from replacing project identifiers and normalising line endings, the files in `coursework/` retain their submitted contents and filenames. Some filenames contain spaces. The original uploaded ZIP has not been modified.

## How to validate an example

1. Open a selected `.sql` file in Google BigQuery using GoogleSQL.
2. For `YOUR_PROJECT_ID` references, use your own project and confirm the referenced tables exist and have compatible schemas.
3. Use BigQuery query validation or a dry run to check syntax, access and estimated bytes. A dry run does not establish that the business interpretation is correct.
4. Run SELECT examples individually and inspect the output, including duplicates, NULLs, date coverage and units.
5. Save a small permitted result sample or screenshot alongside the query, together with the execution date and an explanation of what the result means.

The collection includes UPDATE and DELETE exercises. Inspect them and use disposable coursework table copies; do not execute the entire folder as a batch. Nothing was executed against a database during this review.

## Attribution and review status

Hitesh supplied these files as coursework. The collection combines guided in-class exercises and assignment answers. The course provider, exact assignment titles and the classification of individual files have not yet been documented. Do not interpret this repository as a claim that the exercise prompts or datasets were created by Hitesh.

Organisation, documentation and the two separately labelled corrections were prepared with AI assistance. Review performed on 21 October 2026: all 64 source files read; duplicate comparison and source-to-copy preservation checks completed. No BigQuery execution, dry run, automated SQL-parser test or result verification was performed.

## Resume wording supported by this collection

**SQL (Google BigQuery; coursework): joins, aggregations, subqueries, CTEs and data cleaning.**

An optional coursework bullet, where space permits:

> Practised SQL in Google BigQuery through coursework exercises using joins, subqueries, CTEs and data-cleaning functions across public and course datasets.

## References

- [GoogleSQL operators and precedence](https://docs.cloud.google.com/bigquery/docs/reference/standard-sql/operators)
- [GoogleSQL query syntax and aliases](https://docs.cloud.google.com/bigquery/docs/reference/standard-sql/query-syntax)
- [BigQuery dry-run example](https://docs.cloud.google.com/bigquery/docs/samples/bigquery-query-dry-run)
