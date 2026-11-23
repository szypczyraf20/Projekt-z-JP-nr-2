FileStream fileIn: 'OdcinekPodrozy.st'.
FileStream fileIn: 'OdcinekPieszy.st'.
FileStream fileIn: 'OdcinekRowerowy.st'.
FileStream fileIn: 'OdcinekAutobusowy.st'.
FileStream fileIn: 'OdcinekSKM.st'.
FileStream fileIn: 'Trasa.st'.
FileStream fileIn: 'PlanerPodrozy.st'.

Object extend [
    laczZOdcinkiem: anObject [
        self error: 'Nieobslugiwany typ obiektu przy probie połaczenia z odcinkiem.'
    ]
    laczZTrasa: anObject [
        self error: 'Nieobslugiwany typ obiektu przy probie połaczenia z trasa.'
    ]
]

| planer |
planer := PlanerPodrozy new.

| odcinek_pieszy odcinek_rowerowy odcinek_autobusowy odcinek_pieszy2 odcinek_skm |
odcinek_pieszy := OdcinekPieszy new ustawDystans: 15; ustawPunktPoczatkowy: 'Dom'; ustawPunktKoncowy: 'Ilawa'.
odcinek_autobusowy := OdcinekAutobusowy new ustawDystans: 15; ustawPunktPoczatkowy: 'Ilawa'; ustawPunktKoncowy: 'Gdynia'.
odcinek_skm := OdcinekSKM new ustawDystans: 20; ustawPunktPoczatkowy: 'Gdynia'; ustawPunktKoncowy: 'Gdansk Wrzeszcz'.
odcinek_rowerowy := OdcinekRowerowy new ustawDystans: 15; ustawPunktPoczatkowy: 'Gdansk Wrzeszcz'; ustawPunktKoncowy: 'PG'.
odcinek_pieszy2 := OdcinekPieszy new ustawDystans: 1; ustawPunktPoczatkowy: 'PG'; ustawPunktKoncowy: 'Audytorium Maximum'.

| trasa1 trasa2 pelna_trasa |
trasa1 := odcinek_pieszy + odcinek_autobusowy.
trasa2 := odcinek_rowerowy + odcinek_skm + odcinek_pieszy2.
planer dodajTrase: trasa1; dodajTrase: trasa2.
pelna_trasa := trasa1 + trasa2.
planer drukujTrasyEmisja.
