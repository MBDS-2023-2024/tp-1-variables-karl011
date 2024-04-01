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



/*
    Part 2: Manipulation de dictionnaires
*/

// Question 1 : création du dictionnaire
var personnes: [[String: Any]] = [
    ["nom": "Pierre", "sexe": "M", "annee_naissance": 2010],
    ["nom": "Michelle", "sexe": "F", "annee_naissance": 2008],
    ["nom": "Estelle", "sexe": "F", "annee_naissance": 2005],
    ["nom": "Quentin", "sexe": "M", "annee_naissance": 2010],
    ["nom": "Francois", "sexe": "M", "annee_naissance": 1980],
    ["nom": "Cristelle", "sexe": "F", "annee_naissance": 1995]
]

// Question 2
print("==================Liste des personnes=======================")
for personne in personnes {
    let nom = personne["nom"] as! String
    let sexe = personne["sexe"] as! String
    let anneeNaissance = personne["annee_naissance"] as! Int

    let genre = (sexe == "M") ? "est né" : "est née"
    print("\(nom) \(genre) en \(anneeNaissance)")
}

// Question 3
print("==================Personnes majeures=======================")
for personne in personnes {
    let nom = personne["nom"] as! String
    let anneeNaissance = personne["annee_naissance"] as! Int
    if anneeNaissance <= 2004 {
        print(nom)
    }
}

// Question 4

print("===================Liste des filles=========================")
for personne in personnes {
    let nom = personne["nom"] as! String
    let sexe = personne["sexe"] as! String
    if sexe == "F" {
        print(nom)
    }
}

print("==================Liste des garçons=======================")
for personne in personnes {
    let nom = personne["nom"] as! String
    let sexe = personne["sexe"] as! String
    if sexe == "M" {
        print(nom)
    }
}

// Question 5
print("==================Nouvelles personnes=======================")
let nouvellePersonne: [String: Any] = ["nom": "Marie", "sexe": "F", "annee_naissance": 2000]
personnes.append(nouvellePersonne)

print(personnes)
