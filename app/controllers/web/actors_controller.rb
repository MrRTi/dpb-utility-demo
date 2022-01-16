# frozen_string_literal: true

module Web
  class ActorsController < Web::ApplicationController
    def index
      @actors = Actor.all.includes(:movies, :characters)
    end
  end
end
