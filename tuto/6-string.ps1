cls

$str0 = "Il etait une fois une BELLE journee"
$str0

#$str0 | Get-Member  # montre les options possibles


$str0.ToUpper()
$str0.ToLower()

"`nil y a " + $str0.Length + " caracteres"

"les 5 premiers caracteres sont :" + $str0.Substring(0,5)
"les 5 derniers caracteres sont :" + $str0.Substring($str0.Length - 5)

"on extrait des characteres :" + $str0.Substring(3,5)


# retourne la position d'un texte String2 dans la phrase String1
"Fonction IndexOf: " + $str0.IndexOf("une") 

$str0.Replace("une", "des")

$str0.Remove($str0.IndexOf("une"), 3) # Remove (int startIndex, int count)

pause

$str0="Il etait une.fois une.BELLE journee"
$ft = $str0.Split()  # split into an array. By default a space character
$ft

$ft = $str0.Split(".")  # split every . character
$ft

