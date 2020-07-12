*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    http://thetestingworld.com/testings
${Browser}    Chrome

*** Keywords ***
Start Browser and Maximize
    [Arguments]    ${url1}    ${InputBrowser}
    Open Browser    ${url1}    ${InputBrowser}
    Set Window Size    1920    1080
    set selenium implicit wait    20 seconds
    ${title}=    Get Title
    [Return]    ${title}