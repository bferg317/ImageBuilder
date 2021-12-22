Stop-Service "Tanium Client"
Set-Service "Tanium Client" -StartupType Automatic
'C:\Program Files (x86)\Tanium\Tanium Client\TaniumClient.exe config remove ComputerID'
'C:\Program Files (x86)\Tanium\Tanium Client\TaniumClient.exe config remove RegistrationCount'
'C:\Program Files (x86)\Tanium\Tanium Client\TaniumClient.exe config remove LastGoodServerName'
'C:\Program Files (x86)\Tanium\Tanium Client\TaniumClient.exe config set RandomSensorDelayInSeconds 20'
'C:\Program Files (x86)\Tanium\Tanium Client\TaniumClient.exe config set MaxAgeMultiplier 2'
'C:\Program Files (x86)\Tanium\Tanium Client\TaniumClient.exe config set MinDistributeOverTimeInSeconds 60'
'C:\Program Files (x86)\Tanium\Tanium Client\TaniumClient.exe config set LogVerbosityLevel 0'
'C:\Program Files (x86)\Tanium\Tanium Client\TaniumClient.exe config set Logs.extensions.LogVerbosityLevel 0'
'C:\Program Files (x86)\Tanium\Tanium Client\TaniumClient.exe config set SaveClientStateIntervalInSeconds 1800'
Get-ChildItem "C:\Program Files (x86)\Tanium\Tanium Client\Downloads" -Recurse | Remove-Item -Recurse -Force
Remove-Item "C:\Program Files (x86)\Tanium\Tanium Client\pki.db"
