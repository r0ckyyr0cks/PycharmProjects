*** Settings ***
Library    SeleniumLibrary
Default Tags    DFLT

*** Variables ***
${Browser}    Chrome
${url1}    https://thetestingworld.com/testings/

*** Test Cases ***
TC_018-2 Use of Keyword
    Open Browser    ${url1}    ${Browser}
    Set Window Size    1366    768
    Enter Username Password Email    coolrakesh_in    coolrakesh_in@yahoo.com    0r@nge123
    Sleep    1 second
    Close Browser

*** Keywords ***
Enter Username Password Email
    [Arguments]    ${username}    ${email}    ${password}
    Press Key    name:fld_username    ${username}
    Input Text    name:fld_email    ${email}
    Input Text    name:fld_password    ${password}