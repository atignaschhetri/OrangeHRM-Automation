*** Settings ***
Library    SeleniumLibrary
Resource    ../pages/login_pages.robot
Resource    ../pages/admin.robot
Resource    ../Resources/global_keyword.robot

Test Teardown    Capture Screenshot And Close Browser


*** Test Cases ***
Add Employees
    Open Website
    Maximize Browser Window
    Input Username        Admin
    Input Password        admin123
    Click Login Button

    Click PIM
    Add Employee

    Add Firstname         Ram
    Add Lastname          Thapa
    Employee_ID    1212
    Click Save Button

