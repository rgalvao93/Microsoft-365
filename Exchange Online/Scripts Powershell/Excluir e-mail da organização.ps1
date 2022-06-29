Import-Module ExchangeOnlineManagement

Connect-IPPSSession -UserPrincipalName admin@M365B882413.onmicrosoft.com

AVISO: Sua conexão foi redirecionada para o seguinte URI: "https://bra01b.ps.compliance.protection.outlook.com/Powershell-LiveId?BasicAuthToOAuthConversion=true;PSVersion=5.1.19041.1
682 "

#Realizar criação de uma pesquisa de conformidade via PowerShell
$Search=New-ComplianceSearch -Name "Teste4" -ExchangeLocation All -ContentMatchQuery '(Received:6/29/2022..6/30/2022) AND (Subject:"Teste")'
Start-ComplianceSearch -Identity $Search.Identity

#Exclusão temporária de mensagens
New-ComplianceSearchAction -SearchName “Teste4” -Purge -PurgeType SoftDelete

#Exclusão permanente de mensagens
New-ComplianceSearchAction -SearchName "Remove Phishing Message" -Purge -PurgeType HardDelete