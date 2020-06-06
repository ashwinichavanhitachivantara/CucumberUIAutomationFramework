@Regression @Smoke @Sanity  
Feature: "Exhibit Item Data field" for Exhibit type as "Video"

Background:
     Given User direct to HDEM application
     When User log in to HDEM application and clicks on Evidence Basket
 	 And User clicks on Particuler Evidence Basket Unique ID
 	    
#Check all the elements for 'Exhibit Item Data' page     
@Smoke @Sanity @test
Scenario Outline: Validate "Exhibit Item Data page elements" for "Video" exhibit type
     And User clicks on Video Exhibit Item
 	 And checked data page "<element>"		
	
	Examples:
		| element                         | 
		| Exhibit type                    |  
		| Exhibit Source                  |
        | Exhibit Source ID               |
        | Exhibit Source Location         |
        | Exhibit Source Map Location     |
		| Footage Date                    |
		| Footage Duration                |
 	    | Footage Start                   |
 	    | Footage End                     |
 	    | Footage Location                |
        | Crime Classification            |
        | GDPR Classification             |
        | Disclosure Classification       |
        | HDEM Sensitivity                |
        | MoPI Classification             |
        | MoPI Classification Description |
 	    | Description                     | 	    
 	    

@Smoke @Sanity @test
Scenario Outline: Validate "Exhibit Item Data elements with values" for "Video" exhibit type
     And User clicks on Video Exhibit Item 
 #	 And User clicks on confirm on the navigation pop-up
 	 And User checked if data page "<element>" filled with values	
	
	Examples:
		| element                         | 
		| Exhibit type                    |  
		| Exhibit Source                  |
        | Exhibit Source ID               |
        | Exhibit Source Location         |
        | Exhibit Source Map Location     |
		| Footage Date                    |
		| Footage Duration                |
 	    | Footage Start                   |
 	    | Footage End                     |
 	    | Footage Location                |
        | Crime Classification            |
        | GDPR Classification             |
        | Disclosure Classification       |
        | HDEM Sensitivity                |
        | MoPI Classification             |
        | MoPI Classification Description |
 	    | Description                     | 		    
 	    	    