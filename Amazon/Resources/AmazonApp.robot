*** Settings ***
Resource    C:/Users/tonno/Documents/GitHub/robot-scripts/Amazon/Resources/PO/LoadingPage.robot
Resource    C:/Users/tonno/Documents/GitHub/robot-scripts/Amazon/Resources/PO/TopNav.robot
Resource    C:/Users/tonno/Documents/GitHub/robot-scripts/Amazon/Resources/PO/SearchResult.robot
Resource    C:/Users/tonno/Documents/GitHub/robot-scripts/Amazon/Resources/PO/Product.robot
Resource    C:/Users/tonno/Documents/GitHub/robot-scripts/Amazon/Resources/PO/Cart.robot
Resource    C:/Users/tonno/Documents/GitHub/robot-scripts/Amazon/Resources/PO/SignIn.robot

*** Keywords ***
Login
    [Arguments]    ${username}     ${password}
    SignIn.Login with valid credentials     ${username}     ${password}
Search For Products
    LoadingPage.go page load
    LoadingPage.verify page loaded
    TopNav.search product
    SearchResult.verify result completed
Select Product from Search Result
    SearchResult.select link product
    Product.verify detail prodoct
Add Product to Cart
    Product.click add cart
    Cart.verify product added
Begin Checkout
    Cart.proceed to checkout
    SignIn.verify page loaded