*** Settings ***
Library  SeleniumLibrary
Default Tags    DFLT

*** Variables ***


*** Test Cases ***
TC_004-1 Setting Local Variable
    ${var1}=  set variable  Hello World
    Log to Console  ${var1}

TC_004-2 Use of RunKeyword with variable
    ${var_key}=    set variable    NO
    Run Keyword If    '${var_key}'=='YES'  Log To Console    Value was found
    Run Keyword If    '${var_key}'=='NO'    Log To Console    Value was not found


*** Keywords ***
