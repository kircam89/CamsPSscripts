#Run on prem:
Add-ADPermission -Identity "FredDoe@domain.com" -User "JohnDoe" -AccessRights ExtendedRight -ExtendedRights "Send As"

#Run through exchange online powershell
Add-RecipientPermission -Identity "All Email Users" -Trustee "JohnDoe" -AccessRights SendAs

#Note: The second command will only work if you are already connected to exchange online in powershell.  If you are not, run this command first:
Connect-ExchangeOnline -UserPrincipalName JaneDow@domain.onmicrosoft.com -ShowProgress $true
