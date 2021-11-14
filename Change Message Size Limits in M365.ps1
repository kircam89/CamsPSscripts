#By default Office 365 message size is set to 25 MB. Below are commands on how to change the message size limits in Powershell. Please note in OWA you can only set it to a maximum to 75 MB unlike an Outlook client where you can set it to 150 MB.
#Instructions on How to Change Office 365 Message Size Limits:

#Connect to Exchange Online using the Windows Azure Powershell Module.

#Below are scripts where you can modify a single user, by CSV, the whole organization and the MailboxPlan.

#Modify Max receive and send by CSV:
Import-CSV "C:\temp\Filename.csv" | foreach { Set-Mailbox -identity $_.User -MaxSendSize 75MB -MaxReceiveSize 75 MB } 2>> c:\temp\FileNameLogs.txt

#Modify A Single User:
Set-Mailbox -Identity user-name@UPN.COM -MaxSendSize 75MB -MaxReceiveSize 75MB

#Modify All Users:
Get-Mailbox | Set-Mailbox -MaxSendSize 75MB -MaxReceiveSize 75MB

#Modify The MailBoxPlan For Future Users:
Get-MailboxPlan | Set-MailboxPlan -MaxSendSize 75MB -MaxReceiveSize 75MB