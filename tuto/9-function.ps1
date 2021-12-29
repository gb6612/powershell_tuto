cls

# Fonctions sans valeur de retour
function mydisplay {
   Write-Output "Hello"
}

# fonction dans laquelle on passe 2 arguments et retourne une valeur
function myAdder {
    param (
        [int]$number1,
        [int]$number2
    )
    return $number1+$number2
}

# Comme la fonction precedante avec une syntaxe simplifiée
function myAdder2([int]$number1, [int]$number2) {

    return $number1+$number2

}



# Appel de fonctions
mydisplay 
"On appelle une fonction simplement " + (mydisplay)
mydisplay

# Appel de fonctions avec arguments/parametres
$i = myAdder -number1 4 -number2 5
$i
$i = myAdder 5 10  # plus simplement
$i
"20+30 = " + (myAdder2 20 30)



"`n`n"
# Fonctions avec un "switch" (souvent pour retourner une valeur true/false)

function Switch-myItem {
  param ( [switch]$on )
  
  if ($on) { "Switch on" }
  else { "Switch off" }
}

"Ici pas de switch : " + (Switch-myItem)
"Ici avec le switch : " + (Switch-myItem -on)


