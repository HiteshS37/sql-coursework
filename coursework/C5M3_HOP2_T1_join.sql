SELECT
 orders.*,
 warehouse.warehouse_alias,
 warehouse.state
FROM
 `YOUR_PROJECT_ID.warehouse_orders.orders` AS orders
JOIN
 `YOUR_PROJECT_ID.warehouse_orders.warehouse` warehouse 
ON orders.warehouse_id = warehouse.warehouse_id