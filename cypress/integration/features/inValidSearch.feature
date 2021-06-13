@regression
Feature: Search a crew using by invalid name and city

    As a user,
    I want to search a crew by entering invalid first name and last name on the search box
    and clear the search crew cards

    Scenario Outline: Search by invalid crew name and verify the empty page list
        Given User launches the app page
        When enter the crew <name> in the search box and submit
        And user see no crews <name> on the page container list


    Examples:
    |name|
    |alpha|

    Scenario Outline: Search by invalid city name and verify the empty page list
        Given User launches the app page
        When enter the city <cityName> in the search box and submit
        Then user see no city <cityName> on the page container list

    Examples:
    |cityName|
    |london|
    
    
    
