class Web::ApplicationController < ApplicationController
  rescue_from ActionController::RoutingError, with: :respond_not_found

  def respond_not_found
    head :not_found
  end
end
