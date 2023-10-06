$taskAction = New-ScheduledTaskAction -Execute "C:\IddSampleDriver\VirtualMonitorHelper.exe"
$taskTrigger = New-ScheduledTaskTrigger -AtStartup
$taskPrincipal = New-ScheduledTaskPrincipal -UserId "NT AUTHORITY\SYSTEM" -LogonType ServiceAccount
Register-ScheduledTask -Action $taskAction -Trigger $taskTrigger -TaskName "Virtual Monitor Helper" -Principal $taskPrincipal
