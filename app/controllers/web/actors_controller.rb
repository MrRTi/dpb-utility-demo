class Web::ActorsController < Web::ApplicationController
  def index_with_n_plus_one
    @actors = Actor.all
  end

  def index
    @actors = Actor.all.includes(:movies, :characters)
  end
end
