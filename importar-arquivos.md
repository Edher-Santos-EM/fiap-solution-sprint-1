
# Importar os arquivos para o HDFS

No terminal utilize os seguintes comandos para iniciar o ambiente
```shell
docker compose up -d
docker compose exec hive-server bash
```

Para listar os arquivos que foram colocados no docker como volume através da configuração do arquivo docker-compose.yml
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
