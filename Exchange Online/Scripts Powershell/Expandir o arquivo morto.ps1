Set-ExecutionPolicy RemoteSigned
Install-Module -Name ExchangeOnlineManagement
Import-Module ExchangeOnlineManagement
#ou
#para forçar a execução de políticas e instalação dos módulos
Set-executionpolicy unrestricted -Force
Install-Module ExchangeOnlineManagement -Force
Get-Mailbox "email usuario" |Format-List ArchiveQuota,ArchiveWarningQuota,AutoExpandingArchiveEnabled
Enable-Mailbox email "usuario" -AutoExpandingArchive