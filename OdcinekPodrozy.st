Object subclass: OdcinekPodrozy [
    | odleglosc_km punkt_poczatkowy punkt_koncowy czas_przeliczony koszt_przeliczony |
    
    OdcinekPodrozy class >> new [
        |op|
        op := super new.
        op ustawDystans: 0.
        op ustawPunktPoczatkowy: ''.
        op ustawPunktKoncowy: ''.
        ^op
    ]

    + argument [
        ^argument laczZOdcinkiem: self.
    ]

    laczZOdcinkiem: poprzedniOdcinek [
        "Odcinek + Odcinek"
        | nowaTrasa nowaKolekcja |
        nowaKolekcja := OrderedCollection with: poprzedniOdcinek with: self.
        nowaTrasa := Trasa new.
        nowaTrasa odcinki: nowaKolekcja.
        ^nowaTrasa
    ]

    laczZTrasa: staraTrasa [
        "Trasa + Odcinek"
        | nowaTrasa nowaKolekcja |
        nowaKolekcja := OrderedCollection new.
        nowaKolekcja addAll: staraTrasa odcinki.
        nowaKolekcja add: self.
        nowaTrasa := Trasa new.
        nowaTrasa odcinki: nowaKolekcja.
        ^nowaTrasa
    ]

    ustawDystans: liczba [
        odleglosc_km := liczba.
    ]
    ustawPunktPoczatkowy: nazwa [
        punkt_poczatkowy := nazwa.
    ]
    ustawPunktKoncowy: nazwa [
        punkt_koncowy := nazwa.
    ]

    opis [ ^'odcinek' ]
    dystans [ ^odleglosc_km ]
    koszt [ ^0 ]
    pk [ ^punkt_koncowy ]
    pp [ ^punkt_poczatkowy ]
]