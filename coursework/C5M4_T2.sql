SELECT
 Date,
 Region,
 Total_Bags,
 Small_Bags,
 (Small_Bags / Total_Bags) * 100 AS Small_Bags_pct
FROM
`YOUR_PROJECT_ID.avocado_data.avocado_prices`
WHERE
 Total_Bags <> 0
# In the above where function, we can use "! = 0" instead of "<> 0" 