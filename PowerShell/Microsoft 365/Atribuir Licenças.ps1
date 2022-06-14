Install-Module MSOnline
Connect-MsolService

#se o campo -UsageLocation não estiver preenchido, a licença não é atribuída
Set-MsolUserLicense -UserPrincipalName usuario.teste@dominio.com -AddLicenses "NomeDaLicença"

#atribuir o a região do cliente
Set-MsolUser -UserPrincipalName usuario.teste@dominio.com -UsageLocation BR

#consultar se o atributo foi preenchido
Get-MsolUser -SearchString usuario.teste@dominio.com | fl
