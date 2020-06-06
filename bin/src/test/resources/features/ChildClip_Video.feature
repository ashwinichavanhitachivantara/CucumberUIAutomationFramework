@Regression @Smoke @Sanity @test
Feature: "Child Clip" for Exhibit type as "Video" 

Background: 
	Given User direct to HDEM application 
	When User log in to HDEM application and clicks on Evidence Basket 
	And User clicks on Particuler Evidence Basket Unique ID
	And User clicks on Video Exhibit Item 
	And User clicks on VideoAudio Functions
	
# Check Child Clip through 'Relationship page' and 'View Child exhibit item pop-up option' 
	
@Smoke @Sanity 
Scenario: Validate "Child clip created" in "Relationship page" for "Video" 
	Then User click on clip option 
	Then User create clip  
	Then User see a child clip exhibit created pop-up 
	And User see an child unique ID
	Then User click on close alert
	And User clicks on relationship page entry
#	Then User checks all elements available for video child clip	
	
@Smoke @Sanity @need
Scenario: Validate "Child clip created" through "View Child exhibit item pop-up option" for "Video" 
	Then User click on clip option 
	Then User create clip  
	Then User see a child clip exhibit created pop-up
	Then User clicks on View Child exhibit item  
#	And User checks Clip Duration and Clip Description