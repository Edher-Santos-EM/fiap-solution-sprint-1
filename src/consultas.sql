-- Quantos registros há na tabela por ano?
SELECT ano, COUNT(*) AS partidas_ano 
FROM Partidas 
GROUP BY ano 
ORDER BY ano;

-- Quantas equipes únicas mandantes existem?
SELECT count(DISTINCT home_team) AS equipes_unicas 
FROM Partidas;

SELECT ano, COUNT(DISTINCT home_team) AS equipes_unicas 
FROM Partidas 
GROUP BY ano 
ORDER BY ano;

-- Quantas vezes as equipes mandantes saíram vitoriosas?
SELECT COUNT(*) AS equipes_madantes_vitoriosas 
FROM Partidas 
WHERE home_score > away_score;

SELECT ano, COUNT(*) AS equipes_madantes_vitoriosas 
FROM Partidas 
WHERE home_score > away_score 
GROUP BY ano 
ORDER BY ano;

-- Quantas vezes as equipes visitantes saíram vitoriosas?
SELECT COUNT(*) AS equipes_madantes_vitoriosas 
FROM Partidas 
WHERE home_score < away_score;

SELECT ano, COUNT(*) AS equipes_madantes_vitoriosas 
FROM Partidas 
WHERE home_score < away_score 
GROUP BY ano 
ORDER BY ano;

-- Quantas partidas resultaram em empate?
SELECT COUNT(*) AS partidas_empatadas 
FROM Partidas 
WHERE home_score = away_score;

SELECT ano, COUNT(*) AS partidas_empatadas 
FROM Partidas 
WHERE home_score = away_score 
GROUP BY ano 
ORDER BY ano;

-- Quais jogadores detêm os melhores scouts gerais e por ano?
WITH melhores_atletas_ano as
(SELECT ano, apelido, posicao, avg(pontos) OVER (PARTITION BY ano, apelido) media_pontos
FROM scouts 
ORDER BY ano, media_pontos DESC)
(SELECT ano, apelido, posicao
FROM melhores_atletas_ano
WHERE ano = 2014 LIMIT 1)
UNION ALL
(SELECT ano, apelido, posicao
FROM melhores_atletas_ano
WHERE ano = 2015 LIMIT 1)
UNION ALL
(SELECT ano, apelido, posicao
FROM melhores_atletas_ano
WHERE ano = 2016 LIMIT 1)
UNION ALL
(SELECT ano, apelido, posicao
FROM melhores_atletas_ano
WHERE ano = 2017 LIMIT 1)
UNION ALL
(SELECT ano, apelido, posicao
FROM melhores_atletas_ano
WHERE ano = 2018 LIMIT 1)
UNION ALL
(SELECT ano, apelido, posicao
FROM melhores_atletas_ano
WHERE ano = 2019 LIMIT 1)
UNION ALL
(SELECT ano, apelido, posicao
FROM melhores_atletas_ano
WHERE ano = 2020 LIMIT 1)
ORDER BY 1

-- Qual é o time ideal?
-- Selecionaos o seguinte esquema tático 2 atacantes, 2 laterais, 2 meias, 4 zagueiros e 1 goleiro
WITH atletas AS (SELECT DISTINCT atletaid, apelido FROM scouts)
SELECT posicao, apelido 
FROM atacantes
INNER JOIN atletas ON atletas.atletaid = atacantes.atletaid 
UNION ALL 	
SELECT posicao, apelido 
FROM meias
INNER JOIN atletas ON atletas.atletaid = meias.atletaid 
UNION ALL 
SELECT posicao, apelido 
FROM laterais
INNER JOIN atletas ON atletas.atletaid = laterais.atletaid 
UNION ALL 
SELECT posicao, apelido 
FROM zagueiros
INNER JOIN atletas ON atletas.atletaid = zagueiros.atletaid 
UNION ALL 
SELECT posicao, apelido 
FROM goleiro
INNER JOIN atletas ON atletas.atletaid = goleiro.atletaid 