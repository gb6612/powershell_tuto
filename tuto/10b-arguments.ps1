# Ce script dois etre lancé avec des arguments/parametres

# Ici on passe avec des parametres avec leur propre "nom"
# par exemple
# .\10b-arguments.ps1   -fr -Name "Gabri" -City "Bern"

param(
     [Parameter(Mandatory=$true)]$Name,   # ici le parametre Name est obligatoire
     $City="Lausanne",     # le parametre City a une valeur par default
     [switch]$fr=$false
     )

cls


if ($fr) {
  "En francais"
  "Nom d'utilisateur: " + $Name
  "Ville: " + $City
}
else {
  "In English"
  "User name: " + $Name
  "City: " + $City
}
