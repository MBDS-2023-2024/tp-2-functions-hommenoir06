//PARTIE 2
//Ecrire une fonction qui affiche les x premiers nombres pairs ou impairs

func afficherNombresPairsOuImpairs(_ x: Int, pairs: Bool) {
  var nombre = 2
  var count = 0

  while count < x {
      if (pairs && nombre % 2 == 0) || (!pairs && nombre % 2 != 0) {
          print(nombre)
          count += 1
      }
      nombre += 1
  }
}
print("***************************************************")

// Appel pour afficher les 10 premiers nombres pairs
print(" les x premiers nombres pairs")

afficherNombresPairsOuImpairs(10, pairs: true)
// Appel pour afficher les 10 premiers nombres impairs

print("***************************************************")

print("les x premiers nombres impairs")

afficherNombresPairsOuImpairs(10, pairs: false)


//Affichage des x premiers nombres de la suite Fibonacci :

print("******************************************")

print("Affichage des x premiers nombres de la suite Fibonacci :")

func afficherSuiteFibonacci(_ x: Int) {
  var a = 0, b = 1

  for _ in 0..<x {
      print(a)
      let temp = a
      a = b
      b = temp + b
  }
}

// Appel pour afficher les 10 premiers nombres de la suite Fibonacci
afficherSuiteFibonacci(10)


print("******************************************")

print("Calcul du factoriel d'un nombre x (10 par défaut) :")

func factoriel(_ x: Int = 10) -> Int {
  if x == 0 {
      return 1
  }
  return x * factoriel(x - 1)
}

// Appel pour calculer le factoriel de 10
let resultat = factoriel(10)
print("Le factoriel de 10 est \(resultat)")

print("******************************************")

print("Affichage des x premiers nombres premiers :")

func estPremier(_ nombre: Int) -> Bool {
  if nombre <= 1 {
      return false
  }
  for i in 2..<nombre {
      if nombre % i == 0 {
          return false
      }
  }
  return true
}

func afficherNombresPremiers(_ x: Int) {
  var nombre = 2
  var count = 0

  while count < x {
      if estPremier(nombre) {
          print(nombre)
          count += 1
      }
      nombre += 1
  }
}

// Appel pour afficher les 10 premiers nombres premiers
print("exemple des 10 premiers nombres premiers")
afficherNombresPremiers(10)

