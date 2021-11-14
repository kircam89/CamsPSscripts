Import-Csv 'C:\TestDDL.csv' | ForEach-Object {
	$DDL = $_."DDL"
	Set-DynamicDistributionGroup -Identity $DDL -HiddenFromAddressListsEnabled $true
}
