@Regression @Smoke @Sanity @test 
Feature: "Clip functionality" for Exhibit type as "Video" 

Background: 
	Given User direct to HDEM application 
	When User log in to HDEM application and clicks on Evidence Basket 
	And User clicks on Particuler Evidence Basket Unique ID 
	And User clicks on Video Exhibit Item 
	And User clicks on VideoAudio Functions
	
@Smoke @Sanity @test27
Scenario: Check "Clip option" is available for "Video" 
	Then User click on clip option 
	
@Smoke @Sanity 
Scenario Outline: Validate "All Clip elements" available for "Video" 
	Then User click on clip option 
	Then User checked clip page "<element>" 
	
	Examples: 
		| element          | 	 
		| Clip Start       |
		| Clip End         |
		| Clip Start Time  |
		| Clip End Time    |
		| Clip Description |
		| Clear            |
 	 
 	 
@Smoke @Sanity 
Scenario: Validate "Clip" functionality is available for "Video" 
	Then User click on clip option 
	Then User click on clip start button 
	#And User enters value in clip start time 
	And click on clip end button 
	And User enters value in clip end time 
	And User enters clip description 
	Then User clicks on Create Child Clip button 
	Then User should see Create Child Exhibit Item pop-up 
	
	
@Smoke @Sanity 
Scenario: Validate "Clip Clear" functionality is available for "Video" 
	Then User click on clip option 
	Then User click on clip start button 
	And click on clip end button 
	And User enters clip description 
	Then User clicks on clear button 
	
@Smoke @Sanity
Scenario: Validate "Pop-up to enter mandatory fields" available for "Video" 
	Then User click on clip option 
	Then User click on clip start button 
	Then User clicks on Create Child Clip button 
	And User see a pop-up to enter mandatory fields 
	
@Smoke @Sanity 
Scenario: Validate "Close button" availble for "pop-up to enter mandatory fields" for "Video" 
	Then User click on clip option 
	Then User click on clip start button 
	Then User clicks on Create Child Clip button 
	And User see a pop-up to enter mandatory fields 
	And User should able to close the pop-up 
	
	
@Smoke @Sanity 
Scenario: Validate "Create Child Exhibit Item pop-up" 'Cancel' functionality for "Video" 
	Then User click on clip option 
	Then User click on clip start button 
	#And User enters value in clip start time 
	And click on clip end button 
	And User enters value in clip end time 
	And User enters clip description 
	Then User clicks on Create Child Clip button 
	Then User clicks on Cancel button in Create Child Exhibit Item pop-up 
	And should land on clip page 
	
#@Smoke @Sanity 
#Scenario Outline: Validate 'Cancel' button for 'Navigate Pop-up' availble for "Video" 
#	Then User click on clip option 
#	Then User click on all "<element>" 
#	And User should see a navigation pop-up 
#	Then User click on cancel button 
#	
#	Examples: 
#		| element     | 
#		| data        |  
#		| relatedItem |
#		| redact      |
#		| thumbnail   | 
#		| image       |	
		
#@Smoke @Sanity  
#Scenario Outline: Validate 'Confirm' button for 'Navigate Pop-up' availble for "Video"
# 	 Then User click on clip option  
# 	 Then User click on all "<element>"	
# 	 And User should see a navigation pop-up 
#	 Then User click on confirm button and check land to associate "<Page>"
#	 
#	Examples:
#		| element     | Page         |
#		| data        |  Data        |
#		| relatedItem |Related Items |
#		| redact      | Redact       |
#        | thumbnail   | Thumbnail    |
#		| image       |	Still Image  |
	
@Smoke @Sanity 
Scenario: Validate "Parent unique id" for "Video" 
	Then User should see an unique ID 
	
@Smoke @Sanity 
Scenario: Validate "Create Child Exhibit Item pop-up" 'Confirm' and 'Close alert' button for "Child Clip Exhibit pop-up" functionality for "Video" 
	Then User click on clip option 
	Then User click on clip start button 
	#And User enters value in clip start time 
	And click on clip end button 
	And User enters value in clip end time 
	And User enters clip description 
	Then User clicks on Create Child Clip button 
	Then User clicks on Confirm button in Create Child Exhibit Item pop-up 
	And should land on clip page 
	Then User see a child clip exhibit created pop-up 
    Then User click on close alert	
	
@Smoke @Sanity 
Scenario: Validate "Child Clip Exhibit pop-up" created for "Video" 
	Then User click on clip option 
	Then User click on clip start button 
	#And User enters value in clip start time 
	And click on clip end button 
	And User enters value in clip end time 
	And User enters clip description 
	Then User clicks on Create Child Clip button 
	Then User clicks on Confirm button in Create Child Exhibit Item pop-up 
	Then User see a child clip exhibit created pop-up 
    Then User clicks on View Child exhibit item  
    	
#@Smoke @Sanity 
#Scenario: Validate "Child clip created" in "Related items" for "Video" 
#	Then User click on Related exhibit items option 
#	And User counts the entry in related item 
#	Then User click on clip option 
#	Then User click on clip start button 
#	And User enters value in clip start time 
#	And click on clip end button 
#	And User enters value in clip end time 
#	And User enters clip description 
#	Then User clicks on Create Child Clip button 
#	Then User clicks on Confirm button in Create Child Exhibit Item pop-up 
#	Then User see a child clip exhibit created pop-up 
#    Then User click on close alert
#	Then User click on Related exhibit items option 
#	And User clicks on confirm on the navigation pop-up
#	And for video user should see the increase count in related item 
 	