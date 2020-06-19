require 'rails_helper'

RSpec.feature 'Userlogins', type: :feature do
  scenario 'login' do
    user = create :user
    visit '/login'
    fill_in 'username', with: user.username
    click_on 'Login'
    expect(page).to have_current_path root_path
  end

  describe 'logout' do
    scenario 'logout' do
      visit '/logout'
      expect(page).to have_current_path login_path
    end
    it { should_not reset_session! }
  end
end
