Rails.application.routes.draw do
  
  root 'pages#index'
  
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions:      'users/sessions'
  }
  resources  :users,      only: [:index, :show]
  resources  :microposts, only: [:create, :destroy]
  
end