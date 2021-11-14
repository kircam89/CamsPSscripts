Install-Module -Name ExchangeOnlineManagement

Connect-ExchangeOnline

#Room Resource Example
Set-CalendarProcessing -Identity "Room 410" -AllBookInPolicy $False