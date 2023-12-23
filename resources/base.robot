*** Settings ***
Documentation  Youtube Base Tests AppiumLibrary
Library  AppiumLibrary
Resource  ../resources/env.robot

*** Keywords ***
Start Application
    Open Application    remote_url=${REMOTE_URL}   platformName=${PLATFORMNAME}    automationName=${AUTOMATIONNAME}    appPackage=${APPPACKAGE}    appActivity=${APPACTIVITY}