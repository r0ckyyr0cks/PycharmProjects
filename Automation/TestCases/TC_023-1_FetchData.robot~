*** Settings ***
Library    SeleniumLibrary
Test Setup    Start Browser And Maximize
Test Teardown    Close Browser Window

*** Variables ***
${testURL}=    http://theTestingWorld.com/testings
${browser}=    headlessChrome

*** Test Cases ***
TC_023-1 Fetch Data - Title of the Page
    [Tags]    Sanity
    ${PageTitle}=    Get Title
    Log    ${PageTitle}

TC_023-2 Fetch Data - Speed
    [Tags]    Sanity
    ${SelSpeed}=    Get Selenium Speed
    Log   ${SelSpeed}

TC_023-3 Fetch Data - Value
    [Tags]    Sanity
    ${val}=    Get Value    xpath://input[@type='submit']
    Log   ${val}

TC_023-4 Fetch Data - Text
    [Tags]    Sanity
    ${txt}=    Get Text    xpath://a[@class='displayPopup']
    Log   ${txt}

TC_023-5 Fetch Data - Index of List
    [Tags]    Sanity
    Select From List By Index    country    101
    ${dropdown1}=    Get Selected List Labels    country
    Log   ${dropdown1}
    capture page screenshot    ./Snapshots/TC_023-5.png

TC_023-6 Fetch Data - Value of List
    [Tags]    Sanity
    Select From List By Value    country    230
    ${dropdown2}=    Get Selected List Labels    country
    Log   ${dropdown2}
    capture page screenshot    ./Snapshots/TC_023-6.png

TC_023-7 Fetch Data - Label of List
    [Tags]    Sanity
    Select From List By Label    country    Virgin Islands (US)
    ${dropdown3}=    Get Selected List Labels    country
    Log   ${dropdown3}
    capture page screenshot    ./Snapshots/TC_023-7.png

TC_023-8 Fetch Data - Complete List
    [Tags]    Sanity
    ${LstVal}=    Get List Items    country
    Log   ${LstVal}

TC_023-9 Fetch Data - URL
    [Tags]    Sanity
    ${url}=    Get Location
    Log   ${url}

TC_023-10 Fetch Data - Page Source
    [Tags]    Smoke
    ${PgHTML}=    Get Source
    Log   ${PgHTML}

TC_023-11 Fetch Data - Attribute
    [Tags]    DFLT
    ${attr}    Get Element Attribute    fld_username    class
    Log   ${attr}

*** Keywords ***
Start Browser And Maximize
    Open Browser    ${testURL}    ${browser}
    Set Window Size    1920    1080
    Set Selenium Implicit Wait    10s

Close Browser Window
    Close Browser