Install-Module MSOnline
Connect-MsolService
Set-MsolUserLicense -UserPrincipalName usuario.teste@dominio.com -AddLicenses "NomeDaLicença"
    #se o campo -UsageLocation não estiver preenchido, a licença não é atribuída
Set-MsolUser -UserPrincipalName usuario.teste@dominio.com -UsageLocation BR
    #atribuir o a região do cliente
Get-MsolUser -SearchString usuario.teste@dominio.com | Format-List
    #consultar se o atributo foi preenchido