class HomePage < SitePrism::Page
  element :search_field, '#lst-ib'
  element :search_button, "input[value='Google Search'][name='btnK']"
end
