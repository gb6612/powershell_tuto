cls

# -------------------
# Lire une entree d'utilisateur
  # eviter
$a = Read-Host "Donne moi un numero inferieur a 100: "    # demande une entrée a l'utilisateur
$a = $a -as [int]  # force convertion of value into an integer type!
$a

  # mieux
$a = Read-Host -Prompt "Donne moi un numero inferieur a 100: " # ceci nous donne un texte (string)
$a

  # encore mieux
[uint16]$a = Read-Host -Prompt "Donne moi un numero inferieur a 100: " # ceci nous donne directement un type [uint16]
$a

  # best
try {
   [uint16]$a = Read-Host -Prompt "Donne moi un numero inferieur a 100: " # ceci nous donne directement un type [uint16]
}
catch {
   "numero pas valide, j'utilise 10"
   [uint16]$a=10
}
$a

# -------------------
# if...else...

if ($a -eq ""){
  "tu n'as rien entré"
}
elseif ($a -le 100){
   "$a est plus petit que 100"
}
elseif ($a -eq 100){
   "$a est egal a 100"
}
else {
  "$a est plus grand que 100"
}


"`n"
# -------------------
# comparer un texte
$b = Read-Host "Quel est ton nom? "
if ($b -eq "1234"){
   "$b c'est mon mot de passe..."
}
else {
   "Hello $b"
}


<#
Type	Operator	Comparison test
Equality	
    -eq	equals
    -ne	not equals
    -gt	greater than
    -ge	greater than or equal
    -lt	less than
    -le	less than or equal
Matching	
    -like	string matches wildcard pattern
    -notlike	string does not match wildcard pattern
    -match	string matches regex pattern
    -notmatch	string does not match regex pattern
Replacement	
    -replace	replaces strings matching a regex pattern
Containment	
    -contains	collection contains a value
    -notcontains	collection does not contain a value
    -in	value is in a collection
    -notin	value is not in a collection
Type	
    -is	both objects are the same type
    -isnot	the objects are not the same type
#>
