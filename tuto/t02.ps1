# https://docs.microsoft.com/en-us/learn/modules/connect-commands/3-exercise-pipeline

# processes are sorted in descending order, with the greatest CPU value at the top of the list
Get-Process | Where-Object CPU -gt 2 | Sort-Object CPU -Descending | Select-Object -First 3

Get-Process | Select-Object Name | Where-Object Name -eq 'explorer'

# It's better to filter first and then format, as in the following statement.
Get-Process | Where-Object Name -eq name-of-process | Select-Object Name

# Often, a cmdlet that offers filtering is more efficient than using Where-Object. Here's a more efficient version of the preceding statement
Get-Process -Name name-of-process | Select-Object Name

Get-Process 'some process' | Select-Object Name, Cpu
