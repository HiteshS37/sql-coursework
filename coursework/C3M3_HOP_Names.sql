SELECT
 name,
 count
FROM
 `YOUR_PROJECT_ID.babynames.names_2014`
WHERE
 gender = 'M'
ORDER BY
 count DESC
LIMIT
 5