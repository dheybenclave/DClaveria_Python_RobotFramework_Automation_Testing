
*** Variables ***

#NOTE:  IT SHOULD BE PARENT SELECTOR OR THE DROPDOWN ITSELF NOT THE  ITEMS
#=HEADER ============================================================================================================#

${vrbank_header_parent_selector}=   xpath://header[@id="l1"]

${vrbank_header_switch_studio_dropdown}=       ${vrbank_header_parent_selector}//a[@data-test-id="switch-wks" and @title="Switch Studio"]
${vrbank_header_application_dropdown}=         ${vrbank_header_parent_selector}//a[@data-test-id="20140927131516034248306"]
${vrbank_header_configure_dropdown}=           ${vrbank_header_parent_selector}//a[@data-test-id="2015012710541608117797"]
${vrbank_header_launch_portal_dropdown}=       ${vrbank_header_parent_selector}//a[@data-test-id="20140927131516034349915"]
${vrbank_header_create_dropdown}=              ${vrbank_header_parent_selector}//a[@data-test-id="20140927131516034450756"]

${vrbank_header_preview_button}=             ${vrbank_header_parent_selector}//div[contains(@class,"back-to-preview") and not(contains(@class,"hidden"))]
${vrbank_header_exit_preview_button}=        ${vrbank_header_parent_selector}//div[contains(@class,"back-to-edit") and not(contains(@class,"hidden"))]

@{vrbank_header_field_elements}=      ${vrbank_header_switch_studio_dropdown}    ${vrbank_header_application_dropdown}  ${vrbank_header_configure_dropdown}    ${vrbank_header_launch_portal_dropdown}    ${vrbank_header_create_dropdown}

