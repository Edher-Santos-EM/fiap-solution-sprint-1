# Solution Sprint 1

Ambiente para estudo dos principais frameworks big data em docker.

Esse setup vai criar dockers com os frameworks HDFS, Hive, Presto, Jupyter com a arquitetura descrita na imagem abaixo. 

## ARQUITETURA DA SOLUÇÃO

<img src="https://github.com/Edher-Santos-EM/fiap-solution-sprint-1/blob/main/arquitetura_da_solucao.jpg"></img>

## SOFTWARES NECESSÁRIOS

Para a criação e uso do ambiente vamos utilizar git, python, docker e DBeaver

## SETUP
Basta fazer um clone

```shell
git clone https://github.com/Edher-Santos-EM/fiap-solution-sprint-1
```
## TRATAMENTO DE DADOS 
O tratamento de dados foi feito em python. Utilizamos o jupyter e python 3 como ferramenta de analise, tratamento de dados.
### Scripts em Python

Os scripts podem ser encontrados na pasta src/python 

* Script para tratamento das partidas de 2014 a 2020 [tratamento_dados_partidas.py](https://github.com/Edher-Santos-EM/fiap-solution-sprint-1/blob/main/src/python/tratamento_dados_partidas.py)
* Script para tratamento dos scouts de 2014 a 2017 [tratamento_dados_scouts_2014_a_2017.py](https://github.com/Edher-Santos-EM/fiap-solution-sprint-1/blob/main/src/python/tratamento_dados_scouts_2014_a_2017.py)
* Script para tratamento dos scouts de 2018 a 2020 [tratamento_dados_scouts_2018_a_2020.py](https://github.com/Edher-Santos-EM/fiap-solution-sprint-1/blob/main/src/python/tratamento_dados_scouts_2018_a_2020.py)

Os arquivos do jupyter podem ser encontrados na pasta src
* Tratamento das partidas de 2014 a 2020 [partidas.ipynb](https://github.com/Edher-Santos-EM/fiap-solution-sprint-1/blob/main/src/partidas.ipynb)
* Yratamento dos scouts de 2014 a 2017 [scouts_2014_a_2017.ipynb](https://github.com/Edher-Santos-EM/fiap-solution-sprint-1/blob/main/src/scouts_2014_a_2017.ipynb)
* Tratamento dos scouts de 2018 a 2020 [scouts_2018_a_2020.ipynb](https://github.com/Edher-Santos-EM/fiap-solution-sprint-1/blob/main/src/scouts_2018_a_2020.ipynb)

## INICIANDO O AMBIENTE

No terminal utilize
```shell
docker compose up -d
docker compose exec hive-server bash
```

Listando os arquivos
```shell
ls /data
```
<img src="https://github.com/Edher-Santos-EM/fiap-solution-sprint-1/blob/main/ls.png"></img>

O próximo passo foi jogar pra dentro do HDFS executando os seguintes comandos no terminal bash

```shell
hdfs dfs -mkdir /cartolafc
hdfs dfs -mkdir /cartolafc/partidas_agregadas
hdfs dfs -mkdir /cartolafc/scouts_agregados
hdfs dfs -copyFromLocal /data/partidas_agregadas.csv /cartolafc/partidas_agregadas/partidas_agregadas.csv
hdfs dfs -copyFromLocal /data/scouts_2014_a_2017.csv /cartolafc/scouts_agregados/scouts_2014_a_2017.csv
hdfs dfs -copyFromLocal /data/scouts_2018_a_2020.csv /cartolafc/scouts_agregados/scouts_2018_a_2020.csv
```
Imagem evidenciando a migração para o HDFS
```shell
hdfs dfs -ls /cartolafc/partidas_agregadas
hdfs dfs -ls /cartolafc/scouts_agregados
```
<img src="https://github.com/Edher-Santos-EM/fiap-solution-sprint-1/blob/main/ls-hdfs.png"></img>

### Configurando a conexão no DBeaver

<img src="https://github.com/Edher-Santos-EM/fiap-solution-sprint-1/blob/main/dbeaver-hive-conexao.png"></img>

## Criando as Tabelas

O script pode ser encontrado na pasta scr [script_tabelas.sql](https://github.com/Edher-Santos-EM/fiap-solution-sprint-1/blob/main/src/script_tabelas.sql)

<img src="https://github.com/Edher-Santos-EM/fiap-solution-sprint-1/blob/main/dbeaver-hive-criacao-tabela.png"></img>

## Consultas
O script pode ser encontrado na pasta scr [consultas.sql](https://github.com/Edher-Santos-EM/fiap-solution-sprint-1/blob/main/src/consultas.sql)

* Quantos registros há na tabela por ano?
```sql
SELECT ano, COUNT(*) as partidas_ano FROM Partidas group by ano order by ano;
```
<img src="https://github.com/Edher-Santos-EM/fiap-solution-sprint-1/blob/main/resultados/quantos_registros_ha_na_tabela_por_ano.png"></img>

* Quantas equipes únicas mandantes existem?
```sql
SELECT count(distinct home_team) as equipes_unicas FROM Partidas;
```
<img src="https://github.com/Edher-Santos-EM/fiap-solution-sprint-1/blob/main/resultados/quantas_equipes_unicas_mandantes_existem.png"></img>

```sql
SELECT ano, COUNT(distinct home_team) as equipes_unicas FROM Partidas group by ano order by ano;
```
<img src="https://github.com/Edher-Santos-EM/fiap-solution-sprint-1/blob/main/resultados/quantas_equipes_unicas_mandantes_existem_por_ano.png"></img>

* Quantas vezes as equipes mandantes saíram vitoriosas?
```sql
SELECT COUNT(*) as equipes_madantes_vitoriosas FROM Partidas where home_score > away_score;
```
<img src="https://github.com/Edher-Santos-EM/fiap-solution-sprint-1/blob/main/resultados/quantas_vezes_as_equipes_mandantes_sairam_vitoriosas.png"></img>

```sql
SELECT ano, COUNT(*) as equipes_madantes_vitoriosas FROM Partidas where home_score > away_score group by ano order by ano;
```
<img src="https://github.com/Edher-Santos-EM/fiap-solution-sprint-1/blob/main/resultados/quantas_vezes_as_equipes_mandantes_sairam_vitoriosas_por_ano.png"></img>

* Quantas partidas resultaram em empate?
```sql
SELECT COUNT(*) as partidas_empatadas FROM Partidas where home_score = away_score;
```
<img src="https://github.com/Edher-Santos-EM/fiap-solution-sprint-1/blob/main/resultados/quantos_registros_ha_na_tabela.png"></img>

```sql
SELECT ano, COUNT(*) as equipes_madantes_vitoriosas FROM Partidas where home_score = away_score group by ano order by ano;
```
<img src="https://github.com/Edher-Santos-EM/fiap-solution-sprint-1/blob/main/resultados/quantos_registros_ha_na_tabela_por_ano.png"></img>
