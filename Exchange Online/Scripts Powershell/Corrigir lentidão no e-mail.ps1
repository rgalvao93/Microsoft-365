﻿Set-ExecutionPolicy RemoteSigned
Install-Module -Name ExchangeOnlineManagement
Import-Module ExchangeOnlineManagement
#ou
#para forçar a execução de políticas e instalação dos módulos
Set-executionpolicy unrestricted -Force
Install-Module ExchangeOnlineManagement -Force
Remove-MailboxUserConfiguration -Mailbox email@dominio.com -Identity Configuration\IPM.Configuration.Suite.Storage -Confirm:$false
Remove-MailboxUserConfiguration -Mailbox email@dominio.com -Identity Configuration\IPM.Configuration.Agregated.OWAUserConfiguration -Confirm:$false
Remove-MailboxUserConfiguration -Mailbox email@dominio.com -Identity Configuration\IPM.Configuration.OWA.AutocompleteCache -Confirm:$false
Remove-MailboxUserConfiguration -Mailbox email@dominio.com -Identity Configuration\IPM.Configuration.OWA.SessionInformation -Confirm:$false
Remove-MailboxUserConfiguration -Mailbox email@dominio.com -Identity Configuration\IPM.Configuration.OWA.UserOptions -Confirm:$false
Remove-MailboxUserConfiguration -Mailbox email@dominio.com -Identity Configuration\IPM.Configuration.OWA.ViewStateConfiguration -Confirm:$false
