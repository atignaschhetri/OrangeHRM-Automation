*** Settings ***
Library    SeleniumLibrary



*** Variables ***
${URL}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login

*** Keywords ***
Open website
    Open Browser    ${URL}    chrome




