*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${url1}    http://www.orangehrm.com/
${url2}    https://thetestingworld.com/
${url3}    https://opensource-demo.orangehrmlive.com/index.php/auth/login

*** Test Cases ***
TC_015-1 Switch To Another Window
    [Tags]    Regression
    Open Browser    ${url1}    Chrome
    Maximize Browser Window
    Open Browser    ${url2}    Chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30 seconds
    Switch Browser    1
    ${var1}=    Get Location
    Log    ${var1}
    Wait Until Page Contains    Do The Work You Love
    Switch Browser    2
    ${var2}    Get Location
    Log     ${var2}
    Close All Browsers

TC_015-2 Switch To Another Tab Window
    [Tags]    Regression
    Open Browser    ${url3}    Chrome
    Maximize Browser Window
    Click Element    xpath://*[@id="footer"]/div[1]/a
    Select Window    HR Management System | HR Management Software | OrangeHRM
    ${var1}=    get location
    Log     ${var1}
    Select Window    OrangeHRM
    ${var2}=    get location
    Log     ${var2}
    Close All Browsers

TC_015-3 Switch To Another Tab Window
    [Tags]    Regression
    Open Browser    ${url3}    Chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30 seconds
    Click Element    xpath://*[@id="footer"]/div[1]/a
    ${list1}=    get window handles
    FOR    ${win1}    IN    ${list1}
           select window    ${win1}
           ${var1}=    get location
           Log    ${var1}
    END
    Close All Browsers

