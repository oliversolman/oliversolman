$condition = $true
if (Test-Path -Path hklm:\SOFTWARE\Microsoft\msrdc){
Write-Host "already there"
}
else{
New-Item -Path "HKLM:\SOFTWARE\Microsoft\msrdc\"
New-Item -Path "HKLM:\SOFTWARE\Microsoft\msrdc\Policies\"
New-Item -Path "HKLM:\SOFTWARE\Microsoft\msrdc\Policies\AutomaticUpdates"
New-ItemProperty -Name AutomaticUpdates -PropertyType dword -Path HKLM:\SOFTWARE\Microsoft\msrdc\Policies\ -Value 0
}

