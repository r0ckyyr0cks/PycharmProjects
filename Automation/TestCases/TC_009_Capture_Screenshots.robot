*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Chrome
${URL}  http://www.thetestingworld.com/testings


*** Test Cases ***
TC_009 WindowSize - Speed - Sleep - Wait
    [Tags]    Smoke
    Open Browser  ${URL}  ${Browser}
    Set Window Size  1024   768
    Input Text  name:fld_username  coolrakesh_in
    Input Text  xpath://input[@name='fld_email']  rakesh.ranjan@rediffmail.com
    Input Text  name:fld_password  iBall@iBall
    Input Text  name:fld_cpassword  iBall@iBall
    Input Text  name:dob  12/04/2020
    Capture Page Screenshot  ./Snapshots/Cap001.png
    sleep  2 seconds
    Close Browser

*** Keywords ***
