Rails.application.routes.draw do
  resources :combatants
  get 'home/combatant'
  get 'home/combatSetup'
  get 'home/battlefield'
  root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
