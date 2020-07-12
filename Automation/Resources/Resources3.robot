*** Settings ***
Library    SeleniumLibrary
Library    ../ExternalKeywords/UserKeywords1.py

*** Variables ***
${Browser}    Chrome
${url1}    https://thetestingworld.com/testings/


*** Keywords ***
Start Browser And Set Window Size
    Open Browser    ${url1}    ${Browser}
    Set Window Size    1920    1080

Close Browser Window
    #fetching title here
    ${title}=    Get Title
    Log    ${title}
    #fetching timeout set
    ${default_timeout}=  get selenium implicit wait
    Log    ${default_timeout}
    Close Browser

Before Each Test Suite
    Log     Before Each Test Suite

After Each Test Suite
    Log     After Each Test Suite

Create Function At Runtime
    create_folder
    create_sub_folder
    Log     "Task done successfully"