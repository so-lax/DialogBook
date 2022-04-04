Rails.application.routes.draw do
  namespace :admin do
      resources :users
      resources :posts
      resources :visits

      root to: "users#index"
    end

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'home#index'
  resources :users, only: [:show]
  resources :posts, only: [:create]
  
  namespace :api, { format: 'json' } do
      resources :users, :only => [:show]
  end
end
