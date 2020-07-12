*** Settings ***
Library  SeleniumLibrary
Default Tags    DFLT

*** Variables ***
${Browser}  Chrome
${URL}  http://www.thetestingworld.com/testings


*** Test Cases ***
TC_003 Using Radio Button | Checkbox | LinkText
    Open Browser  ${URL}  ${Browser}
    Set Window Size  1024   768
    Set Selenium Speed  0.5seconds
    Set Focus To Element  xpath://*[@id="tab-content1"]/form/input[9]
    Select Radio Button  add_type  office
    Checkbox Should Not Be Selected  terms
    Select Checkbox  terms
    Click Link  xpath://a[.='Read Detail']
    Close Browser

*** Keywords ***
