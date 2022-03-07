*** Settings ***
Resource            ../../Resources/CommonGlobal.robot
Test Setup          Open Application
Test Teardown       Close Application

*** Variables ***

*** Test Cases ***
Validate Verify Author VR Bank Page
    [Documentation]  Validate Verify PEGA VR Bank Page
    [Tags]  Regression

    Given that the user should navigate in PEGA Login Page
    And user login using valid credentials
    When user navigate to APP STUDIO and click Preview
    Then user should see the VR Bank Page
    And user verify that the all fields is Visible


*** Keywords ***

that the user should navigate in PEGA Login Page
    my logger  that the user should navigate in PEGA Login Page

user login using valid credentials
    my logger  user login using valid credentials
    Login User  ${Author.username}  ${Author.password}

user navigate to APP STUDIO and click Preview
    my logger  user login using valid credentials
    Switch Studio To APP Studio
    Preview The App Page
    Exit Preview The App Page
    Preview The App Page

user should see the VR Bank Page
    my logger  user login using valid credentials
    Verify Page Elements should be Visible  @{vrbank_nav_field_elements}
    Logoff User


user verify that the all fields is Visible
    my logger  user login using valid credentials

