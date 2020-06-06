@Regression @Smoke @Sanity @test
Feature: "Redact functionality" for Exhibit type as "Video" 

Background: 
	Given User direct to HDEM application 
	When User log in to HDEM application and clicks on Evidence Basket 
	And User clicks on Particuler Evidence Basket Unique ID
	And User clicks on Video Exhibit Item 
	And User clicks on VideoAudio Functions

#Check Redact functionality
	
@Smoke @Sanity
Scenario: Validate "Redact" functionality for "Video" 
	Then User click on Redact option 
	And User sees an redact pop-up and click on confirm button
	Then User click on Rectangle shape  
	Then User enters a redact description
	And User click on 'Create Redact Child' button
	Then User sees a create a Redact child exhibit item pop-up and clicks on confirm button
	Then User see a child redact exhibit created pop-up 
    Then User clicks on View Child exhibit item  
    
@Smoke @Sanity 
Scenario: Check "Manditory popup" for "Redact"
	Then User click on Redact option 
	And User sees an redact pop-up and click on confirm button
	Then User click on Rectangle shape  
	And User click on 'Create Redact Child' button
	Then User sees a create a manditory pop-up and clicks on close button    
	
@Smoke @Sanity 
Scenario: Check "Redact warning popup" 
	Then User click on Redact option 
    And User sees an redact pop-up and click on cancel button
    
	                                                            
	                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          
	