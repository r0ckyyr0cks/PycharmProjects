*** Settings ***
Library    SeleniumLibrary
Test Setup    Open Browser and Maximize
Test Teardown    Close Browser Window

*** Variables ***
${url}   https://google.com
${browser}     chrome

*** Test Cases ***
First Selenium Test
    input text    q    robotframework
    press keys    btnK   \\10

Second Selenium Test
    input text    q    robotframework
    click button    btnK

Third Selenium Test
    input text    q     robotframework
    press keys    btnK    ENTER

*** Keywords ***
Open Browser and Maximize
    open browser    ${url}  ${browser}
    set window size    1024     768
    set browser implicit wait    9

Close Browser Window
    ${title}   get title
    log    ${title}
#    sleep   2
    Log    Execution completed successfully
    close all browsers