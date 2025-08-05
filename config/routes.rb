Rails.application.routes.draw do
  namespace :auth do
    get "/forgot-password", to: "forgot_password#index"
    get "/login", to: "login#index"
    get "/register", to: "register#index"
  end

  namespace :admin do
    resources :transactions
    get "users/index"
    get "users/new"
    get "users/create"
    get "reports/index"
    get "reports/show"
    get "dashboard/index"
    resources :dress_variants
    resources :sizes
    resources :dresses
    resources :categories
    resources :documents
    resources :fines
    resources :rentals
  end
  devise_for :users


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html


  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  root "page#index"
end
