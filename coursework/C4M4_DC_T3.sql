SELECT
 LENGTH(country) AS letters_in_county
FROM
 `YOUR_PROJECT_ID.customer_data1.customer_address`
WHERE
 LENGTH(country) > 2