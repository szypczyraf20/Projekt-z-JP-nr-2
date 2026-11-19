FileStream fileIn: 'OdcinekPodrozy.st'.
FileStream fileIn: 'OdcinekPieszy.st'.
FileStream fileIn: 'OdcinekRowerowy.st'.
FileStream fileIn: 'OdcinekAutobusowy.st'.
FileStream fileIn: 'Trasa.st'.

Object extend [
    laczZOdcinkiem: anObject [
        self error: 'Nieobslugiwany typ obiektu przy probie połaczenia z odcinkiem.'
    ]
    laczZTrasa: anObject [
        self error: 'Nieobslugiwany typ obiektu przy probie połaczenia z trasa.'
    ]
]


| odcinek_pieszy odcinek_rowerowy odcinek_autobusowy |
odcinek_pieszy := OdcinekPieszy new ustawDystans: 15; ustawPunktPoczatkowy: 'Dom'; ustawPunktKoncowy: 'Ilawa'.
odcinek_autobusowy := OdcinekAutobusowy new ustawDystans: 15; ustawPunktPoczatkowy: 'Ilawa'; ustawPunktKoncowy: 'Gdansk Wrzeszcz'.
odcinek_rowerowy := OdcinekRowerowy new ustawDystans: 15; ustawPunktPoczatkowy: 'Gdansk Wrzeszcz'; ustawPunktKoncowy: 'PG'.

| trasa1 trasa2 pelna_trasa |
trasa1 := odcinek_pieszy + odcinek_autobusowy.
trasa2 := odcinek_rowerowy.
pelna_trasa := trasa1 + trasa2.
pelna_trasa drukuj.
