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

-- Quantas vezes AS equipes mandantes saíram vitoriosas?
SELECT COUNT(*) AS equipes_madantes_vitoriosas 
FROM Partidas 
WHERE home_score > away_score;

SELECT ano, COUNT(*) AS equipes_madantes_vitoriosas 
FROM Partidas 
WHERE home_score > away_score 
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


-- Time montado com base nas views dos melhores scouts de atletas por posição 2 atacantes, 2 laterais, 2 meias, 4 zagueiros e 1 goleiro
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