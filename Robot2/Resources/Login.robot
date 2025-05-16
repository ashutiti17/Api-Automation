*** Settings ***
Library  SeleniumLibrary
Variables    ../PageObjects/Locators.py


*** Variables ***
${Url}   https://www.saucedemo.com/
${Browesr}   chrome



*** Keywords ***
Open My Browser
     [Arguments]     ${Url}   ${Browesr}
     Open Browser    ${Url}   ${Browesr}
     Maximize Browser Window



#Click SignIn
#     Wait Until Element Is Visible    ${login_btn}
#     Click Element    ${login_btn}

SignIn Name
     [Arguments]     ${name}
     Input Text    ${user_name}    standard_user

SignIn Password
     [Arguments]     ${Password}
     Input Text    ${signin_pw}    secret_sauce

Click Login Page
     Click Element    ${signup_btn}
     
Verify Home Page
     Page Should Contain    Swag Labs




