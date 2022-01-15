require "test_helper"

class Web::ErrorsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    host! ENV.fetch('HOSTNAME') {'localhost'}

    assert_raise(StandardError) do
      get errors_url
    end
  end
end
