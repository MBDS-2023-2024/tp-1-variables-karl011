/*
    Part 1 : Manipulation de tableaux
*/

//Question 1
let moyensDeTransport = ["bateau", "voiture", "vélo", "avion", "bus", "train", "moto"]

// Question 2
print("============Recherche de mot par indice======================")
if moyensDeTransport.indices.contains(2) {
    print("Le mot se trouvant à l'indice 2 est : \(moyensDeTransport[2])")
}

if moyensDeTransport.indices.contains(3) {
  print("Le mot se trouvant à l'indice 3 est : \(moyensDeTransport[3])")
}
if moyensDeTransport.indices.contains(20) {
  print("Le mot se trouvant à l'indice 2 est : \(moyensDeTransport[20])")
}

// Question 3
print("============liste des mot par indice======================")
for (index, mot) in moyensDeTransport.enumerated() {
    print("Moyen de transport numéro \(index) est \(mot)")
}

// Question 4
print("==================Mots aux indices impairs==================")
for i in stride(from: 1, to: moyensDeTransport.count, by: 2) {
    print(moyensDeTransport[i])
}

print("==================Mots aux indices pairs===================")
for i in stride(from: 0, to: moyensDeTransport.count, by: 2) {
    print(moyensDeTransport[i])
}

// Question 5
print("==================Le tableau inversé=======================")
let nouveauTableau = moyensDeTransport.reversed()
for transport in nouveauTableau {
    print(transport)
}

// Quesiton 6
// on va Créer une copie de nouveauTableau
print("========Nouveux mots ajoutés au tableau inversé===========")

var tableauModifie = Array(nouveauTableau)

// On va insérer "camion" en tête de liste
tableauModifie.insert("camion", at: 0)
 // Ici on ajouter "taxi" en fin de liste
tableauModifie.append(contentsOf: ["taxi"])
// On insère "camion" et "taxi" à partir de l'indice 2
tableauModifie.insert(contentsOf: ["camion", "taxi"], at: 2)

print(tableauModifie)