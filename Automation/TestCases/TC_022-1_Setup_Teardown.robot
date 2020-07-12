*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Resources3.robot
Test Timeout    2mins 20s
Default Tags    DFLT

*** Test Cases ***
TC_022-1 Use of Variable in Robotframework
    [Setup]    Start Browser And Set Window Size
    [Teardown]    Close Browser Window
    Set Selenium Implicit Wait    20 seconds
    Title Should Be      Login & Sign Up Forms
    Element Text Should Be    xpath://span[contains(text(),'Login or Sign Up to start')]    Login Or Sign Up To Start
    Element Should Be Enabled    name:fld_username
    Input Text    name:fld_username  coolrakesh_in
    Input Text    xpath://input[@name='fld_email']  coolrakesh_in@yahoo.com
    #Here "name:" can be removed (see example in 2nd line)
    Input Text    name:fld_password  iBall@iBall
    Press Keys    fld_cpassword    iBall@iBall
    Press Keys    id:datepicker    12/04/1980
    #Here "name:" can be removed (see example in 2nd line)
    Press Keys    name:phone    8376011283
    Input Text    address    New Delhi
    Select Radio Button    add_type    office
    Select From List By Index    name:sex  2
    Element Should Be Visible    name:country
    Select From List By Label    name:country    India
    Select From List By Label    name:state    Delhi
    Select From List By Value    name:city    706
    Press Keys    name:zip    110076
    Checkbox should not be selected    name:terms
    Select Checkbox    name:terms
    Capture Page Screenshot    ./Snapshots/TC_022.png


