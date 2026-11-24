OdcinekPodrozy subclass: OdcinekTruck [
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
            Transcript show: 'Truck: Opoznienie - ', czas_opoznienia printString, ' min.'; cr.
        ].

        ^czas_przeliczony + czas_opoznienia
    ]
    emisjaCO2 [
      emisjaCO2 := odleglosc_km * 200.
      ^emisjaCO2
    ]
    opis [ ^'truck' ]
    koszt [
        koszt_przeliczony := odleglosc_km * 50.
        ^koszt_przeliczony
    ]
]


