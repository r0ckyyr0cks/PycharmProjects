*** Settings ***
Library    SeleniumLibrary
Test Setup    Open Browser and Maximize
Test Teardown    Close Browser Window

*** Variables ***
${url}   http://uat.intely.care/ops/onboard.html
${browser}     chrome

*** Test Cases ***
Login to digivante
    input text    xpath://input[@id='input_0']  pitneybowesnoida@gmail.com
    input text    xpath://input[@id='input_1']  PBPB1pbpb
    press keys    xpath://button[@type='submit']   \\10



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