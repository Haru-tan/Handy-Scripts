$action = New-ScheduledTaskAction -Execute 'C:\IddSampleDriver\VirtualMonitorHelper.exe'
$trigger = New-ScheduledTaskTrigger -AtLogOn
Register-ScheduledTask -Action $action -Trigger $trigger -TaskName "Virtual Monitor Helper" -RunLevel Highest

