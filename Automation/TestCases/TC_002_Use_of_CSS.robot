*** Settings ***
Library  SeleniumLibrary
Default Tags    DFLT

*** Variables ***
${Browser}  Chrome
${URL}  https://www.qtpselenium.com/


*** Test Cases ***
TC_002 Using Various Tags and Attributes
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    [Documentation]    Simulate Click using css
    Click Link  css=.btn
    Input Text  name=username  rakeshranjan12@gmail.com
    Input Text  css=input[type='password']   Apple121
    Close Browser

*** Keywords ***
