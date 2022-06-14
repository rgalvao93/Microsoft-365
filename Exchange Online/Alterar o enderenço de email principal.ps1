#Alterar o enderenço de email principal por Powershell segue os comandos:
#Este procedimento é usado em usuários sincronizados quando a alteração de UPN no AD não sobe para a nuvem. Isto é normal acontecer quando o UPN já foi trocado pelo menos uma vez na AD. 
#Abrir Powershell como Administrador, logar com a conta administrador M365.

Set-executionpolicy unrestricted -Force
Install-Module MSOnline
Connect-MsolService
Set-MsolUserPrincipalName -UserPrincipalName "UPN_Antigo@dominio.com" -NewUserPrincipalName "UPN_NOVO@dominio.com"
