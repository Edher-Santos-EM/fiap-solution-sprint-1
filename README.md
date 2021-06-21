# Solution Sprint 1

Utilize "docker compose up -d" para executar o projeto e depois "docker compose exec hive-server bash" para executar as instruções para importar os arquivos para a pasta HDFS.

## Elaborar uma arquitetura para obtenção e tratamento dos dados.

Na pasta "data" encontramos o resultado do tratamento de dados "partidas_agregadas.csv"

Foi desenvolvido um programa em python (src/python/tratamento_dados.py) para realizar o tratamento a partir das planilhas de partidas. Na pasta "data" temos um arquivo de partidas em cada pasta ano, estes arquivos foram tratados eliminando os dados desnecessários e incluindo o ano em cada planilha. Foi feito uma agregação de todas as planilhas e salvos na planilha resultante "partidas_agregadas.csv"

Clique [aqui](https://github.com/Edher-Santos-EM/fiap-solution-sprint-1/blob/main/processo_agregacao_limpeza.md) no link para entender o processo de limpeza dos dados.

## Importar os arquivos para o HDFS.
As instruções necessárias para importar para HDFS encontram-se em "src/importe_arquivos.sh"

## Criar tabela(s) no Hive para realizar consultas analíticas
O script da tabela se encontra no arquivo "src/script_tabelas.sql". Após iniciar os containers utilizamos a ferramenta DBeaver para criar a tabela e rodar as consultas que se encontram em "src/consultas.sql"

<br><hr><br>

# Links úteis
* https://docs.cloudera.com/HDPDocuments/HDP3/HDP-3.0.1/using-hiveql/content/hive_hive_3_tables.html

* https://cwiki.apache.org/confluence/collector/pages.action?key=Hive

* https://pypi.org/project/PyHive/
