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
tblproperties ("skip.header.line.count"="1");


CREATE EXTERNAL TABLE Scouts
(
	ano int,
	Apelido string,
	AtletaID int,
	ClubeID string,
	Posicao string,
	Pontos DECIMAL(10, 4)
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '/cartolafc/scouts_agregados'
tblproperties ("skip.header.line.count"="1");

-- Melhores atletas por posição
CREATE VIEW melhores_atletas as
select posicao, atletaid, avg(pontos) media_pontos 
from scouts 
group by posicao, atletaid
order by posicao, media_pontos desc;

-- 2 melhores atacantes
CREATE VIEW atacantes as
select *
from melhores_atletas
where posicao = 'ata'
limit 2;

-- 2 melhores meias
CREATE VIEW meias as
select *
from melhores_atletas
where posicao = 'mei'
limit 2;

-- 2 melhores laterais
CREATE VIEW laterais as
select *
from melhores_atletas
where posicao = 'lat'
limit 2;

-- 4 melhores zagueiros
CREATE VIEW zagueiros as
select *
from melhores_atletas
where posicao = 'zag'
limit 4;

-- melhor goleiro
CREATE VIEW goleiro as
select *
from melhores_atletas
where posicao = 'gol'
limit 1;
