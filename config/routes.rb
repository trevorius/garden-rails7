Rails.application.routes.draw do
  get 'home/index'
  resources :beds
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  get '/' => 'home#index'
  root "home#index"
end
