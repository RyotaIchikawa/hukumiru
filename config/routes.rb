Rails.application.routes.draw do
  
  root 'pages#index'
  get  'pages/show'
  
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions:      'users/sessions'
  }
  resources  :users
  resources  :microposts, only: [:create, :destroy]
  
end
