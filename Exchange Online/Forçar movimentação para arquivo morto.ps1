connect-msolservice
$Cred = Get-Credential
$Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://ps.outlook.com/PowerShell/ -Credential $Cred -Authentication Basic -AllowRedirection
import-psSession $session
Start-ManagedFolderAssistant -Identity "email"