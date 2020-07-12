*** Settings ***
Documentation    Delete email in Gmail
Library    SeleniumLibrary
Test Setup    Open Browser And Maximize
Test Teardown    Close Browser Window

*** Variables ***
${url}=    http://gmail.com
${brow}=    Chrome
@{credentials}    rakesh.ranjan.qaengineer    Apple@121

*** Test Cases ***
Try to Delete email from Gmail
    [Tags]    GMAIL
    Press Keys    xpath://input[@type="email"]    @{credentials}[0]
    click element    xpath://*[@id="identifierNext"]/span/span


*** Keywords ***
Open Browser And Maximize
    Open Browser    ${url}    ${brow}
    Set Window Size    1920    1080
    Set Selenium Implicit Wait    10s
    ${title}=    Get Title
    Log     ${title}

Close Browser Window
    Log    Execution Complete
