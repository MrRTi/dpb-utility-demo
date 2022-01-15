class Web::ActorsNPlusOneController < Web::ApplicationController
  def index
    @actors = Actor.all
  end
end
