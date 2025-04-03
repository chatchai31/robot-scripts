*** Settings ***
Documentation   This is some basic info about the whole suite

Resource    C:/Users/tonno/Documents/GitHub/robot-scripts/Amazon/Resources/Common.robot
Resource    C:/Users/tonno/Documents/GitHub/robot-scripts/Amazon/Resources/AmazonApp.robot
Suite Setup     Common.Insert Testing Data
Test Setup      Common.Begin Web Test
Test Teardown   Common.Eng Web Test
Suite Teardown  Common.Cleanup Testing Data

*** Variables ***
${LOGIN_EMAIL} =        admin@robotrameworktutorial.com
${LOGIN_PASSWORD} =     myPassword1

*** Test Cases ***
Should be able to login
    AmazonApp.Login         ${LOGIN_EMAIL}     ${LOGIN_PASSWORD}

User can search for products
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    AmazonApp.Search For Products


User can view a product
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    AmazonApp.Search For Products
    AmazonApp.Select Product from Search Result


User can add product to cart
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    AmazonApp.Search For Products
    AmazonApp.Select Product from Search Result
    AmazonApp.Add Product to Cart


User must sign in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    AmazonApp.Search For Products
    AmazonApp.Select Product from Search Result
    AmazonApp.Add Product to Cart
    AmazonApp.Begin Checkout


*** Keywords ***
