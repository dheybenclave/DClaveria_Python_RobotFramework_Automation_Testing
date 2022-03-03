
*** Variables ***

#NOTE:  IT SHOULD BE PARENT SELECTOR OR THE DROPDOWN ITSELF NOT THE  ITEMS
#=HEADER ============================================================================================================#

${app_iframe_parent_selector}=   xpath://iframe[@id="pxExpress"]
${app_iframe_sub_parent_selector}=   xpath://iframe[@id="FormFactoriFrame"]

${app_header_parent_selector}=   xpath://header[@id="l1"]

${app_header_switch_studio_dropdown}=       ${app_header_parent_selector}//a[@data-test-id="switch-wks" and @title="Switch Studio"]
${app_header_preview_dropdown}=             ${app_header_parent_selector}//div[contains(@class,"back-to-preview") and not(contains(@class,"hidden"))]
${app_header_exit_preview_dropdown}=        ${app_header_parent_selector}//div[contains(@class,"back-to-edit") and not(contains(@class,"hidden"))]
