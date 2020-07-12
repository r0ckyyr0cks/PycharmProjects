*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Resources3.robot
Test Setup    Start Browser And Set Window Size
Test Teardown    Close Browser Window

*** Test Cases ***
TC_024 Fetch Data - Create Folder & sub-folder
    [Tags]    DFLT
    Create Function At Runtime
    ${cnt}    Get Element Count    class:field
    Log   ${cnt}


*** Keywords ***
