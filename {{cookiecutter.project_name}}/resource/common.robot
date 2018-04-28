*** Settings ***
Documentation     Reusable keywords and variables for {{cookiecutter.project_name}}.
Library           SeleniumLibrary

*** Variables ***
${SERVER}         google.com
${BROWSER}        Firefox
${TIMEOUT}        10
${BASE_URL}       http://${SERVER}/
${APP_TITLE}      Google

*** Keywords ***
Open Browser To Front Page
    Open Browser    ${BASE_URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Timeout    ${TIMEOUT}

Login Page Should Be Open
    Title Should Be    ${APP_TITLE}

Go To Front Page
    Go To    ${BASE_URL}