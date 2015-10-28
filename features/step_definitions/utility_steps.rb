When('I visit the home page') do
  visit '/'
end

When(/^I click "(.*?)"$/) do |link|
  click_link link
end

When(/^I click the "(.*?)" button$/) do |button|
  click_button button
end

Then(/^I should see "(.*?)"$/) do |content|
  expect(page).to have_content content
end

Then(/^I should not see "(.*?)"$/) do |content|
  expect(page).to_not have_content content
end
