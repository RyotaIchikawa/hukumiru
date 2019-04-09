Rails.application.routes.draw do
  
  root 'pages#index'
  
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions:      'users/sessions'
  }
  resources :users do #, only: [:index, :show]
    member do
      get :following, :followers
    end
  end
  resources :microposts,    only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]
  
end