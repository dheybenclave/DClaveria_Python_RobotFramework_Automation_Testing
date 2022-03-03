*** Settings ***
Resource            ../../Resources/CommonGlobal.robot

#Libraries | Keyword Command
Library             ../Libraries/common_global.py

#Page Assertions
Resource            ../Resources/Assertions/assertions_common.robot

#Page Commands/Tasks
Resource            ../Resources/Tasks/tasks_common.robot
Resource            ../Resources/Tasks/tasks_textbox.robot
Resource            ../Resources/Tasks/tasks_dropdown.robot


#Page Selectors
Resource            ../Resources/PageSelectors/LoginPage/login_mainscreen.robot

#Test Data
Resource            ../Resources/TestData/UserCredentials.robot