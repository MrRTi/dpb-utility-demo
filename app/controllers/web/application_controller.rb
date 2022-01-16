# frozen_string_literal: true

module Web
  class ApplicationController < ApplicationController
    rescue_from ActionController::RoutingError, with: :respond_not_found

    def respond_not_found
      head :not_found
    end
  end
end
