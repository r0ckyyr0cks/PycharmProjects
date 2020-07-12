*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Chrome
${url1}    https://thetestingworld.com/testings/


*** Keywords ***
Start Browser and Maximize
    Open Browser    ${url1}    ${Browser}
    Set Window Size    1920    1080

Second keyword

