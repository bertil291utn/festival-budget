require 'rails_helper'

RSpec.feature 'Users', type: :feature do
  scenario 'create new user' do
    user = build :user
    visit '/signup'
    fill_in 'user[fullname]', with: user.fullname
    fill_in 'user[username]', with: user.username
    fill_in 'user[email]', with: user.email
    click_on 'Sign up'
    expect(page).to have_current_path root_path
  end
end
