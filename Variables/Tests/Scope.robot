*** Settings ***
Resource    C:/Users/tonno/Documents/GitHub/robot-scripts/Variables/Resources/Scope.robot

*** Variables ***


*** Test Cases ***
create and log a variable
    Log    ${MY_VARIABLE}

access a variable
    Log    ${MY_VARIABLE}

*** Keywords ***
