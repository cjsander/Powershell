#-------------------------------------------------------------------------
#The Powershell Cmdlts I Use Enough to document but not enough to remember
#-------------------------------------------------------------------------

#Powershell session log to file 
Start-Transcript "C:\src\pslogger.log" -append

Stop-Transcript

#Create new GUID:
[guid]::NewGuid()

#Copy File:
Copy-Item -Path C:\src\testbatch.bat -Destination C:\workspace\Commons 

#Copy Items and Retain Folder Structure ( Use the Copy-Item cmdlet and specify the –Container switched parameter)
$sourceRoot = "C:\src"
$destinationRoot = "C:\n"
Copy-Item -Path $sourceRoot -Filter "*.txt" -Recurse -Destination $destinationRoot -Container

#List Directory Contents
Get-ChildItem -Path "C:\Program Files\dotnet\sdk"

#List Server Certificate Commands
GET-COMMAND *CERT*

#List Server Certificate Thumbprint Info
Get-ChildItem -path cert:\LocalMachine\My

#List Environment Variables
Get-ChildItem Env:

#Change Environment Variable - Caution!
#Reference:  https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_environment_variables?view=powershell-6
# $Env:ASPNETCORE_ENVIRONMENT = "Development"

#List the modules that have been imported or that can be imported into the current session
Get-Module

#List All Available Modules
Get-Module -ListAvailable -All

#Search for a file
Get-ChildItem -Path c:\ -Recurse MSBuild.exe | Select-Object -Property FullName
Get-ChildItem -Path c:\ -Recurse *.targets | Select-Object -Property FullName

#Determine if running on 32 or 64 bit
gwmi win32_operatingsystem | select osarchitecture

#List processor type
$env:PROCESSOR_ARCHITECTURE

#Search Registry

Get-Item -Path Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion | Select-Object -ExpandProperty Property
 
Get-ItemProperty -Path Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion

Get-ItemProperty -Path Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\MSBuild\ToolsVersions\14.0

reg query HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion /v DevicePath



















