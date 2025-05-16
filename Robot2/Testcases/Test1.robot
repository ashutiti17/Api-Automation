*** Settings ***
Library  SeleniumLibrary
Resource     ../Resources/Login.robot



*** Variables ***
${Url}   https://www.saucedemo.com/
${Browesr}   chrome
${name}     Ashutosh sahu
${Password}     ashutoshsahoo77@yahoo.com
*** Test Cases ***
Login Test
     Open Browser    ${Url}    ${Browesr}
     SignIn Name    ${name}
     SignIn Password    ${Password}
     Click Login Page
     Verify Home Page


