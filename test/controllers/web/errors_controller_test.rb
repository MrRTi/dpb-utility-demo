# frozen_string_literal: true

require 'test_helper'

module Web
  class ErrorsControllerTest < ActionDispatch::IntegrationTest
    test 'should get error' do
      host! ENV.fetch('HOSTNAME', 'localhost')

      assert_raise(StandardError) do
        get errors_url
      end
    end
  end
end
