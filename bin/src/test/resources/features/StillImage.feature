@Regression @Smoke @Sanity @test
Feature: "Still Image functionality" for Exhibit type as "Video" 

Background: 
	Given User direct to HDEM application 
	When User log in to HDEM application and clicks on Evidence Basket 
	And User clicks on Particuler Evidence Basket Unique ID
	And User clicks on Video Exhibit Item 
	And User clicks on VideoAudio Functions

#Check Still Image Functionality
	
@Smoke @Sanity 
Scenario: Validate "Still Image" for "Video" 
	Then User click on Still Image option 
	Then User click on Image button  
	Then User enters a Image description
	And User click on 'Create Still Image Child' button
	Then User sees a create a Still Image child exhibit item pop-up and clicks on confirm button
	Then User see a child Still Image exhibit created pop-up 
    Then User clicks on View Child exhibit item  
    
@Smoke @Sanity 
Scenario: Check "Manditory popup" for "Still Image"
	Then User click on Still Image option 
	Then User click on Image button  
	And User click on 'Create Still Image Child' button
	Then User sees a create a manditory pop-up and clicks on close button
	
	
	