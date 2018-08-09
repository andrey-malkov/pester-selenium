Import-Module $PSScriptRoot\Selenium.psm1

Given 'ODS portal url is (\S*)' {
	param($url)
	
	Write-Host "ODS url is $url"
	
	$Driver = Start-SeChrome
	Enter-SeUrl -Driver $Driver -Url "https://pportal.ondemand.quest.com"
}