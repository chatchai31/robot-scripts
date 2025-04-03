*** Settings ***
Resource            ../Resources/PO/Home.robot
Resource            ../Resources/PO/TopNav.robot
Resource            ../Resources/PO/Signin.robot
Resource            ../Resources/PO/Customer.robot
Resource            ../Resources/PO/AddCustomer.robot
Resource            ../Resources/PO/Logout.robot

*** Variables ***


*** Keywords ***
Go to "Home" Page
    Home.Navigate To
    Home.verify page loaded
Login with valid Creditials
    [Arguments]                                ${EMAIL}    ${PASS}
    TopNav.Click link "SignIn"
    Signin.verify page loaded
    Signin.Login with valid Creditials      ${EMAIL}    ${PASS}
    Customer.verify page loaded
Add new customer
    Customer.click link add new customer
    AddCustomer.verify page loaded
    AddCustomer.add new customer
    Customer.verify add new customer successfully
Logout
    TopNav.Click link "SignOut"
    Logout.verify page loaded

