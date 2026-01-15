*** Settings ***
Library    SeleniumLibrary
Resource    ../pages/login_pages.robot
Resource    ../Resources/global_keyword.robot

Test Teardown    Capture Screenshot And Close Browser


*** Test Cases ***
login

     Open website
    Input Username       Admin
    Input Password       admin123
    Click login Button
    