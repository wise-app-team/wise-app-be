# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  namespace :api do
    namespace :v1 do
      resources :drugs, only: %i[create]
      resources :users, only: %i[create update destroy]
      resources :user_drugs, only: %i[create update destroy]
    end
  end
  post '/api/v1/users/login', to: 'api/v1/sessions#create'
end