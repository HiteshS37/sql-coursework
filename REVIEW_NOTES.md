# SQL Coursework Review

Reviewed 21 October 2026. All 64 files were read; the review is static and does not verify successful execution, data accuracy or authorship beyond the user's description of the files as coursework.

## Findings to resolve before presenting results

| File | Finding | Treatment |
|---|---|---|
| `C3M3_HOP_T3.sql` | Missing comma between `start_station_name` and `start_station_id`. The latter can be interpreted as an alias, so the query can run while selecting only one expression. | Separate corrected copy selects both columns. |
| `C5M1_HOP2_T2.sql` | AND binds before OR: the date condition applies to station 725030, but not 744860. | Separate corrected copy uses IN so both stations share the date condition. |
| `C5M1_HOP2_T1.sql` / `C5M1_HOP2_T2.sql` | First file reads 2019 weather; second requests June 2020 from a private table. We do not know how that table was populated. | Confirm the table's date range; do not assume changing the year is justified. |
| `C5M4_HOP_T5.sql` | MAX/MIN on `string_field_3` may compare strings rather than numeric costs, depending on the actual schema. | Inspect schema and currency formatting before choosing a numeric cast. Trailing SELECT comma is allowed in GoogleSQL. |
| `C5M4_HOP_T4.sql` | Groups units sold by year, month and product, and selects maximum unit price. It does not compute year-over-year change or an inventory balance despite its comment. | Describe it as monthly sales aggregation; do not claim YoY or inventory-change analysis. |
| `C5M3_sq_advanced.sql` | Classifies shares of order records; no status filter establishes delivered or fulfilled orders. Assumes appropriate order grain and warehouse-key uniqueness. | Explain it as an order-share classification exercise. Confirm schema and denominator before using fulfillment wording as an outcome. |
| `C5M3_HOP4_T1_sq.sql` | Counts non-NULL report_number rows for hospitalization-tagged reports among industries with the most reports overall. | Not a count of unique patients, a causal estimate or an exposure-adjusted risk comparison. Check report grain. |
| `C5M4_HOP_T2.sql` | Adds four yearly values and divides by four. A NULL year makes that expression NULL. | Confirm whether a four-year mean or an available-years mean is intended. |
| `C5M4_HOP_T6.sql` | LIMIT 1 has no secondary tie-breaking rule for bikes or stations. | Explain that ties are not deterministically resolved. |
| `C5M2_Merge_Concat.sql` | Uses `new_york.citibike_trips`, while other files use `new_york_citibike.citibike_trips`. | Check current table availability rather than silently replacing the path. |
| `C4M4_ADC_T22.sql` | Casts date in SELECT but filters the original date field. | Check its source type and format; the SELECT cast does not itself change the WHERE comparison. |
| `C5M1_HOP_T4_.sql` | Compares Year with full date strings. | Validate the source field type before deciding whether date or integer-year comparisons are appropriate. |
| `C4M4_HOP_T10.sql`, `T11`, `T13`, `T17`, `T20` in the same naming series | UPDATE/DELETE exercises modify source tables; one trims all rows. | Kept as coursework evidence; not run. Use disposable copies and preview affected records. |
| `C3M3_HOP_T1 .sql` and `C3_HOP_T1 .sql` | Duplicate query text. | Both preserved; not counted as two distinct query texts. |

## How to discuss the five showcase examples

- Weather: explain why sentinel values become NULL, how date strings are parsed, and why missing values must not enter averages as real measurements.
- Regional education: explain the join key, the chosen indicator/year, and why a nonunique dimension-table key could inflate sums.
- Warehouses: explain the difference between a warehouse's order count and the total-order denominator, why HAVING excludes warehouses without orders, and why record share does not prove delivery performance.
- Trip durations: explain what makes the subquery correlated and why an unusually long trip is not automatically a data error.
- Austin bikes: explain why the first aggregation ranks bikes by total duration, while the second counts departures by station for the selected bike.

## What this supports

The collection provides concrete evidence of SQL coursework using Google BigQuery, extending beyond basic SELECT statements to joins, subqueries and CTEs. It does not establish workplace SQL experience, an independent portfolio project, query-performance optimisation, window functions, or independently verified business outcomes.

## Remaining inputs

For precise attribution: course/provider name and whether these are guided exercises, your own answers to assignments, or a mixture. For reproducibility: schemas or permitted datasets for the private tables, and a few actual output screenshots or exports after the issues above are addressed.

No employer-facing resume was edited, and no files were published to GitHub.

## Technical references

GoogleSQL operator precedence: https://docs.cloud.google.com/bigquery/docs/reference/standard-sql/operators

GoogleSQL query aliases: https://docs.cloud.google.com/bigquery/docs/reference/standard-sql/query-syntax

BigQuery dry-run validation: https://docs.cloud.google.com/bigquery/docs/samples/bigquery-query-dry-run
