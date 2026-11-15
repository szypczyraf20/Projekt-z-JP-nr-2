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

    pp [
        ^odcinki isEmpty ifTrue: [''] ifFalse: [odcinki first pp]
    ]

    pk [
        ^odcinki isEmpty ifTrue: [''] ifFalse: [odcinki last pk]
    ]

    opis [
        ^'trasa złożona z ', odcinki size printString, ' odcinków'
    ]
]