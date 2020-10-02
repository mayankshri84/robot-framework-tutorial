*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}  https://demo.nopcommerce.com
${browser}  Chrome
*** Test Cases ***
LoginTest
    Create Webdriver    ${browser}  executable_path=C:\\drivers\\chromedriver.exe
    #Create Webdriver     Chrome     executable_path=C:\\drivers\\chromedriver.exe
    Maximize Browser Window
    set selenium speed  1
    go to    ${url}
    Click Link  link:Log in
    sleep   5
    VerifyErrorMsg
    Close browser

*** Keywords ***
VerifyErrorMsg
    Input Text  id:Email        mayank
    Input Text  id:Password     mayank
    ${error msg}    Get Text   id:Email-error
    Should Be Equal     ${error msg}     Wrong email
    clear element text  id:Email
    clear element text  id:Password
