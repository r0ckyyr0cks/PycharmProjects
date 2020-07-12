*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Resources1.robot
Default Tags    DFLT

*** Test Cases ***
TC_020 Use of Keyword
    Start Browser And Maximize
    Enter Username Password Email
    Sleep    1 second
    Close Browser

*** Keywords ***
Enter Username Password Email
    [Documentation]    use of press key simulates the keyboard click
    Press Key    name:fld_username    coolrakesh_in
    Input Text    name:fld_email    coolrakesh_in@yahoo.com
    Input Text    name:fld_password    0r@nge123