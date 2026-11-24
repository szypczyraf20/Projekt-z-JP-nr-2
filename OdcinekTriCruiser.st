OdcinekPodrozy subclass: OdcinekTriCruiser [
    losujOpoznienie [
	    czas_opoznienia := (Random new next * 40) truncated.
    ]
    czas [ 
        czas_przeliczony := odleglosc_km * 2.
        czas_opoznienia := self opoznienie.

        czas_opoznienia > 0 ifTrue: [
            Transcript show: 'TriCruiser: Opoznienie - ', czas_opoznienia printString, ' min.'; cr.
        ].

        ^czas_przeliczony + czas_opoznienia
    ]
    emisjaCO2 [
      emisjaCO2 := odleglosc_km * 10.
      ^emisjaCO2
    ]
    opis [ ^'tri-cruiser' ]
]

