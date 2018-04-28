*** Settings ***
Documentation     Reusable keywords and variables for {{cookiecutter.project_name}}.
Library           SeleniumLibrary

*** Variables ***
${SERVER}         google.com
${BROWSER}        Firefox
${BASE_URL}       http://${SERVER}/
${APP_TITLE}      Your app title here

*** Keywords ***
Open Browser To Front Page
    Open Browser    ${BASE URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Login Page Should Be Open

Login Page Should Be Open
    Title Should Be    ${APP_TITLE}

Go To Front Page
    Go To    ${LOGIN URL}
    Login Page Should Be Open