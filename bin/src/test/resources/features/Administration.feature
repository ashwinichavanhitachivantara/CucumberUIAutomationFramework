@regression
Feature: Administration Functionality Verification 

  
  Scenario: Smoke verificaton for Platform Admin Configuration
   	Given User direct to HDEM application
    And User log in to HDEM application
    When User go to Administration
    And User go to Platform Admin
    And User go to configuration tab
    Then Verify the Configuration Tab UI Element
    
   
  Scenario: Smoke verificaton for Platform Admin Security
   	Given User direct to HDEM application
    And User log in to HDEM application
    When User go to Administration
    And User go to Platform Admin
    And User go to Security tab
    Then Verify the Security Tab UI Element
    
   
  Scenario: Smoke verificaton for Platform Admin Functional
   	Given User direct to HDEM application
    And User log in to HDEM application
    When User go to Administration
    And User go to Platform Admin
    And User go to Functional tab
    Then Verify the Functional Tab UI Element

  
  Scenario: Smoke verificaton for Trusted Partner Admin
   	Given User direct to HDEM application
    And User log in to HDEM application
    When User go to Administration
    And User go to Trusted Partner Portal Admin
    Then Verify the Trusted Partner Portal Admin tab UI Element
    
 
  Scenario: Smoke verificaton for Public Submission Portal Admin
   	Given User direct to HDEM application
    And User log in to HDEM application
    When User go to Administration
    And User go to Public Submission Portal Admin
    Then Verify the Public Submission Portal Admin Tab UI Element