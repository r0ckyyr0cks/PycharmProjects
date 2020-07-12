*** Settings ***
Library    SeleniumLibrary
Default Tags    DFLT

*** Variables ***
${Browser}    Chrome
${url1}    https://thetestingworld.com/testings/

*** Test Cases ***
TC_018-1 Use of Keyword
    Open Browser    ${url1}    ${Browser}
    Set Window Size    1366    768
    Enter Username Password Email
    Sleep    1 second
    Close Browser

*** Keywords ***
Enter Username Password Email
    Press Key    name:fld_username    coolrakesh_in
    Input Text    name:fld_email    coolrakesh_in@yahoo.com
    Input Text    name:fld_password    0r@nge123