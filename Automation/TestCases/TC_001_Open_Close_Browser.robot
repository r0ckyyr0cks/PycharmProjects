*** Settings ***
Library  SeleniumLibrary
Default Tags    DFLT

*** Variables ***
${Browser}  Chrome
${URL}  http://www.thetestingworld.com/testings


*** Test Cases ***
TC_001 Browser Open and Close
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    Input Text  name:fld_username  coolrakesh_in
    Input Text  xpath://input[@name='fld_email']  rakesh.ranjan@rediffmail.com
    #Clear Element  xpath://input[@name='fld_email']
    Input Text  xpath://input[@name='fld_email']  bhaiji12@gmail.com
    Input Text  name:fld_password  iBall@iBall
    Select From List By Index  name:sex  2
    Close Browser

*** Keywords ***
