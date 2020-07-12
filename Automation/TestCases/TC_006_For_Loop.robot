*** Settings ***
Library  SeleniumLibrary
Library  Collections
Default Tags    DFLT

*** Variables ***

*** Test Cases ***
TC_006-1 using for loop
    FOR  ${i}  IN RANGE    10
      log to console  ${i}
    END

TC_006-2 print loop values
    @{List1}  create list  Hello  22  22.23  World  Abc123
    FOR  ${i}  IN  @{List1}
      log to console  ${i}
    END

*** Keywords ***


