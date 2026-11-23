Object subclass: Trasa [
    | odcinki |

    Trasa class >> new [
        | t |
        t := super new.
        t initialize.
        ^t
    ]

    initialize [
        odcinki := OrderedCollection new.
    ]

    odcinki [ ^odcinki ]

    odcinki: aCollection [
        odcinki := aCollection copy.
    ]

    + argument [
        ^argument laczZTrasa: self.
    ]

    laczZOdcinkiem: odcinek [
        "Trasa + Odcinek"
        | nowaTrasa nowaKolekcja |
        nowaKolekcja := OrderedCollection with: odcinek.
        nowaKolekcja addAll: odcinki.
        nowaTrasa := Trasa new.
        nowaTrasa odcinki: nowaKolekcja.
        ^nowaTrasa
    ]

    laczZTrasa: innaTrasa [
        "Trasa + Trasa"
        | nowaTrasa nowaKolekcja |
        nowaKolekcja := OrderedCollection new.
        nowaKolekcja addAll: innaTrasa odcinki.
        nowaKolekcja addAll: odcinki.
        nowaTrasa := Trasa new.
        nowaTrasa odcinki: nowaKolekcja.
        ^nowaTrasa
    ]

    czas [
        | suma |
        suma := 0.
        odcinki do: [:o | suma := suma + o czas].
	    odcinki do: [:o | suma := suma + o czas_przesiadki].
        ^suma
    ]

    koszt [
        | suma |
        suma := 0.
        odcinki do: [:o | suma := suma + o koszt].
        ^suma
    ]

    dystans [
        | suma |
        suma := 0.
        odcinki do: [:o | suma := suma + o dystans].
        ^suma
    ]

    czas_przesiadki [
    	| suma |
      suma := 0.
      odcinki do: [:o | suma := suma + o czas_przesiadki].
      ^suma
    ]

    emisjaCO2 [
      | suma |
      suma := 0.
      odcinki do: [:o | suma := suma + o emisjaCO2].
      ^suma
    ]

    drukuj [
      |i|
      i:=0.
      Transcript show: '--------- Trasa ---------'; cr.
      odcinki do: [:odcinek |
      i:=i+1. Transcript show: i printString, '. ', odcinek opis; cr;
      show: odcinek pp; show: ' -> '; show: odcinek pk; cr;
      show: odcinek dystans printString, ' km',
      ' | ', odcinek czas printString, ' min',
      ' | ', odcinek czas_przesiadki printString, ' min',
      ' | ', odcinek emisjaCO2 printString, ' kg',
      ' | ', odcinek koszt printString, ' zl'; cr].
      Transcript show: '-------------------------'; cr.
      Transcript show: 'Dystans: ', self dystans printString, ' km'; cr.
      Transcript show: 'Czas: ', self czas printString, ' min'; cr.
      Transcript show: 'Czas przesiadki: ',
      self czas_przesiadki printString, ' min'; cr.
      Transcript show: 'Koszt: ', self koszt printString, ' zl'; cr.
      Transcript show: 'Emisja CO2: ', self emisjaCO2 printString, ' kg'; cr.
      Transcript show: '-------------------------'; cr.
    ]

    "Punkt poczatkowy"
    pp [
        ^odcinki isEmpty ifTrue: [''] ifFalse: [odcinki first pp]
    ]

    "Punkt koncowy"
    pk [
        ^odcinki isEmpty ifTrue: [''] ifFalse: [odcinki last pk]
    ]

    opis [
        ^'trasa złożona z ', odcinki size printString, ' odcinków'
    ]
]

