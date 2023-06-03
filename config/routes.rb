Rails.application.routes.draw do

  devise_for :users
  authenticate :user do 
    resources :combatants_in_combat, only: :update
    resources :combats do
      member do
        post '/', to: 'combats#update'
        get '/setup', to: 'combats#setup', as: :setup
        get '/run', to: 'combats#run', as: :run
      end
    end
    resources :combatants
    get 'home/combatSetup'
    get 'home/battlefield'
    root to: 'combatants#index', as: :authenticated_root
  end

  unauthenticated :user do
      root to: 'sessions#new', as: :unauthenticated_root
  end

  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "
end
