*** Settings ***
Library  SeleniumLibrary
Library  Collections
Default Tags    DFLT


*** Test Cases ***
TC_005 Setting Local Variable - List
    @{List1}  create list  Hello  22  22.23  World  Abc123
    ${list_length}  get length  ${List1}
    Log to Console  ${list_length}
    ${list_data}=   get from list  ${List1}  4
    Log to Console  ${list_data}

*** Variables ***


