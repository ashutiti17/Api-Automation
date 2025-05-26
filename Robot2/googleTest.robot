*** Settings ***
Library    SeleniumLibrary
Library    custom_keywords.py

Resource     ../Test

*** Variables ***
${URL}    https://www.google.com
${BROWSER}    Chrome
${SEARCH_TERM}    robotframework

*** Test Cases ***
Extract First 5 Google Search Suggestions
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible    name=q
    Input Text    name=q    ${SEARCH_TERM}
    Sleep    2s    # Wait for suggestions to load
    ${suggestions}=    Get First Five Google Suggestions    ${driver}
    Log    First 5 Suggestions: ${suggestions}
    [Teardown]    Close Browser

*** Keywords ***
Get First Five Google Suggestions
    [Arguments]    ${driver}
    ${selenium_driver}=    Get Webdriver
    ${suggestions}=    Evaluate    get_first_five_google_suggestions(${selenium_driver})    modules=custom_keywords
    [Return]    ${suggestions}
