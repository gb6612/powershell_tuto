cls

$filename = 'test.txt'

# Create a text file...

if (!(Test-Path $filename)){
  New-Item -Path $filename -ItemType File -Force
}

# ...and fill with some data
for($i = 0; $i -lt 10; $i++){ 
   Add-Content $filename "Line $i"  # append text to file (old content is kept)
}

# Read file line by line

foreach($line in Get-Content $filename) {

  ">>> " + $line

}

pause 

