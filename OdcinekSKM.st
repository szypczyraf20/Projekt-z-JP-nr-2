OdcinekPodrozy subclass: OdcinekSKM [
    czas_przesiadki [
        self ustawCzasPrzesiadki: 10.
        ^czas_przesiadki
    ]
    losujOpoznienie [
	czas_opoznienia := (Random new next * 41) truncated.
    ] 
    czas [ 
        czas_przeliczony := odleglosc_km + 10.
        czas_opoznienia := self opoznienie.

        czas_opoznienia > 0 ifTrue: [
            Transcript show: 'SKM: Opoznienie - ', czas_opoznienia printString, ' min.'; cr.
        ].

        ^czas_przeliczony + czas_opoznienia
    ]
    opis [ ^'SKM' ]
    emisjaCO2 [
      emisjaCO2 := odleglosc_km * 300.
      ^emisjaCO2
    ]
    koszt [
        koszt_przeliczony := odleglosc_km * 150.
        ^koszt_przeliczony
    ]
]


