cls

# Ce script dois etre lancé avec des arguments/parametres

# exemple 
# $ .\script-name.ps1 first second
# $args[0] == "first"
# $args[1] == "second"
# ...

"Il y a " + $args.Count + " arguments"

if ($args.Count -gt 0){
   for($i = 0; $i -lt $args.Count; $i++){ 
      "Ton argument #" + $i + " est: " + $args[$i]
   }

}


# comment obtenir le nom et chemin (path) du script
$mypath = $MyInvocation.MyCommand.Path
$mypath
# pour garder que le chemin on fait
Split-Path -Path $mypath

# ceci retourne le nom du script seulement
$mypath = $MyInvocation.MyCommand.Name
$mypath
