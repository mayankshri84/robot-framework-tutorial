*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  http://demowebshop.tricentis.com/register
${browser}  Chrome

*** Test Cases ***
LoginTest
    Create Webdriver    ${browser}  executable_path=C:\\drivers\\chromedriver.exe
    #Create Webdriver     Chrome     executable_path=C:\\drivers\\chromedriver.exe
    go to    ${url}
    Maximize Browser Window
    sleep   5
    select radio button    Gender   F
    #Close browser


*** Keywords ***
