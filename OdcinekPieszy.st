OdcinekPodrozy subclass: OdcinekPieszy [
    czas [ 
        czas_przeliczony := odleglosc_km * 3.
        ^czas_przeliczony
    ]
    emisjaCO2 [
      emisjaCO2 := odleglosc_km * 10.
      ^emisjaCO2
    ]
    opis [ ^'pieszo' ]
    
]
