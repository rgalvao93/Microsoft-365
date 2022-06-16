Set-ExecutionPolicy RemoteSigned
Install-Module -Name ExchangeOnlineManagement
Import-Module ExchangeOnlineManagement
    #ou
Set-executionpolicy unrestricted -Force
Install-Module ExchangeOnlineManagement -Force
    #para forçar a execução de políticas e instalação dos módulos
$Cred = Get-Credential
$Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://ps.outlook.com/PowerShell/ -Credential $Cred -Authentication Basic -AllowRedirection
import-psSession $session
Start-ManagedFolderAssistant -Identity "email"