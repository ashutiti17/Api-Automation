*** Settings ***
Library  SeleniumLibrary
Variables    ../PageObjects/Locators2.py


*** Variables ***
${Url}   https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${Browesr}   chrome



*** Keywords ***
Open My Browser
     Open Browser    ${Url}    ${Browesr}
     Maximize Browser Window
Login Functionality
