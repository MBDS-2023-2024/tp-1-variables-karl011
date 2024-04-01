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
