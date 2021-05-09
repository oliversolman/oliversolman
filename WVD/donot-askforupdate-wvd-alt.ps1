$condition = $true
if (!(Test-Path -Path hklm:\SOFTWARE\Microsoft\msrdc)){
#New-Item -Path "HKLM:\SOFTWARE\Microsoft\msrdc\"
New-Item -Path "HKLM:\SOFTWARE\Microsoft\msrdc\Policies\" -Force
New-Item -Path "HKLM:\SOFTWARE\Microsoft\msrdc\Policies\AutomaticUpdates"
New-ItemProperty -Name AutomaticUpdates -PropertyType dword -Path HKLM:\SOFTWARE\Microsoft\msrdc\Policies\ -Value 0
}
else{
Write-Host "friend, it is already there"
}

