Install-Module MSOnline
Connect-MsolService
#se o campo -UsageLocation nos atributos do usuário não estiver preenchido, a licença não é atribuída.
Set-MsolUserLicense -UserPrincipalName usuario.teste@dominio.com -AddLicenses "NomeDaLicença"