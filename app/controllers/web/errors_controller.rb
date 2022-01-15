class Web::ErrorsController < Web::ApplicationController
  def index
    raise StandardError, "This controller will raise an error everytime"
  end
end
