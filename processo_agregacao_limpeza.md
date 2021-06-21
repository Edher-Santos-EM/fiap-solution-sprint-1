```python
import pandas as pd
```


```python
from datetime import datetime
```

# Times


```python
times = pd.read_csv("times_ids.csv")
```


```python
times
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>nome.cbf</th>
      <th>nome.cartola</th>
      <th>nome.completo</th>
      <th>cod.older</th>
      <th>cod.2017</th>
      <th>cod.2018</th>
      <th>id</th>
      <th>abreviacao</th>
      <th>escudos.60x60</th>
      <th>escudos.45x45</th>
      <th>escudos.30x30</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>América - MG</td>
      <td>América-MG</td>
      <td>America MG</td>
      <td>327</td>
      <td>327</td>
      <td>327</td>
      <td>327</td>
      <td>AME</td>
      <td>https://s.glbimg.com/es/sde/f/organizacoes/201...</td>
      <td>https://s.glbimg.com/es/sde/f/organizacoes/201...</td>
      <td>https://s.glbimg.com/es/sde/f/organizacoes/201...</td>
    </tr>
    <tr>
      <th>1</th>
      <td>America - RN</td>
      <td>Atlético-RN</td>
      <td>America RN</td>
      <td>200</td>
      <td>200</td>
      <td>1</td>
      <td>200</td>
      <td>OUT</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>2</th>
      <td>Atlético - GO</td>
      <td>Atlético-GO</td>
      <td>Atletico GO</td>
      <td>201</td>
      <td>373</td>
      <td>373</td>
      <td>373</td>
      <td>ATL</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>3</th>
      <td>Atlético - MG</td>
      <td>Atlético-MG</td>
      <td>Atletico Mineiro</td>
      <td>282</td>
      <td>282</td>
      <td>282</td>
      <td>282</td>
      <td>ATL</td>
      <td>https://s.glbimg.com/es/sde/f/equipes/2017/11/...</td>
      <td>https://s.glbimg.com/es/sde/f/equipes/2017/11/...</td>
      <td>https://s.glbimg.com/es/sde/f/equipes/2017/11/...</td>
    </tr>
    <tr>
      <th>4</th>
      <td>Atlético - PR</td>
      <td>Atlético-PR</td>
      <td>Atletico Paranaense</td>
      <td>293</td>
      <td>293</td>
      <td>293</td>
      <td>293</td>
      <td>ATL</td>
      <td>https://s.glbimg.com/es/sde/f/equipes/2015/06/...</td>
      <td>https://s.glbimg.com/es/sde/f/equipes/2015/06/...</td>
      <td>https://s.glbimg.com/es/sde/f/equipes/2015/06/...</td>
    </tr>
    <tr>
      <th>5</th>
      <td>Atletico - PR</td>
      <td>Atlético-PR</td>
      <td>Atletico Paranaense</td>
      <td>293</td>
      <td>293</td>
      <td>293</td>
      <td>293</td>
      <td>ATL</td>
      <td>https://s.glbimg.com/es/sde/f/equipes/2015/06/...</td>
      <td>https://s.glbimg.com/es/sde/f/equipes/2015/06/...</td>
      <td>https://s.glbimg.com/es/sde/f/equipes/2015/06/...</td>
    </tr>
    <tr>
      <th>6</th>
      <td>Athlético-PR</td>
      <td>Athlético-PR</td>
      <td>Atletico Paranaense</td>
      <td>293</td>
      <td>293</td>
      <td>293</td>
      <td>293</td>
      <td>ATL</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>7</th>
      <td>Avaí - SC</td>
      <td>Avaí</td>
      <td>Avai FC</td>
      <td>202</td>
      <td>314</td>
      <td>314</td>
      <td>314</td>
      <td>AVA</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>8</th>
      <td>Bahia - BA</td>
      <td>Bahia</td>
      <td>EC Bahia</td>
      <td>207</td>
      <td>265</td>
      <td>265</td>
      <td>265</td>
      <td>BAH</td>
      <td>https://s.glbimg.com/es/sde/f/equipes/2014/04/...</td>
      <td>https://s.glbimg.com/es/sde/f/equipes/2013/12/...</td>
      <td>https://s.glbimg.com/es/sde/f/equipes/2013/12/...</td>
    </tr>
    <tr>
      <th>9</th>
      <td>Botafogo - RJ</td>
      <td>Botafogo</td>
      <td>Botafogo RJ</td>
      <td>263</td>
      <td>263</td>
      <td>263</td>
      <td>263</td>
      <td>BOT</td>
      <td>https://s.glbimg.com/es/sde/f/equipes/2014/04/...</td>
      <td>https://s.glbimg.com/es/sde/f/equipes/2013/12/...</td>
      <td>https://s.glbimg.com/es/sde/f/equipes/2013/12/...</td>
    </tr>
    <tr>
      <th>10</th>
      <td>Brasiliense</td>
      <td>Brasiliense</td>
      <td>Brasiliense</td>
      <td>203</td>
      <td>203</td>
      <td>388</td>
      <td>203</td>
      <td>BRA</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>11</th>
      <td>Ceará - CE</td>
      <td>Ceará-SC</td>
      <td>Ceara SC</td>
      <td>204</td>
      <td>204</td>
      <td>354</td>
      <td>354</td>
      <td>CEA</td>
      <td>https://s.glbimg.com/es/sde/f/equipes/2018/05/...</td>
      <td>https://s.glbimg.com/es/sde/f/equipes/2018/05/...</td>
      <td>https://s.glbimg.com/es/sde/f/equipes/2018/05/...</td>
    </tr>
    <tr>
      <th>12</th>
      <td>Ceará - CE</td>
      <td>Ceará</td>
      <td>Ceara SC</td>
      <td>204</td>
      <td>204</td>
      <td>354</td>
      <td>354</td>
      <td>CEA</td>
      <td>https://s.glbimg.com/es/sde/f/equipes/2018/05/...</td>
      <td>https://s.glbimg.com/es/sde/f/equipes/2018/05/...</td>
      <td>https://s.glbimg.com/es/sde/f/equipes/2018/05/...</td>
    </tr>
    <tr>
      <th>13</th>
      <td>Ceará - CE</td>
      <td>Ceará-SC</td>
      <td>Ceara SC</td>
      <td>204</td>
      <td>204</td>
      <td>354</td>
      <td>354</td>
      <td>CEA</td>
      <td>https://s.glbimg.com/es/sde/f/equipes/2018/05/...</td>
      <td>https://s.glbimg.com/es/sde/f/equipes/2018/05/...</td>
      <td>https://s.glbimg.com/es/sde/f/equipes/2018/05/...</td>
    </tr>
    <tr>
      <th>14</th>
      <td>Chapecoense - SC</td>
      <td>Chapecoense</td>
      <td>Chapecoense</td>
      <td>315</td>
      <td>315</td>
      <td>315</td>
      <td>315</td>
      <td>CHA</td>
      <td>https://s.glbimg.com/es/sde/f/equipes/2015/08/...</td>
      <td>https://s.glbimg.com/es/sde/f/equipes/2015/08/...</td>
      <td>https://s.glbimg.com/es/sde/f/equipes/2015/08/...</td>
    </tr>
    <tr>
      <th>15</th>
      <td>Clube Nautico</td>
      <td>Náutico</td>
      <td>Clube Nautico</td>
      <td>205</td>
      <td>205</td>
      <td>343</td>
      <td>205</td>
      <td>NAU</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>16</th>
      <td>Corinthians - SP</td>
      <td>Corinthians</td>
      <td>Corinthians SP</td>
      <td>264</td>
      <td>264</td>
      <td>264</td>
      <td>264</td>
      <td>COR</td>
      <td>https://s.glbimg.com/es/sde/f/equipes/2014/04/...</td>
      <td>https://s.glbimg.com/es/sde/f/equipes/2013/12/...</td>
      <td>https://s.glbimg.com/es/sde/f/equipes/2013/12/...</td>
    </tr>
    <tr>
      <th>17</th>
      <td>Coritiba - PR</td>
      <td>Coritiba</td>
      <td>Coritiba FC</td>
      <td>294</td>
      <td>294</td>
      <td>294</td>
      <td>294</td>
      <td>COR</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>18</th>
      <td>Criciuma - SC</td>
      <td>Criciuma</td>
      <td>Criciuma EC</td>
      <td>206</td>
      <td>206</td>
      <td>288</td>
      <td>206</td>
      <td>CRI</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>19</th>
      <td>Cruzeiro - MG</td>
      <td>Cruzeiro</td>
      <td>Cruzeiro EC</td>
      <td>283</td>
      <td>283</td>
      <td>283</td>
      <td>283</td>
      <td>CRU</td>
      <td>https://s.glbimg.com/es/sde/f/equipes/2015/04/...</td>
      <td>https://s.glbimg.com/es/sde/f/equipes/2015/04/...</td>
      <td>https://s.glbimg.com/es/sde/f/equipes/2015/04/...</td>
    </tr>
    <tr>
      <th>20</th>
      <td>CSA</td>
      <td>CSA</td>
      <td>CSA</td>
      <td>341</td>
      <td>341</td>
      <td>341</td>
      <td>341</td>
      <td>CSA</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>21</th>
      <td>Figueirense - SC</td>
      <td>Figueirense</td>
      <td>Figueirense</td>
      <td>316</td>
      <td>316</td>
      <td>316</td>
      <td>316</td>
      <td>FIG</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>22</th>
      <td>Flamengo - RJ</td>
      <td>Flamengo</td>
      <td>Flamengo RJ</td>
      <td>262</td>
      <td>262</td>
      <td>262</td>
      <td>262</td>
      <td>FLA</td>
      <td>https://s.glbimg.com/es/sde/f/equipes/2018/04/...</td>
      <td>https://s.glbimg.com/es/sde/f/equipes/2018/04/...</td>
      <td>https://s.glbimg.com/es/sde/f/equipes/2018/04/...</td>
    </tr>
    <tr>
      <th>23</th>
      <td>Fluminense - RJ</td>
      <td>Fluminense</td>
      <td>Fluminense RJ</td>
      <td>266</td>
      <td>266</td>
      <td>266</td>
      <td>266</td>
      <td>FLU</td>
      <td>https://s.glbimg.com/es/sde/f/equipes/2015/07/...</td>
      <td>https://s.glbimg.com/es/sde/f/equipes/2015/07/...</td>
      <td>https://s.glbimg.com/es/sde/f/equipes/2015/07/...</td>
    </tr>
    <tr>
      <th>24</th>
      <td>Fortaleza</td>
      <td>Fortaleza</td>
      <td>Fortaleza</td>
      <td>209</td>
      <td>209</td>
      <td>356</td>
      <td>356</td>
      <td>FOR</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>25</th>
      <td>Goiás - GO</td>
      <td>Goiás</td>
      <td>Goias EC</td>
      <td>210</td>
      <td>210</td>
      <td>290</td>
      <td>290</td>
      <td>GOI</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>26</th>
      <td>Grêmio - RS</td>
      <td>Grêmio</td>
      <td>Gremio Porto Alegre</td>
      <td>284</td>
      <td>284</td>
      <td>284</td>
      <td>284</td>
      <td>GRE</td>
      <td>https://s.glbimg.com/es/sde/f/equipes/2014/04/...</td>
      <td>https://s.glbimg.com/es/sde/f/equipes/2013/12/...</td>
      <td>https://s.glbimg.com/es/sde/f/equipes/2013/12/...</td>
    </tr>
    <tr>
      <th>27</th>
      <td>Gremio Barueri</td>
      <td>Grêmio Barueri</td>
      <td>Gremio Barueri</td>
      <td>211</td>
      <td>211</td>
      <td>1</td>
      <td>211</td>
      <td>OUT</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>28</th>
      <td>Gremio Prudente</td>
      <td>Grêmio Prudente</td>
      <td>Gremio Prudente</td>
      <td>212</td>
      <td>212</td>
      <td>2554</td>
      <td>212</td>
      <td>PRU</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>29</th>
      <td>Guarani FC</td>
      <td>Guarani</td>
      <td>Guarani FC</td>
      <td>213</td>
      <td>213</td>
      <td>279</td>
      <td>213</td>
      <td>GUA</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>30</th>
      <td>Internacional - RS</td>
      <td>Internacional</td>
      <td>Internacional</td>
      <td>285</td>
      <td>285</td>
      <td>285</td>
      <td>285</td>
      <td>INT</td>
      <td>https://s.glbimg.com/es/sde/f/equipes/2016/05/...</td>
      <td>https://s.glbimg.com/es/sde/f/equipes/2016/05/...</td>
      <td>https://s.glbimg.com/es/sde/f/equipes/2016/05/...</td>
    </tr>
    <tr>
      <th>31</th>
      <td>Ipatinga FC</td>
      <td>Ipatinga</td>
      <td>Ipatinga FC</td>
      <td>214</td>
      <td>214</td>
      <td>1349</td>
      <td>214</td>
      <td>IPA</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>32</th>
      <td>Joinville - SC</td>
      <td>Joinville</td>
      <td>Joinville EC</td>
      <td>215</td>
      <td>215</td>
      <td>317</td>
      <td>215</td>
      <td>JEC</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>33</th>
      <td>Juventude - RS</td>
      <td>Juventude</td>
      <td>Juventude RS</td>
      <td>216</td>
      <td>216</td>
      <td>286</td>
      <td>216</td>
      <td>JUV</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>34</th>
      <td>Paysandu - SC</td>
      <td>Paysandu</td>
      <td>Paysandu SC</td>
      <td>218</td>
      <td>218</td>
      <td>291</td>
      <td>218</td>
      <td>PAY</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>35</th>
      <td>Palmeiras - SP</td>
      <td>Palmeiras</td>
      <td>SE Palmeiras</td>
      <td>275</td>
      <td>275</td>
      <td>275</td>
      <td>275</td>
      <td>PAL</td>
      <td>https://s.glbimg.com/es/sde/f/equipes/2014/04/...</td>
      <td>https://s.glbimg.com/es/sde/f/equipes/2013/12/...</td>
      <td>https://s.glbimg.com/es/sde/f/equipes/2013/12/...</td>
    </tr>
    <tr>
      <th>36</th>
      <td>Paraná - PR</td>
      <td>Paraná</td>
      <td>Parana Clube</td>
      <td>217</td>
      <td>217</td>
      <td>289</td>
      <td>217</td>
      <td>PAR</td>
      <td>https://s.glbimg.com/es/sde/f/equipes/2014/04/...</td>
      <td>https://s.glbimg.com/es/sde/f/equipes/2014/04/...</td>
      <td>https://s.glbimg.com/es/sde/f/equipes/2014/04/...</td>
    </tr>
    <tr>
      <th>37</th>
      <td>Ponte Preta - SP</td>
      <td>Ponte Preta</td>
      <td>Ponte Preta</td>
      <td>303</td>
      <td>303</td>
      <td>303</td>
      <td>303</td>
      <td>PON</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>38</th>
      <td>Portuguesa</td>
      <td>Portuguesa</td>
      <td>Portuguesa</td>
      <td>219</td>
      <td>219</td>
      <td>278</td>
      <td>219</td>
      <td>POR</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>39</th>
      <td>Santa Cruz - PE</td>
      <td>Santa Cruz</td>
      <td>Santa Cruz FC</td>
      <td>344</td>
      <td>344</td>
      <td>344</td>
      <td>344</td>
      <td>STC</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>40</th>
      <td>Santo Andre EC</td>
      <td>Santo André</td>
      <td>Santo Andre EC</td>
      <td>220</td>
      <td>220</td>
      <td>306</td>
      <td>220</td>
      <td>SAN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>41</th>
      <td>Santos - SP</td>
      <td>Santos</td>
      <td>Santos FC</td>
      <td>277</td>
      <td>277</td>
      <td>277</td>
      <td>277</td>
      <td>SAN</td>
      <td>https://s.glbimg.com/es/sde/f/equipes/2014/04/...</td>
      <td>https://s.glbimg.com/es/sde/f/equipes/2013/12/...</td>
      <td>https://s.glbimg.com/es/sde/f/equipes/2013/12/...</td>
    </tr>
    <tr>
      <th>42</th>
      <td>São Caetano</td>
      <td>São Caetano</td>
      <td>São Caetano</td>
      <td>221</td>
      <td>221</td>
      <td>386</td>
      <td>221</td>
      <td>SAO</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>43</th>
      <td>São Paulo - SP</td>
      <td>São Paulo</td>
      <td>Sao Paulo FC</td>
      <td>276</td>
      <td>276</td>
      <td>276</td>
      <td>276</td>
      <td>SAO</td>
      <td>https://s.glbimg.com/es/sde/f/equipes/2014/04/...</td>
      <td>https://s.glbimg.com/es/sde/f/equipes/2013/12/...</td>
      <td>https://s.glbimg.com/es/sde/f/equipes/2013/12/...</td>
    </tr>
    <tr>
      <th>44</th>
      <td>Sport - PE</td>
      <td>Sport</td>
      <td>Sport Club Recife</td>
      <td>292</td>
      <td>292</td>
      <td>292</td>
      <td>292</td>
      <td>SPO</td>
      <td>https://s.glbimg.com/es/sde/f/equipes/2015/07/...</td>
      <td>https://s.glbimg.com/es/sde/f/equipes/2015/07/...</td>
      <td>https://s.glbimg.com/es/sde/f/equipes/2015/07/...</td>
    </tr>
    <tr>
      <th>45</th>
      <td>Vasco da Gama - RJ</td>
      <td>Vasco</td>
      <td>Vasco da Gama</td>
      <td>221</td>
      <td>267</td>
      <td>267</td>
      <td>267</td>
      <td>VAS</td>
      <td>https://s.glbimg.com/es/sde/f/equipes/2016/07/...</td>
      <td>https://s.glbimg.com/es/sde/f/equipes/2016/07/...</td>
      <td>https://s.glbimg.com/es/sde/f/equipes/2016/07/...</td>
    </tr>
    <tr>
      <th>46</th>
      <td>Vitória - BA</td>
      <td>Vitória</td>
      <td>EC Vitoria BA</td>
      <td>287</td>
      <td>287</td>
      <td>287</td>
      <td>287</td>
      <td>VIT</td>
      <td>https://s.glbimg.com/es/sde/f/equipes/2014/04/...</td>
      <td>https://s.glbimg.com/es/sde/f/equipes/2013/12/...</td>
      <td>https://s.glbimg.com/es/sde/f/equipes/2013/12/...</td>
    </tr>
  </tbody>
</table>
</div>



# Tratando os dados de 2014 a 2020

As planilhas de 2014 a 2017 são idênticas, as planilhas de 2019 e 2020 também são, a planilha de 2018 é diferente das demais. Iremos padronizar as planilhas e unificá-las em uma única planilha. Dados desnecessários serão removidos e adicionados os campos necessários conforme a planilha em questão 

# Partidas de 2014 a 2017


```python
partidas_2014 = pd.read_csv("2014_partidas.csv")
```


```python
partidas_2014.insert(0, "ano", 2014, True)
```


```python
partidas_2015 = pd.read_csv("2015_partidas.csv")
```


```python
partidas_2015.insert(0, "ano", 2015, True)
```


```python
partidas_2016 = pd.read_csv("2016_partidas.csv")
```


```python
partidas_2016.insert(0, "ano", 2016, True)
```


```python
partidas_2017 = pd.read_csv("2017_partidas.csv")
```


```python
partidas_2017.insert(0, "ano", 2017, True)
```


```python
partidas_2014_a_2017 = pd.concat([partidas_2014, partidas_2015, partidas_2016, partidas_2017])
```


```python
partidas_2014_a_2017 = partidas_2014_a_2017.drop(columns=["X", "Unnamed: 0", "arena"])
```


```python
partidas_2014_a_2017
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>ano</th>
      <th>game</th>
      <th>round</th>
      <th>date</th>
      <th>home_team</th>
      <th>score</th>
      <th>away_team</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>2014</td>
      <td>1</td>
      <td>1</td>
      <td>20/04/2014 - 18:30</td>
      <td>Flamengo - RJ</td>
      <td>0 x 0</td>
      <td>Goiás - GO</td>
    </tr>
    <tr>
      <th>1</th>
      <td>2014</td>
      <td>2</td>
      <td>1</td>
      <td>19/04/2014 - 18:30</td>
      <td>Fluminense - RJ</td>
      <td>3 x 0</td>
      <td>Figueirense - SC</td>
    </tr>
    <tr>
      <th>2</th>
      <td>2014</td>
      <td>3</td>
      <td>1</td>
      <td>20/04/2014 - 16:00</td>
      <td>São Paulo - SP</td>
      <td>3 x 0</td>
      <td>Botafogo - RJ</td>
    </tr>
    <tr>
      <th>3</th>
      <td>2014</td>
      <td>4</td>
      <td>1</td>
      <td>20/04/2014 - 18:30</td>
      <td>Santos - SP</td>
      <td>1 x 1</td>
      <td>Sport - PE</td>
    </tr>
    <tr>
      <th>4</th>
      <td>2014</td>
      <td>5</td>
      <td>1</td>
      <td>20/04/2014 - 16:00</td>
      <td>Atletico - PR</td>
      <td>1 x 0</td>
      <td>Grêmio - RS</td>
    </tr>
    <tr>
      <th>...</th>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
    </tr>
    <tr>
      <th>375</th>
      <td>2017</td>
      <td>376</td>
      <td>38</td>
      <td>03/12/2017 - 17:00</td>
      <td>Atlético - PR</td>
      <td>3 x 0</td>
      <td>Palmeiras - SP</td>
    </tr>
    <tr>
      <th>376</th>
      <td>2017</td>
      <td>377</td>
      <td>38</td>
      <td>03/12/2017 - 17:00</td>
      <td>Sport - PE</td>
      <td>1 x 0</td>
      <td>Corinthians - SP</td>
    </tr>
    <tr>
      <th>377</th>
      <td>2017</td>
      <td>378</td>
      <td>38</td>
      <td>03/12/2017 - 17:00</td>
      <td>Vitória - BA</td>
      <td>1 x 2</td>
      <td>Flamengo - RJ</td>
    </tr>
    <tr>
      <th>378</th>
      <td>2017</td>
      <td>379</td>
      <td>38</td>
      <td>03/12/2017 - 17:00</td>
      <td>Atlético - GO</td>
      <td>1 x 1</td>
      <td>Fluminense - RJ</td>
    </tr>
    <tr>
      <th>379</th>
      <td>2017</td>
      <td>380</td>
      <td>38</td>
      <td>03/12/2017 - 17:00</td>
      <td>Chapecoense - SC</td>
      <td>2 x 1</td>
      <td>Coritiba - PR</td>
    </tr>
  </tbody>
</table>
<p>1520 rows × 7 columns</p>
</div>




```python
partidas_2014_a_2017.insert(7, "home_score", partidas_2014["score"].map(lambda x: x.split(" x ")[0]), False)
```


```python
partidas_2014_a_2017.insert(8, "away_score", partidas_2014["score"].map(lambda x: x.split(" x ")[1]), False)
```


```python
partidas_2014_a_2017
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>ano</th>
      <th>game</th>
      <th>round</th>
      <th>date</th>
      <th>home_team</th>
      <th>score</th>
      <th>away_team</th>
      <th>home_score</th>
      <th>away_score</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>2014</td>
      <td>1</td>
      <td>1</td>
      <td>20/04/2014 - 18:30</td>
      <td>Flamengo - RJ</td>
      <td>0 x 0</td>
      <td>Goiás - GO</td>
      <td>0</td>
      <td>0</td>
    </tr>
    <tr>
      <th>1</th>
      <td>2014</td>
      <td>2</td>
      <td>1</td>
      <td>19/04/2014 - 18:30</td>
      <td>Fluminense - RJ</td>
      <td>3 x 0</td>
      <td>Figueirense - SC</td>
      <td>3</td>
      <td>0</td>
    </tr>
    <tr>
      <th>2</th>
      <td>2014</td>
      <td>3</td>
      <td>1</td>
      <td>20/04/2014 - 16:00</td>
      <td>São Paulo - SP</td>
      <td>3 x 0</td>
      <td>Botafogo - RJ</td>
      <td>3</td>
      <td>0</td>
    </tr>
    <tr>
      <th>3</th>
      <td>2014</td>
      <td>4</td>
      <td>1</td>
      <td>20/04/2014 - 18:30</td>
      <td>Santos - SP</td>
      <td>1 x 1</td>
      <td>Sport - PE</td>
      <td>1</td>
      <td>1</td>
    </tr>
    <tr>
      <th>4</th>
      <td>2014</td>
      <td>5</td>
      <td>1</td>
      <td>20/04/2014 - 16:00</td>
      <td>Atletico - PR</td>
      <td>1 x 0</td>
      <td>Grêmio - RS</td>
      <td>1</td>
      <td>0</td>
    </tr>
    <tr>
      <th>...</th>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
    </tr>
    <tr>
      <th>375</th>
      <td>2017</td>
      <td>376</td>
      <td>38</td>
      <td>03/12/2017 - 17:00</td>
      <td>Atlético - PR</td>
      <td>3 x 0</td>
      <td>Palmeiras - SP</td>
      <td>2</td>
      <td>1</td>
    </tr>
    <tr>
      <th>376</th>
      <td>2017</td>
      <td>377</td>
      <td>38</td>
      <td>03/12/2017 - 17:00</td>
      <td>Sport - PE</td>
      <td>1 x 0</td>
      <td>Corinthians - SP</td>
      <td>0</td>
      <td>1</td>
    </tr>
    <tr>
      <th>377</th>
      <td>2017</td>
      <td>378</td>
      <td>38</td>
      <td>03/12/2017 - 17:00</td>
      <td>Vitória - BA</td>
      <td>1 x 2</td>
      <td>Flamengo - RJ</td>
      <td>1</td>
      <td>1</td>
    </tr>
    <tr>
      <th>378</th>
      <td>2017</td>
      <td>379</td>
      <td>38</td>
      <td>03/12/2017 - 17:00</td>
      <td>Atlético - GO</td>
      <td>1 x 1</td>
      <td>Fluminense - RJ</td>
      <td>1</td>
      <td>2</td>
    </tr>
    <tr>
      <th>379</th>
      <td>2017</td>
      <td>380</td>
      <td>38</td>
      <td>03/12/2017 - 17:00</td>
      <td>Chapecoense - SC</td>
      <td>2 x 1</td>
      <td>Coritiba - PR</td>
      <td>4</td>
      <td>2</td>
    </tr>
  </tbody>
</table>
<p>1520 rows × 9 columns</p>
</div>




```python
partidas_2014_a_2017 = partidas_2014_a_2017[["ano", "home_team", "away_team", "home_score", "away_score"]]
```


```python
partidas_2014_a_2017
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>ano</th>
      <th>home_team</th>
      <th>away_team</th>
      <th>home_score</th>
      <th>away_score</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>2014</td>
      <td>Flamengo - RJ</td>
      <td>Goiás - GO</td>
      <td>0</td>
      <td>0</td>
    </tr>
    <tr>
      <th>1</th>
      <td>2014</td>
      <td>Fluminense - RJ</td>
      <td>Figueirense - SC</td>
      <td>3</td>
      <td>0</td>
    </tr>
    <tr>
      <th>2</th>
      <td>2014</td>
      <td>São Paulo - SP</td>
      <td>Botafogo - RJ</td>
      <td>3</td>
      <td>0</td>
    </tr>
    <tr>
      <th>3</th>
      <td>2014</td>
      <td>Santos - SP</td>
      <td>Sport - PE</td>
      <td>1</td>
      <td>1</td>
    </tr>
    <tr>
      <th>4</th>
      <td>2014</td>
      <td>Atletico - PR</td>
      <td>Grêmio - RS</td>
      <td>1</td>
      <td>0</td>
    </tr>
    <tr>
      <th>...</th>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
    </tr>
    <tr>
      <th>375</th>
      <td>2017</td>
      <td>Atlético - PR</td>
      <td>Palmeiras - SP</td>
      <td>2</td>
      <td>1</td>
    </tr>
    <tr>
      <th>376</th>
      <td>2017</td>
      <td>Sport - PE</td>
      <td>Corinthians - SP</td>
      <td>0</td>
      <td>1</td>
    </tr>
    <tr>
      <th>377</th>
      <td>2017</td>
      <td>Vitória - BA</td>
      <td>Flamengo - RJ</td>
      <td>1</td>
      <td>1</td>
    </tr>
    <tr>
      <th>378</th>
      <td>2017</td>
      <td>Atlético - GO</td>
      <td>Fluminense - RJ</td>
      <td>1</td>
      <td>2</td>
    </tr>
    <tr>
      <th>379</th>
      <td>2017</td>
      <td>Chapecoense - SC</td>
      <td>Coritiba - PR</td>
      <td>4</td>
      <td>2</td>
    </tr>
  </tbody>
</table>
<p>1520 rows × 5 columns</p>
</div>



# Partidas 2018


```python
partidas_2018 = pd.read_csv("2018_partidas.csv")
```


```python
partidas_2018 = partidas_2018.drop(columns=["arena"])
```


```python
partidas_2018.insert(0, "ano", 2018, True)
```


```python
partidas_2018.insert(7, "home_score", partidas_2018["score"].map(lambda x: x.split(" x ")[0]), False)
```


```python
partidas_2018.insert(8, "away_score", partidas_2018["score"].map(lambda x: x.split(" x ")[1]), False)
```


```python
partidas_2018 = partidas_2018[["ano", "home_team", "away_team", "home_score", "away_score"]]
```


```python
partidas_2018
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>ano</th>
      <th>home_team</th>
      <th>away_team</th>
      <th>home_score</th>
      <th>away_score</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>2018</td>
      <td>Cruzeiro - MG</td>
      <td>Grêmio - RS</td>
      <td>0</td>
      <td>1</td>
    </tr>
    <tr>
      <th>1</th>
      <td>2018</td>
      <td>Atlético - PR</td>
      <td>Chapecoense - SC</td>
      <td>5</td>
      <td>1</td>
    </tr>
    <tr>
      <th>2</th>
      <td>2018</td>
      <td>América - MG</td>
      <td>Sport - PE</td>
      <td>3</td>
      <td>0</td>
    </tr>
    <tr>
      <th>3</th>
      <td>2018</td>
      <td>Vitória - BA</td>
      <td>Flamengo - RJ</td>
      <td>2</td>
      <td>2</td>
    </tr>
    <tr>
      <th>4</th>
      <td>2018</td>
      <td>Vasco da Gama - RJ</td>
      <td>Atlético - MG</td>
      <td>2</td>
      <td>1</td>
    </tr>
    <tr>
      <th>...</th>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
    </tr>
    <tr>
      <th>375</th>
      <td>2018</td>
      <td>Fluminense - RJ</td>
      <td>América - MG</td>
      <td>1</td>
      <td>0</td>
    </tr>
    <tr>
      <th>376</th>
      <td>2018</td>
      <td>Ceará - CE</td>
      <td>Vasco da Gama - RJ</td>
      <td>0</td>
      <td>0</td>
    </tr>
    <tr>
      <th>377</th>
      <td>2018</td>
      <td>Sport - PE</td>
      <td>Santos - SP</td>
      <td>2</td>
      <td>1</td>
    </tr>
    <tr>
      <th>378</th>
      <td>2018</td>
      <td>Palmeiras - SP</td>
      <td>Vitória - BA</td>
      <td>3</td>
      <td>2</td>
    </tr>
    <tr>
      <th>379</th>
      <td>2018</td>
      <td>Grêmio - RS</td>
      <td>Corinthians - SP</td>
      <td>1</td>
      <td>0</td>
    </tr>
  </tbody>
</table>
<p>380 rows × 5 columns</p>
</div>



# Partidas 2019 a 2020


```python
partidas_2019 = pd.read_csv("2019_partidas.csv")
```


```python
partidas_2019.insert(0, "ano", 2019, True)
```


```python
partidas_2020 = pd.read_csv("2020_partidas.csv")
```


```python
partidas_2020.insert(0, "ano", 2020, True)
```


```python
partidas_2019_a_2020 = pd.concat([partidas_2019, partidas_2020])
```


```python
partidas_2019_a_2020 = partidas_2019_a_2020.rename(columns = {'home_team': 'home_team_cod', 'away_team': 'away_team_cod'}, inplace = False)
```


```python
partidas_2019_a_2020
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>ano</th>
      <th>date</th>
      <th>home_team_cod</th>
      <th>away_team_cod</th>
      <th>home_score</th>
      <th>away_score</th>
      <th>round</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>2019</td>
      <td>2019-04-27</td>
      <td>282</td>
      <td>314</td>
      <td>2</td>
      <td>1</td>
      <td>1</td>
    </tr>
    <tr>
      <th>1</th>
      <td>2019</td>
      <td>2019-04-27</td>
      <td>315</td>
      <td>285</td>
      <td>2</td>
      <td>0</td>
      <td>1</td>
    </tr>
    <tr>
      <th>2</th>
      <td>2019</td>
      <td>2019-04-27</td>
      <td>262</td>
      <td>283</td>
      <td>3</td>
      <td>1</td>
      <td>1</td>
    </tr>
    <tr>
      <th>3</th>
      <td>2019</td>
      <td>2019-04-27</td>
      <td>276</td>
      <td>263</td>
      <td>2</td>
      <td>0</td>
      <td>1</td>
    </tr>
    <tr>
      <th>4</th>
      <td>2019</td>
      <td>2019-04-28</td>
      <td>293</td>
      <td>267</td>
      <td>4</td>
      <td>1</td>
      <td>1</td>
    </tr>
    <tr>
      <th>...</th>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
    </tr>
    <tr>
      <th>385</th>
      <td>2020</td>
      <td>2021-02-25</td>
      <td>293</td>
      <td>292</td>
      <td>2</td>
      <td>0</td>
      <td>38</td>
    </tr>
    <tr>
      <th>386</th>
      <td>2020</td>
      <td>2021-02-25</td>
      <td>354</td>
      <td>263</td>
      <td>2</td>
      <td>1</td>
      <td>38</td>
    </tr>
    <tr>
      <th>387</th>
      <td>2020</td>
      <td>2021-02-25</td>
      <td>354</td>
      <td>263</td>
      <td>2</td>
      <td>1</td>
      <td>38</td>
    </tr>
    <tr>
      <th>388</th>
      <td>2020</td>
      <td>2021-02-25</td>
      <td>373</td>
      <td>294</td>
      <td>3</td>
      <td>1</td>
      <td>38</td>
    </tr>
    <tr>
      <th>389</th>
      <td>2020</td>
      <td>2021-02-25</td>
      <td>373</td>
      <td>294</td>
      <td>3</td>
      <td>1</td>
      <td>38</td>
    </tr>
  </tbody>
</table>
<p>770 rows × 7 columns</p>
</div>



**Incosistência encontrada**

O time de id 280 não está na tabela de times. Porém, pelos resultados e o ano sabemos que este time é o Bragantino


```python
partidas_2020.loc[~partidas_2020["home_team"].isin(times['id'])]
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>ano</th>
      <th>date</th>
      <th>home_team</th>
      <th>away_team</th>
      <th>home_score</th>
      <th>away_score</th>
      <th>round</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>10</th>
      <td>2020</td>
      <td>2020-08-12</td>
      <td>280</td>
      <td>263</td>
      <td>1</td>
      <td>1</td>
      <td>2</td>
    </tr>
    <tr>
      <th>31</th>
      <td>2020</td>
      <td>2020-08-19</td>
      <td>280</td>
      <td>266</td>
      <td>2</td>
      <td>1</td>
      <td>4</td>
    </tr>
    <tr>
      <th>46</th>
      <td>2020</td>
      <td>2020-08-23</td>
      <td>280</td>
      <td>294</td>
      <td>1</td>
      <td>2</td>
      <td>5</td>
    </tr>
    <tr>
      <th>73</th>
      <td>2020</td>
      <td>2020-09-06</td>
      <td>280</td>
      <td>275</td>
      <td>1</td>
      <td>2</td>
      <td>8</td>
    </tr>
    <tr>
      <th>102</th>
      <td>2020</td>
      <td>2020-09-19</td>
      <td>280</td>
      <td>354</td>
      <td>4</td>
      <td>2</td>
      <td>11</td>
    </tr>
    <tr>
      <th>122</th>
      <td>2020</td>
      <td>2020-10-03</td>
      <td>280</td>
      <td>264</td>
      <td>0</td>
      <td>0</td>
      <td>13</td>
    </tr>
    <tr>
      <th>139</th>
      <td>2020</td>
      <td>2020-10-08</td>
      <td>280</td>
      <td>285</td>
      <td>0</td>
      <td>2</td>
      <td>14</td>
    </tr>
    <tr>
      <th>166</th>
      <td>2020</td>
      <td>2020-10-18</td>
      <td>280</td>
      <td>292</td>
      <td>2</td>
      <td>0</td>
      <td>17</td>
    </tr>
    <tr>
      <th>171</th>
      <td>2020</td>
      <td>2020-10-24</td>
      <td>280</td>
      <td>290</td>
      <td>2</td>
      <td>0</td>
      <td>18</td>
    </tr>
    <tr>
      <th>195</th>
      <td>2020</td>
      <td>2020-11-08</td>
      <td>280</td>
      <td>277</td>
      <td>1</td>
      <td>1</td>
      <td>20</td>
    </tr>
    <tr>
      <th>210</th>
      <td>2020</td>
      <td>2020-11-20</td>
      <td>280</td>
      <td>265</td>
      <td>4</td>
      <td>0</td>
      <td>21</td>
    </tr>
    <tr>
      <th>240</th>
      <td>2020</td>
      <td>2020-12-12</td>
      <td>280</td>
      <td>356</td>
      <td>2</td>
      <td>1</td>
      <td>25</td>
    </tr>
    <tr>
      <th>256</th>
      <td>2020</td>
      <td>2020-12-20</td>
      <td>280</td>
      <td>293</td>
      <td>0</td>
      <td>1</td>
      <td>26</td>
    </tr>
    <tr>
      <th>275</th>
      <td>2020</td>
      <td>2021-01-06</td>
      <td>280</td>
      <td>276</td>
      <td>4</td>
      <td>2</td>
      <td>28</td>
    </tr>
    <tr>
      <th>288</th>
      <td>2020</td>
      <td>2021-01-11</td>
      <td>280</td>
      <td>282</td>
      <td>2</td>
      <td>2</td>
      <td>29</td>
    </tr>
    <tr>
      <th>305</th>
      <td>2020</td>
      <td>2021-01-20</td>
      <td>280</td>
      <td>267</td>
      <td>4</td>
      <td>1</td>
      <td>31</td>
    </tr>
    <tr>
      <th>331</th>
      <td>2020</td>
      <td>2021-02-03</td>
      <td>280</td>
      <td>373</td>
      <td>2</td>
      <td>0</td>
      <td>34</td>
    </tr>
    <tr>
      <th>342</th>
      <td>2020</td>
      <td>2021-02-07</td>
      <td>280</td>
      <td>262</td>
      <td>1</td>
      <td>1</td>
      <td>35</td>
    </tr>
    <tr>
      <th>376</th>
      <td>2020</td>
      <td>2021-02-25</td>
      <td>280</td>
      <td>284</td>
      <td>1</td>
      <td>0</td>
      <td>38</td>
    </tr>
    <tr>
      <th>377</th>
      <td>2020</td>
      <td>2021-02-25</td>
      <td>280</td>
      <td>284</td>
      <td>1</td>
      <td>0</td>
      <td>38</td>
    </tr>
  </tbody>
</table>
</div>




```python
partidas_2019_a_2020.insert(2, "home_team", partidas_2019_a_2020["home_team_cod"].map(lambda x: 'Bragantino' if x == 280 else times.loc[times['id'] == x]['nome.cbf'].values[0]), False)
```


```python
partidas_2019_a_2020.insert(3, "away_team", partidas_2019_a_2020["away_team_cod"].map(lambda x:'Bragantino' if x == 280 else times.loc[times['id'] == x]['nome.cbf'].values[0]), False)
```


```python
partidas_2019_a_2020 = partidas_2019_a_2020[["ano", "home_team", "away_team", "home_score", "away_score"]]
```


```python
partidas_2019_a_2020
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>ano</th>
      <th>home_team</th>
      <th>away_team</th>
      <th>home_score</th>
      <th>away_score</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>2019</td>
      <td>Atlético - MG</td>
      <td>Avaí - SC</td>
      <td>2</td>
      <td>1</td>
    </tr>
    <tr>
      <th>1</th>
      <td>2019</td>
      <td>Chapecoense - SC</td>
      <td>Internacional - RS</td>
      <td>2</td>
      <td>0</td>
    </tr>
    <tr>
      <th>2</th>
      <td>2019</td>
      <td>Flamengo - RJ</td>
      <td>Cruzeiro - MG</td>
      <td>3</td>
      <td>1</td>
    </tr>
    <tr>
      <th>3</th>
      <td>2019</td>
      <td>São Paulo - SP</td>
      <td>Botafogo - RJ</td>
      <td>2</td>
      <td>0</td>
    </tr>
    <tr>
      <th>4</th>
      <td>2019</td>
      <td>Atlético - PR</td>
      <td>Vasco da Gama - RJ</td>
      <td>4</td>
      <td>1</td>
    </tr>
    <tr>
      <th>...</th>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
    </tr>
    <tr>
      <th>385</th>
      <td>2020</td>
      <td>Atlético - PR</td>
      <td>Sport - PE</td>
      <td>2</td>
      <td>0</td>
    </tr>
    <tr>
      <th>386</th>
      <td>2020</td>
      <td>Ceará - CE</td>
      <td>Botafogo - RJ</td>
      <td>2</td>
      <td>1</td>
    </tr>
    <tr>
      <th>387</th>
      <td>2020</td>
      <td>Ceará - CE</td>
      <td>Botafogo - RJ</td>
      <td>2</td>
      <td>1</td>
    </tr>
    <tr>
      <th>388</th>
      <td>2020</td>
      <td>Atlético - GO</td>
      <td>Coritiba - PR</td>
      <td>3</td>
      <td>1</td>
    </tr>
    <tr>
      <th>389</th>
      <td>2020</td>
      <td>Atlético - GO</td>
      <td>Coritiba - PR</td>
      <td>3</td>
      <td>1</td>
    </tr>
  </tbody>
</table>
<p>770 rows × 5 columns</p>
</div>



**Juntando tudo**


```python
result = pd.concat([partidas_2014_a_2017, partidas_2018, partidas_2019_a_2020])
```


```python
result
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>ano</th>
      <th>home_team</th>
      <th>away_team</th>
      <th>home_score</th>
      <th>away_score</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>2014</td>
      <td>Flamengo - RJ</td>
      <td>Goiás - GO</td>
      <td>0</td>
      <td>0</td>
    </tr>
    <tr>
      <th>1</th>
      <td>2014</td>
      <td>Fluminense - RJ</td>
      <td>Figueirense - SC</td>
      <td>3</td>
      <td>0</td>
    </tr>
    <tr>
      <th>2</th>
      <td>2014</td>
      <td>São Paulo - SP</td>
      <td>Botafogo - RJ</td>
      <td>3</td>
      <td>0</td>
    </tr>
    <tr>
      <th>3</th>
      <td>2014</td>
      <td>Santos - SP</td>
      <td>Sport - PE</td>
      <td>1</td>
      <td>1</td>
    </tr>
    <tr>
      <th>4</th>
      <td>2014</td>
      <td>Atletico - PR</td>
      <td>Grêmio - RS</td>
      <td>1</td>
      <td>0</td>
    </tr>
    <tr>
      <th>...</th>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
    </tr>
    <tr>
      <th>385</th>
      <td>2020</td>
      <td>Atlético - PR</td>
      <td>Sport - PE</td>
      <td>2</td>
      <td>0</td>
    </tr>
    <tr>
      <th>386</th>
      <td>2020</td>
      <td>Ceará - CE</td>
      <td>Botafogo - RJ</td>
      <td>2</td>
      <td>1</td>
    </tr>
    <tr>
      <th>387</th>
      <td>2020</td>
      <td>Ceará - CE</td>
      <td>Botafogo - RJ</td>
      <td>2</td>
      <td>1</td>
    </tr>
    <tr>
      <th>388</th>
      <td>2020</td>
      <td>Atlético - GO</td>
      <td>Coritiba - PR</td>
      <td>3</td>
      <td>1</td>
    </tr>
    <tr>
      <th>389</th>
      <td>2020</td>
      <td>Atlético - GO</td>
      <td>Coritiba - PR</td>
      <td>3</td>
      <td>1</td>
    </tr>
  </tbody>
</table>
<p>2670 rows × 5 columns</p>
</div>


