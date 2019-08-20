@cucumber
Feature: Chat


    @chat
    Scenario: Send a Chat Message
        Given I am on Discord home page
        And I login as user1
        Then I see that login was successful
        And I Start a New Chat with unholylv
        And I Send a Chat Message with text test112
        And I clean the direct message list
