OdcinekPodrozy subclass: OdcinekAutobusowy [
    czas [ 
        czas_przeliczony := odleglosc_km + 10.
        ^czas_przeliczony
    ]
    opis [ ^'autobus' ]
    koszt [
        koszt_przeliczony := odleglosc_km * 0.5.
        ^koszt_przeliczony
    ]
]