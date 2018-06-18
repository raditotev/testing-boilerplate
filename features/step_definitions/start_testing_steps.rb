Given(/^(.+) is open$/) do |site|
  visit site
  load_jquery_in_app
end

When(/^I search for (.+)$/) do |keyword|
  @keyword = keyword
  home_page.search_field.set @keyword
  hide_element(".gstl_0.sbdd_a")
  expect(home_page.search_field.value).to eq @keyword
  home_page.search_button.click
end

Then(/^I should see relevant search results$/) do
  expect(page).to have_content @keyword
end
