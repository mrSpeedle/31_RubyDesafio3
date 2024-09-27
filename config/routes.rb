Rails.application.routes.draw do
  # Rutas para Movies
  get 'movies', to: 'movies#index'
  get 'movies/new', to: 'movies#new'
  post 'movies', to: 'movies#create'

  # Rutas para Series
  get 'series', to: 'series#index'
  get 'series/new', to: 'series#new'
  post 'series', to: 'series#create'

  # Rutas para DocumentaryFilms
  get 'documentary_films', to: 'documentary_films#index'
  get 'documentary_films/new', to: 'documentary_films#new'
  post 'documentary_films', to: 'documentary_films#create'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  # root "posts#index"
end
