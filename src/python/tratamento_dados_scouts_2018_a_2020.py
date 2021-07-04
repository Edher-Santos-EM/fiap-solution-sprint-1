import pandas as pd

times = pd.read_csv("../../data/times_ids.csv")
medias_2018 = pd.read_csv("../../data/2018-medias-jogadores.csv")
medias_2019 = pd.read_csv("../../data/2019-medias-jogadores.csv")
medias_2020 = pd.read_csv("../../data/2020-medias-jogadores.csv")

medias_2018.insert(0, "ano", 2018, True)
medias_2019.insert(0, "ano", 2019, True)
medias_2020.insert(0, "ano", 2020, True)

medias_2018 = medias_2018[['ano','player_nickname', 'player_id', 'player_team', 'player_position','score_mean']]
medias_2019 = medias_2019[['ano','player_nickname', 'player_id', 'player_team', 'player_position','score_mean']]
medias_2020 = medias_2020[['ano','player_nickname', 'player_id', 'player_team', 'player_position','score_mean']]

medias_2018_2020 = pd.concat([medias_2018, medias_2019, medias_2020])

medias_2018_2020.update(medias_2018_2020.loc[medias_2018_2020.player_team == 'Bragantino'].replace('Bragantino', 280))

medias_2018_2020.ano = medias_2018_2020.ano.astype('int64', copy=False)

medias_2018_2020.player_id = medias_2018_2020.player_id.astype('int64', copy=False)
medias_2018_2020.player_team = medias_2018_2020.player_team.astype('int64', copy=False)

medias_2018_2020.insert(2, "ClubeID", medias_2018_2020["player_team"].map(lambda x: 'Ceará' if x == 204 else 'Bragantino' if x == 280 else times.loc[times['id'] == x]['nome.cartola'].values[0]), False)
medias_2018_2020 = medias_2018_2020.rename(columns={"player_nickname": "Apelido", "player_id": "AtletaID", "player_position": "Posicao", "score_mean": "Pontos"})
medias_2018_2020 = medias_2018_2020[['ano', 'Apelido', 'AtletaID', 'ClubeID', 'Posicao', 'Pontos']]
medias_2018_2020.to_csv('../../data/scouts_2018_a_2020.csv', index=False)