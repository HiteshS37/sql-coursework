SELECT
 Extract (YEAR from Date) as Year,
 Extract (MONTH from Date) as Month,
 Round(MAX(UnitPrice),2) as UnitPrice,
 ProductId,
 SUM(Quantity) as UnitSold
FROM `YOUR_PROJECT_ID.sales.sales_info`
GROUP BY Year, Month, ProductId
ORDER BY Year, Month, ProductId
# management wants to see year-over-year changes to inventory by month.