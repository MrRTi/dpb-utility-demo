require "test_helper"

class Web::ActorsNPlusOneControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    host! ENV.fetch('HOSTNAME') {'localhost'}

    get actors_n_plus_one_index_url
    assert_response :success
  end
end
