# ceci est un commentaire sur 1 ligne...

<#
   et ceci
   est 
   un commentaire
   sur plusieurs lignes
#>

#cls  
Clear-Host # nettoyage du terminal :)

"Salut"   #  affiche un petit texte
Write-Output 'Hello World!'
Write-Host "quelle belle journee"   # une autre facon (permet de formater un texte)


$name = Read-Host "Quel est ton nom? "    # demande une entrée a l'utilisateur

"heureux de coder avec toi, $name"

"`n"  # this is for a new line
"`r`n"  # this is for a CRLF (windows text files...)
    
$pwd_secure_string = Read-Host "Quel est ton mot de passe?" -AsSecureString
$pwd_string = Read-Host "T'as un autre mot de passe?" -MaskInput

"ok, juste pour rigoler"

"ton premier password est $pwd_secure_string ... bien caché"
"ton deuxieme password est $pwd_string ... celui-ci n'est pas caché!"

"`n`n"
Pause


"Attends 3 secondes" 
Start-Sleep -Seconds 3
