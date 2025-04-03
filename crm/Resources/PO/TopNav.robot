*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${ID_SIGNIN} =                id=SignIn
${ID_SIGNOUT} =               Sign Out


*** Keywords ***
Click link "SignIn"
    click link                      ${ID_SIGNIN}
Click link "SignOut"
    click link                      ${ID_SIGNOUT}

