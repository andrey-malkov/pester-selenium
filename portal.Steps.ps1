Import-Module $PSScriptRoot\Selenium.psm1 -Force
Import-Module $PSScriptRoot\portal.Lib.psm1 -Force

Given 'ODS portal url is (\S*)' {
	param($url)
	
	$Script:Driver = Start-SeChrome
	Set-PortalTestAccess -Driver $Script:Driver -Url $url -Password "OnDemand12"
	Enter-SeUrl -Driver $Script:Driver -Url $url
}

When 'press (\w+ \w+) button' {
	param($buttonTitle)

	Invoke-JsScript -Driver $Script:Driver -Script @"
		signinLink = `$('.btnUser button:contains("$buttonTitle"):visible')
		if (signinLink.length == 1) {
			signinLink[0].click()
		}
"@
}

And 'enter login (?<login>\S*) and password (?<password>\S*)' {
	param($login, $password)
	
	Submit-LogonForm -Driver $Script:Driver -Login $login -Password $password
}