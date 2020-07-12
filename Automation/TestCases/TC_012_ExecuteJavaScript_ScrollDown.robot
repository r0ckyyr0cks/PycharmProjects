*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Chrome
${URL1}  http://www.thetestingworld.com/testings
${URL2}  https://opensource-demo.orangehrmlive.com/index.php/dashboard

*** Test Cases ***
TC_012 ExecuteJavascript i.e. ScrollDown
    [Tags]    Smoke
    Open Browser  ${URL1}  ${Browser}
    Set Window Size  1024   768
    Execute Javascript  window.scrollTo(0,500)
    Press Keys  name:zip  560064
    Capture Page Screenshot  ./Snapshots/TC_012.png
    sleep  2 seconds
    Close Browser

*** Keywords ***
