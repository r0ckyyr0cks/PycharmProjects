*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url1}    https://www.orangehrm.com/
${url2}    https://opensource-demo.orangehrmlive.com/index.php/auth/login
${url3}    https://www.thetestingworld.com/testings/
${url4}    http://tutorialsninja.com/demo/
${url5}    http://omayo.blogspot.com/

*** Test Cases ***
TC_016-1 Using Validations
    [Tags]    Smoke
    Open Browser    ${url2}    Chrome
    Set Window Size  1920   1080
    page should contain textfield    id:txtUsername
    Press Keys    id:txtUsername    Admin
    page should not contain textfield    id:password
    Press Keys    id:txtPassword    admin123
    Click element    Submit
    Close Browser

TC_016-2 Using Validations
    [Tags]    Smoke
    Open Browser    ${url4}    Chrome
    Set Window Size    1920    1080
    click element    xpath://*[@id="top-links"]/ul/li[2]/a/span[1]
    click element    xpath://*[@id="top-links"]/ul/li[2]/ul/li[1]/a
    execute javascript    window.scrollTo(0,500)
    radio button should be set to    newsletter    0
    Close Browser


*** Keywords ***


