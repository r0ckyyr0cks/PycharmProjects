*** Settings ***
Library  SeleniumLibrary
Test Setup    Open Browser and Maximize
Test Teardown    Close Browser Window

*** Variables ***
${Browser}  Chrome
${URL1}  http://www.thetestingworld.com
${URL2}  https://opensource-demo.orangehrmlive.com/index.php/dashboard
${URL3}  https://www.qtpselenium.com

*** Test Cases ***
TC_014-1 Using Wait Until Page Contains Command
    [Tags]    Smoke
    Wait Until Page Contains  VIDEO
    Click Element  xpath://span[contains(text(),'VIDEOS')]
    sleep  5 seconds

TC_014-2 Using Timeout Command
    [Tags]    Smoke
    Set Selenium Timeout  10 seconds
    Wait Until Page Contains  VIDEO
    Click Element  xpath://span[contains(text(),'VIDEOS')]
    sleep  5 seconds

TC_014-3 Using Wait Until Page Contains Element Command
    [Tags]    Smoke
    Set Selenium Timeout  10 seconds
    Wait Until Page Contains Element  xpath://span[contains(text(),'VIDEOS')]
    sleep  1 seconds

TC_014-4 Using Wait Until Element Contains Command
    [Tags]    Smoke
    Set Selenium Timeout  10 seconds
    Wait Until Element Contains  xpath://a[text()='Login']  Login
    Click Link  xpath://a[text()='Login']
    sleep  1 seconds

*** Keywords ***
Open Browser and Maximize
    Open Browser    ${URL1}    ${Browser}
    Maximize Browser Window

Close Browser Window
    Close Browser