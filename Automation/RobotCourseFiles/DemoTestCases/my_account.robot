*** Settings ***
Library  SeleniumLibrary


*** Test Cases ***
Login attempt with invalid user should show error

    [Tags]                      Demo
    Open Browser                http://demostore.supersqa.com/  Chrome
    Click Link                  My account
    Input Text                  username     fakeuser
    Input Text                  password     fakepassword
    Click Button                Log in
    Element Should Be Visible   css=#content > div > div.woocommerce > ul
    Element Text Should Be      css=#content > div > div.woocommerce > ul  ERROR: Invalid username. Lost your password?
    Close Browser
