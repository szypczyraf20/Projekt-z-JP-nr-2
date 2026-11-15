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
odcinek_pieszy := OdcinekPieszy new ustawDystans: 15; ustawPunktPoczatkowy: 'Dom'; ustawPunktKoncowy: 'PG'.
odcinek_rowerowy := OdcinekRowerowy new ustawDystans: 15; ustawPunktPoczatkowy: 'Dom'; ustawPunktKoncowy: 'PG'.
odcinek_autobusowy := OdcinekAutobusowy new ustawDystans: 15; ustawPunktPoczatkowy: 'Dom'; ustawPunktKoncowy: 'PG'.

Transcript show: 'Z ',odcinek_pieszy pp, ' do ', odcinek_pieszy pk, ':'; cr.
Transcript show: odcinek_pieszy opis, ': ', odcinek_pieszy czas printString, ' min. ', odcinek_pieszy koszt printString, 'zl'; cr.
Transcript show: odcinek_rowerowy opis, ': ', odcinek_rowerowy czas printString, ' min. ', odcinek_rowerowy koszt printString, 'zl'; cr.
Transcript show: odcinek_autobusowy opis, ': ', odcinek_autobusowy czas printString, ' min. ', odcinek_autobusowy koszt printString, 'zl'; cr.

| trasa1 trasa2 pelna_trasa |
trasa1 := odcinek_pieszy + odcinek_rowerowy.
trasa2 := trasa1 + odcinek_autobusowy.
pelna_trasa := trasa1 + trasa2.
Transcript show: 'Z ', pelna_trasa pp, ' do ', pelna_trasa pk, ' :'; cr.
Transcript show: pelna_trasa opis, ' : ', pelna_trasa czas printString, ' min. ', pelna_trasa koszt printString, 'zl'; cr.