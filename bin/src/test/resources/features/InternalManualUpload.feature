@test19 @smoke
Feature: Internal Manual Upload 

 
 @Smoke1
  Scenario: Verify the elements of Internal Manual Upload
    Given User direct to HDEM application 
		When User log in to HDEM application 
    Then User go to internal manual upload
    And Verify the Internal Manual Element
 
  @test19
  Scenario: Internal Manual Upload Video file
    Given User direct to HDEM application 
		When User log in to HDEM application 
    When User go to internal manual upload
    And Upload video to digital store
    Then validate the uploaded video in digital store

	@test19
  Scenario: Internal Manual Upload Audio file
    Given User direct to HDEM application 
		When User log in to HDEM application 
    When User go to internal manual upload
    And Upload Audio to digital store
    Then validate the uploaded Audio in digital store
#
#	@sanity
  #Scenario: Internal Manual Upload UI element
    #Given User direct to HDEM application 
#		When User log in to HDEM application 
    #When User go to internal manual upload
    #And Upload Image to digital store
    #Then validate the uploaded Image in digital store
    #
#	@sanity
  #Scenario: Internal Manual Upload UI element
    #Given User direct to HDEM application 
#		When User log in to HDEM application 
    #When User go to internal manual upload
    #And Upload TextFile to digital store
    #Then validate the uploaded TextFile in digital store
 #
 #@sanity
  #Scenario: Internal Manual Upload UI element
    #Given User direct to HDEM application 
#		When User log in to HDEM application 
    #When User go to internal manual upload
    #And Upload video to Internal Ingest Queue
    #Then validate the uploaded video in Internal Ingest Queue
#
#
  #@sanity
  #Scenario: Internal Manual Upload UI element
    #Given User direct to HDEM application 
#		When User log in to HDEM application 
    #When User go to internal manual upload
    #And Upload Audio to Internal Ingest Queue
    #Then validate the uploaded Audio in Internal Ingest Queue
#
#	@sanity
  #Scenario: Internal Manual Upload UI element
    #Given User direct to HDEM application 
#		When User log in to HDEM application 
    #When User go to internal manual upload
    #And Upload Image to Internal Ingest Queue
    #Then validate the uploaded Image in Internal Ingest Queue
    #
#	@sanity
  #Scenario: Internal Manual Upload UI element
    #Given User direct to HDEM application 
#		When User log in to HDEM application 
    #When User go to internal manual upload
    #And Upload TextFile to Internal Ingest Queue
    #Then validate the uploaded TextFile in Internal Ingest Queue