Rails.application.routes.draw do
  devise_for :users
  root to: "prototypes#index"
  resources :users
  resources :prototypes, only: [:index,:new,:create,:show,:edit,:update,:destroy] do
    resources :comments 
    collection do
      get 'search'
    end
  end
end
