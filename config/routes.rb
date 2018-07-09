Rails.application.routes.draw do
  get 'users/show'

  get 'users/new'

  get 'users/create'

  get  'signup', to:'users#new'
  resources :users, only:[:show, :create]
  
  get 'sessions/create'
  get 'sessions/destroy'

  root to: 'tasks#index'
  
  get 'login', to: 'tasks#index'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  resources :tasks
end
