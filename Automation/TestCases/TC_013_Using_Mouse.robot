*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Chrome
${URL1}    http://www.thetestingworld.com
${URL2}    https://opensource-demo.orangehrmlive.com/index.php/dashboard
${URL3}    https://www.qtpselenium.com
${URL4}    http://omayo.blogspot.com/

*** Test Cases ***
TC_013-1 Using Mouse Right Click option to Open Context Menu
    [Tags]    Smoke
    Open Browser  ${URL1}  ${Browser}
    Set Window Size  1024  768
    Open Context Menu  xpath://span[contains(text(),'VIDEOS')]
    sleep  0.5 seconds
    Close Browser

TC_013-2 Using Double Click option
    [Tags]    Smoke
    Open Browser  ${URL4}  ${Browser}
    Set Window Size  1200  768
    Execute Javascript    window.scrollTo(500,1500)
    Double Click Element  id:testdoubleclick
    capture page screenshot    ./Snapshots/TC_013.png
    sleep  0.5 seconds
    Close Browser

TC_013-3 Using Mouse Down and Mouse Up option
    [Tags]    Smoke
    Open Browser  ${URL3}  ${Browser}
    Mouse Down  link=All Courses
    Mouse Up  link=All Courses
    Execute Javascript  window.scrollTo(0,1000)
    Sleep  0.5 seconds
    Close Browser

TC_013-4 Using Mouse Over option
    [Tags]    Smoke
    Open Browser  ${URL1}  ${Browser}
    Mouse Over  xpath://span[contains(text(),'VIDEOS')]
    Sleep  5 seconds
    Close Browser

*** Keywords ***
