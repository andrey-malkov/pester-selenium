# pester-selenium

Get-Module -ListAvailable
Import-Module -Name ModuleName
Get-Command -Module ModuleName

Import-Module $ENV:DevOpsDK_PATH
Install-Chocolatey
C:\ProgramData\chocolatey\bin\cinst pester -y
Install-FromS3Folder -bucket ODME -key /For-Fit-Tests/SeleniumAndDrivers_20180317.zip -justDownload true

cd C:\Source
git clone git@github.com:andrey-malkov/pester-selenium.git ods-tests
cd ods-tests
Import-Module -Name Pester

http://localhost:8089/DellApollo.SharedScenarios.SeleniumScenarios