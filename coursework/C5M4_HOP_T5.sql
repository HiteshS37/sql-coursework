SELECT  
 string_field_2 AS Supplier,
 MAX(string_field_3) AS MaxCost,
 MIN(string_field_3) AS MinCost,
FROM `YOUR_PROJECT_ID.products.products_info`
GROUP BY Supplier