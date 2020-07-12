*** Settings ***
Library    SeleniumLibrary
Test Setup    Start Browser And Maximize
Test Teardown    Close Browser Window

*** Variables ***
${testURL}=    http://theTestingWorld.com/testings
${browser}=    headlessChrome

*** Test Cases ***
TC_023-10 Fetch Data - Page Source
    [Tags]    Sanity
    ${PgHTML}=    Get Source
    Log   ${PgHTML}

TC_023-11 Fetch Data - Attribute
    [Tags]    Smoke
    ${attr}    Get Element Attribute    fld_username    class
    Log   ${attr}

TC_023-12 Fetch Data - Count element with same class name
    [Tags]    Smoke
    ${cnt}    Get Element Count    class:field
    Log   ${cnt}

*** Keywords ***
Start Browser And Maximize
    Open Browser    ${testURL}    ${browser}
    Set Window Size    1920    1080

Close Browser Window
    Close Browser