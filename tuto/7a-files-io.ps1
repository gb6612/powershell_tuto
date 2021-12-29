cls

# Create Folder
New-Item -Path 'D:\temp\Test PS' -ItemType Directory

# Create File
New-Item -Path 'D:\temp\Test PS\Test File PS.txt' -ItemType File

# Copy Folder recursivery
Copy-Item 'D:\temp\Test PS' -Destination 'D:\temp\Test PS1'

# Copy File recursivery
Copy-Item -Filter *.txt -Path 'D:\temp\Test PS' -Recurse -Destination 'D:\temp\Test PS1'

# Delete folder or Files
Remove-Item 'D:\temp\Test1'  # Folder 
Remove-Item 'D:\temp\Test1\text.txt'  # File

Remove-Item 'D:\temp\Test PS' -Recurse  # delete files and folder recursively

# Move/Rename Folder or Files
Move-Item 'D:\temp\Test' 'D:\temp\Test PS1'  # Folder
Move-Item 'D:\temp\Test\test.txt' 'D:\temp\Test PS1'  # File
Rename-Item 'D:\temp\Test' 'D:\temp\Test1'


# Read File
Get-Content 'D:\temp\Test\test.txt'

(Get-Content 'D:\temp\Test\test.txt').Length  # size of the file

# Check if Folder/File exists
Test-Path 'D:\temp\test'  # Folder
Test-Path 'D:\temp\test\test.txt'  # File 

