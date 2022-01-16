# frozen_string_literal: true

module Web
  class ActorsNPlusOneController < Web::ApplicationController
    def index
      @actors = Actor.all
    end
  end
end
