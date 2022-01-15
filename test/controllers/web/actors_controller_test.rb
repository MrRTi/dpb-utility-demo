require "test_helper"

class Web::ActorsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    host! ENV.fetch('HOSTNAME') {'localhost'}

    get actors_url
    assert_response :success
  end
end
