"Od razu dodalem PlanerPodrozy, bo było potrzebne coś do grupowania tras."
Object subclass: PlanerPodrozy [
  | trasy |

  PlanerPodrozy class >> new [
    | p |
    p := super new.
    p initialize.
    ^p
  ]

  initialize [
    trasy := OrderedCollection new.
  ]

  trasy [ ^trasy ]

  trasy: aCollection [
    trasy := aCollection copy.
  ]

  dodajTrase: innaTrasa [
    "
    Lista tras:
    ...
    -trasa 5
    -trasa 6
    -innaTrasa
    "
    trasy add: innaTrasa.
  ]
  drukujTrasy [
    | i |
    i := 0.
    trasy do: [:t |
      "Jesli wypisno juz pierwszy opis trasy, to wypisz nowa linie by je rozdielic"
      (i > 0) ifTrue: [
        Transcript cr].
      i := i + 1.
      Transcript show: 'Opcja '; show: i printString; show: ':'; cr.
      t drukuj
    ].
  ]
  drukujTrasyEmisja [
    | i trasy_sort |
    Transcript show: 'Emisja CO2 rosnaco:'.
    Transcript cr.

    trasy_sort := trasy copy.
    trasy_sort := trasy_sort asSortedCollection: [:a :b | a emisjaCO2 < b emisjaCO2].
    i := 0.
    trasy_sort do: [:t |
      "Jesli wypisno juz pierwszy opis trasy, to wypisz nowa linie by je rozdielic"
      (i > 0) ifTrue: [
        Transcript cr].
      i := i + 1.
      Transcript show: 'Opcja '; show: i printString; show: ':'; cr.
      t drukuj
    ].
  ]
]
