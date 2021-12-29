cls

" -------------------"
" arrays"
$array = 1,2,3,4
$array
$array = 1..5
$array
$array = @("item1", "item2", "item3")
$array
$array.Length  # combien d'elements contient l'array


" -------------------"
" for loop"

# rappel: "lt" signifie "moins que"
for($i = 0; $i -lt 10; $i++){ 
   $i 
}

for($i = 0; $i -lt $array.length; $i++){ 
   $array[$i] 
}

"`n"
# foreach
foreach ($element in $array) { 
   $element 
}

$array | foreach { $_ }  # une autre facon d'ecrire...


"`n"
" -------------------"
" while(condition)"
# La condition est testée avant le contenu de la boucle;
# Donc ce contenu n'est pas executé si la condition retourne False

$counter = 0;

while($counter -lt $array.length){
   $array[$counter]
   $counter += 1
}


"`n"
" -------------------"
" do while(condition)"
# La condition est testée après le contenu de la boucle;
# Donc ce contenu est executé au moins une fois

$counter = 0;

do {
   $array[$counter]
   $counter += 1
} while($counter -lt $array.length)

