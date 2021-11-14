$UserCredential = Get-Credential
$s = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri http://######-##.example.com/powershell -Credential $UserCredential

Import-PSSession $s