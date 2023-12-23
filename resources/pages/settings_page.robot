*** Settings ***
Documentation   Settings YouTube Mobile Page
Library         AppiumLibrary

*** Variables ***
${general} =              xpath=//android.widget.TextView[@resource-id="android:id/title" and @text="General"]
${autoplay} =             xpath=//android.widget.TextView[@resource-id="android:id/title" and @text="Autoplay"]
${general_page} =         xpath=//android.widget.TextView[@text="General"]
${autoplay_page} =        xpath=//android.widget.TextView[@text="Autoplay"]

*** Keywords ***
Click General
    Wait Until Page Contains Element    locator=${general}    timeout=10
    Click Element     ${general}
    Wait Until Page Contains Element    locator=${general_page}    timeout=10

Click AutoPlay
    Wait Until Page Contains Element    locator=${autoplay}    timeout=10
    Click Element     ${autoplay}
    Wait Until Page Contains Element    locator=${autoplay_page}    timeout=10