# https://docs.microsoft.com/en-us/learn/modules/discover-commands/5-exercise-discover-objects

# Get-Member : to know more about what's being returned and how you can modify what is returned
# example: Get-Process -Name 'name-of-process' | Get-Member

# Get-Command -ParameterType Process # search commands using System.Diagnostics.Process

Get-Process  # all processes that are running on the machine

Get-Process -Name 'msedge' | Get-Member  # produces a long response that consists of all members, events, and methods
# Now you know that the type is Process (first line was TypeName: System.Diagnostics.Process). 
# You can learn more about what other cmdlets use this type. Next, use Get-Command and add the type as a parameter.
Get-Command -ParameterType Process

