Rails.application.routes.draw do
  devise_for :users
  resources :combats
  resources :combatants

  get 'home/combatSetup'
  get 'home/battlefield'
  # root 'home#index'
  root 'combatants#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "
end
