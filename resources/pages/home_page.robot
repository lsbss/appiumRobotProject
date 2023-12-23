*** Settings ***
Documentation   YouTube Home Mobile Page
Library         AppiumLibrary

*** Variables ***
${lupa} =              accessibility_id=Search
${pesquisa} =          id=com.google.android.youtube:id/search_edit_text
${video_list} =        accessibility_id=Complete Robot Framework Tutorial - Robot Framework Tutorials - 11 videos
${title} =             id=com.google.android.youtube:id/playlist_channel    

*** Keywords ***
Search Youtube Video
    Wait Until Page Contains Element    locator=${lupa}    timeout=10
    Click Element     ${lupa}
    Wait Until Element Is Visible    ${pesquisa}    timeout=10
    Input Text        ${pesquisa}    Complete Robot Framework Tutorial
    Press Keycode    keycode=66

Validade Search
    Wait Until Page Contains Element    ${video_list}    timeout=10