@Regression @Smoke @Sanity @test
Feature: Navigate to "Create Digital Crime Folder Page"

Background:
	 Given User direct to HDEM application
     When User log in to HDEM application
     Then Login sucessfully should display for user
 	 
@Smoke1 
Scenario: Check "Digital Crime Folder" Page is loading with all data elements 
     Then User clicks on Digital Crime Folder header 
 	 And User checks Digital Crime Folder container page loaded successfully
     
@Sanity 
Scenario: Check "Digital Crime Folder all attributes" are available 
     Then User clicks on Digital Crime Folder header
     And User clicks on Create digital crime folder option 
 	 Then User checks all attributes are available on the Create Digital Crime Folder page
 	 
@Sanity 
Scenario: Check "Create Digital Crime Folder" functionality
     Then User clicks on Digital Crime Folder header
     And User clicks on Create digital crime folder option 
 	 Then User Creates Digital Crime Folder 
 	 Then User see a notification and click on confirm button
 	 Then User see an Digital Crime Folder unique number and click on continue button
	 
@Sanity 
Scenario: Check "Manditory pop-up" of "Create Digital Crime Folder" functionality
     Then User clicks on Digital Crime Folder header
     And User clicks on Create digital crime folder option 
 	 Then User clicks on Submit-Create Digital Crime Folder button
 	 Then User see a manditory notification and click on close button
 	 
#Check all Digital Crime Folder Container tab
@Smoke @Sanity  
Scenario: Check "All Digital Crime Folder Container tab" available in "Digital Crime Folder" 
     Then User clicks on Digital Crime Folder header
      And User clicks on Particuler Digital Crime Folder Unique ID
      Then User checks all the tabs avaialble in DigitalCrimeFolder container      
      
#Relationships links
@Smoke @Sanity 
Scenario: Check "Add an Exhibit Item Link" of "Digital Crime Folder container Relationships" functionality
     Then User clicks on Digital Crime Folder header
     And User clicks on Particuler Digital Crime Folder Unique ID
     Then User add an Exhibit Item Link

@Smoke @Sanity 
Scenario: Check "Custody and C&C Relationship links" and "Remove option" of "Digital Crime Folder container Relationships" functionality
     Then User clicks on Digital Crime Folder header
     And User clicks on Particuler Digital Crime Folder Unique ID
     Then User clicks on add C&C and Custody and enter values
     Then User remove CC and Custody links
 	 
@Smoke @Sanity 
Scenario: Check "Edit Exhibit Item Titles" of "Digital Crime Folder container Relationships" functionality
     Then User clicks on Digital Crime Folder header
     And User clicks on Particuler Digital Crime Folder Unique ID
     Then User clicks on Edit Exhibit Item Titles and enter values
       	
#Data
@Smoke @Sanity 
Scenario: Check "Edit Digital Crime Folder Data" of "Digital Crime Folder container" functionality
     Then User clicks on Digital Crime Folder header
     And User clicks on Particuler Digital Crime Folder Unique ID
     Then User click on Edit Digital Crime Folder Data
       	
#Originator
@Smoke @Sanity  
Scenario: Check "All Originator fields" available in "Digital Crime Folder container" 
     Then User clicks on Digital Crime Folder header
      And User clicks on Particuler Digital Crime Folder Unique ID
      Then User checks all the tabs avaialble in DigitalCrimeFolder container      	
      
#Comments       	
@Smoke @Sanity 
Scenario: Check "Add comment" of "Digital Crime Folder container" functionality
     Then User clicks on Digital Crime Folder header
     And User clicks on Particuler Digital Crime Folder Unique ID
     Then User adds the comments and able to see comments added 	 	  	


#Evidence Bakset Container view Functionality
@Smoke @Sanity  
Scenario: Check "Title View" functionality of "View Digital Crime Folder container" page
     Then User clicks on Digital Crime Folder header
     And User clicks on Title option
    
@Smoke @Sanity  
Scenario: Check "List View" functionality of "View Digital Crime Folder container" page
     Then User clicks on Digital Crime Folder header
     And User clicks on List option    

@Smoke @Sanity 
Scenario: Check "Owned" functionality of "View Digital Crime Folder container" page
     Then User clicks on Digital Crime Folder header
     And User clicks on Owned option    

@Smoke @Sanity 
Scenario: Check "All" functionality of "View Digital Crime Folder container" page
     Then User clicks on Digital Crime Folder header
     And User clicks on All option
     
@Smoke @Sanity 
Scenario: Check "Search" functionality of "View Digital Crime Folder container" page
     Then User clicks on Digital Crime Folder header
     And User clicks on Search option and searched value    
     
     
     
