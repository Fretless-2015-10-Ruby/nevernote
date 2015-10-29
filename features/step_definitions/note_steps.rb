When('I visit the "new note" page') do
  visit new_note_path
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
