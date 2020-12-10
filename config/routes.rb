Rails.application.routes.draw do
  resources :user_events
  resources :events
  resources :users
  resources :time_intervals
  resources :locations
  resources :categories
  resources :cities

  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "login", to: "sessions#destroy"
  get "/", to: redirect("/login")

 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
