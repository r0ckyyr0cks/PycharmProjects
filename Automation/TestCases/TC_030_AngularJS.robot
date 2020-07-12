*** Settings ***
Library    AngularJSLibrary
Library    SeleniumLibrary
Test Setup    Open Browser and Maximize
Test Teardown    Close Browser Window

*** Variables ***
${url}  http://www.way2automation.com/angularjs-protractor/calc/
${browser}  Chrome

*** Test Cases ***
TC_030 Test Angular Site
    input text    model=first   3
    input text    model=second  7



*** Keywords ***
Open Browser and Maximize
    open browser    ${url}  ${browser}
    set window size    1024     768
    set browser implicit wait    9
    angularjslibrary.wait for angular    builtin.should be true

Close Browser Window
    ${title}   get title
    log    ${title}
    Log    Execution completed successfully
    close all browsers