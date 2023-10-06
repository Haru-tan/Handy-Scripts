$action = New-ScheduledTaskAction -Execute 'C:\IddSampleDriver\VirtualMonitorHelper.exe'
$trigger = New-ScheduledTaskTrigger -AtLogOn
$principal = New-ScheduledTaskPrincipal -UserId "NT AUTHORITY\SYSTEM" -LogonType S4U
Register-ScheduledTask -Action $action -Trigger $trigger -TaskName "Virtual Monitor Helper" -Principal $principal
