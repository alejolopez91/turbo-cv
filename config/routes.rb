Rails.application.routes.draw do
  namespace :admin do
      resources :users
      resources :user_studies
      resources :user_works

      root to: "users#index"
    end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "users#index"

  resources :users, only: [:index, :show] do
    member do
      get :studies
      get :works
    end
  end
end
