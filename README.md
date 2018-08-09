# pester-selenium

Get-Module -ListAvailable
Import-Module -Name ModuleName
Get-Command -Module ModuleName

Import-Module $ENV:DevOpsDK_PATH
Install-FromS3Folder -bucket ODME -key /For-Fit-Tests/SeleniumAndDrivers_20180317.zip -justDownload true