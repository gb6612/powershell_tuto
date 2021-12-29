cls

# Les Nombres dans powershell
"Decimal"
[decimal]::MinValue
[decimal]::MaxValue

"Integral"
"Byte"
[byte]::MinValue
[byte]::MaxValue
[sbyte]::MinValue
[sbyte]::MaxValue
"Short"
[int16]::MinValue
[int16]::MaxValue
[uint16]::MinValue
[uint16]::MaxValue
"Int"
[int32]::MinValue
[int32]::MaxValue
[int]::MaxValue
[uint32]::MinValue
[uint32]::MaxValue
"Long"
[int64]::MinValue
[int64]::MaxValue
[uint64]::MinValue
[uint64]::MaxValue

"Floating-point types"
[single]::MinValue
[single]::MaxValue
[double]::MinValue
[double]::MaxValue

Pause
"`n`n ------------------------------------------------------"
"*** Constantes"
# Constante, qui ne peut pas etre enlevée
Set-Variable PI -Option Constant -Value 3.1415
Remove-Variable PI -Force   # ceci ne marche pas

# Constante, qui peut etre enlevée et re-declarée
Set-Variable KB -Option ReadOnly -Value 1.380649E−23
Remove-Variable KB -Force   # ceci enleve la constante

"`n`n ------------------------------------------------------"
"*** Variables"
$ma_variable = 1234   # une simple declaration
$ma_variable          # pour afficher la valeur

Clear-Variable -Name ma_variable   # efface la valeur de la variable (mais pas la variable elle-meme)
                                   # on peut aussi ecrire $ma_variable = $null
$ma_variable          # la valeur est $null

$ma_variable = 5678
Remove-Variable -Name ma_variable  # ceci efface LA variable (pas seulement sa valeur)
$ma_variable          # pas de valeur affiché

Pause
"`n"
"*** Declarer des variables"
# autre facon de declarer plusieurs variables
$a = $b = $c = 10
"a=$a"
"b=$b"
"c=$c"

$d,$e,$f = 20.3, "bleu", $true
"d=$d"
"e=$e"
"f=$f"

"`n"
#   
$a+$b+$c  # ceci donne 30, toutes ces variables sont du meme type
"$a+$b+$c"  # ceci donne 10+10+10, tout est transformé en string(texte)

#$d+$e+$f  # ceci donnerai une erreur

Pause
"`n"
# a priori une variable peut etre redefinie en plusieurs types
# ci-dessous, la meme variable $a prends plusieurs types
$a = 12                         # System.Int32
"a=$a"
$a = "Texte"                     # System.String
"a=$a"
$a = 12, "Texte"                 # array of System.Int32, System.String
"a=$a"
$a = Get-ChildItem C:\Windows   # FileInfo and DirectoryInfo types
"a=$a"

"`n"
# ci-dessous, la meme variable $i est declarée comme type [int], donc ne pourra pas prendre d'autres types
[int]$i = 8
$i = "12345"  # ce texte est converti en nombre
"i=$i"
$i = "Hello"  # ceci donne une erreur


