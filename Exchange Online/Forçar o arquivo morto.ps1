﻿Set-ExecutionPolicy RemoteSigned
Install-Module -Name ExchangeOnlineManagement
Import-Module ExchangeOnlineManagement
    #ou
Set-executionpolicy unrestricted -Force
Install-Module ExchangeOnlineManagement -Force
    #para forçar a execução de políticas e instalação dos módulos
Start-ManagedFolderAssistant -Identity "conta do colaborador"