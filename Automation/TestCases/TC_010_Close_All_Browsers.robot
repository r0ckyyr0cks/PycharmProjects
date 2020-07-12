*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Chrome
${URL}  http://www.thetestingworld.com/testings


*** Test Cases ***
TC_010 Close All Browsers
    [Tags]    Regression
    Open Browser  ${URL}  ${Browser}
    Set Window Size  1024   768
    Input Text  name:fld_username  coolrakesh_in
    Input Text  xpath://input[@name='fld_email']  rakesh.ranjan@rediffmail.com
    Input Text  name:fld_password  iBall@iBall
    Input Text  name:fld_cpassword  iBall@iBall
    Input Text  name:dob  12/04/2020
    Open Browser  ${URL}  ${Browser}
    Set Window Size  1024   768
    Input Text  name:fld_username  coolrakesh_in
    Input Text  xpath://input[@name='fld_email']  rakesh.ranjan@rediffmail.com
    Input Text  name:fld_password  iBall@iBall
    Input Text  name:fld_cpassword  iBall@iBall
    Input Text  name:dob  12/04/2020
    sleep  2 seconds
    Close All Browsers

*** Keywords ***
