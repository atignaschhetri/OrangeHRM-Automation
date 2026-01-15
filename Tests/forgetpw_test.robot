*** Settings ***
Library    SeleniumLibrary
Resource    ../pages/forgetpw_pages.robot
Resource    ../Resources/global_keyword.robot



*** Test Cases ***
Forget Password
    Open Website
    Click On Forget Password    
    Enter Username    Admin
    Click Submit Button
    
    