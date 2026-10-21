SELECT
 COUNT(DISTINCT warehouse.state) AS num_states
FROM
 `YOUR_PROJECT_ID.warehouse_orders.orders` AS orders
JOIN
 `YOUR_PROJECT_ID.warehouse_orders.warehouse` warehouse 
ON orders.warehouse_id = warehouse.warehouse_id

#With COUNT: The query returned more than 9,000 results. There are only 50 states, so this is clearly not the answer you're looking for! This is because the query counted every single record (row) that included a state, regardless of duplicates or null values. 