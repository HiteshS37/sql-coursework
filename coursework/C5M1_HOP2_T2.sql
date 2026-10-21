SELECT 
 AVG(temperature) 
FROM 
 `YOUR_PROJECT_ID.demos.nyc_weather`
WHERE
 date BETWEEN '2020-06-01' AND '2020-06-30'
AND 
 stn = "725030" --La Guardia
 OR
 stn = "744860" --JFK