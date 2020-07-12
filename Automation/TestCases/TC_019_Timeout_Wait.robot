*** Settings ***
Library    SeleniumLibrary
Test Timeout    2mins 20s
Default Tags    DFLT

*** Variables ***
${Browser}    Chrome
${url1}    https://thetestingworld.com/testings/

*** Test Cases ***
TC_019 Use of Variable in Robotframework
    Open Browser    ${url1}    ${Browser}
    Set Window Size    1920    1080
    Set Selenium Implicit Wait    20 seconds
        ${default_timeout}=  get selenium implicit wait
    Log    ${default_timeout}
    Title Should Be      Login & Sign Up Forms
    Element Text Should Be    xpath://span[contains(text(),'Login or Sign Up to start')]    Login Or Sign Up To Start
    Element Should Be Enabled    fld_username
    Input Text    fld_username  coolrakesh_in
    Input Text    xpath://input[@name='fld_email']  coolrakesh_in@yahoo.com
    Input Text    fld_password  iBall@iBall
    Press Keys    fld_cpassword    iBall@iBall
    Press Keys    id:datepicker    12/04/1980
    Press Keys    phone    8376011283
    Input Text    address    New Delhi
    Select From List By Index    sex  2
    Element Should Be Visible    country
    Select From List By Label    country    India
    [Timeout]    60s
    Select From List By Label    state    Delhi
    Select From List By Value    city    706
    Press Keys    zip    110076
    Checkbox should not be selected    terms
    Select Checkbox    terms
    Capture Page Screenshot    ./Snapshots/TC_019.png
    Close Browser

*** Keywords ***
