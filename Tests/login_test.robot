*** Settings ***
Library    SeleniumLibrary
Resource    ../pages/login_pages.robot


*** Test Cases ***
login

     Open website
    Input Username       Admin
    Input Password       admin123
    Click login Button
    