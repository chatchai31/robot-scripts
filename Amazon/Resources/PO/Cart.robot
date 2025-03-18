*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
verify product added
    Wait Until Page Contains                Added to cart
proceed to checkout
    Click Element                           name=proceedToRetailCheckout