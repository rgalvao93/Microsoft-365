Connect-ExchangeOnline
Get-Mailbox "email usuario" |FL ArchiveQuota,ArchiveWarningQuota,AutoExpandingArchiveEnabled
Enable-Mailbox email "usuario" -AutoExpandingArchive