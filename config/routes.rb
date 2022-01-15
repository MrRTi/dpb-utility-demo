Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  scope module: :web do
    resources :actors, only: [:index]
    resources :actors_n_plus_one, only: [:index]
  end
end
