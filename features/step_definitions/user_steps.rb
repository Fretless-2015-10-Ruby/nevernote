When('I visit the sign up page') do
  visit '/sign_up'
end

When('I enter my information') do
  within('#new_user') do
    fill_in 'user[name]', with: 'Bobert'
    fill_in 'user[username]', with: 'bob'
    fill_in 'user[password]', with: 'password'
    fill_in 'user[password_confirmation]', with: 'password'
  end
end
