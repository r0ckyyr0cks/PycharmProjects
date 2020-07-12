*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Chrome
${URL1}  http://www.thetestingworld.com/testings
${URL2}  https://opensource-demo.orangehrmlive.com/index.php/dashboard

*** Test Cases ***
TC_011 GoTo GoBack GetLocation SimulateKey
    [Tags]    Regression
    Open Browser  ${URL1}  ${Browser}
    Set Window Size  1024   768
    Input Text  fld_username  coolrakesh_in
    Input Text  xpath://input[@name='fld_email']  rakesh.ranjan@rediffmail.com
    Input Text  fld_password  iBall@iBall
    Input Text  fld_cpassword  iBall@iBall
    Input Text  dob  12/04/2020
    Go To  ${URL2}
    Press Keys  txtUsername  Admin
    Press Keys  id:txtPassword  admin123
    #simulating Enter Key with ASCII value
    Press Keys  xpath://input[@type='submit']  \\13
    ${url}  Get Location
    Log  ${url}
    sleep  2 seconds
    Go Back
    Go Back
    ${url}  Get Location
    Log  ${url}
    sleep  2 seconds
    Close Browser

*** Keywords ***
