SELECT
 DISTINCT customer_id
FROM
 `YOUR_PROJECT_ID.customer_data1.customer_address`
WHERE
 SUBSTR(country, 1, 2) = 'US'