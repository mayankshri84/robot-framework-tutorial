*** Settings ***
Library     SeleniumLibrary
Resource    ../resources/adminloginpage.robot
Library     DataDriver      ../testdata/testdata.xlsx
Suite Setup    Open url in browser
Suite Teardown    Close my browser
Test Template    Invalid scenario

*** Test Cases ***
sample      ${username}     ${password}

*** Keywords ***
Invalid scenario
    [Arguments]     ${username}  ${password}
    Type username  ${username}
    Type password  ${password}
    Click on loginButton