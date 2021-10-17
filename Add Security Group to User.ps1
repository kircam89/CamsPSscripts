#BEST PRACTICE!!! TEST WITH ONE USER FIRST AND CHECK THE ALIASES BEFORE DOING IT FOR ALL OF YOUR USERS!!!!

#Create .txt file with the users UPN listed WITHOUT @domain.com
$Users = Get-Content C:\Import\****.txt"
ForEach ($U in $Users)
{
	echo $U
	Add-ADGroupMember -Identity "Migrated_Users" -Members "$u"
}