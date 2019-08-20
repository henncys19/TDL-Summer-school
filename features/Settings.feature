@cucumber
Feature: Authorization

  @settings
    Scenario: Change privacy settings
        Given I am on Discord home page
        And I login as user1
        Then I see that login was successful
        And I Go to privacy settings 
        
       
