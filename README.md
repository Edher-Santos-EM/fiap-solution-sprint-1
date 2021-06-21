# Solution Sprint 1

Ambiente para estudo dos principais frameworks big data em docker.
Esse setup vai criar dockers com os frameworks HDFS, Hive, Presto, Jupyter com a seguinte arquitetura: 

(Imagem José)

# SOFTWARES NECESSÁRIOS

Para a criação e uso do ambiente vamos utilizar git, docker e DBeaver

# SETUP
Basta fazer um clone

```shell
git clone https://github.com/Edher-Santos-EM/fiap-solution-sprint-1
```

# INICIANDO O AMBIENTE

No terminal utilize

```shell
docker compose up -d
docker compose exec hive-server bash
```

## LISTANDO OS ARQUIVOS (LS)
```shell
$ ls /data
```

<img src="https://github.com/Edher-Santos-EM/fiap-solution-sprint-1/blob/main/ls.png"></img>

O arquivo partidas_agregadas.csv é o resultado do trabalho de agregação e limpeza feito no python.

O próximo passo foi jogar pra dentro do HDFS executando os seguintes comandos no terminal bash

```shell
hdfs dfs -mkdir /cartolafc
hdfs dfs -mkdir /cartolafc/partidas_agregadas
hdfs dfs -copyFromLocal /data/partidas_agregadas.csv /cartolafc/partidas_agregadas/partidas_agregadas.csv
```
### Imagem evidenciando a migração para o HDFS
<img src="https://github.com/Edher-Santos-EM/fiap-solution-sprint-1/blob/main/ls-hdfs.png"></img>

## CONFIGURANDO A CONEXÃO NO DBEAVER

<img src="https://github.com/Edher-Santos-EM/fiap-solution-sprint-1/blob/main/dbeaver-hive-conexao.png"></img>


## CRIANDO TABELA DE PARTIDAS

<img src="https://github.com/Edher-Santos-EM/fiap-solution-sprint-1/blob/main/dbeaver-hive-criacao-tabela.png"></img>

## EXECUTANDO AS CONSULTAS
```sql
-- Quantos registros há na tabela por ano?
SELECT ano, COUNT(*) as partidas_ano FROM Partidas group by ano order by ano;

-- Quantas equipes únicas mandantes existem?
SELECT count(distinct home_team) FROM Partidas;

-- Quantas vezes as equipes mandantes saíram vitoriosas?
SELECT COUNT(*) as partidas_vitoriosas FROM Partidas where home_score > away_score;

-- Quantas partidas resultaram em empate?
SELECT COUNT(*) as partidas_empatadas FROM Partidas where home_score = away_score;
```
