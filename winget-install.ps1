# GUI Specs
Write-Host "Checking winget..."
# Checking if winget is installed
if (Test-Path ~\AppData\Local\Microsoft\WindowsApps\winget.exe){
    'Winget already Installed'
}  
else{
    # Installing winget from Microsoft Store
	Write-Host "Winget not found, installing now."
    $ResultText.text = "`r`n" +"`r`n" + "Installing Winget... Please Wait"
	Start-Process "ms-appinstaller:?source=https://aka.ms/getwinget"
	$nid = (Get-Process AppInstaller).Id
	Wait-Process -Id $nid
	Write-Host Winget Installed
    $ResultText.text = "`r`n" +"`r`n" + "Winget Installed - Now run   win-all-essentials.ps1"
}