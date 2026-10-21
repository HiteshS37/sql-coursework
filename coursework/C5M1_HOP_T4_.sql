SELECT
 *
FROM
 bigquery-public-data.sdoh_cdc_wonder_natality.county_natality
WHERE
 County_of_Residence IN ('Erie County, NY', 'Chautauqua County, NY', 'Niagara County, NY')
AND 
  Year BETWEEN '2016-01-01' AND '2018-12-31'
ORDER BY 
 BIRTHS DESC 
LIMIT
 10