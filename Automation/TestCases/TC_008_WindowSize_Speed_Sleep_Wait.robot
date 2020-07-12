*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Chrome
${URL}  http://www.thetestingworld.com/testings


*** Test Cases ***
TC_008 WindowSize - Speed - Sleep - Wait
    [Tags]    Regression
    Open Browser  ${URL}  ${Browser}
    Set Window Size  1024   768
    ${default_timeout}=  get selenium implicit wait
    log to console  ${default_timeout}
    set selenium implicit wait  20 seconds
    ${default_timeout}=  get selenium implicit wait
    log to console  ${default_timeout}
    ${speed}=  get selenium speed
    log to console  ${speed}
    set selenium speed  0.3 seconds
    ${speed}=  get selenium speed
    log to console  ${speed}
    Input Text  name:fld_username  coolrakesh_in
    Input Text  xpath://input[@name='fld_email']  rakesh.ranjan@rediffmail.com
    Input Text  name:fld_password  iBall@iBall
    Input Text  name:fld_cpassword  iBall@iBall
    Input Text  name:dob  12/04/2020
    Input Text  name:phone  8376011283
    Input Text  name:address  New Delhi
    Select Radio Button  add_type  office
    sleep  2 seconds
    Close Browser


*** Keywords ***