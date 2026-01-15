*** Settings ***
Library    SeleniumLibrary
#Resource    ../Resources/global_keyword.robot

*** Variables ***
${FORGET_PASSWORD}    //p[@class="oxd-text oxd-text--p orangehrm-login-forgot-header"]
${USERNAME}    //input[@class="oxd-input oxd-input--active"]
${RESET}    //button[@class="oxd-button oxd-button--large oxd-button--secondary orangehrm-forgot-password-button orangehrm-forgot-password-button--reset"]

*** Keywords ***
#Open website
#    Open Browser    ${URL}    chrome
    
Click on forget password

    Wait Until Element Is Visible    ${FORGET_PASSWORD}    5s
    Click Element    ${FORGET_PASSWORD}
    
Enter Username
    [Arguments]    ${user1}
    Wait Until Element Is Visible    ${USERNAME}    5s
    Input Text    ${USERNAME}    ${user1}
    
Click Submit Button
    Click Button    ${RESET}

