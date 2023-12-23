*** Settings ***
Documentation    This is a test suite for search a youtube video

Resource    ../resources/base.robot
Resource    ../resources/pages/home_page.robot

Task Setup    Start Application
Task Teardown     Close Application

*** Test Cases ***
Search Youtube Video
    [Tags]    main_flow    smoke
    Search Youtube Video
    Validade Search
    Page Should Contain Element    accessibility_id=Complete Robot Framework Tutorial - Robot Framework Tutorials - 11 videos