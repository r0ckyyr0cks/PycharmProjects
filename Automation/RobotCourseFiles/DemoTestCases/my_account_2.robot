*** Settings ***
Library         SeleniumLibrary
Default Tags    Demo
Test Setup      Open Browser and Maximize
Test Teardown   Close Browser Window

*** Test Cases ***
Login attempt with invalid user should show error
    [Documentation]  Just a demo test 2.

    Click Link                  My account
    Input Text                  username     fakeuser
    Input Text                  password     fakepassword
    Click Button                Log in
    Element Should Be Visible   css=#content > div > div.woocommerce > ul > li
    Element Text Should Be      css=#content > div > div.woocommerce > ul > li  ERROR: Invalid username. Lost your password?


Login attempt with empty password should show "Empty Password" error message
    [Documentation]  Just a demo test 2. Checking error message matches expected exact text.


    Click Link                      My account
    Input Text                      username     fakeuser
    Click Button                    Log in
    Element Should Be Visible       css=#content > div > div.woocommerce > ul > li
    Element Text Should Be          css=#content > div > div.woocommerce > ul > li  ERROR: The password field is empty.


Login attempt with empty username should show "Empty Password" error message
    [Documentation]  Just a demo test 3. Checking error message matches expected exact text.

    Click Link                      My account
    Input Text                      password     fakepassword
    Click Button                    Log in
    Element Should Be Visible       css=#content > div > div.woocommerce > ul > li
    Element Text Should Be          css=#content > div > div.woocommerce > ul > li  Error: Username is required.

*** Keywords ***
Open Browser and Maximize
    Open Browser                    http://demostore.supersqa.com/  Chrome
    Set Window Size                 1024    768

Close Browser Window
    Log                             Execution completed successfully.
    Close All Browsers