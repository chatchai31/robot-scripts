*** Settings ***
Documentation   This is some basic info about the whole suite

Resource    C:/Users/tonno/Documents/GitHub/robot-scripts/Amazon/Resources/Common.robot
Resource    C:/Users/tonno/Documents/GitHub/robot-scripts/Amazon/Resources/Amazon.robot
Suite Setup     Insert Testing Data
Test Setup      Begin Web Test
Test Teardown   Eng Web Test
Suite Teardown  Cleanup Testing Data

*** Variables ***


*** Test Cases ***
User can search for products
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Amazon.Search For Products


User can view a product
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Amazon.Search For Products
    Amazon.Select Product from Search Result


User can add product to cart
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Amazon.Search For Products
    Amazon.Select Product from Search Result
    Amazon.Add Product to Cart


User must sign in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Amazon.Search For Products
    Amazon.Select Product from Search Result
    Amazon.Add Product to Cart
    Amazon.Begin Checkout


*** Keywords ***
