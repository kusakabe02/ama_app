Rails.application.routes.draw do
  get 'tasks/new'
  get 'tasks/index'
  get 'tasks/show'
  get 'tasks/create'
  get 'tasks/destroy'
  get 'asakatus/new'
  get 'asakatus/index'
  get 'asakatus/show'
  get 'asakatus/create'
  get 'asakatus/destroy'
  get 'task/new'
  get 'task/index'
  get 'task/show'
  get 'task/create'
  get 'task/destroy'
  # get 'asakatu_task/new'
  # get 'asakatu_task/index'
  # get 'asakatu_task/show'
  # get 'asakatu_task/create'
  # get 'asakatu_task/destroy'
  # get 'asakatu/new'
  # get 'asakatu/index'
  # get 'asakatu/show'
  # get 'asakatu/create'
  # get 'asakatu/destroy'
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
    patch :image_reset, on: :member
  end

  #Asakatuテーブルとasakatu_taskテーブルのルーティング
  resources :asakatus do
    resources :task,  only:[:new, :create, :destroy, :update]
  end

end
