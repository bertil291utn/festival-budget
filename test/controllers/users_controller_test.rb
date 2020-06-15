require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test 'should get hello' do
    get users_hello_url
    assert_response :success
  end
end
