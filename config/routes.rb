Rails.application.routes.draw do
  # get 'user_sessions/new'
  # get 'user_sessions/create'
  # get 'user_sessions/destroy'
  # resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'users#index'
  get '/login', to: 'user_sessions#new', as: :login
  post '/login', to: 'user_sessions#create'
  post '/logout', to: 'user_sessions#destroy', as: :logout
  #resources :users
  resources :users do
    resource :relationships, only:[:create, :destroy, :update]
  end

end
