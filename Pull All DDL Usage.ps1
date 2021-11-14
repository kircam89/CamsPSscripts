Import-Csv c:\import\ddl3.csv | Foreach-Object {
        $userProps = @{
               'Recipients'       = $_.Recipients
        }

    
   echo @userProps
   Get-MessageTrackingLog -start “01/01/2021 12:00:00” -End “03/01/2021 12:00:00” @userProps -ResultSize 99999 | measure-object
}