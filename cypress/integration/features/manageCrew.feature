@smoke
Feature: Manage crew card dashboard by moving into right status

    As a user,
    I want to search a crew by entering first name and last on the search box
    and manage the crew by moving into right status

    Scenario Outline: Search by crew name and update the user status
        Given User launches the app page
        When enter the crew <searchName> in the search box and submit
        And user able to see the crews <searchName> on the page container list
        Then user check the crew <crewName> status on the list
        And user update the crew <crewName> status to <statusUpdateTo>
        Then user verify the crew <crewName> status <statusUpdateTo> are correct

    Examples:
    |searchName|crewName        |statusUpdateTo |
    |emma      |emma stewart    |Interviewing   |
    |lloyd     |lloyd gonzalez  |Hired          |
    |julia     |julia cunningham|Applied        |

     Scenario Outline: Update the user status 
        Given User launches the app page
        Then user check the crew <crewName> status on the list
        And user update the crew <crewName> status to <statusUpdateTo>
        Then user verify the crew <crewName> status <statusUpdateTo> are correct

    Examples:
    |searchName|crewName        |statusUpdateTo |
    |linda      |linda ruiz     |Hired   |
    |lloyd     |lloyd gonzalez  |Interviewing   |
    |julia     |julia cunningham|Interviewing   |

   