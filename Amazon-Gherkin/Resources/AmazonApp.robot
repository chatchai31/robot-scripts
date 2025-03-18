*** Settings ***
Resource  C:/Users/tonno/Documents/GitHub/robot-scripts/Amazon-Gherkin/Resources/PO/LandingPage.robot
Resource  C:/Users/tonno/Documents/GitHub/robot-scripts/Amazon-Gherkin/Resources/PO/TopNav.robot
Resource  C:/Users/tonno/Documents/GitHub/robot-scripts/Amazon-Gherkin/Resources/PO/SearchResults.robot
Resource  C:/Users/tonno/Documents/GitHub/robot-scripts/Amazon-Gherkin/Resources/PO/Product.robot
Resource  C:/Users/tonno/Documents/GitHub/robot-scripts/Amazon-Gherkin/Resources/PO/Cart.robot
Resource  C:/Users/tonno/Documents/GitHub/robot-scripts/Amazon-Gherkin/Resources/PO/SignIn.robot

*** Keywords ***
user is not logged in
    Log  Check to see whether user is logged in

user searches for products
    LandingPage.Load
    TopNav.Search for Products

search results contains relevant products
    SearchResults.Verify Search Completed

user selects a product from search results
    SearchResults.Click Product link
    Product.Verify Page Loaded

user selects a searched product
    [Documentation]  This 2nd level keyword calls other 1st level keywords to help simplify the test case
    user searches for products
    search results contains relevant products
    user selects a product from search results

correct product page loads
    Product.Verify Page Loaded

user adds that product to their cart
    Product.Add to Cart

user adds a product to their cart
    [Documentation]  This 2nd level keyword calls other 1st level keywords to help simplify the test case
    user searches for products
    search results contains relevant products
    user selects a product from search results
    correct product page loads
    user adds that product to their cart
    the product is present in cart

the product is present in cart
    Cart.Verify Product Added

user attempts to checkout
    Cart.Proceed to Checkout

the user is required to sign in
    SignIn.Verify Page Loaded
