*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
verify detail prodoct
    Wait Until Page Contains                Ferrari Burago 1/18 Scale Diecast - 18-16008 488 GTB Rosso red
click add cart
    Click Button                            id=add-to-cart-button