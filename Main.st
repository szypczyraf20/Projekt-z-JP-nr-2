FileStream fileIn: 'OdcinekPodrozy.st'.
FileStream fileIn: 'OdcinekPieszy.st'.
FileStream fileIn: 'OdcinekTriCruiser.st'.
FileStream fileIn: 'OdcinekTruck.st'.
FileStream fileIn: 'Trasa.st'.
FileStream fileIn: 'PlanerPodrozy.st'.

Object extend [
    laczZOdcinkiem: anObject [
        self error: 'Nieobslugiwany typ obiektu przy probie połaczenia z odcinkiem.'
    ]
    laczZTrasa: anObject [
        self error: 'Nieobslugiwany typ obiektu przy probie połaczenia z trasa.'
    ]
]

| planer |
planer := PlanerPodrozy new.

| odcinek_pieszy odcinek_truck odcinek_tri_cruiser odcinek_truck2 odcinek_pieszy2 |
odcinek_pieszy := OdcinekPieszy new ustawDystans: 4; ustawPunktPoczatkowy: 'Central Knot City Base'; ustawPunktKoncowy: 'Waystation West of Capital Knot City'.
odcinek_truck := OdcinekTruck new ustawDystans: 28; ustawPunktPoczatkowy: 'Waystation West of Capital Knot City'; ustawPunktKoncowy: 'Distribution Center West of Capital Knot City'.
odcinek_tri_cruiser := OdcinekTriCruiser new ustawDystans: 14; ustawPunktPoczatkowy: 'Distribution Center West of Capital Knot City'; ustawPunktKoncowy: 'Research Facility & Lab'.
odcinek_truck2 := OdcinekTruck new ustawDystans: 21; ustawPunktPoczatkowy: 'Research Facility & Lab'; ustawPunktKoncowy: 'Mountain Knot City Mine'.
odcinek_pieszy2 := OdcinekPieszy new ustawDystans: 3; ustawPunktPoczatkowy: 'Mountain Knot City Mine'; ustawPunktKoncowy: 'Waystation North of Mountain Knot City'.

| trasa1 trasa2 pelna_trasa |
trasa1 := odcinek_pieszy + odcinek_truck.
trasa2 := odcinek_tri_cruiser + odcinek_truck2 + odcinek_pieszy2.
planer dodajTrase: trasa1; dodajTrase: trasa2.
pelna_trasa := trasa1 + trasa2.
planer drukujTrasyEmisja.
