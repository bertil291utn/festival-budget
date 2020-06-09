module SpecTestHelper
  def login_help(user)
    visit '/login'
    fill_in 'username', with: user.username
    click_on 'Login'
  end

  def current_user
    User.find(request.session[:user])
  end
end
