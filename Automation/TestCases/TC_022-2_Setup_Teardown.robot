*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Resources3.robot
Documentation    This test is for testing the ABC functionality
Test Setup    Start Browser And Set Window Size
Test Teardown    Close Browser Window
Suite Setup    Before Each Test Suite
Suite Teardown    After Each Test Suite
Test Timeout    2mins 20s

*** Test Cases ***
TC_022-2-1 Checking use of teardown
    [Tags]    Sanity
    [Documentation]     note that the "name:" is added as optional
    Set Selenium Implicit Wait    20 seconds
    Title Should Be      Login & Sign Up Forms
    Element Text Should Be    xpath://span[contains(text(),'Login or Sign Up to start')]    Login Or Sign Up To Start
    Element Should Be Enabled    name:fld_username
    Input Text    name:fld_username  coolrakesh_in
    Input Text    xpath://input[@name='fld_email']  coolrakesh_in@yahoo.com
    Input Text    name:fld_password  iBall@iBall
    Press Keys    name:fld_cpassword    iBall@iBall
    Press Keys    id:datepicker    12/04/1980
    Press Keys    name:phone    8376011283
    Input Text    name:address    New Delhi
    Select Radio Button    add_type    office
    Select From List By Index    name:sex  2
    Element Should Be Visible    name:country
    Select From List By Label    name:country    India
    Select From List By Label    name:state    Delhi
    Select From List By Value    name:city    706
    Press Keys    name:zip    110076
    Checkbox should not be selected    name:terms
    Select Checkbox    name:terms
    Capture Page Screenshot    ./Snapshots/TC_022-2-1.png

TC_022-2-1 Checking use of teardown
    [Tags]    Sanity
    [Documentation]     note that the "name:" has been removed
    Set Selenium Implicit Wait    20 seconds
    Title Should Be      Login & Sign Up Forms
    Element Text Should Be    xpath://span[contains(text(),'Login or Sign Up to start')]    Login Or Sign Up To Start
    Element Should Be Enabled    fld_username
    Input Text    fld_username  coolrakesh_in
    Input Text    xpath://input[@name='fld_email']  coolrakesh_in@yahoomail.com
    Input Text    fld_password  iBall@iBall
    Press Keys    fld_cpassword    iBall@iBall
    Press Keys    id:datepicker    12/04/1980
    Press Keys    phone    8376011283
    Input Text    address    New Delhi
    Select Radio Button    add_type    office
    Select From List By Index    sex  2
    Element Should Be Visible    country
    Select From List By Label    country    India
    Select From List By Label    state    Delhi
    Select From List By Value    city    706
    Press Keys    zip    110076
    Checkbox should not be selected    terms
    Select Checkbox    terms
    Capture Page Screenshot    ./Snapshots/TC_022-2-2.png

TC_022-2-3 Checking use of teardown
    [Tags]    Smoke
    [Documentation]     note that the "name:" is added as optional
    Set Selenium Implicit Wait    20 seconds
    Title Should Be      Login & Sign Up Forms
    Element Text Should Be    xpath://span[contains(text(),'Login or Sign Up to start')]    Login Or Sign Up To Start
    Element Should Be Enabled    name:fld_username
    Input Text    name:fld_username  coolrakesh_in
    Input Text    xpath://input[@name='fld_email']  coolrakesh_in@yahoo.com
    Input Text    name:fld_password  iBall@iBall
    Press Keys    name:fld_cpassword    iBall@iBall
    Press Keys    id:datepicker    12/04/1980
    Press Keys    name:phone    8376011283
    Input Text    name:address    New Delhi
    Select Radio Button    add_type    office
    Select From List By Index    name:sex  2
    Element Should Be Visible    name:country
    Select From List By Label    name:country    India
    Press Keys    name:zip    110076
    Checkbox should not be selected    name:terms
    Select Checkbox    name:terms
    Capture Page Screenshot    ./Snapshots/TC_022-2-3.png
