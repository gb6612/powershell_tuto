# Nom de domaine et username
[System.Security.Principal.WindowsIdentity]::GetCurrent().Name 
$(whoami)

[Environment]::UserDomainName
[Environment]::MachineName

"`n"
#$Target01 = '192.168.178.59'
$Target01 = '192.168.178.59','192.168.178.1','192.168.178.200'

# Powershell 7+
Test-Connection -TargetName $Target01 -IPv4
# Test-Connection -TargetName Target01, Server02, Server12
# Test-Connection -TargetName $Target01 -Count 3 -Delay 2 -MaxHops 128 -BufferSize 256
#if (Test-Connection -TargetName $Target01 -Quiet) { 
#    "ok"
#    #New-PSSession -ComputerName $Target01 
#}
# Test-Connection -TargetName www.google.com -Traceroute
# Test-Connection -TargetName www.google.com -Traceroute -IPv4 -ResolveDestination
# Test-Connection -TargetName $Target01 -IPv4 -Repeat  -BufferSize 1024

# PowerShell 5.1
# Test-Connection $Target01
# Test-Connection $Target01 -IPv4
# Test-Connection -ComputerName Target01, Server02, Server12
# Test-Connection -ComputerName $Target01 -Count 3 -Delay 2 -TTL 255 -BufferSize 256 -ThrottleLimit 32
# Test-NetConnection www.google.com -traceRoute
