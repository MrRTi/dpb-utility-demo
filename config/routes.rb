# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root "web/home#show", defaults: { format: :html }

  scope module: :web, defaults: { format: :html } do
    resources :actors, only: [:index]
    resources :actors_n_plus_one, only: [:index]
    resources :errors, only: [:index]
  end
end
