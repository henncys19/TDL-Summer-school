@history
Feature: As a user I want to check that the previous conversions are being saved

    Scenario: Checking that the previous conversions are being saved
        Given I am in the "Length" screen by swiping "down"
        And I have "Foot" type as base and "Centimeter" type as converter
        When I enter "10" on the keyboard
        Then I see "304.8" in the conversion section
        And The numbers are saved
        And I am in the "History" screen by swiping "up"
        And I see that conversions are being saved correctly
