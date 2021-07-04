hdfs dfs -mkdir /cartolafc
hdfs dfs -mkdir /cartolafc/partidas_agregadas
hdfs dfs -mkdir /cartolafc/scouts_agregados
hdfs dfs -copyFromLocal /data/partidas_agregadas.csv /cartolafc/partidas_agregadas/partidas_agregadas.csv
hdfs dfs -copyFromLocal /data/scouts_2014_a_2017.csv /cartolafc/scouts_agregados/scouts_2014_a_2017.csv
hdfs dfs -copyFromLocal /data/scouts_2018_a_2020.csv /cartolafc/scouts_agregados/scouts_2018_a_2020.csv
