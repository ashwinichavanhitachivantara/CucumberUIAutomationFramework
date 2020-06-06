@Regression @Smoke @Sanity @test18
Feature: "Sign in" functionality 

@Smoke @Sanity 
Scenario: Successful "Login" with "Valid Credentials" 
	Given User direct to HDEM application 
	When User log in to HDEM application 
	Then Login sucessfully should display for user 
	#Then User log out from Hdem console
  
 @Sanity @Regression
 Scenario: Verify "Login" with "Wrong Credentials"
   Given User direct to HDEM application
   When User log in to HDEM application with wrong credentials
   Then Error message should displayed
   
