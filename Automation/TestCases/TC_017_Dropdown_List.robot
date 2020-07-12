*** Settings ***
Library    SeleniumLibrary
Default Tags    DFLT
Test Timeout    20s
Test Setup    Open Browser And Set Window Size
Test Teardown    Close Browser Window

*** Variables ***
${url1}    http://omayo.blogspot.com/
${url2}    https://www.thetestingworld.com/testings/
${Browser}    Chrome

*** Test Cases ***
TC_017-1 Using Drop-down
    select from list by index    id:drop1    4
    capture page screenshot    ./Snapshots/TC_017-1.png

TC_017-2 Using List
    select from list by value    id:drop1    jkl
    capture page screenshot    ./Snapshots/TC_017-2.png

TC_017-3 Using List
    [Timeout]  20s
    select from list by label    id:drop1    doc 2
    capture page screenshot    ./Snapshots/TC_017-3.png

*** Keywords ***
Open Browser And Set Window Size
    Open Browser    ${URL1}    ${Browser}
    Set Window Size    1920    1080

Close Browser Window
    Close Browser


