@Regression @Smoke @Sanity  
Feature: Navigate to "Audit Page"

Background:
	 Given User direct to HDEM application
     When User log in to HDEM application
     Then Login sucessfully should display for user
 	 Then User clicks on Audit tab

@Smoke1
Scenario: Check "Audit" Page is loading with all data elements 
 	 And User checks Audit page loaded successfully
 	 
 	 
 	 
 	 