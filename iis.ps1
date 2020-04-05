
#Install IIS
Add-WindowsFeature -Name Web-Server -IncludeManagementTools

#Remove default htm file
Remove-item  C:\inetpub\wwwroot\iisstart.htm

#Add custom htm file
Add-Content -Path "C:\inetpub\wwwroot\iisstart.htm" -Value $("Hello World from host " + $env:computername)
 
 