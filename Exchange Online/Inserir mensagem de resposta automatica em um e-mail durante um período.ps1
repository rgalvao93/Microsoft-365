Set-ExecutionPolicy RemoteSigned
Install-Module -Name ExchangeOnlineManagement
Import-Module ExchangeOnlineManagement
    #ou
Set-executionpolicy unrestricted -Force
Install-Module ExchangeOnlineManagement -Force
    #para forçar a execução de políticas e instalação dos módulos
Set-MailboxAutoReplyConfiguration -Identity email@dominio.com -AutoReplyState scheduled -StartTime "05/27/2022 00:00:01" -EndTime "12/26/2022 00:00:01" -InternalMessage "FRANGUINHO COM FAROFA!!!"
