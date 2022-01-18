# frozen_string_literal: true

module Web
  class ErrorsController < Web::ApplicationController
    def index
      first_level
    end

    private

    def first_level
      second_level
    end

    def second_level
      third_level
    end

    def third_level
      # NoMethodError will be raised here
      nil.first
    end
  end
end
