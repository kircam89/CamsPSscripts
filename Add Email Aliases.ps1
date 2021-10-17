#BEST PRACTICE!!! TEST WITH ONE USER FIRST AND CHECK THE ALIASES BEFORE DOING IT FOR ALL OF YOUR USERS!!!!

#Create .txt file with the users UPN listed WITHOUT @domain.com
$Users = Get-Content C:\Import\"NewHires.txt"

ForEach ($U in $Users)
{
	echo $U
	Set-Mailbox "$u" -EmailAddresses @{add="$u@domain.onmicrosoft.com"}
	Set-Mailbox "$u" -EmailAddresses @{add="$u@domain.mail.onmicrosoft.com"}
}

#You can add and remove however many aliases as you need in this script, just follow the pattern