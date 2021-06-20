CREATE EXTERNAL TABLE Partidas
(
	ano int,
	home_team string,
	away_team string,
	home_score int,
	away_score int
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '/cartolafc/partidas_agregadas'
tblproperties ("skip.header.line.count"="1")