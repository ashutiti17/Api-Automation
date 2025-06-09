*** Settings ***
Library  SeleniumLibrary
Resource     ../Resources/LoginTest2.robot
Resource     ../Resources/pim_module.robot






*** Variables ***
#${Url}   https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
#${Browesr}   chrome

*** Test Cases ***
Tc1 LoginTest
     Open My Browser     ${Url}   ${Browesr}
     Login Functionality     ${user_name}    ${password}    ${login_btn}     ${username_val}     ${password_val}
#Tc2 Verify LoginTest
#     Verify Login Sucess     ${dashboard}    ${logout}   ${logout_dropdown}
#Tc3 verify Invalid login
#     Invalid Login Functionality    ${password}     ${login_btn}    ${username_val}     ${password_val}      ${username_inval}

Tc4 clik on pim module
#     Login Functionality     ${user_name}    ${password}    ${login_btn}     ${username_val}     ${password_val}
     clik pim module      ${pim}     ${add_employee}

