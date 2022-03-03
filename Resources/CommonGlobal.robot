*** Settings ***
Documentation       Common Keywords, Task , Commands and Setup
Library             SeleniumLibrary
Library             String

#Libraries | Keyword Command
Library             ../Libraries/common_global.py

#Page Assertions
Resource            ../Resources/Assertions/assertions_common.robot

#Page Commands/Tasks
Resource            ../Resources/Tasks/tasks_common.robot
Resource            ../Resources/Tasks/tasks_textbox.robot
Resource            ../Resources/Tasks/tasks_dropdown.robot

#Page Selectors
Resource            ../Resources/PageSelectors/common_selectors.robot
#Page : Login Page
Resource            ../Resources/PageSelectors/LoginPage/login_mainscreen.robot
#Page : Studio Page
Resource            ../Resources/PageSelectors/StudioPage/PredictionStudioPage/common_prediction_studio_selectors.robot
Resource            ../Resources/PageSelectors/StudioPage/APPStudioPage/VRBankPage/common_vrbank_selectors.robot
Resource            ../Resources/PageSelectors/StudioPage/APPStudioPage/common_app_studio_selectors.robot
Resource            ../Resources/PageSelectors/StudioPage/DevStudioPage/common_dev_studio_selectors.robot
#Page : VRBank Page
Resource            ../Resources/PageSelectors/VrBankPage/common_vrbank_selectors.robot

#Test Data
Resource            ../Resources/TestData/UserCredentials.robot


*** Variables ***
${BROWSER}          chrome
${LOGIN_URL}        http://localhost:8080/prweb/PRServlet
${DASHBOARD_URL}    ${LOGIN_URL}/app/vr-bank_/


*** Keywords ***

Open Application
    [Arguments]  ${app_url}=${LOGIN_URL}   ${app_browser}=${BROWSER}

    Open browser    ${app_url}   ${app_browser}
    maximize browser window
    wait until location contains   ${app_url}
    location should contain  ${app_url}
    Sleep   2s

Close Application
    Sleep   2s
    [Teardown]  Close Browser


Validate and Verify Error Message
    [Arguments]    ${selector}     ${err_message}
    scroll element into view    ${selector}
    element should be visible   ${selector}
    element text should be      ${selector}     ${err_message}



