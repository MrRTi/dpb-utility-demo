# frozen_string_literal: true

require 'test_helper'

module Web
  class ActorsNPlusOneControllerTest < ActionDispatch::IntegrationTest
    test 'should get index' do
      host! ENV.fetch('HOSTNAME', 'localhost')

      get actors_n_plus_one_index_url
      assert_response :success
    end
  end
end
