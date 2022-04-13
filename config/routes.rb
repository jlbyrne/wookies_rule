Rails.application.routes.draw do
  namespace 'api', defaults: { format: :json } do
    resources :vehicles, only: [:index, :show]
    resources :starships, only: [:index, :show]
    resources :species, only: [:index, :show]
    resources :planets, only: [:index, :show]
    resources :people, only: [:index, :show]
    resources :films, only: [:index, :show]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  get "home/index"  
  root to: "home#index"
  get '*path', to: 'home#index'
end
