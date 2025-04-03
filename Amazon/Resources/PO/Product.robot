*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${PRODUCT_ADD_CART} =                       id=add-to-cart-button

*** Keywords ***
verify detail prodoct
    Wait Until Page Contains                Maisto Tech RC F1 1:24 Ferrari SF-23 (2023) - Leclerc #16     timeout=10s
click add cart
    Click Button                            ${PRODUCT_ADD_CART}
