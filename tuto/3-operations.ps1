cls

# Quelques operations sur des nombres
$a=15
$b=6

"a=$a  b=$b"
"a+b="+($a+$b)
"a-b="+($a-$b)
"a*b="+($a*$b)
"a/b="+($a/$b)
"a modulo b="+($a%$b)

"a++ = " + (++$a)   # incremente la variable puis l'affiche
"a-- = " + ($a--)   # affiche la valeur puis decremente la variable
$a

"`n Comparison Operators"
"a eq b = " + ($a -eq $b) # equal (egal)
"a ne b = " + ($a -ne $b) # not equal (different)
"a gt b = " + ($a -gt $b) # greater than (plus grand que)
"a ge b = " + ($a -ge $b) # greater or equal (plus grand ou egal )
"a lt b = " + ($a -lt $b) # less than (plus petit)
"a le b = " + ($a -le $b) # less than or equal (plus petit ou egal)

"`n"
"a and b = " + ($a -AND $b)  # Si les deux nombres sont non-zero le résultat est TRUE(vrai)
"a or b = " + ($a -OR  $b)  # Si au moins un des nombres est non-zero le résultat est TRUE(vrai)

"`n"
"a band b = " + ($a -band $b) # BITWISE AND (calcul bit a bit)
"bnot a = "   + (-bnot $a)      # BITWISE NOT (calcul bit a bit)
"a bor b = "  + ($a -bor $b)   # BITWISE OR (calcul bit a bit)
"a bxor b = " + ($a -bxor $b)   # BITWISE XOR (calcul bit a bit)
"a shl 2 = "  + ($a -shl 2)   # BITWISE SHIFT LEFT (calcul bit a bit)
"a shr 2 = "  + ($a -shr 2)   # BITWISE SHIFT RIGHT (calcul bit a bit)

"`n"
# Nombres aleatoires
Get-Random  # between 0 (zero) and Int32.MaxValue
Get-Random -Maximum 100  # between 0 and 99
Get-Random -Minimum -100 -Maximum 100 # between -100 and 99
Get-Random -Minimum 10.7 -Maximum 20.93  # floating-point number
"num1", "num2", "num3", "num4", "num5" | Get-Random  # Get 1 random item from an array
"num1", "num2", "num3", "num4", "num5" | Get-Random -Count 3 # Get 3 items from array
# 1, 2, 3, 5, 8, 13 | Get-Random -Shuffle   # Melange
