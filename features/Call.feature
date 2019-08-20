@cucumber
Feature: Call



  @call
    Scenario: Make a 30 second Call With Another User
        Given I am on Discord home page
        And I login as user1
        And I Start a New Chat with unholylv
        And I Start a 30 Second Voice Call