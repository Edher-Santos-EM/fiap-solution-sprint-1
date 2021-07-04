import pandas as pd

dados_agregados_2014_2017 = pd.read_csv("../../data/dados_agregados_limpos.csv")

dados_agregados_2014_2017 = dados_agregados_2014_2017[['ano', 'Apelido', 'AtletaID', 'ClubeID', 'Posicao', 'Pontos']]
dados_agregados_2014_2017 = dados_agregados_2014_2017.groupby(['ano', 'Apelido', 'AtletaID', 'ClubeID', 'Posicao']).mean('Pontos').reset_index()
dados_agregados_2014_2017.to_csv('../../data/scouts_2014_a_2017.csv', index=False)