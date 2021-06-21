import pandas as pd

times = pd.read_csv("times_ids.csv")

partidas_2014 = pd.read_csv("2014_partidas.csv")
partidas_2014.insert(0, "ano", 2014, True)

partidas_2015 = pd.read_csv("2015_partidas.csv")
partidas_2015.insert(0, "ano", 2015, True)

partidas_2016 = pd.read_csv("2016_partidas.csv")
partidas_2016.insert(0, "ano", 2016, True)

partidas_2017 = pd.read_csv("2017_partidas.csv")
partidas_2017.insert(0, "ano", 2017, True)

partidas_2014_a_2017 = pd.concat([partidas_2014, partidas_2015, partidas_2016, partidas_2017])
partidas_2014_a_2017 = partidas_2014_a_2017.drop(columns=["X", "Unnamed: 0", "arena"])


partidas_2014_a_2017.insert(7, "home_score", partidas_2014["score"].map(lambda x: x.split(" x ")[0]), False)
partidas_2014_a_2017.insert(8, "away_score", partidas_2014["score"].map(lambda x: x.split(" x ")[1]), False)

partidas_2014_a_2017 = partidas_2014_a_2017[["ano", "home_team", "away_team", "home_score", "away_score"]]

partidas_2018 = pd.read_csv("2018_partidas.csv")

partidas_2018 = partidas_2018.drop(columns=["arena"])
partidas_2018.insert(0, "ano", 2018, True)
partidas_2018.insert(7, "home_score", partidas_2018["score"].map(lambda x: x.split(" x ")[0]), False)
partidas_2018.insert(8, "away_score", partidas_2018["score"].map(lambda x: x.split(" x ")[1]), False)
partidas_2018 = partidas_2018[["ano", "home_team", "away_team", "home_score", "away_score"]]

partidas_2019 = pd.read_csv("2019_partidas.csv")
partidas_2019.insert(0, "ano", 2019, True)

partidas_2020 = pd.read_csv("2020_partidas.csv")
partidas_2020.insert(0, "ano", 2020, True)

partidas_2019_a_2020 = pd.concat([partidas_2019, partidas_2020])

partidas_2019_a_2020 = partidas_2019_a_2020.rename(columns = {'home_team': 'home_team_cod', 'away_team': 'away_team_cod'}, inplace = False)

partidas_2019_a_2020.insert(2, "home_team", partidas_2019_a_2020["home_team_cod"].map(lambda x: 'Bragantino' if x == 280 else times.loc[times['id'] == x]['nome.cbf'].values[0]), False)
partidas_2019_a_2020.insert(3, "away_team", partidas_2019_a_2020["away_team_cod"].map(lambda x:'Bragantino' if x == 280 else times.loc[times['id'] == x]['nome.cbf'].values[0]), False)
partidas_2019_a_2020 = partidas_2019_a_2020[["ano", "home_team", "away_team", "home_score", "away_score"]]

result = pd.concat([partidas_2014_a_2017, partidas_2018, partidas_2019_a_2020])