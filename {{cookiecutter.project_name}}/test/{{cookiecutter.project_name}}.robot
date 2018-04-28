*** Settings ***
Documentation   Tests for {{cookiecutter.project_name}}
Resource            ../resource/common.robot
Suite Setup         Open Browser To Front Page
Test Setup          Go To Front Page
Test Teardown       Delete All Cookies
Suite Teardown      Close All Browsers

*** Variables ***

*** Test Cases ***
Application Opens
    Login Page Should Be Open
