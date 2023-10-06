$taskAction = New-ScheduledTaskAction -Execute "C:\IddSampleDriver\VirtualMonitorHelper.exe"
$taskTrigger = New-ScheduledTaskTrigger -AtLogon
$taskPrincipal = New-ScheduledTaskPrincipal -UserId $env:USERNAME
Register-ScheduledTask -Action $taskAction -Trigger $taskTrigger -TaskName "Virtual Monitor Helper" -Principal $taskPrincipal -RunLevel Highest
