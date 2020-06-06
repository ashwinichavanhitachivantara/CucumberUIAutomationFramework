@Regression @Smoke @Sanity  
Feature: Navigate to "Visualisation Page"

Background:
	 Given User direct to HDEM application
     When User log in to HDEM application
     Then Login sucessfully should display for user
 	 Then User clicks on Visualisation tab

@Smoke 
Scenario: Check "Visualisation" Page is loading with all data elements 
 	 And User checks Visualisation page loaded successfully     
 	 
 	 
 	
 	 