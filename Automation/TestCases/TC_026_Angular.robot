*** Settings ***
Documentation    Checking Angular Keywords
Library    SeleniumLibrary
Library    AngularJSLibrary
Resource    ../Resources/ResourceAngular.robot
Test Setup    Open Browser And Maximize
Test Teardown    Close Browser Window


*** Test Cases ***
Test ExtendedSelenium Library
    [Tags]    DEBUG
    Input Text    email    @{credentials}[0]
    Input Text    password    @{credentials}[1]
    Click Button    xpath=//button[text()='Sign In']

