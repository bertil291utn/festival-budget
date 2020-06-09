module SpecTestHelper
  def login(user)
    visit '/signup'
    fill_in 'user[fullname]', with: user.fullname
    fill_in 'user[username]', with: user.username
    fill_in 'user[email]', with: user.email
    click 'Sign up'
  end

  def current_user
    User.find(request.session[:user])
  end
end
