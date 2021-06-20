from pyhive import presto
cursor = presto.connect('localhost').cursor()

print("Quantos registros há na tabela por ano?")
cursor.execute('SELECT ano, COUNT(*) as partidas_ano FROM Partidas group by ano order by ano')
print(cursor.fetchall())

print("Quantas equipes únicas mandantes existem?")
cursor.execute('SELECT count(distinct home_team) FROM Partidas')
print(cursor.fetchall())

print("Quantas vezes as equipes mandantes saíram vitoriosas?")
cursor.execute('SELECT COUNT(*) as partidas_vitoriosas FROM Partidas where home_score > away_score')
print(cursor.fetchall())


print("Quantas partidas resultaram em empate?")
cursor.execute('SELECT COUNT(*) as partidas_empatadas FROM Partidas where home_score = away_score')
print(cursor.fetchall())

print("Pronto!")