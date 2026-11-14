FileStream fileIn: 'OdcinekPodrozy.st'.
FileStream fileIn: 'OdcinekPieszy.st'.
FileStream fileIn: 'OdcinekRowerowy.st'.
FileStream fileIn: 'OdcinekAutobusowy.st'.


| odcinek_pieszy odcinek_rowerowy odcinek_autobusowy |
odcinek_pieszy := OdcinekPieszy new ustawDystans: 15; ustawPunktPoczatkowy: 'Dom'; ustawPunktKoncowy: 'PG'.
odcinek_rowerowy := OdcinekRowerowy new ustawDystans: 15; ustawPunktPoczatkowy: 'Dom'; ustawPunktKoncowy: 'PG'.
odcinek_autobusowy := OdcinekAutobusowy new ustawDystans: 15; ustawPunktPoczatkowy: 'Dom'; ustawPunktKoncowy: 'PG'.

Transcript show: 'Z ',odcinek_pieszy pp, ' do ', odcinek_pieszy pk, ':'; cr.
Transcript show: odcinek_pieszy opis, ': ', odcinek_pieszy czas printString, ' min. ', odcinek_pieszy koszt printString, 'zl'; cr.
Transcript show: odcinek_rowerowy opis, ': ', odcinek_rowerowy czas printString, ' min. ', odcinek_rowerowy koszt printString, 'zl'; cr.
Transcript show: odcinek_autobusowy opis, ': ', odcinek_autobusowy czas printString, ' min. ', odcinek_autobusowy koszt printString, 'zl'; cr.