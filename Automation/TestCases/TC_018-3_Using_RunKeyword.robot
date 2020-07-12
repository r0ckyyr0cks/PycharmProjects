*** Settings ***
Library    SeleniumLibrary
Default Tags    DFLT

*** Variables ***
${Browser}    Chrome
${url1}    https://thetestingworld.com/testings/

*** Test Cases ***
TC_018-3-3 Use of RunKeyword
    ${var_key}=    set variable    NO
    Run Keyword If    '${var_key}'=='YES'  Log To Console    Value was found
    Run Keyword If    '${var_key}'=='NO'    Log To Console    Value was not found

*** Keywords ***
