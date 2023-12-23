*** Settings ***
Documentation   Account YouTube Mobile Page
Library         AppiumLibrary

*** Variables ***
${settings} =             xpath=//android.widget.TextView[@resource-id="com.google.android.youtube:id/title" and @text="Settings"]
${help_feedback} =        xpath=//android.widget.TextView[@resource-id="com.google.android.youtube:id/title" and @text="Help & feedback"]
${account} =              accessibility_id=Account 
${popular_help} =         id=com.google.android.gms:id/gh_popular_articles_section_title

*** Keywords ***
Click Settings
    Wait Until Page Contains Element    locator=${account}    timeout=10
    Click Element    ${account}
    Wait Until Page Contains Element    locator=${settings}    timeout=10
    Click Element     ${settings}

Click Help and Feedback
    Wait Until Page Contains Element    locator=${account}    timeout=10
    Click Element    ${account}
    Wait Until Page Contains Element    locator=${help_feedback}    timeout=10
    Click Element     ${help_feedback}
    Wait Until Page Contains Element    ${popular_help}