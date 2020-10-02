*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  https://admin-demo.nopcommerce.com/
${browser}  Chrome

*** Keywords ***
Open url in browser
    create webdriver    ${browser}  executable_path=C:\\drivers\\chromedriver.exe
    go to   ${url}
    maximize browser window

Type username
    [Arguments]    ${username}
    input text    id:Email  ${username}

Type password
    [Arguments]    ${password}
    input text    id:Password   ${password}

Click on loginButton
    click element    xpath://html/body/div[6]/div/div/div/div/div[2]/div[1]/div/form/div[3]

Close my browser
    close browser