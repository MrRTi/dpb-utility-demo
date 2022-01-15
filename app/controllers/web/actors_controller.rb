class Web::ActorsController < Web::ApplicationController
  def index
    @actors = Actor.all.includes(:movies, :characters)
    @actors = Actor.none
  end
end
