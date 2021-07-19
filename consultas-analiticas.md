# Consultas
O script pode ser encontrado na pasta scr [consultas.sql](https://github.com/Edher-Santos-EM/fiap-solution-sprint-1/blob/main/src/consultas.sql)

## Quantos registros há na tabela por ano?
```sql
SELECT ano, COUNT(*) as partidas_ano FROM Partidas group by ano order by ano;
```
<img src="./resultados/quantos_registros_ha_na_tabela_por_ano.png"></img>

##  Quantas equipes únicas mandantes existem?
```sql
SELECT count(distinct home_team) as equipes_unicas FROM Partidas;
```
<img src="./resultados/quantas_equipes_unicas_mandantes_existem.png"></img>

```sql
SELECT ano, COUNT(distinct home_team) as equipes_unicas FROM Partidas group by ano order by ano;
```
<img src="./resultados/quantas_equipes_unicas_mandantes_existem_por_ano.png"></img>

## Quantas vezes as equipes mandantes saíram vitoriosas?
```sql
SELECT COUNT(*) as equipes_madantes_vitoriosas FROM Partidas where home_score > away_score;
```
<img src="./resultados/quantas_vezes_as_equipes_mandantes_sairam_vitoriosas.png"></img>

```sql
SELECT ano, COUNT(*) as equipes_madantes_vitoriosas FROM Partidas where home_score > away_score group by ano order by ano;
```
<img src="./resultados/quantas_vezes_as_equipes_mandantes_sairam_vitoriosas_por_ano.png"></img>

## Quantas vezes as equipes visitantes saíram vitoriosas?
```sql
SELECT COUNT(*) AS equipes_madantes_vitoriosas FROM Partidas WHERE home_score < away_score;
```
<img src="./resultados/quantas_vezes_as_equipes_visitantes_sairam_vitoriosas.png"></img>

```sql
SELECT ano, COUNT(*) AS equipes_madantes_vitoriosas FROM Partidas WHERE home_score < away_score GROUP BY ano ORDER BY ano;
```
<img src="./resultados/quantas_vezes_as_equipes_visitantes_sairam_vitoriosas_por_ano.png"></img>

## Quantas partidas resultaram em empate?
```sql
SELECT COUNT(*) as partidas_empatadas FROM Partidas where home_score = away_score;
```
<img src="./resultados/quantos_registros_ha_na_tabela.png"></img>

```sql
SELECT ano, COUNT(*) as equipes_madantes_vitoriosas FROM Partidas where home_score = away_score group by ano order by ano;
```
<img src="./resultados/quantos_registros_ha_na_tabela_por_ano.png"></img>

## Quais jogadores detêm os melhores scouts gerais e por ano?

## Qual é o time ideal?

## Será que podemos preparar a ingestão para o campeonato de 2021?


## Como capturar os dados direto do Cartola FC?
