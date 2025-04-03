*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${CUSTOMER_HEARDER_PAGE} =          Our Happy Customers
${ID_NEWCUSTOMER_BUTTON} =          id=new-customer
${ADD_CUSTUMEL_SUCCESS_LABEL}=      Success! New customer added.
*** Keywords ***
verify page loaded
    wait until page contains        ${CUSTOMER_HEARDER_PAGE}
click link add new customer
    click link                      ${ID_NEWCUSTOMER_BUTTON}
verify add new customer successfully
    wait until page contains        ${ADD_CUSTUMEL_SUCCESS_LABEL}