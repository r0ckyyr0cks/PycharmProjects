*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Resources2.robot
Default Tags    DFLT

*** Test Cases ***
TC_021 Use of Keyword
    ${res}=  Start Browser And Maximize    ${url}    ${Browser}
    Log    ${res}
    [Documentation]    Press Keys is used to simulate the keyboard key press
    Press Key    name:fld_username    ${res}
    Input Text    name:fld_email    coolrakesh_in@yahoo.com
    Input Text    name:fld_password    0r@nge123
    Sleep    1 second
    Close Browser

*** Keywords ***
