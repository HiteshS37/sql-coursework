-- From my coursework: coursework/C5M3_sq_advanced.sql
-- I worked on grouping warehouses by the share of orders recorded for each one.
-- The labels in this exercise describe order shares, not verified delivery outcomes.
-- Main concepts: LEFT JOIN, subqueries, CASE, COUNT, GROUP BY and HAVING.

SELECT
 Warehouse.warehouse_id,
 CONCAT(Warehouse.state, ':', Warehouse.warehouse_alias) AS warehouse_name,
 COUNT(Orders.order_id) AS number_of_orders,
 (SELECT COUNT(*) FROM `YOUR_PROJECT_ID.warehouse_orders.orders` AS Orders) AS total_orders,
 CASE
   WHEN COUNT(Orders.order_id)/(SELECT COUNT(*) FROM `YOUR_PROJECT_ID.warehouse_orders.orders` AS Orders) <= 0.20
   THEN 'Fulfilled 0-20% of the Orders'
   WHEN COUNT(Orders.order_id)/(SELECT COUNT(*) FROM `YOUR_PROJECT_ID.warehouse_orders.orders` AS Orders) > 0.20
   AND COUNT(Orders.order_id)/(SELECT COUNT(*) FROM `YOUR_PROJECT_ID.warehouse_orders.orders` AS Orders) <= 0.60
   THEN 'Fulfilled 21-60% of the Orders'
   ELSE 'Fulfilled more than 60% of the Orders'
 END AS fulfillment_summary

FROM `YOUR_PROJECT_ID.warehouse_orders.warehouse` AS Warehouse
LEFT JOIN `YOUR_PROJECT_ID.warehouse_orders.orders` AS Orders
 ON Orders.warehouse_id = Warehouse.warehouse_id
GROUP BY
 Warehouse.warehouse_id,
 warehouse_name
HAVING
 COUNT(Orders.order_id) > 0