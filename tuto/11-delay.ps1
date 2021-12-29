# Start-Sleep [-Seconds] <Double> [<CommonParameters>]
# Start-Sleep -Milliseconds <Int32> [<CommonParameters>]

"wait 2.4 sec"
Start-Sleep 2.4  # >1 !

"wait 1234 millisec"
Start-Sleep -Milliseconds 1234


for($i = 0; $i -lt 10; $i++){ 
   Start-Sleep -Milliseconds 500
   Write-Host -NoNewline "-"
}

