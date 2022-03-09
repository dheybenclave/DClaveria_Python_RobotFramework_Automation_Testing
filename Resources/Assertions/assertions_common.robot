*** Settings ***
Documentation       Common/Global Assertion
Resource            ../../Resources/CommonGlobal.robot

*** Variables ***


*** Keywords ***
Verify Page Elements should be Visible
    [Arguments]     @{list_page_elements}

    my logger  PERFORMING: Verify Page Elements should be Visible
    FOR    ${page_elements}    IN    @{list_page_elements}
        wait until element is visible   ${page_elements}     5s
        scroll element into view    ${page_elements}
        element should be visible   ${page_elements}
    END
