
*** Variables ***

#NOTE:  IT SHOULD BE PARENT SELECTOR OR THE DROPDOWN ITSELF NOT THE  ITEMS
#=HEADER ============================================================================================================#

${studio_vrbank_header_parent_selector}=   xpath://header[@id="l1"]

${studio_vrbank_header_switch_studio_dropdown}=       ${studio_vrbank_header_parent_selector}//a[@data-test-id="switch-wks" and @title="Switch Studio"]
${studio_vrbank_header_application_dropdown}=         ${studio_vrbank_header_parent_selector}//a[@data-test-id="20140927131516034248306"]
${studio_vrbank_header_configure_dropdown}=           ${studio_vrbank_header_parent_selector}//a[@data-test-id="2015012710541608117797"]
${studio_vrbank_header_launch_portal_dropdown}=       ${studio_vrbank_header_parent_selector}//a[@data-test-id="20140927131516034349915"]
${studio_vrbank_header_create_dropdown}=              ${studio_vrbank_header_parent_selector}//a[@data-test-id="20140927131516034450756"]

${studio_vrbank_header_preview_button}=             ${studio_vrbank_header_parent_selector}//div[contains(@class,"back-to-preview") and not(contains(@class,"hidden"))]
${studio_vrbank_header_exit_preview_button}=        ${studio_vrbank_header_parent_selector}//div[contains(@class,"back-to-edit") and not(contains(@class,"hidden"))]

@{studio_vrbank_header_field_elements}=      ${studio_vrbank_header_parent_selector}    ${studio_vrbank_header_application_dropdown}  ${studio_vrbank_header_configure_dropdown}    ${studio_vrbank_header_launch_portal_dropdown}    ${studio_vrbank_header_create_dropdown}

