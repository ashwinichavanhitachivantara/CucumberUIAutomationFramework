@Regression @Smoke @Sanity 
Feature: "Clip functionality" for Exhibit type as "Audio" 

Background: 
	Given User direct to HDEM application 
	When User log in to HDEM application and clicks on Evidence Basket 
	And User clicks on Particuler Evidence Basket Unique ID
	And User clicks on Test Audio 
	And User clicks on VideoAudio Functions
	
@Smoke @Sanity  
Scenario: 
Check "Clip option" is available for "Audio"
	Then User click on clip option 
	
@Smoke @Sanity 
Scenario Outline: 
Validate "All clip elements" available for "Audio" 
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
Scenario: 
Validate "Clip" functionality is available for "Audio"
 	 Then User click on clip option 
 #	 Then User click on footage 
 	 Then User click on clip start button
 	 And User enters value in clip start time
 	 And click on clip end button
 	 And User enters value in clip end time
 	 And User enters clip description
 	 Then User clicks on Create Child Clip button
 	 Then User should see Create Child Exhibit Item pop-up
 	 
@Smoke @Sanity  
Scenario: 
Validate "Clip Clear" functionality is available for "Audio"
 	 Then User click on clip option  
 	 Then User click on clip start button
 	 And User enters value in clip start time
 	 And click on clip end button
 	 And User enters value in clip end time
 	 And User enters clip description
 	 Then User clicks on clear button	 
 	 
@Smoke @Sanity 
Scenario: 
Validate "Pop-up to enter mandatory fields" available for "Audio"
 	 Then User click on clip option  
 	 Then User click on clip start button 	
 	 Then User clicks on Create Child Clip button
 	 And User see a pop-up to enter manditory fields
 	 
@Smoke @Sanity  
Scenario: 
Validate 'Close button' availble for "Pop-up to enter mandatory fields" for "Audio"
 	 Then User click on clip option  
 	 Then User click on clip start button 	
 	 Then User clicks on Create Child Clip button
 	 And User see a pop-up to enter manditory fields 	 
 	 And User should able to close the pop-up
 	  	 
@Smoke @Sanity  @test2
Scenario Outline: 
Validate 'Cancel' button for 'Navigate Pop-up' availble for "Audio"
 	 Then User click on clip option  
 	 Then User click on all "<element>"	
 	 And User should see a navigation pop-up 
	 Then User click on cancel button 

	Examples:
		| element        | 
		| Data           |  
		| Related Items  |
		| Redact         |
        | Thumbnail      |
		| Still Image    |	

@Smoke @Sanity  @test2
Scenario Outline: 
Validate 'Confirm' button for 'Navigate Pop-up' availble for "Audio"
 	 Then User click on clip option  
 	 Then User click on all "<element>"	
 	 And User should see a navigation pop-up 
	 Then User click on confirm button and check land to associate page "<element>"

	Examples:
		| element        | 
		| Data           |  
		| Related Items  |
		| Redact         |
        | Thumbnail      |
		| Still Image    |		
 	   	 
 	  	 
@Smoke @Sanity  
Scenario: 
Validate "Parent unique id" for "Audio"
 	 Then User should see an unique ID  	  	 
 	 
@Smoke @Sanity  
Scenario: 
Validate "Create Child Exhibit Item pop-up" 'Cancel' functionality for "Audio"
 	 Then User click on clip option 
 	 Then User click on clip start button
 	 And User enters value in clip start time
 	 And click on clip end button
 	 And User enters value in clip end time
 	 And User enters clip description
     Then User clicks on Create Child Clip button
 	 Then User clicks on Cancel button in Create Child Exhibit Item pop-up
 	 And should land on clip page
 	 
@Smoke @Sanity 
Scenario: 
Validate "Create Child Exhibit Item pop-up" 'Confirm' and 'Close alert' button for "Child Clip Exhibit pop-up" functionality for "Audio"
	Then User click on clip option 
	Then User click on clip start button 
	And User enters value in clip start time 
	And click on clip end button 
	And User enters value in clip end time 
	And User enters clip description 
	Then User clicks on Create Child Clip button 
	Then User clicks on Confirm button in Create Child Exhibit Item pop-up 
	And should land on clip page 
	Then User see a child clip exhibit created pop-up 
    Then User click on close alert	
	
	#@Smoke @Sanity 
	#Scenario: Validate "Created Child clip size" and "Child clip visible" in "AWS s3" for "Audio"
	# 	 Then User click on clip option 
	# 	 Then User click on clip start button
	# 	 And User enters value in clip start time
	# 	 And click on clip end button
	# 	 And User enters value in clip end time
	# 	 And User enters clip description
	#     Then User clicks on Create Child Clip button
	# 	 Then User clicks on Confirm button in Create Child Exhibit Item pop-up	 	
	#     And User should see a clip file with reduced file size	  	 
 
	
@Smoke @Sanity 
Scenario: Validate "Child Clip Exhibit pop-up" created for "Audio" 
	Then User click on clip option 
	Then User click on clip start button 
	And User enters value in clip start time 
	And click on clip end button 
	And User enters value in clip end time 
	And User enters clip description 
	Then User clicks on Create Child Clip button 
	Then User clicks on Confirm button in Create Child Exhibit Item pop-up 
	Then User see a child clip exhibit created pop-up 
    Then User clicks on View Child exhibit item  
	
#@Smoke @Sanity 
#Scenario: Validate "Close alert" button for "Child Clip Exhibit pop-up" created for "Audio" 
#	Then User click on clip option 
#	Then User click on clip start button 
#	And User enters value in clip start time 
#	And click on clip end button 
#	And User enters value in clip end time 
#	And User enters clip description 
#	Then User clicks on Create Child Clip button 
#	Then User clicks on Confirm button in Create Child Exhibit Item pop-up 
#	Then User see a child clip exhibit created pop-up 
#	Then User click on close alert	
 
@Smoke @Sanity @test5
Scenario: 
Validate "Child clip created" in "Related items" for "Audio" 
	Then User click on clip option 
	Then User click on Related exhibit items option 
	And User counts the entry in related item 
	Then User click on clip option 
	Then User click on clip start button 
	And User enters value in clip start time 
	And click on clip end button 
	And User enters value in clip end time 
	And User enters clip description 
	Then User clicks on Create Child Clip button 
	Then User clicks on Confirm button in Create Child Exhibit Item pop-up 
	Then User click on Related exhibit items option 
	And User should see the increase count in related item 
	
		
	