require 'test_helper'

class StoriesControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  # ---------------------------------------------
  # add from here
  setup do
    get '/users/sign_in'
    sign_in users(:user_001)
    post user_session_url

    # If you want to test that things are working correctly, uncomment this below:
    # follow_redirect!
    # assert_response :success
  end
  # add until here
  # ---------------------------------------------

  test "should get index" do
    get stories_url
    assert_response :success
  end
end
