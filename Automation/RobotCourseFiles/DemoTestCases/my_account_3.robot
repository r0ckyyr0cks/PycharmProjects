*** Settings ***
Library         SeleniumLibrary
Default Tags    Demo

Test Setup      Open Browser and Maximize
Test Teardown   Close Browser Window

*** Variables ***
${homepage_url}               http://demostore.supersqa.com/
${missing_username_error}     Error: Username is required.
${missing_password_error}     ERROR: The password field is empty.


*** Test Cases ***
Login attempt with invalid user should show error
    Click Link                  My account
    Input Text                  username     fakeuser
    Input Text                  password     fakepassword
    Click Button                Log in
    Element Should Be Visible   css=#content > div > div.woocommerce > ul > li
    Element Text Should Be      css=#content > div > div.woocommerce > ul > li  ERROR: Invalid username. Lost your password?


Login attempt with empty password should show "Empty Password" error message
    Click Link                      My account
    Input Text                      username     fakeuser
    Click Button                    Log in
    Element Should Be Visible       css=#content > div > div.woocommerce > ul > li
    Element Text Should Be          css=#content > div > div.woocommerce > ul > li  ${missing_password_error}


Login attempt with empty username should show "Empty Password" error message
    Click Link                      My account
    Input Text                      password     fakepassword
    Click Button                    Log in
    Element Should Be Visible       css=#content > div > div.woocommerce > ul > li
    Element Text Should Be          css=#content > div > div.woocommerce > ul > li    ${missing_username_error}

*** Keywords ***
Open Browser and Maximize
    Open Browser                    ${homepage_url}  Chrome
    Set Window Size                 1024    768

Close Browser Window
    Log                             Execution completed successfully.
    Close All Browsers