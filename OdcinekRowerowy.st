OdcinekPodrozy subclass: OdcinekRowerowy [
    czas [ 
        czas_przeliczony := odleglosc_km * 2.
        ^czas_przeliczony
    ]
    opis [ ^'rower' ]
    
]