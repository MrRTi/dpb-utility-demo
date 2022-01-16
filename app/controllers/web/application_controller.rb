# frozen_string_literal: true

module Web
  class ApplicationController < ApplicationController
    around_action :switch_locale

    def switch_locale(&action)
      locale = params[:locale] || I18n.default_locale
      I18n.with_locale(locale, &action)
    end
  end
end
