SELECT
 CONCAT(product_code, product_color) AS new_product_code
FROM
 `YOUR_PROJECT_ID.customer_data1.customer_purchase`
WHERE
 product = "couch" 
