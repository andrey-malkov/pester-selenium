function Set-PortalTestAccess(
	[Parameter()]
	$Driver,
	[Parameter()]
	$Url,
	[Parameter()]
	$Password)
{
	$driver.Url = $url
	$md5 = [System.Security.Cryptography.MD5]::Create()
	$accessToken = [bitconverter]::ToString($md5.ComputeHash([Text.Encoding]::ASCII.GetBytes($password))) -replace "-"
	$cookie = [OpenQA.Selenium.Internal.ReturnedCookie]::new("TestAccessToken", $accessToken.ToLowerInvariant(), $null, $null, $null, $True, $True)
	Write-Host "cookie $cookie"
	$driver.Manage().Cookies.AddCookie($cookie)
}

function Submit-LogonForm(
	[Parameter()]
	$Driver,
	[Parameter()]
	$Login,
	[Parameter()]
	$Password)
{
	Invoke-JsScript -Driver $Driver -Script @"
		emailElements = `$('input.noclear[name="email"]:visible')
		pwdElements = `$('input.noclear[name="pwd"]:visible')
		buttonElements = `$('button:contains("Sign In"):visible')
		if (emailElements.length > 0 && pwdElements.length > 0 && buttonElements.length > 0) {
			emailElements.val('$Login')
			pwdElements.val('$Password')
			emailElements.keyup()
			pwdElements.keyup()
			buttonElements.click()
		}
"@
}