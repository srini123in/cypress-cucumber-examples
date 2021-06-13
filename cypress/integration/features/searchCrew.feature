@smoke @regression
Feature: Search a crew using by name and city

    As a user,
    I want to search a crew by entering first name and last name on the search box
    Also I want to able to be search by using city
    and search with names contain characters

    Scenario Outline: Search by crew name and verify the name contain in the page list
        Given User launches the app page
        When enter the crew <name> in the search box and submit
        Then user able to see the crews <name> on the page container list

    Examples:
    |name|
    |emma|
    |ll|
    |nza|

    Scenario Outline: Search by city name and verify the city name contain in the page list
        Given User launches the app page
        When enter the city <cityName> in the search box and submit
        Then user able to see the city <cityName> on the page container list

    Examples:
    |cityName|
    |cardiff|
    |she|
    |ces|
    
    Scenario Outline: Search by crew name and city name and verify the name contain in the page list
        Given User launches the app page
        When enter the crew <name> and city <cityName> in the search boxes and submit
        Then user able to see the crew <name> and city <cityName> on the page container list

    Examples:
    |name|cityName|
    |emma|worcester|
    |gonzalez|here|
    |julia|sheffield|

    # #Note : This test will fail - Search word should not be case sensitive 
    # Scenario Outline: Search by crew name and verify the name contain in the page list
    #     Given User launches the app page
    #     When enter the crew <name> in the search box and submit
    #     Then user able to see the crews <name> on the page container list

    # Examples:
    # |name|
    # |Emma|

    # #Note : This test will fail - Search word should not be case sensitive 
    # Scenario Outline: Search by city name and verify the city name contain in the page list
    #     Given User launches the app page
    #     When enter the city <cityName> in the search box and submit
    #     Then user able to see the city <cityName> on the page container list

    # Examples:
    # |cityName|
    # |Cardiff|
    
    
    
