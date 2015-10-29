When('I visit the "new note" page') do
  visit new_note_path
end

When(/^I visit the "edit note" page for "(.*?)"$/) do |title|
  visit edit_note_path(Note.find_by_title title)
end


Given(/^I have a note called "(.*?)"$/) do |title|
  Note.create title: title, body_html: 'This is my pre-existing note.'
end

When('I enter a title') do
  within('#new_note') do
    fill_in 'note[title]', with: 'My note'
  end
end

When('I enter some body text') do
  within('#new_note') do
    fill_in 'note[body_html]', with: 'This is my note.'
  end
end


When('I change the title') do
  within('.edit_note') do
    fill_in 'note[title]', with: 'My edited note'
  end
end

When('I change some body text') do
  within('.edit_note') do
    fill_in 'note[body_html]', with: 'This is my edited note.'
  end
end
