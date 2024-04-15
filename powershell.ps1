$action = New-ScheduledTaskAction -Execute 'C:\Users\mfirdosiapar\AppData\Local\Programs\Python\python.exe' -Argument 'C:\Users\mfirdosiapar\OneDrive - DXC Production\Desktop\Azurepy\Azure\main.py'
$trigger = New-ScheduledTaskTrigger -Once -At (Get-Date).AddMinutes(10) -RepetitionInterval (New-TimeSpan -Minutes 10) -RepetitionDuration ([timespan]::MaxValue)
Register-ScheduledTask -TaskName "Test" -Action $action -Trigger $trigger -Description "Run Python script every 10 minutes"
