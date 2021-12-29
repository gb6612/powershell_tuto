cls

$filename = 'test.txt'

# Create a text file

if (!(Test-Path $filename)){
  New-Item -Path $filename -ItemType File -Force
}

for($i = 0; $i -lt 10; $i++){ 
   Set-Content $filename "Line $i"  # erase file, then add new text
}

# Read File
Get-Content $filename

pause 

for($i = 0; $i -lt 10; $i++){ 
   Add-Content $filename "Line $i"  # append text to file (old content is kept)
}

# Re-Read File
Get-Content $filename

pause 

# Clear file content !
Clear-Content $filename

# Read File
Get-Content $filename

pause 

# Remove/Delete file
Remove-Item $filename
