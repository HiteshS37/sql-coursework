SELECT
 seasons.market AS University,
 seasons.name AS team_name,
 mascots.mascot AS team_mascot,
 AVG(seasons.wins) AS avg_wins,
 AVG(seasons.losses) AS avg_loss,
 AVG(seasons.ties) AS avg_ties
FROM
 `bigquery-public-data.ncaa_basketball.mbb_historical_teams_seasons` AS seasons
LEFT JOIN 
 `bigquery-public-data.ncaa_basketball.mascots` AS mascots
ON
 seasons.team_id = mascots.id
 WHERE seasons.season BETWEEN 1990 AND 1999
 AND seasons.division = 1
 GROUP BY 1,2,3
ORDER BY avg_wins DESC, university

#This is an example of when a LEFT JOIN is more helpful than an INNER JOIN. With this query, you can review college basketball statistics to get a better sense of which teams (and mascots) were winning most in the 1990s. Need to use a LEFT JOIN instead of an INNER JOIN because not all teams have mascots. If you use an INNER JOIN, you would exclude teams with no mascot.