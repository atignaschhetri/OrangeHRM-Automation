*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${URL}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${USER_NAME}     //input[@name="username"]
${PASSWORD}     //input[@name="password"]
${BUTTON}     //button[@class="oxd-button oxd-button--medium oxd-button--main orangehrm-login-button"]




*** Keywords ***

Input Username
    [Arguments]    ${user}
    Wait Until Element Is Visible    ${USER_NAME}    20s
    Input Text    ${USER_NAME}    ${user}
    
Input password
    [Arguments]    ${pass}
    Wait Until Element Is Visible    ${PASSWORD}    20s
    Input Text    ${PASSWORD}    ${pass}
    
Click login Button
        Wait Until Element Is Enabled    ${BUTTON}    20s
    Click Button    ${BUTTON}
    
