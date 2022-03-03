*** Settings ***
Documentation       Common/Global Assertion
Resource            ../../Resources/CommonGlobal.robot

*** Variables ***


*** Keywords ***
Verify Page Elements should be Visible
    [Arguments]     @{list_page_elements}

    FOR    ${page_elements}    IN    @{list_page_elements}
        scroll element into view    ${page_elements}
        element should be visible   ${page_elements}
        element should be enabled   ${page_elements}
    END
