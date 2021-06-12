Feature: Clear crew search list 

    As a user,
    I want to search a crew by entering first name and last on the search box
    and clear the search crew cards

    Scenario Outline: Clear search list on the page
        Given User launches the app page
        When enter the crew <name> in the search box and submit
        And user able to see the crews <name> on the page container list
        Then user cleared the search list and able see all crew cards


    Examples:
    |name|
    |emma|
    
    
    
