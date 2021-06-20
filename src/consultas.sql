-- Quantos registros há na tabela por ano?
SELECT ano, COUNT(*) as partidas_ano FROM Partidas group by ano order by ano;

-- Quantas equipes únicas mandantes existem?
SELECT count(distinct home_team) FROM Partidas;

-- Quantas vezes as equipes mandantes saíram vitoriosas?
SELECT COUNT(*) as partidas_vitoriosas FROM Partidas where home_score > away_score;

-- Quantas partidas resultaram em empate?
SELECT COUNT(*) as partidas_empatadas FROM Partidas where home_score = away_score;


-- Consultas extras elaboradas com o intuito de praticar  

-- Quantas vezes as equipes mandantes saíram vitoriosas por ano?
SELECT ano, COUNT(*) as partidas_vitoriosas FROM Partidas where home_score > away_score group by ano order by partidas_vitoriosas desc;

-- Qual é a equipe mandante mais vitoriosa?
SELECT home_team, COUNT(*) as partidas_vitoriosas FROM Partidas where home_score > away_score group by home_team order by partidas_vitoriosas desc;

-- Qual é a equipe mandante mais teve empate?
SELECT home_team, COUNT(*) as partidas_empatadas FROM Partidas where home_score = away_score group by home_team order by partidas_empatadas desc;

-- Exemplos mais avançados usando CTE
-- Qual é a equipe mandante mais fez gols?
with resultados as 
(SELECT home_team as time, home_score as score FROM Partidas
union all
SELECT away_team as time, away_score FROM Partidas)
select time, sum(score) gols_marcadaos
from resultados
group by time
order by gols_marcadaos desc