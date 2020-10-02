*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/adminloginpage.robot
Suite Setup    Open url in browser
Suite Teardown    Close my browser
Test Template    Invalid scenario

*** Test Cases ***              username                    password
Right username empty password   admin@yourstore.com         ${EMPTY}
Right username wrong password   admin@yourstore.com         xyz
Wrong username right password   test@123.com                admin
Wrong username empty password   adm@yourstore.com         ${EMPTY}


*** Keywords ***
Invalid scenario
    [Arguments]    ${username}  ${password}
    Type username  ${username}
    Type password  ${password}
    Click on loginButton
