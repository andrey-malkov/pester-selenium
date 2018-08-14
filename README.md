# pester-selenium

https://kevinmarquette.github.io/2017-03-17-Powershell-Gherkin-specification-validation/
https://kevinmarquette.github.io/2017-04-30-Powershell-Gherkin-advanced-features/
https://github.com/pester/Pester
https://github.com/adamdriscoll/selenium-powershell

Get-Module -ListAvailable
Import-Module -Name Pester
Get-Command -Module ModuleName

Import-Module $ENV:DevOpsDK_PATH
Install-Chocolatey
C:\ProgramData\chocolatey\bin\cinst pester -y
Install-FromS3Folder -bucket ODME -key /For-Fit-Tests/SeleniumAndDrivers_20180317.zip -justDownload true

Read-S3Object -BucketName ODME -Key /For-Fit-Tests/SeleniumAndDrivers_20180317.zip -File C:\tools\SeleniumAndDrivers_20180317.zip

git clone git@github.com:andrey-malkov/pester-selenium.git
choco upgrade pester

cd C:\Source
git clone git@github.com:andrey-malkov/pester-selenium.git ods-tests
cd ods-tests
Import-Module -Name Pester


http://localhost:8089/DellApollo.SharedScenarios.SeleniumScenarios