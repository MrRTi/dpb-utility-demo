# frozen_string_literal: true

module Web
  class ErrorsController < Web::ApplicationController
    def index
      raise StandardError, 'This controller will raise an error everytime'
    end
  end
end
