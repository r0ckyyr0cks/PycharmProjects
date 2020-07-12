*** Settings ***
Library    SeleniumLibrary
Test Setup    Open Browser and Maximize
Test Teardown    Close Browser Window

*** Variables ***
${url}=    https://opensource-demo.orangehrmlive.com/
${browser}=    Chrome
@{credentials}    Admin    admin123
&{logindata}    username=Admin    password=admin123

*** Test Cases ***
TC_025-1 Test title
    [Tags]    DEBUG
    Press Keys    txtUsername    @{credentials}[0]
    Press Keys    txtPassword    @{credentials}[1]

TC_025-2 Test title
    [Tags]    DFLT
    Press Keys    txtUsername    &{logindata}[username]
    Press Keys    txtPassword    &{logindata}[password]


*** Keywords ***
Open Browser and Maximize
    Open Browser    ${url}    ${browser}
    Set Window Size    1920    1080
    Set Selenium Implicit Wait    10s

Close Browser Window
    Click Button    Submit
    Click Element    id:welcome
    Click Element    link=Logout
    ${title}=    Get Title
    Log     ${title}
    Log     Execution Complete
    Log      This test was executed by %{username} on %{os}
    Close Browser