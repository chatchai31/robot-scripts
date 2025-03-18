*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains  Ferrari Burago 1/18 Scale Diecast - 18-16008 488 GTB Rosso red

Add to Cart
    Click Button               id=add-to-cart-button