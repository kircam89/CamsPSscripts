Get-MoveRequest | Get-MoveRequestStatistics

Get-MoveRequest -BatchName "Example" | Get-MoveRequestStatistics | select DisplayName, StatusDetail, TotalMailboxSize, PercentComplete | Sort-Object -Property PercentComplete
