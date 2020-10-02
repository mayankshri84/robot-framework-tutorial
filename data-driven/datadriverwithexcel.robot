*** Settings ***
Library     SeleniumLibrary
Resource    ../resources/adminloginpage.robot
Library     DataDriver ../testdata/testdata.xlsx
Suite Setup    Open url in browser
Suite Teardown    Close my browser
Test Template    Invalid scenario

*** Test Cases ***
invalid using   ${username}  ${password}

*** Keywords ***
Invalid scenario
    [Arguments]     ${username}  ${password}
    set selenium implicit wait    10
    set selenium speed    3
    Type username  ${username}
    Type password  ${password}
    Click on loginButton