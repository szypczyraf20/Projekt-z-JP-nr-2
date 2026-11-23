OdcinekPodrozy subclass: OdcinekRowerowy [
    czas [ 
        czas_przeliczony := odleglosc_km * 2.
        ^czas_przeliczony
    ]
    emisjaCO2 [
      emisjaCO2 := odleglosc_km * 0.01.
      ^emisjaCO2
    ]
    opis [ ^'rower' ]
]
