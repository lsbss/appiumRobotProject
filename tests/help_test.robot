*** Settings ***
Documentation    This is a test suite for help and feedback

Resource    ../resources/base.robot
Resource    ../resources/pages/profile_page.robot

Task Setup    Start Application
Task Teardown     Close Application

*** Test Cases ***
Found Popular Help Resources
    [Tags]    smoke
    Click Help and Feedback
    Page Should Contain Text    Popular help resources
    Page Should Contain Text    Send feedback