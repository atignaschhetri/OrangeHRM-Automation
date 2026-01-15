*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${PIM}    //span[normalize-space()='PIM']/ancestor::a
${ADD_EMPLOYEE}    xpath=//a[normalize-space()='Add Employee']
${FIRST_NAME}    //input[contains(@class,'orangehrm-firstname')]
${LAST_NAME}    //input[contains(@class,'orangehrm-lastname')]
${EMPLOYEE_ID}    //label[normalize-space()='Employee Id']/ancestor::div[contains(@class,'oxd-input-group')]//input
${SAVE}    //button[@class="oxd-button oxd-button--medium oxd-button--secondary orangehrm-left-space"]

*** Keywords ***
Click PIM
     Wait Until Element Is Visible    ${PIM}    20s
    Click Element    ${PIM}
    
    
Add Employee
     Wait Until Element Is Visible    ${ADD_EMPLOYEE}    15s
    Click Element    ${ADD_EMPLOYEE}
    
Add firstname
    [Arguments]    ${firstname1}
    Wait Until Element Is Visible    ${FIRST_NAME}    20s
    Input Text    ${FIRST_NAME}    ${firstname1}  
    
Add lastname
    [Arguments]    ${lastname1}
    Wait Until Element Is Visible    ${LAST_NAME}
    Input Text    ${LAST_NAME}    ${lastname1}
    
Employee_ID
    [Arguments]    ${emp_id}
    Wait Until Element Is Visible    ${EMPLOYEE_ID}
    Input Text    ${EMPLOYEE_ID}    ${emp_id}
    
Click Save Button
    Click Button    ${SAVE}