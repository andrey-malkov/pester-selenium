Feature: Cross data center login

Scenario: ODS portal is deployed in two data centers
	Given ODS portal url is https://pportal.ondemand.quest.com
	When press Sign In button
	And enter login apollo-test@brutus.qsftdemo.com and password ~123qwerty