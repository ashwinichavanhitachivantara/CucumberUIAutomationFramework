@Regression 
Feature: Verifying the Sign In functionality 

Scenario: Successful Login with Valid Credentials 
	Given Login with correct credentials 
	Then Verify user is logged in properly
	
Scenario: Verify Error message when Login with Invalid credentials 
	Given Login with correct credentials 
	Then Verify error message