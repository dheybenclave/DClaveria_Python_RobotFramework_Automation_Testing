
*** Variables ***

#NOTE:  IT SHOULD BE PARENT SELECTOR OR THE DROPDOWN ITSELF NOT THE  ITEMS


${current_active_iframe}=   xpath://iframe[contains(@style,"display: block")]

#=HEADER ============================================================================================================#

${header_parent_selector}=   xpath://header[@id="l1"]


${header_switch_studio_dropdown}=       ${header_parent_selector}//a[@data-test-id="switch-wks" and @title="Switch Studio"]
${header_application_dropdown}=         ${header_parent_selector}//a[@data-test-id="20140927131516034248306"]
${header_configure_dropdown}=           ${header_parent_selector}//a[@data-test-id="2015012710541608117797"]
${header_launch_portal_dropdown}=       ${header_parent_selector}//a[@data-test-id="20140927131516034349915"]
${header_create_dropdown}=              ${header_parent_selector}//a[@data-test-id="20140927131516034450756"]

@{header_field_elements}=      ${header_switch_studio_dropdown}    ${header_application_dropdown}  ${header_configure_dropdown}    ${header_launch_portal_dropdown}    ${header_create_dropdown}