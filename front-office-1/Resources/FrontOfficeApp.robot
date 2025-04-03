*** Settings ***
Resource    ./PO/Landing.robot
Resource    ./PO/TopNav.robot
Resource    ./PO/Team.robot
*** Variables ***


*** Keywords ***
Go to Landing page
    Landing.Navigate To
    Landing.Verify page loaded
Go to "Team" page
    TopNav.Select "Team" page
    Team.Verify page loaded
Validate "Team" page
    Team.Verify page content

