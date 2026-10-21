SELECT
 CAST(date AS date),
 purchase_price
FROM
 `YOUR_PROJECT_ID.customer_data1.customer_purchase`
WHERE
 date BETWEEN '2020-12-01' AND '2020-12-31'