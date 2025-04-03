*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${ADDCUSTOMER_HEARDER_PAGE} =           Add Customer
${SUBMIT_ADDCUSTOMER_BUTTON} =          Submit
${ID_ADDCUSTOMER_EMAIL_TEXTBOX} =       id=EmailAddress
${ID_ADDCUSTOMER_FIRSTNAME_TEXTBOX} =   id=FirstName
${ID_ADDCUSTOMER_LASTNAME_TEXTBOX} =    id=LastName
${ID_ADDCUSTOMER_CITY_TEXTBOX} =        id=City
${ADDCUSTOMER_STATE_DROPDOWN} =         id=StateOrRegion
${ADDCUSTOMER_GANDER_RADIO}=            gender
${ADDCUSTOMER_PROMO_CHECKBOX}=          promos-name
*** Keywords ***
verify page loaded
    wait until page contains            ${ADDCUSTOMER_HEARDER_PAGE}
add new customer
    Fill Customer Field
    Click Submit Button



Fill Customer Field
    input text                      ${ID_ADDCUSTOMER_EMAIL_TEXTBOX}             chatchai@gmail.com
    input text                      ${ID_ADDCUSTOMER_FIRSTNAME_TEXTBOX}         chatchai
    input text                      ${ID_ADDCUSTOMER_LASTNAME_TEXTBOX}          khamchan
    input text                      ${ID_ADDCUSTOMER_CITY_TEXTBOX}              Dollas
    select from list by value       ${ADDCUSTOMER_STATE_DROPDOWN}               NY
    select radio button             ${ADDCUSTOMER_GANDER_RADIO}                 male
    select checkbox                 ${ADDCUSTOMER_PROMO_CHECKBOX}


Click Submit Button
    click button                    ${SUBMIT_ADDCUSTOMER_BUTTON}