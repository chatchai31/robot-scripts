*** Settings ***


*** Test Cases ***
Test case1
    Do something
    DO something else

Test case2
    Do another thing
    Do something else

*** Keywords ***
Do something
    Log     I am doing something...
DO something else
    Log     I am doing something else...
Do another thing
    log    I am doing another thing...