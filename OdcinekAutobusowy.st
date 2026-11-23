OdcinekPodrozy subclass: OdcinekAutobusowy [
    czas_przesiadki [
        self ustawCzasPrzesiadki: 5.
        ^czas_przesiadki
    ]
    losujOpoznienie [
	czas_opoznienia := (Random new next * 16) truncated.
    ]
    czas [ 
        czas_przeliczony := odleglosc_km + 10.
        czas_opoznienia := self opoznienie.

        czas_opoznienia > 0 ifTrue: [
            Transcript show: 'Autobus: Opoznienie - ', czas_opoznienia printString, ' min.'; cr.
        ].

        ^czas_przeliczony + czas_opoznienia
    ]
    opis [ ^'autobus' ]
    koszt [
        koszt_przeliczony := odleglosc_km * 0.5.
        ^koszt_przeliczony
    ]
]

