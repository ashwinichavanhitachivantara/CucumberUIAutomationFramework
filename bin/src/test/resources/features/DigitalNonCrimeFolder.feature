@Regression @Smoke @Sanity @test 
Feature: Navigate to "Create digitalNonCrimefolder Page"

Background:
	 Given User direct to HDEM application
     When User log in to HDEM application
     Then Login sucessfully should display for user
 	 Then User clicks on digitalNonCrimefolder

@Smoke1 
Scenario: Check "Digital Non Crime Folder" Page is loading with all data elements 
 	 And User checks Digital Non Crime Folder container page loaded successfully     
      
@Sanity 
Scenario: Check "digitalNonCrimefolder all attributes" are available 
     And User clicks on Create digitalNonCrimefolder
 	 Then User checks all attributes are available on the Create digitalNonCrimefolder page
 	 
@Smoke @Sanity 
Scenario: Check "Create digitalNonCrimefolder" functionality
     And User clicks on Create digitalNonCrimefolder
 	 Then User Creates digitalNonCrimefolder 
 	 Then User see a notification for digitalNonCrimefolder and click on confirm button
 	 Then User see an digitalNonCrimefolder unique number and click on continue button

@Smoke @Sanity 
Scenario: Check "Mandatory pop-up" of "Create digitalNonCrimefolder" functionality
     And User clicks on Create digitalNonCrimefolder
 	 Then User clicks on Create digitalNonCrimefolder button
 	 Then User see a manditory notification and click on close button
	
	
	
