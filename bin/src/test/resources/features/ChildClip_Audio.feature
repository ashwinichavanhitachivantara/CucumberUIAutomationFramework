@Regression @Smoke @Sanity 
Feature: "Clip functionality" for Exhibit type as "Audio" 

Background: 
	Given User direct to HDEM application 
	When User log in to HDEM application and clicks on Evidence Basket 
	And User clicks on Particuler Evidence Basket Unique ID
	And User clicks on Test Audio
	And User clicks on VideoAudio Functions
	
@Smoke @Sanity 
Scenario Outline: 
Validate "Child clip created" in "Related items" for "Audio" 
	Then User click on clip option 
	Then User create clip  
	And User clicks on related item entry
	Then User checks all elements available for audio child clip	
	
	Examples:
		| element        | 
		| Data           |  
		| Related Items  |
		


	