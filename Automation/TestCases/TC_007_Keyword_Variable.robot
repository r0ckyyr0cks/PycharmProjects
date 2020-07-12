*** Settings ***
Library  SeleniumLibrary
Library  Collections
Default Tags    DFLT

*** Test Cases ***
TC_007-1 Run Keyword
    ${Key_var}=  set variable  log to console
    run keyword  ${Key_var}  TestingWorld

TC_007-2 Run Keyword If
    ${var}=  set variable  NO
    run keyword if  '${var}'=='YES'  log to console  Value Found
    run keyword if  '${var}'=='NO'  log to console  value not found

*** Variables ***
