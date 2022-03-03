
*** Variables ***

#NOTE:  IT SHOULD BE PARENT SELECTOR OR THE DROPDOWN ITSELF NOT THE  ITEMS
#=HEADER ============================================================================================================#

${prediction_iframe_parent_selector}=   xpath://iframe[@id="pxPredictionStudio"]

${prediction_header_parent_selector}=   xpath://header[@id="l1"]

${prediction_header_switch_studio_dropdown}=       ${prediction_header_parent_selector}//a[@data-test-id="switch-wks" and @title="Switch Studio"]
${prediction_header_preview_dropdown}=             ${prediction_header_parent_selector}//div[contains(@class,"back-to-preview") and not(contains(@class,"hidden"))]
${prediction_header_exit_preview_dropdown}=        ${prediction_header_parent_selector}//div[contains(@class,"back-to-edit") and not(contains(@class,"hidden"))]
