OdcinekPodrozy subclass: OdcinekAutobusowy [
    czas_przesiadki [
        self ustawCzasPrzesiadki: 5.
        ^czas_przesiadki
    ]
    czas [ 
        czas_przeliczony := odleglosc_km + 10.
        ^czas_przeliczony
    ]
    emisjaCO2 [
      emisjaCO2 := odleglosc_km * 0.2.
      ^emisjaCO2
    ]
    opis [ ^'autobus' ]
    koszt [
        koszt_przeliczony := odleglosc_km * 0.5.
        ^koszt_przeliczony
    ]
]
