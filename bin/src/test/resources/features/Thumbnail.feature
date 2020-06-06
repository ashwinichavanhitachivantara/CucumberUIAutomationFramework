@Regression @Smoke @Sanity @test
Feature: "Thumbnail functionality" for Exhibit type as "Video" 

Background: 
	Given User direct to HDEM application 
	When User log in to HDEM application and clicks on Evidence Basket 
	And User clicks on Particuler Evidence Basket Unique ID
	And User clicks on Video Exhibit Item
	And User clicks on VideoAudio Functions

#Check Thumbnail Functionality
	
@Smoke @Sanity 
Scenario: Validate "Thumbnail" for "Video" 
	Then User click on Thumbnail option 
	Then User click on Rectangle button  
	Then User enters a Thumbnail description
	And User click on 'Create Thumbnail Child' button
	Then User sees a create a Thumbnail child exhibit item pop-up and clicks on confirm button
	Then User see a child Thumbnail exhibit created pop-up 
    Then User clicks on View Child exhibit item  
    
@Smoke @Sanity 
Scenario: Check "Manditory popup" for "Thumbnail"
	Then User click on Thumbnail option 
	Then User click on Rectangle button  
	And User click on 'Create Thumbnail Child' button
	Then User sees a create a manditory pop-up and clicks on close button    
    