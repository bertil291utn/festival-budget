require 'rails_helper'

RSpec.feature 'Profiles', type: :feature do
  scenario 'show my profile' do
    user = create :user
    login_help(user)
    sleep(3)
    expect(page).to have_content "I'm #{user.fullname}"
  end
end
