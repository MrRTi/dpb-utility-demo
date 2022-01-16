# frozen_string_literal: true

require 'test_helper'

module Web
  class HomesControllerTest < ActionDispatch::IntegrationTest
    test 'should get index' do
      host! ENV.fetch('HOSTNAME', 'localhost')

      get root_url
      assert_response :success
    end
  end
end
