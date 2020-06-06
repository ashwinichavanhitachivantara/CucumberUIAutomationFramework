@Regression @Smoke @Sanity 
Feature: Navigate to "Video & Audio Functions Page details"

Background:
	 Given User direct to HDEM application
     When User log in to HDEM application
     Then Login sucessfully should display for user
 	 Then User clicks on Evidence Basket header
     And User clicks on Particuler Evidence Basket Unique ID
     
#Check All the sub-tabs are present for Video & Audio Functions Page 
     
@Smoke @Sanity @test
Scenario Outline: Check "Video & Audio Functions Page options" is available for "Video"
 	 And User clicks on Video Exhibit Item 
 	 And User clicks on VideoAudio Functions
 	 Then I checked evidence basket page "<element>"		
	
	Examples:
		| element        | 
		| Clip           |
		| Redact         |
        | Thumbnail      |
		| Still Image    |
		| Amalgamation   |
