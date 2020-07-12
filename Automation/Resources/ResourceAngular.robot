*** Settings ***
Documentation    Suite description
Library    SeleniumLibrary

*** Variables ***
${url}=    http://amasik.com/demo/angularjs/angular-app/#/login
${brow}=    Chrome
@{credentials}=    mail2asik@gmail.com    Password


*** Keywords ***
Open Browser And Maximize
    Open Browser    ${url}    ${brow}
    Set Window Size    1920    1080
    ${title}=    Get Title
    Log     ${title}

Close Browser Window
    Log    Execution Complete
    Sleep    5s
    Close Browser