Set-ExecutionPolicy RemoteSigned
Install-Module -Name ExchangeOnlineManagement
Import-Module ExchangeOnlineManagement
    #ou
Set-executionpolicy unrestricted -Force
Install-Module ExchangeOnlineManagement -Force
    #para forçar a execução de políticas e instalação dos módulos
Restore-RecoverableItems -Identity "email@dominio.com","email2@dominio.com" -FilterItemType IPM.Note -SubjectContains "emails" -FilterStartTime "3/15/2019 12:00:00 AM" -FilterEndTime "3/25/2019 11:59:59 PM" -MaxParallelSize 2
