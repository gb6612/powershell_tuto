# Powershell version
$PSVersionTable
# Powershell version property
$PSVersionTable.PSVersion

# Powershell uses command-let in a form verb-noun
# For example, in the Get-Random command, Get is the verb and Random is the noun

Get-Verb  # List of approved verbs (like Add-,Get-,Set-,...)
Get-Help  #  -Name 'name-of-command'  or simply "help <command>"
          # Update-Help downloads many help files, the command can fetch only once per day by default
Get-Help Get-FileHash -Examples  # example for getting only the example field
Get-Help Read-Host -Online  # to open help in web browser

Get-Command  #  lists all of the available cmdlets on your system (it's looong!)
Get-Command -Noun Windows*   # searches for all cmdlets whose noun part starts with Windows
Get-Command -Verb Get     # searches for all cmdlets whose verb part is Get
Get-Command -Verb Get -Noun Windows*   # searches for all cmdlets Get-Windows*

