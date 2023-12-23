*** Settings ***
Documentation    This is a test suite for settings youtube video

Resource    ../resources/base.robot
Resource    ../resources/pages/profile_page.robot
Resource    ../resources/pages/settings_page.robot

Task Setup    Start Application
Task Teardown     Close Application

*** Test Cases ***
Validade Remind me when it's bedtime false
    [Tags]    smoke
    Click Settings
    Click General
    Element Attribute Should Match    com.google.android.youtube:id/switch_button    checked    false
    Page Should Contain Text    Remind me when it's bedtime
    Page Should Contain Text    Appearance

Validade Autoplay true
    [Tags]    smoke
    Click Settings
    Click AutoPlay
    Element Attribute Should Match    android:id/switch_widget    checked    true
    Page Should Contain Text    Autoplay next video